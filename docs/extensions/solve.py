"""
Universal solver for UP extension problems.

Usage:
  # Extension PDDL (UPPDDLReader):
  python3 -m docs.extensions.solve --format pddl \\
      --domain  docs/extensions/domains/15-puzzle/pddl-extension/domain.pddl \\
      --problem docs/extensions/domains/15-puzzle/pddl-extension/i0.pddl \\
      --compilation uti --solver fast-downward

  # Classical PDDL (standard PDDLReader):
  python3 -m docs.extensions.solve --format pddl --reader pddl \\
      --domain  docs/extensions/domains/15-puzzle/handcrafted/domain.pddl \\
      --problem docs/extensions/domains/15-puzzle/handcrafted/korf1.pddl \\
      --compilation None --solver fast-downward

  # Python problem module (--instance picks a line from that domain's instances.txt):
  python3 -m docs.extensions.solve --format python \\
      --module docs.extensions.domains.15-puzzle.15Puzzle \\
      --instance korf1 --compilation uti --solver fast-downward

  # Compare PDDL-XTS vs Python translations:
  python3 -m docs.extensions.solve --compare \\
      --domain  docs/extensions/domains/15-puzzle/pddl-extension/domain.pddl \\
      --problem docs/extensions/domains/15-puzzle/pddl-extension/i0.pddl \\
      --module  docs.extensions.domains.15-puzzle.15Puzzle \\
      --compilation uti
"""

import argparse
import difflib
import importlib
import inspect
import re
import sys
from unittest.mock import patch

from docs.extensions.domains import compilation_solving
from docs.extensions.domains.compilation_solving import COMPILATION_PIPELINES


# ── CLI ─────────────────────────────────────────────────────────────────────

def _build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(
        description="Compile and solve / compare UP extension problems.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=__doc__,
    )

    mode = p.add_mutually_exclusive_group(required=True)
    mode.add_argument('--format', choices=['pddl', 'python'],
                      help='Solve a single problem in this format.')
    mode.add_argument('--compare', action='store_true',
                      help='Compare PDDL-XTS and Python versions of the same problem.')

    p.add_argument(
        '--compilation',
        choices=list(COMPILATION_PIPELINES.keys()),
        metavar='PIPELINE',
        help=f'Compilation pipeline. One of: {", ".join(COMPILATION_PIPELINES)}',
    )
    p.add_argument('--solver', help='Planner name (e.g. fast-downward, RantanPlan).')

    pddl = p.add_argument_group('PDDL options')
    pddl.add_argument('--domain',  help='Path to domain PDDL file.')
    pddl.add_argument('--problem', help='Path to problem PDDL file.')
    pddl.add_argument(
        '--reader', choices=['up', 'pddl'], default='up',
        help='"up" for UPPDDLReader (extension PDDL), "pddl" for standard PDDLReader. Default: up.',
    )

    py = p.add_argument_group('Python options')
    py.add_argument(
        '--module',
        help='Dotted module path (e.g. docs.extensions.domains.15-puzzle.15Puzzle).',
    )
    py.add_argument(
        '--instance',
        help='Instance passed to the module\'s get_problem() — a name from that '
             'domain\'s instances.txt, or a size for the generated domains '
             '(dump-trucks, storytellers). Default: the domain\'s own default.',
    )

    return p


# ── Problem loading ──────────────────────────────────────────────────────────

def _load_pddl(domain_path: str, problem_path: str, reader_kind: str):
    if reader_kind == 'up':
        from unified_planning.io.up_pddl_reader import UPPDDLReader
        reader = UPPDDLReader()
    else:
        from unified_planning.io import PDDLReader
        reader = PDDLReader()
    return reader.parse_problem(domain_path, problem_path)


def _call_get_problem(get_problem, instance):
    """Call a domain module's get_problem(), passing --instance positionally.

    Domains disagree on the first parameter: most take an instance name from
    instances.txt (get_problem(instance_name=None)), but dump-trucks and
    storytellers take a size (get_problem(n_packages=10)). The default's type
    tells us which, so a numeric --instance reaches those as an int.
    """
    if instance is None:
        return get_problem()

    params = list(inspect.signature(get_problem).parameters.values())
    if not params:
        raise RuntimeError(
            f"get_problem() takes no arguments, so --instance {instance!r} cannot be applied."
        )
    if isinstance(params[0].default, int) and not isinstance(params[0].default, bool):
        try:
            instance = int(instance)
        except ValueError:
            raise RuntimeError(
                f"This domain's get_problem({params[0].name}=...) expects a number, "
                f"got --instance {instance!r}."
            )
    return get_problem(instance)


def _load_python(module_path: str, instance=None, compilation=None, solver=None):
    """Import a domain module and return its Problem.

    Current convention: the module exposes get_problem(<instance>) and guards its
    own solve behind `if __name__ == "__main__"`, so importing it is side-effect
    free. Legacy convention (labyrinth_v2): the module builds the problem at
    import time and calls compile_and_solve() itself — for those we patch that
    call to capture the Problem instead of solving it.
    """
    captured = {}

    def _intercept(problem, *args, **kwargs):
        captured['problem'] = problem

    # Legacy modules run argparse at import and assert on the pipeline name, so
    # hand them the values the user actually asked for.
    saved_argv = sys.argv[:]
    sys.argv = [sys.argv[0]]
    if compilation:
        sys.argv += ['--compilation', compilation]
    if solver:
        sys.argv += ['--solving', solver]

    try:
        sys.modules.pop(module_path, None)
        with patch('docs.extensions.domains.compilation_solving.compile_and_solve', _intercept):
            module = importlib.import_module(module_path)
    finally:
        sys.argv = saved_argv

    get_problem = getattr(module, 'get_problem', None)
    if get_problem is not None:
        return _call_get_problem(get_problem, instance)

    if 'problem' not in captured:
        raise RuntimeError(
            f"Module '{module_path}' exposes no get_problem() and never called "
            "compilation_solving.compile_and_solve(). Add a get_problem(instance_name=None) "
            "that builds and returns the Problem."
        )
    if instance is not None:
        print(f"  Warning: '{module_path}' has no get_problem(); ignoring --instance {instance!r}.")
    return captured['problem']


# ── Comparison helpers ───────────────────────────────────────────────────────

# Sections whose entries are one-per-line and order-independent, so sorting them
# yields a canonical form. Preconditions are a conjunction and an action's effects
# are applied simultaneously, so neither carries meaning in its ordering — but the
# compilers emit them in whatever order they walked the source, which is what makes
# a PDDL-XTS build differ textually from the equivalent Python one. 'actions' is
# deliberately absent: its entries are multi-line blocks that sorting would shred.
_SORTABLE_SECTIONS = {
    'initial values', 'goals', 'types', 'objects',
    'fluents', 'initial fluents default', 'preconditions', 'effects',
}


def _normalize(problem_str: str) -> str:
    """Return a canonical, diff-ready form of a UP problem string.

    Normalizes:
    - problem name / domain name → '<name>'
    - quality metric names referencing the problem name → '<name>'
    - sorts lines within flat sections (initial values, goals, types, objects)
      so that insertion-order differences don't produce false diffs
    """
    lines = problem_str.splitlines()
    out: list[str] = []
    i = 0
    current_section: str | None = None
    section_buf: list[str] = []

    def flush_section():
        if current_section in _SORTABLE_SECTIONS:
            out.extend(sorted(section_buf))
        else:
            out.extend(section_buf)
        section_buf.clear()

    while i < len(lines):
        line = lines[i]
        stripped = line.strip()

        # Normalize problem/domain name lines
        if re.match(r'^problem name\s*=', line):
            out.append(re.sub(r'=.*', '= <name>', line))
            i += 1
            continue

        # Detect section header:  "section_name = ["
        m = re.match(r'^(\s*)(\w[\w ]*?)\s*=\s*\[$', line)
        if m:
            flush_section()
            current_section = m.group(2).strip()
            out.append(line)
            i += 1
            continue

        # Detect section close "]"
        if stripped == ']':
            flush_section()
            current_section = None
            out.append(line)
            i += 1
            continue

        # Inside a section: buffer; outside: pass through
        if current_section is not None:
            section_buf.append(line)
        else:
            out.append(line)
        i += 1

    flush_section()
    return '\n'.join(out)


def _compare(
    domain_path: str,
    problem_path: str,
    reader_kind: str,
    module_path: str,
    compilation: str,
    instance=None,
) -> bool:
    """Compile both sources and diff them. Returns True if identical."""
    import io, contextlib

    # ── Load ────────────────────────────────────────────────────────────────
    print("Loading PDDL problem...")
    prob_pddl = _load_pddl(domain_path, problem_path, reader_kind)
    print(f"  {prob_pddl.name}  |  {len(prob_pddl.actions)} actions\n")

    print("Loading Python problem...")
    prob_py = _load_python(module_path, instance, compilation)
    print(f"  {prob_py.name}  |  {len(prob_py.actions)} actions\n")

    # ── Compile (suppress noisy output) ─────────────────────────────────────
    print(f"Compiling both through '{compilation}'...")
    buf = io.StringIO()
    with contextlib.redirect_stdout(buf):
        compiled_pddl, _, _ = compilation_solving.compile_problem(prob_pddl, compilation)
        compiled_py,   _, _ = compilation_solving.compile_problem(prob_py,   compilation)

    pddl_str = str(compiled_pddl)
    py_str   = str(compiled_py)

    # ── Summary table ────────────────────────────────────────────────────────
    w = 42
    print(f"\n{'─'*w}")
    print(f"  {'':20s}  {'PDDL':>8}  {'Python':>8}")
    print(f"{'─'*w}")
    print(f"  {'Actions (pre-compile)':20s}  {len(prob_pddl.actions):>8}  {len(prob_py.actions):>8}")
    print(f"  {'Actions (compiled)':20s}  {len(compiled_pddl.actions):>8}  {len(compiled_py.actions):>8}")
    print(f"  {'Fluents':20s}  {len(list(compiled_pddl.fluents)):>8}  {len(list(compiled_py.fluents)):>8}")
    print(f"  {'Objects':20s}  {len(list(compiled_pddl.all_objects)):>8}  {len(list(compiled_py.all_objects)):>8}")
    print(f"  {'Init values':20s}  {len(compiled_pddl.explicit_initial_values):>8}  {len(compiled_py.explicit_initial_values):>8}")
    print(f"  {'Goals':20s}  {len(compiled_pddl.goals):>8}  {len(compiled_py.goals):>8}")
    print(f"{'─'*w}\n")

    # ── Normalize and diff ───────────────────────────────────────────────────
    norm_pddl = _normalize(pddl_str).splitlines(keepends=True)
    norm_py   = _normalize(py_str).splitlines(keepends=True)

    diff = list(difflib.unified_diff(
        norm_pddl, norm_py,
        fromfile='PDDL (compiled)',
        tofile='Python (compiled)',
        n=3,
    ))

    if not diff:
        print("✓  Problems are IDENTICAL after compilation.\n")
        return True

    print(f"✗  Problems DIFFER — {len(diff)} diff lines.\n")
    # Print at most 80 diff lines to keep output readable
    for line in diff[:80]:
        print(line, end='')
    if len(diff) > 80:
        print(f"\n  ... ({len(diff) - 80} more diff lines) ...")
    print()
    return False


# ── Entry point ──────────────────────────────────────────────────────────────

def main():
    parser = _build_parser()
    args = parser.parse_args()

    # ── Compare mode ────────────────────────────────────────────────────────
    if args.compare:
        missing = [f for f, v in [('--domain', args.domain), ('--problem', args.problem),
                                   ('--module', args.module), ('--compilation', args.compilation)]
                   if not v]
        if missing:
            parser.error(f'--compare requires: {", ".join(missing)}')
        _compare(args.domain, args.problem, args.reader, args.module,
                 args.compilation, args.instance)
        return

    # ── Solve mode ──────────────────────────────────────────────────────────
    if not args.compilation:
        parser.error('--compilation is required.')
    if not args.solver:
        parser.error('--solver is required.')
    if args.format == 'pddl' and (not args.domain or not args.problem):
        parser.error('--format pddl requires --domain and --problem.')
    if args.format == 'python' and not args.module:
        parser.error('--format python requires --module.')

    print(f"Loading problem ({args.format})...")
    if args.format == 'pddl':
        problem = _load_pddl(args.domain, args.problem, args.reader)
    else:
        problem = _load_python(args.module, args.instance, args.compilation, args.solver)
    print(f"  Problem: {problem.name}  |  Actions: {len(problem.actions)}")

    compilation_solving.compile_and_solve(problem, args.solver, args.compilation)


if __name__ == '__main__':
    main()