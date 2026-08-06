from unified_planning.shortcuts import *
from docs.extensions.domains import compilation_solving
from docs.extensions.domains.instance_loading import resolve_instance
import argparse

# Run: python -m docs.extensions.domains.pancake-sorting.PancakeSorting --compilation int --solving fast-downward


def get_problem(instance_name=None):
    """Build the Pancake Sorting Problem for one instance from instances.txt
    (defaults to the first line). Doesn't compile or solve anything."""
    name, rest = resolve_instance(__file__, instance_name)
    instance = [int(x) for x in rest.split(",")]
    n = len(instance)
    lower_bound = 0
    upper_bound = n - 1

    # --- Problem ---
    pancake_problem = Problem(f'pancake_problem_{name}')

    pancake = Fluent('pancake', ArrayType(n, IntType(lower_bound, upper_bound)))
    pancake_problem.add_fluent(pancake, default_initial_value=lower_bound)
    pancake_problem.set_initial_value(pancake, instance)

    # --- Action ---
    flip = InstantaneousAction('flip', f=IntType(1, n-1))
    f = flip.parameter('f')
    b = RangeVariable('b', 0, f)
    flip.add_effect(pancake[b], pancake[f - b], forall=[b])
    pancake_problem.add_action(flip)

    # --- Goals ---
    for i in range(n):
        pancake_problem.add_goal(Equals(pancake[i], i))

    # --- Costs ---
    costs: Dict[Action, Expression] = {
        flip: Int(1),
    }
    pancake_problem.add_quality_metric(MinimizeActionCosts(costs))

    return pancake_problem


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Solve Pancake Sorting Numeric")
    parser.add_argument('--instance', type=str, default=None, help='Instance name from instances.txt')
    parser.add_argument('--compilation', type=str, help='Compilation strategy to apply')
    parser.add_argument('--solving', type=str, help='Planner to use')
    args = parser.parse_args()

    assert args.compilation in ['uti', 'log', 'int'], \
        f"Unsupported compilation type: {args.compilation} for this domain!"

    compilation_solving.compile_and_solve(get_problem(args.instance), args.solving, args.compilation)
