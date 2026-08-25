"""Run a domain planning problem via a unified interface.

This script provides a single entry point for executing planning problems
defined in ``domains/``. Each domain exposes a ``Domain`` instance that
knows how to build UP ``Problem`` objects for its own set of instances.

Usage examples:

  python run.py --domain counters --instance pfile1 --compilation uti --solving fast-downward
  python run.py --domain domain.pddl --instance problem.pddl --compilation none --solving fast-downward
  python run.py --list-domains
  python run.py --list-instances counters
"""

from __future__ import annotations

import argparse
import os.path
import signal
import time

from domains import DOMAINS
from unified_planning.exceptions import UPNoSuitableEngineAvailableException
from unified_planning.io import PDDLReader

try:
    import rantanplan
except ImportError:
    pass

from typing import Any, Dict, List, Optional
from unified_planning.engines import CompilationKind
from unified_planning.model import Problem
from unified_planning.shortcuts import (
    AnytimePlanner,
    Compiler,
    OneshotPlanner,
    get_environment,
)

# Each key maps a short alias to an ordered list of compilation steps.
# Pipelines marked "numeric" keep integer fluents.
COMPILATION_PIPELINES = {
    # -------- Classical baseline --------
    # For problems already in classical form (booleans + user types)
    "cls": [
        CompilationKind.INT_PARAMETERS_AND_VARIABLES_REMOVING,
        (CompilationKind.ARRAY_FLUENTS_REMOVING, {"mode": "permissive"}),
        CompilationKind.USERTYPE_FLUENTS_REMOVING,
    ],

    # -------- Numeric baseline --------
    # For problems with integer fluents, targeting a numeric planner
    "num": [
        CompilationKind.INT_PARAMETERS_AND_VARIABLES_REMOVING,
        (CompilationKind.ARRAY_FLUENTS_REMOVING, {"mode": "permissive"}),
        CompilationKind.BOUNDED_TYPES_REMOVING,
    ],

    # -------- Integer fluents (basic) --------
    # For problems with simple integer patterns (equality, ordered comparisons, plus/minus arithmetic).
    "uti_basic": [ # object encoding, classical output
        CompilationKind.INT_PARAMETERS_AND_VARIABLES_REMOVING,
        (CompilationKind.ARRAY_FLUENTS_REMOVING, {"mode": "permissive"}),
        (CompilationKind.INTEGER_FLUENTS_BASIC_REMOVING, {"representation": "object"}),
        CompilationKind.USERTYPE_FLUENTS_REMOVING,
    ],
    "log_basic": [ # binary encoding, classical output
        CompilationKind.INT_PARAMETERS_AND_VARIABLES_REMOVING,
        (CompilationKind.ARRAY_FLUENTS_REMOVING, {"mode": "permissive"}),
        (CompilationKind.INTEGER_FLUENTS_BASIC_REMOVING, {"representation": "binary"}),
    ],

    # -------- Integer fluents (general) --------
    # For problems with arbitrary integer arithmetic. Uses CP-SAT internally to compile to classical planning.
    "uti_general": [ # object encoding, classical output
        CompilationKind.INT_PARAMETERS_AND_VARIABLES_REMOVING,
        (CompilationKind.ARRAY_FLUENTS_REMOVING, {"mode": "permissive"}),
        (CompilationKind.INTEGER_FLUENTS_GENERAL_REMOVING, {"representation": "object"}),
        CompilationKind.USERTYPE_FLUENTS_REMOVING,
    ],
    # general + binary
    "log_general": [ # binary encoding, classical output
        CompilationKind.INT_PARAMETERS_AND_VARIABLES_REMOVING,
        (CompilationKind.ARRAY_FLUENTS_REMOVING, {"mode": "permissive"}),
        (CompilationKind.INTEGER_FLUENTS_GENERAL_REMOVING, {"representation": "binary"}),
        CompilationKind.USERTYPE_FLUENTS_REMOVING,
    ],

    # -------- Count expressions --------
    # For problems with Count expressions in preconditions or goals
    "count_bool": [ # Count -> DNF, classical output
        CompilationKind.INT_PARAMETERS_AND_VARIABLES_REMOVING,
        (CompilationKind.ARRAY_FLUENTS_REMOVING, {"mode": "permissive"}),
        CompilationKind.COUNT_TO_BOOL_REMOVING,
        CompilationKind.USERTYPE_FLUENTS_REMOVING,
    ],
    "count_num": [ # Count -> integer sum, numeric planner
        CompilationKind.INT_PARAMETERS_AND_VARIABLES_REMOVING,
        (CompilationKind.ARRAY_FLUENTS_REMOVING, {"mode": "permissive"}),
        CompilationKind.COUNT_TO_INT_REMOVING,
        CompilationKind.USERTYPE_FLUENTS_REMOVING,
    ],
    "count_uti_general": [ # Count -> integer sum -> object encoding, classical output
        CompilationKind.INT_PARAMETERS_AND_VARIABLES_REMOVING,
        (CompilationKind.ARRAY_FLUENTS_REMOVING, {"mode": "permissive"}),
        CompilationKind.COUNT_TO_INT_REMOVING,
        (CompilationKind.INTEGER_FLUENTS_GENERAL_REMOVING, {"representation": "object"}),
        CompilationKind.USERTYPE_FLUENTS_REMOVING,
    ],
    "count_log_general": [ # Count -> integer sum -> binary encoding, classical output
        CompilationKind.INT_PARAMETERS_AND_VARIABLES_REMOVING,
        (CompilationKind.ARRAY_FLUENTS_REMOVING, {"mode": "permissive"}),
        CompilationKind.COUNT_TO_INT_REMOVING,
        (CompilationKind.INTEGER_FLUENTS_GENERAL_REMOVING, {"representation": "binary"}),
        CompilationKind.USERTYPE_FLUENTS_REMOVING,
    ],

    # -------- Set fluents --------
    # For problems with set fluents. The cardinality of a set can be handled in two ways:
    # as an auxiliary integer fluent (cardinality_encoding='integer'),
    # or as a Count expression over membership predicates (cardinality_encoding='count').
    "set_num": [ # Sets -> integer cardinality, numeric planner
        (CompilationKind.SET_FLUENTS_REMOVING, {"cardinality_encoding": "integer"}),
        CompilationKind.USERTYPE_FLUENTS_REMOVING,
    ],
    "set_count_bool": [ # Sets -> Count cardinality -> DNF, classical output
        (CompilationKind.SET_FLUENTS_REMOVING, {"cardinality_encoding": "count"}),
        CompilationKind.COUNT_TO_BOOL_REMOVING,
        CompilationKind.USERTYPE_FLUENTS_REMOVING,
    ],
    "set_count_num": [ # Sets -> Count -> integer sum, numeric planner
        (CompilationKind.SET_FLUENTS_REMOVING, {"cardinality_encoding": "count"}),
        CompilationKind.QUANTIFIERS_REMOVING,
        CompilationKind.COUNT_TO_INT_REMOVING,
        CompilationKind.USERTYPE_FLUENTS_REMOVING,
    ],
    "set_count_uti_general": [ # Sets -> Count -> int -> object, classical output
        (CompilationKind.SET_FLUENTS_REMOVING, {"cardinality_encoding": "count"}),
        CompilationKind.QUANTIFIERS_REMOVING,
        CompilationKind.COUNT_TO_INT_REMOVING,
        (CompilationKind.INTEGER_FLUENTS_GENERAL_REMOVING, {"representation": "object"}),
        CompilationKind.USERTYPE_FLUENTS_REMOVING,
    ],
    "set_count_log_general": [ # Sets -> Count -> int -> binary, classical output
        (CompilationKind.SET_FLUENTS_REMOVING, {"cardinality_encoding": "count"}),
        CompilationKind.QUANTIFIERS_REMOVING,
        (CompilationKind.INTEGER_FLUENTS_GENERAL_REMOVING, {"representation": "binary"}),
        CompilationKind.USERTYPE_FLUENTS_REMOVING,
    ],

    "none": [],
}

# Maps a base solver name to its mode-specific variant.
SOLVER_MODES = {
    "oneshot": {
        "fast-downward": "fast-downward",
        "enhsp": "enhsp",
        "symk": "symk",
        "rantanplan": "RantanPlan",
    },
    "anytime": {
        "fast-downward": "fast-downward",
        "enhsp": "enhsp-any",
        "symk": "symk",
        "rantanplan": "RantanPlan-anytime",
    },
    "optimal": {
        "fast-downward": "fast-downward-opt",
        "enhsp": "enhsp-opt",
        "symk": "symk-opt",
        "rantanplan": "RantanPlan-optimal",
    },
}


class TimeoutException(Exception):
    """Raised when operation exceeds time limit."""


def _timeout_handler(signum, frame):
    """Signal handler for timeout."""
    raise TimeoutException()


def print_up_problem_size(problem: Problem) -> None:
    """Print a short summary of the problem's size after compilation."""
    problem_str = str(problem)

    print("--- Problem Size --")
    print(f"Number of actions: {len(problem.actions)}")
    print(f"Characters: {len(problem_str)}")
    print(f"Lines: {len(problem_str.splitlines())}")


def compile_problem(
    problem: Problem, compilation_pipeline: str, timeout: int = 0
) -> tuple[Problem, List, float]:
    """Apply a named compilation pipeline to a UP problem.

    Returns the compiled problem, the list of intermediate compilation
    results (needed to map solutions back), and the elapsed time.
    """

    if compilation_pipeline not in COMPILATION_PIPELINES:
        raise ValueError(
            f"Unknown compilation pipeline: '{compilation_pipeline}'. "
            f"Available: {list(COMPILATION_PIPELINES.keys())}"
        )

    compilation_kinds = COMPILATION_PIPELINES[compilation_pipeline]
    if not compilation_kinds:
        print("No compilation steps specified")
        return problem, [], 0.0

    print(f"\n{'=' * 60}")
    print(f"Compilation Pipeline: {compilation_pipeline}")
    print(f"{'=' * 60}")

    start_time = time.time()
    results = []

    # Set timeout
    signal.signal(signal.SIGALRM, _timeout_handler)
    signal.alarm(timeout)

    try:
        for step in compilation_kinds:
            # Allow either CompilationKind alone or (CompilationKind, params) tuple
            if isinstance(step, tuple):
                ck, params = step
            else:
                ck, params = step, {}

            print(f"Compiling {ck}")
            with Compiler(problem_kind=problem.kind, compilation_kind=ck, params=params) as compiler:
                result = compiler.compile(problem, ck)
                results.append(result)
                problem = result.problem

        signal.alarm(0)
        compilation_time = time.time() - start_time
        return problem, results, compilation_time

    except TimeoutException:
        signal.alarm(0)
        print(f"\nCompilation timeout ({timeout}s)")
        raise
    except Exception as e:
        signal.alarm(0)
        print(f"\nCompilation error: {e}")
        raise


def solve_problem(
    problem: Problem,
    solver_name: str,
    compilation_results: List,
    mode: str = "oneshot",
    timeout: int = 0,
    planner_params: Optional[Dict[str, Any]] = None,
) -> float:
    """Solve a compiled problem and print the plan.

    Args:
        mode: One of "oneshot", "anytime", or "optimal".

    Returns the solving wall-clock time in seconds.
    """

    print(f"\n{'=' * 60}")
    print(f"Solver: {solver_name} (mode: {mode})")
    print(f"{'=' * 60}\n")

    start_time = time.time()

    signal.signal(signal.SIGALRM, _timeout_handler)
    signal.alarm(timeout)

    params = dict(planner_params or {})

    mode_map = SOLVER_MODES.get(mode)
    if mode_map is None:
        raise ValueError(f"Unknown mode: '{mode}'. Available: {list(SOLVER_MODES.keys())}")
    resolved_name = mode_map.get(solver_name)
    if resolved_name is None:
        raise ValueError(
            f"No '{mode}' variant known for solver '{solver_name}'. "
            f"Known solvers for '{mode}': {list(mode_map.keys())}"
        )

    def _check_support(planner, problem):
        if not planner.supports(problem.kind):
            unsupported = [
                f"  - {feature}"
                for feature in problem.kind.features
                if feature not in planner.supported_kind().features
            ]
            raise ValueError(
                f"Solver '{resolved_name}' does not support required features:\n"
                + "\n".join(unsupported)
            )

    try:
        if mode == "anytime":
            with AnytimePlanner(name=resolved_name, params=params) as planner:
                _check_support(planner, problem)
                solution_count = 0
                anytime_kwargs = {"timeout": timeout} if timeout > 0 else {}

                # Collect solutions but time each individually
                all_results = []
                for res in planner.get_solutions(problem, **anytime_kwargs):
                    solution_count += 1
                    all_results.append(res)

                # Stop the solving timer BEFORE validation/postprocessing
                signal.alarm(0)
                solving_time = time.time() - start_time
                # Now process/validate solutions (not counted in solving time)
                for idx, res in enumerate(all_results, start=1):
                    print(f"\n--- Solution {idx} ---")
                    plan = res.plan
                    from unified_planning.shortcuts import PlanValidator
                    try:
                        with PlanValidator(problem_kind=problem.kind) as validator:
                            is_valid = validator.validate(problem, plan)
                        if not is_valid:
                            print("Plan is not valid!")
                    except UPNoSuitableEngineAvailableException:
                        print("Plan cannot be validated!")
                    for comp_result in reversed(compilation_results):
                        plan = plan.replace_action_instances(
                            comp_result.map_back_action_instance
                        )
                    print(plan)
                    print(f"\nActions: {len(plan.actions)}")

                print(f"\nFound {solution_count} solution(s)")
                return solving_time

        else:
            with OneshotPlanner(name=resolved_name, params=params) as planner:
                #_check_support(planner, problem)
                result = planner.solve(problem, output_stream=sys.stdout)

                signal.alarm(0)
                solving_time = time.time() - start_time

                if result.plan is not None:
                    print("Solution found!\n")
                    plan = result.plan
                    # Validate plan
                    from unified_planning.shortcuts import PlanValidator
                    try:
                        with PlanValidator(problem_kind=problem.kind) as validator:
                            is_valid = validator.validate(problem, plan)
                        if not is_valid:
                            print("Plan is not valid!")

                    except UPNoSuitableEngineAvailableException:
                        print("Plan cannot be validated!")
                    for comp_result in reversed(compilation_results):
                        plan = plan.replace_action_instances(
                            comp_result.map_back_action_instance
                        )
                    print(plan)
                    print(f"\nActions: {len(plan.actions)}")

                else:
                    print("No solution found")
                    print(f"Status: {result.status}")

                return solving_time

    except TimeoutException:
        signal.alarm(0)
        print(f"\nSolving timeout ({timeout}s)")
        raise
    except Exception:
        signal.alarm(0)
        raise


def compile_and_solve(
    problem: Problem,
    solver: str,
    compilation: str = "none",
    mode: str = "oneshot",
    timeout: int = 0,
    planner_params: Optional[Dict[str, Any]] = None,
):
    """High-level entry point: compile a problem, solve it, and print a summary."""

    get_environment().credits_stream = None  # suppress UP credits banner

    total_start = time.time()
    comp_time = 0
    solve_time = 0

    try:
        print(problem)
        compiled_problem, comp_results, comp_time = compile_problem(problem, compilation, timeout)
        print(compiled_problem)
        print_up_problem_size(compiled_problem)
        remaining_timeout = 0 if timeout == 0 else max(1, timeout - int(comp_time))
        solve_time = solve_problem(
            compiled_problem,
            solver,
            comp_results,
            mode=mode,
            timeout=remaining_timeout,
            planner_params=planner_params,
        )

    except TimeoutException:
        print(f"\nOverall timeout ({timeout}s)")
    except Exception:
        raise

    finally:
        total_time = time.time() - total_start
        print(f"\n{'=' * 60}")
        print("Summary:")
        print(f"  Compilation: {comp_time:.2f}s")
        print(f"  Solving:     {solve_time:.2f}s")
        print(f"  Total:       {total_time:.2f}s")
        print(f"{'=' * 60}\n")



def list_domains() -> None:
    print("Available domains:")
    for d in sorted(DOMAINS.keys()):
        print(f"  - {d}")


def list_instances(domain: str) -> None:
    module = DOMAINS.get(domain)

    if module is None:
        print(f"Domain '{domain}' not found.")
        return

    try:
        instances = module.list_instances()
    except Exception as e:
        print(f"Error reading instances from domain '{domain}': {e}")
        return

    if not instances:
        print("No instances defined.")
        return

    print(f"Instances for domain '{domain}':")
    for name, params in instances.items():
        print(f"  - {name}: {params}")


import subprocess
import sys

def solve_with_fd_direct(domain_path: str, problem_path: str, timeout: int = 0) -> None:
    fd_path = "/home/cdavesa/.local/lib/python3.6/site-packages/up_fast_downward/downward/fast-downward.py"

    cmd = [
        sys.executable, fd_path,
        domain_path, problem_path,
        "--evaluator", "hlm=landmark_sum(lm_reasonable_orders_hps(lm_rhw()),transform=adapt_costs(one))",
        "--evaluator", "hff=ff(transform=adapt_costs(one))",
        "--search", "lazy_greedy([hlm,hff],preferred=[hlm,hff],cost_type=one,reopen_closed=false)",
    ]

    kwargs = {"timeout": timeout} if timeout > 0 else {}
    try:
        subprocess.run(cmd, **kwargs)
    except subprocess.TimeoutExpired:
        print(f"Timeout ({timeout}s)")

def main(argv: Optional[list[str]] = None) -> None:
    parser = argparse.ArgumentParser(prog="python run.py")
    parser.add_argument("--domain", help="Domain name (e.g. counters) or path to a PDDL domain file")
    parser.add_argument("--instance", default="default", help="Instance name or path to a PDDL problem file")
    parser.add_argument("--compilation", default="none", help="Compilation pipeline (see COMPILATION_PIPELINES)")
    parser.add_argument("--solving", default="fast-downward", help="Solver to use")
    parser.add_argument("--mode", choices=["oneshot", "anytime", "optimal"], default="oneshot", help="Solving mode")
    parser.add_argument("--timeout", type=int, default=0, help="Timeout in seconds (default: no timeout)")
    parser.add_argument("--list-domains", action="store_true", help="List available domains")
    parser.add_argument("--list-instances", help="List instances for a domain")
    parser.add_argument("--param", action="append", default=[], help="Extra planner param as key=value")
    args = parser.parse_args(argv)

    # Handle informational commands first
    if args.list_domains:
        list_domains()
        return

    if args.list_instances:
        list_instances(args.list_instances)
        return

    if not args.domain:
        parser.print_help()
        return

    # Parse extra planner parameters (e.g. --param heuristic=lmcut).
    planner_params: Dict[str, Any] = {}
    for p in args.param:
        if "=" not in p:
            raise ValueError(f"Invalid --param value: {p} (expected key=value)")
        k, v = p.split("=", 1)
        planner_params[k] = v

    # Build the UP Problem: either from PDDL files on disk or from a registered Python domain
    if os.path.isfile(args.domain) and os.access(args.domain, os.R_OK) and \
            os.path.isfile(args.instance) and os.access(args.instance, os.R_OK):
        reader = PDDLReader()
        problem = reader.parse_problem(args.domain, args.instance)
        #solve_with_fd_direct(args.domain, args.instance, timeout=args.timeout)
    else:
        dom = DOMAINS.get(args.domain)
        if dom is None:
            raise ValueError(
                f"Domain '{args.domain}' not found. "
                f"Available: {sorted(DOMAINS.keys())}"
            )
        problem = dom.build_problem(instance=args.instance)

    compile_and_solve(
        problem,
        args.solving,
        args.compilation,
        mode=args.mode,
        timeout=args.timeout,
        planner_params=planner_params,
    )


if __name__ == "__main__":
    main()