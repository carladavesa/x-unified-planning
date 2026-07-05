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

  # Python problem module:
  python3 -m docs.extensions.solve --format python \\
      --module docs.extensions.domains.15-puzzle.15Puzzle \\
      --compilation uti --solver fast-downward

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


def _load_python(module_path: str):
    """Import a domain module and capture its Problem via compile_and_solve interception."""
    captured = {}

    def _intercept(problem, *args, **kwargs):
        captured['problem'] = problem

    saved_argv = sys.argv[:]
    sys.argv = [sys.argv[0], '--compilation', 'uti', '--solving', 'fast-downward']

    try:
        sys.modules.pop(module_path, None)
        with patch('docs.extensions.domains.compilation_solving.compile_and_solve', _intercept):
            importlib.import_module(module_path)
    finally:
        sys.argv = saved_argv

    if 'problem' not in captured:
        raise RuntimeError(
            f"Module '{module_path}' did not call compilation_solving.compile_and_solve(). "
            "Ensure it follows the convention of calling compile_and_solve(problem, ...)."
        )
    return captured['problem']


# ── Comparison helpers ───────────────────────────────────────────────────────

# Sections whose entries are one-per-line and safe to sort for canonical comparison.
_SORTABLE_SECTIONS = {'initial values', 'goals', 'types', 'objects'}


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


def _section_stats(problem_str: str) -> dict:
    """Extract coarse statistics from a UP problem string for the summary table."""
    stats = {}
    for label, pattern in [
        ('actions',        r'Number of actions:\s*(\d+)'),
        ('lines',          r'Lines:\s*(\d+)'),
        ('characters',     r'Characters:\s*(\d+)'),
    ]:
        m = re.search(pattern, problem_str)
        stats[label] = int(m.group(1)) if m else '?'
    return stats


def _compare(
    domain_path: str,
    problem_path: str,
    reader_kind: str,
    module_path: str,
    compilation: str,
) -> bool:
    """Compile both sources and diff them. Returns True if identical."""
    import io, contextlib

    # ── Load ────────────────────────────────────────────────────────────────
    print("Loading PDDL problem...")
    prob_pddl = _load_pddl(domain_path, problem_path, reader_kind)
    print(f"  {prob_pddl.name}  |  {len(prob_pddl.actions)} actions\n")

    print("Loading Python problem...")
    prob_py = _load_python(module_path)
    print(f"  {prob_py.name}  |  {len(prob_py.actions)} actions\n")

    # ── Compile (suppress noisy output) ─────────────────────────────────────
    print(f"Compiling both through '{compilation}'...")
    buf = io.StringIO()
    with contextlib.redirect_stdout(buf):
        compiled_pddl, _, _ = compilation_solving.compile_problem(prob_pddl, compilation)
        compiled_py,   _, _ = compilation_solving.compile_problem(prob_py,   compilation)

    pddl_str = str(compiled_pddl)
    py_str   = str(compiled_py)

    stats_pddl = _section_stats(buf.getvalue().split('Pipeline: uti')[1] if 'Pipeline: uti' in buf.getvalue() else buf.getvalue())

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
        _compare(args.domain, args.problem, args.reader, args.module, args.compilation)
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
        problem = _load_python(args.module)
    print(f"  Problem: {problem.name}  |  Actions: {len(problem.actions)}")

    compilation_solving.compile_and_solve(problem, args.solver, args.compilation)


if __name__ == '__main__':
    main()