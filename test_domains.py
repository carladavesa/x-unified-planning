#!/usr/bin/env python3
"""
test_domains.py — Solve every test domain in PDDL-XTS/tests/ via the UP
compilation pipeline + a classical planner (default: fast-downward).

Pipeline (applied in order, each step is a no-op if the feature is absent):
  INT_PARAMETER_ACTIONS_REMOVING → ARRAYS_REMOVING → SETS_REMOVING →
  COUNT_REMOVING → INTEGERS_REMOVING → USERTYPE_FLUENTS_REMOVING

Usage:
    python3 test_domains.py
    python3 test_domains.py --solver enhsp
    python3 test_domains.py --filter sets
    python3 test_domains.py --compile-only     # skip solve, just test pipeline
    python3 test_domains.py --timeout 60       # wall-clock seconds per domain
    python3 test_domains.py --tests-dir /other/path
"""

import argparse
import contextlib
import io
import multiprocessing
import os
import sys
import time
from dataclasses import dataclass, field
from pathlib import Path
from typing import List, Optional, Tuple

# ── UP path setup ─────────────────────────────────────────────────────────────
_ep = argparse.ArgumentParser(add_help=False)
_ep.add_argument('--up-path', default=os.path.expanduser('~/unified-planning'))
_UP_PATH = _ep.parse_known_args()[0].up_path

# ─────────────────────────────────────────────────────────────────────────────

_GREEN  = "\033[32m"
_RED    = "\033[31m"
_YELLOW = "\033[33m"
_RESET  = "\033[0m"

def _col(text: str, color: str) -> str:
    return f"{color}{text}{_RESET}"


@dataclass
class TestResult:
    name: str
    compile_ok:   bool = False
    compile_ms:   float = 0.0
    compile_err:  Optional[str] = None
    solve_ok:     Optional[bool] = None   # None = not attempted
    solve_ms:     float = 0.0
    solve_err:    Optional[str] = None
    status:       Optional[str] = None
    plan_len:     Optional[int] = None
    timed_out:    bool = False


# ── Worker (runs in child process to allow hard wall-clock timeout) ───────────

def _worker(queue: multiprocessing.Queue, up_path: str, domain: str, instance: str,
            solver: Optional[str], timeout_s: int) -> None:
    """Run parse+pipeline+solve; put TestResult into queue."""
    import contextlib, io, os, sys, time, warnings
    warnings.filterwarnings('ignore')

    # Replicate the UP path setup inside the child process
    if up_path not in sys.path:
        sys.path.insert(0, up_path)
    import glob as _g
    sp = _g.glob(os.path.join(up_path, 'venv/lib/python*/site-packages'))
    if sp and sp[0] not in sys.path:
        sys.path.insert(1, sp[0])
    del _g

    from unified_planning.engines import CompilationKind
    from unified_planning.io.up_pddl_reader import UPPDDLReader
    from unified_planning.model.fluent import get_all_fluent_exp
    from unified_planning.shortcuts import Compiler, Fraction, OneshotPlanner, get_environment

    PIPELINE = [
        (CompilationKind.INT_PARAMETER_ACTIONS_REMOVING, {}),
        (CompilationKind.ARRAYS_REMOVING,                {'mode': 'permissive'}),
        (CompilationKind.SETS_REMOVING,                  {}),
        (CompilationKind.COUNT_REMOVING,                 {}),
        (CompilationKind.INTEGERS_REMOVING,              {}),
        (CompilationKind.USERTYPE_FLUENTS_REMOVING,      {}),
    ]

    @contextlib.contextmanager
    def _quiet():
        with contextlib.redirect_stdout(io.StringIO()):
            yield

    def _short_err(e, max_len=110):
        first = str(e).split('\n')[0]
        prefix = f"{type(e).__name__}: "
        if len(prefix + first) > max_len:
            first = first[:max_len - len(prefix)] + "…"
        return prefix + first

    result = TestResult(name=os.path.basename(os.path.dirname(domain)))

    # ── Parse + pipeline ───────────────────────────────────────────────────
    t0 = time.perf_counter()
    try:
        with _quiet():
            reader = UPPDDLReader()
            problem = reader.parse_problem(domain, instance)

        comp_results = []
        for ck, params in PIPELINE:
            with _quiet():
                with Compiler(problem_kind=problem.kind,
                              compilation_kind=ck, params=params) as c:
                    r = c.compile(problem, ck)
            comp_results.append(r)
            problem = r.problem

        result.compile_ok = True
        result.compile_ms = (time.perf_counter() - t0) * 1000
    except Exception as e:
        result.compile_ok  = False
        result.compile_ms  = (time.perf_counter() - t0) * 1000
        result.compile_err = _short_err(e)
        queue.put(result)
        return

    if solver is None:
        queue.put(result)
        return

    # ── Initialize fluents + solve ──────────────────────────────────────────
    env = get_environment()
    tm, em = env.type_manager, env.expression_manager
    problem.initial_defaults.update({
        tm.RealType(): em.Real(Fraction(0)),
        tm.IntType():  em.Int(0),
        tm.BoolType(): em.Bool(False),
    })
    initialized = set(problem.explicit_initial_values.keys())
    for fluent in problem.fluents:
        for fe in get_all_fluent_exp(problem, fluent):
            if fe not in initialized and fe.type in problem.initial_defaults:
                problem.set_initial_value(fe, problem.initial_defaults[fe.type])

    t0 = time.perf_counter()
    try:
        env.credits_stream = None
        params = ({'fast_downward_search_time_limit': f'{timeout_s}s'}
                  if solver == 'fast-downward' and timeout_s else {})
        with OneshotPlanner(name=solver, params=params) as planner:
            sol = planner.solve(problem)
        elapsed = (time.perf_counter() - t0) * 1000

        plan = sol.plan
        if plan is not None:
            for cr in reversed(comp_results):
                plan = plan.replace_action_instances(cr.map_back_action_instance)

        result.solve_ok  = sol.plan is not None
        result.solve_ms  = elapsed
        result.status    = sol.status.name
        result.plan_len  = len(plan.actions) if plan else None
    except Exception as e:
        elapsed = (time.perf_counter() - t0) * 1000
        result.solve_ok  = False
        result.solve_ms  = elapsed
        result.solve_err = _short_err(e)

    queue.put(result)


def run_test(domain: Path, instance: Path, solver: Optional[str], up_path: str,
             wall_timeout: int) -> TestResult:
    """Run a single test in a child process with a hard wall-clock timeout."""
    name = domain.parent.name
    q: multiprocessing.Queue = multiprocessing.Queue()
    p = multiprocessing.Process(
        target=_worker,
        args=(q, up_path, str(domain), str(instance), solver, wall_timeout),
        daemon=True,
    )
    p.start()
    p.join(wall_timeout)

    if p.is_alive():
        p.kill()
        p.join()
        r = TestResult(name=name, timed_out=True)
        r.compile_ok = True   # compilation likely finished (hang is in solver)
        r.compile_ms = 0.0
        return r

    try:
        return q.get_nowait()
    except Exception:
        r = TestResult(name=name)
        r.compile_err = "worker exited without result"
        return r


# ── Formatting ────────────────────────────────────────────────────────────────

def _fmt(r: TestResult, compile_only: bool) -> str:
    name = f"{r.name:<32}"

    if not r.compile_ok:
        tag = _col("COMPILE_ERR", _RED if name[0:2] != "X_" else _GREEN)
        return f"  [{tag}] {name}  compile={r.compile_ms:.0f}ms"

    if compile_only:
        tag = _col("PASS", _GREEN if name[0:2] != "X_" else _RED)
        return f"  [{tag}]       {name}  compile={r.compile_ms:.0f}ms"

    if r.timed_out:
        tag = _col("TIMEOUT", _YELLOW)
        return f"  [{tag}]   {name}  (wall-clock timeout)"

    if r.solve_err:
        tag = _col("SOLVE_ERR", _RED if name[0:2] != "X_" else _GREEN)
        return (f"  [{tag}] {name}  "
                f"compile={r.compile_ms:.0f}ms  solve={r.solve_ms:.0f}ms")

    if r.solve_ok:
        tag = _col("SOLVED", _GREEN if name[0:2] != "X_" else _RED)
        plan_info = f"  plan={r.plan_len}" if r.plan_len is not None else ""
        return (f"  [{tag}]  {name}  "
                f"compile={r.compile_ms:.0f}ms  solve={r.solve_ms:.0f}ms"
                f"{plan_info}  ({r.status})")

    tag = _col("NO_PLAN", _YELLOW)
    return (f"  [{tag}]  {name}  "
            f"compile={r.compile_ms:.0f}ms  solve={r.solve_ms:.0f}ms  ({r.status})")


def _fmt_err(r: TestResult, compile_only: bool) -> Optional[str]:
    if r.compile_err:
        return f"           compile: {r.compile_err}"
    if not compile_only and r.solve_err:
        return f"           solve:   {r.solve_err}"
    return None


# ─────────────────────────────────────────────────────────────────────────────

def find_tests(tests_dir: Path, filter_str: Optional[str]) -> List[Tuple[Path, Path]]:
    tests = []
    for entry in sorted(tests_dir.iterdir()):
        if not entry.is_dir():
            continue
        domain   = entry / 'domain.pddl'
        instance = entry / 'instance.pddl'
        if not domain.exists() or not instance.exists():
            continue
        if filter_str and filter_str.lower() not in entry.name.lower():
            continue
        tests.append((domain, instance))
    return tests


def main() -> None:
    p = argparse.ArgumentParser(
        description="Solve all PDDL-XTS test domains via UP pipeline + classical planner.")
    p.add_argument('--tests-dir', default=None,
                   help="Path to tests directory (default: PDDL-XTS/tests/ next to this script).")
    p.add_argument('--solver',   default='fast-downward',
                   help="UP planner name (default: fast-downward).")
    p.add_argument('--timeout',  type=int, default=60,
                   help="Hard wall-clock timeout per domain in seconds (default: 60).")
    p.add_argument('--compile-only', action='store_true',
                   help="Only run the UP compilation pipeline; skip solving.")
    p.add_argument('--filter',  default=None, metavar='SUBSTR',
                   help="Only run tests whose directory name contains SUBSTR.")
    p.add_argument('--up-path', default=os.path.expanduser('~/unified-planning'),
                   help="Path to unified-planning extension.")
    args = p.parse_args()

    script_dir = Path(__file__).parent
    tests_dir  = Path(args.tests_dir) if args.tests_dir else script_dir / 'PDDL-XTS' / 'tests'
    up_path    = args.up_path

    if not tests_dir.exists():
        print(f"Tests directory not found: {tests_dir}", file=sys.stderr)
        sys.exit(1)

    tests = find_tests(tests_dir, args.filter)
    if not tests:
        print(f"No tests found in {tests_dir}" + (f" (filter={args.filter!r})" if args.filter else ""))
        sys.exit(0)

    solver = None if args.compile_only else args.solver
    mode   = "compile-only" if args.compile_only else f"pipeline → {args.solver}  (timeout={args.timeout}s/domain)"
    steps  = ("INT_PARAMETER_ACTIONS_REMOVING → ARRAYS_REMOVING → SETS_REMOVING → "
               "COUNT_REMOVING → INTEGERS_REMOVING → USERTYPE_FLUENTS_REMOVING")

    print(f"\n  {len(tests)} tests  [{mode}]", flush=True)
    print(f"  pipeline: {steps}", flush=True)
    print(f"  dir: {tests_dir}\n", flush=True)

    results: List[TestResult] = []
    for domain, instance in tests:
        r = run_test(domain, instance, solver, up_path, args.timeout)
        results.append(r)
        print(_fmt(r, args.compile_only), flush=True)
        err = _fmt_err(r, args.compile_only)
        if err:
            print(err, flush=True)

    # ── Summary ────────────────────────────────────────────────────────────
    compile_ok = sum(1 for r in results if r.compile_ok)
    print(f"\n  {'─'*66}", flush=True)

    if args.compile_only:
        print(f"  compile: {compile_ok}/{len(results)} passed", flush=True)
    else:
        solved    = sum(1 for r in results if r.solve_ok)
        no_plan   = sum(1 for r in results if r.solve_ok is False and not r.solve_err and not r.timed_out)
        timeouts  = sum(1 for r in results if r.timed_out)
        c_err     = sum(1 for r in results if not r.compile_ok)
        s_err     = sum(1 for r in results if r.solve_err)
        print(f"  solved={solved}  no_plan={no_plan}  timeout={timeouts}  "
              f"compile_err={c_err}  solve_err={s_err}  (total={len(results)})", flush=True)

    all_ok = all(r.solve_ok for r in results) if not args.compile_only else (compile_ok == len(results))
    sys.exit(0 if all_ok else 1)


if __name__ == '__main__':
    multiprocessing.set_start_method('fork', force=True)
    main()
