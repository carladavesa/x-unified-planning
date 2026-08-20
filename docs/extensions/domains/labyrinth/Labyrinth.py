import ast
import os
from docs.extensions.domains import compilation_solving
from docs.extensions.domains.instance_loading import resolve_instance
from unified_planning.shortcuts import *
import argparse

# Run: python -m docs.extensions.domains.labyrinth.Labyrinth --compilation up --solving fast-downward


def _load_up_format_instance(name):
    """n/instance/paths live in up-format-instances/<name>.txt (3 lines), keyed by the
    same name as instances.txt. Two files (p4_5_1, p4_5_2) were generated with a stray
    underscore in the filename (p_4_5_1.txt / p_4_5_2.txt) — fall back to that spelling."""
    directory = os.path.join(os.path.dirname(os.path.abspath(__file__)), "up-format-instances")
    for candidate in (f"{name}.txt", f"p_{name[1:]}.txt"):
        path = os.path.join(directory, candidate)
        if os.path.isfile(path):
            with open(path) as f:
                n_line, instance_line, paths_line = f.read().splitlines()
            return int(n_line), ast.literal_eval(instance_line), ast.literal_eval(paths_line)
    raise ValueError(f"No up-format-instances file found for {name!r} in {directory}")


def get_problem(instance_name=None):
    """Build the Labyrinth Problem for one instance from instances.txt (defaults to
    the first line; instance data itself lives in up-format-instances/). Doesn't
    compile or solve anything."""
    name, _ = resolve_instance(__file__, instance_name)
    n, instance, paths = _load_up_format_instance(name)
    n_cards = n * n

    # --- Problem ---
    labyrinth = Problem(f'labyrinth_{name}')

    Card = UserType("Card")
    Direction = UserType("Direction")
    N = Object("N", Direction)
    S = Object("S", Direction)
    E = Object("E", Direction)
    W = Object("W", Direction)
    direction_by_name = {"N": N, "S": S, "E": E, "W": W}
    labyrinth.add_objects([N, S, E, W])
    labyrinth.add_objects([Object(f"card_{i}", Card) for i in range(n_cards)])
    card_0 = labyrinth.object('card_0')

    card_at = Fluent('card_at', ArrayType(n, ArrayType(n, Card)))
    labyrinth.add_fluent(card_at, default_initial_value=card_0)

    robot_at = Fluent('robot_at', Card)
    labyrinth.add_fluent(robot_at, default_initial_value=card_0)
    # RTP's serializer requires object fluents to be explicitly initialized —
    # default_initial_value alone isn't enough (unlike bool/int/real fluents).
    labyrinth.set_initial_value(robot_at, card_0)

    connections = Fluent('connections', c=Card, d=Direction)
    labyrinth.add_fluent(connections, default_initial_value=False)
    # Per-cell set_initial_value(card_at[r][c], ...) doesn't work: a nested array
    # read isn't a fluent_exp as far as set_initial_value's assertion is concerned
    # (true of the original hardcoded-instance code too, not something this
    # refactor introduced) — set the whole array at once instead, like
    # PancakeSorting.py/15Puzzle.py already do for their arrays.
    card_objects = [[labyrinth.object(f'card_{str(instance[r][c])}') for c in range(n)] for r in range(n)]
    labyrinth.set_initial_value(card_at, card_objects)
    for r in range(n):
        for c in range(n):
            card_object = card_objects[r][c]
            for i in paths[r][c]:
                labyrinth.set_initial_value(connections(card_object, direction_by_name[i]), True)

    # --- Actions ---
    move_north = InstantaneousAction('move_north', r=IntType(0, n-1), c=IntType(0, n-1))
    r = move_north.parameter('r')
    c = move_north.parameter('c')
    move_north.add_precondition(Equals(robot_at, card_at[r][c]))
    move_north.add_precondition(connections(card_at[r][c], N))
    move_north.add_precondition(connections(card_at[r-1][c], S))
    move_north.add_effect(robot_at, card_at[r-1][c])
    labyrinth.add_action(move_north)

    move_south = InstantaneousAction('move_south', r=IntType(0, n-1), c=IntType(0, n-1))
    r = move_south.parameter('r')
    c = move_south.parameter('c')
    move_south.add_precondition(Equals(robot_at, card_at[r][c]))
    move_south.add_precondition(connections(card_at[r][c], S))
    move_south.add_precondition(connections(card_at[r+1][c], N))
    move_south.add_effect(robot_at, card_at[r+1][c])
    labyrinth.add_action(move_south)

    move_east = InstantaneousAction('move_east', r=IntType(0, n-1), c=IntType(0, n-1))
    r = move_east.parameter('r')
    c = move_east.parameter('c')
    move_east.add_precondition(Equals(robot_at, card_at[r][c]))
    move_east.add_precondition(connections(card_at[r][c], E))
    move_east.add_precondition(connections(card_at[r][c+1], W))
    move_east.add_effect(robot_at, card_at[r][c+1])
    labyrinth.add_action(move_east)

    move_west = InstantaneousAction('move_west', r=IntType(0, n-1), c=IntType(0, n-1))
    r = move_west.parameter('r')
    c = move_west.parameter('c')
    move_west.add_precondition(Equals(robot_at, card_at[r][c]))
    move_west.add_precondition(connections(card_at[r][c], W))
    move_west.add_precondition(connections(card_at[r][c-1], E))
    move_west.add_effect(robot_at, card_at[r][c-1])
    labyrinth.add_action(move_west)

    rotate_col_up = InstantaneousAction('rotate_col_up', c=IntType(0, n-1))
    c = rotate_col_up.parameter('c')
    # No row in this column can contain the robot.
    all_rows = RangeVariable('all_rows', 0, n - 1)
    rotate_col_up.add_precondition(Forall(Not(Equals(robot_at, card_at[all_rows][c])), all_rows))
    rotated_rows = RangeVariable("rotated_rows", 1, n - 1)
    rotate_col_up.add_effect(card_at[rotated_rows-1][c], card_at[rotated_rows][c], forall=[rotated_rows])
    rotate_col_up.add_effect(card_at[n-1][c], card_at[0][c])
    labyrinth.add_action(rotate_col_up)

    rotate_col_down = InstantaneousAction('rotate_col_down', c=IntType(0, n-1))
    c = rotate_col_down.parameter('c')
    all_rows = RangeVariable("all_rows", 0, n - 1)
    rotate_col_down.add_precondition(Forall(Not(Equals(robot_at, card_at[all_rows][c])), all_rows))
    rotated_rows = RangeVariable("rotated_rows", 1, n - 1)
    rotate_col_down.add_effect(card_at[rotated_rows][c], card_at[rotated_rows-1][c], forall=[rotated_rows])
    rotate_col_down.add_effect(card_at[0][c], card_at[n-1][c])
    labyrinth.add_action(rotate_col_down)

    rotate_row_left = InstantaneousAction('rotate_row_left', r=IntType(0, n-1))
    r = rotate_row_left.parameter('r')
    all_cols = RangeVariable("all_cols", 0, n - 1)
    rotate_row_left.add_precondition(Forall(Not(Equals(robot_at, card_at[r][all_cols])), all_cols))
    rotated_cols = RangeVariable("rotated_cols", 0, n - 2)
    rotate_row_left.add_effect(card_at[r][rotated_cols], card_at[r][rotated_cols+1], forall=[rotated_cols])
    rotate_row_left.add_effect(card_at[r][n-1], card_at[r][0])
    labyrinth.add_action(rotate_row_left)

    rotate_row_right = InstantaneousAction('rotate_row_right', r=IntType(0, n-1))
    r = rotate_row_right.parameter('r')
    all_cols = RangeVariable("all_cols", 0, n - 1)
    rotate_row_right.add_precondition(Forall(Not(Equals(robot_at, card_at[r][all_cols])), all_cols))
    rotated_cols = RangeVariable("rotated_cols", 1, n - 1)
    rotate_row_right.add_effect(card_at[r][rotated_cols], card_at[r][rotated_cols-1], forall=[rotated_cols])
    rotate_row_right.add_effect(card_at[r][0], card_at[r][n-1])
    labyrinth.add_action(rotate_row_right)

    # --- Goals ---
    labyrinth.add_goal(Equals(robot_at, card_at[n-1][n-1]))
    labyrinth.add_goal(connections(card_at[n-1][n-1], S))

    # --- Costs ---
    costs: Dict[Action, Expression] = {
        move_west: Int(1),
        move_north: Int(1),
        move_south: Int(1),
        move_east: Int(1),
        rotate_col_up: Int(1),
        rotate_col_down: Int(1),
        rotate_row_left: Int(1),
        rotate_row_right: Int(1),
    }
    labyrinth.add_quality_metric(MinimizeActionCosts(costs))

    return labyrinth


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Solve Labyrinth Problem")
    parser.add_argument('--instance', type=str, default=None, help='Instance name from instances.txt')
    parser.add_argument('--compilation', type=str, help='Compilation strategy to apply')
    parser.add_argument('--solving', type=str, help='Planner to use')
    args = parser.parse_args()

    compilation_solving.compile_and_solve(get_problem(args.instance), args.solving, args.compilation)
