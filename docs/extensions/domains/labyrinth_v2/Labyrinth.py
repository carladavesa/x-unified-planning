import ast
import os
from docs.extensions.domains import compilation_solving
from docs.extensions.domains.instance_loading import resolve_instance
from unified_planning.shortcuts import *
import argparse

# Run: python -m docs.extensions.domains.labyrinth_v2.Labyrinth --compilation iasciu --solving fast-downward

# Python counterpart of labyrinth_v2/pddl-extension/domain.pddl ("Option A", the
# third Labyrinth design). It differs from docs/extensions/domains/labyrinth/ in
# how the board is represented, not in what the puzzle is:
#
#   labyrinth (v1)                      labyrinth_v2 (this file)
#   ------------------------------      ------------------------------------
#   card_at  : array[n][n] of Card      card_at : array[n][n] of set(Direction)
#   connections(card, direction)        (gone — each cell holds its own dirs)
#   robot_at : Card                     robot_row / robot_col : int[0, n-1]
#   n_cards Card objects                (gone — cell identity is its position)
#
# Storing the open-directions set *in* the cell means a rotation carries each
# cell's walls along with it for free, so the rotate actions no longer need
# per-card bookkeeping and the move actions test membership on a cell read.
# This is the encoding the 'iasciu' pipeline targets (it runs SETS_REMOVING).


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
    # The instance file's second line is the card-id permutation, which this encoding
    # has no use for: without Card objects a cell is identified by its position, and
    # paths[r][c] already gives the open directions of whatever card sits at (r, c).
    n, _instance, paths = _load_up_format_instance(name)

    # --- Problem ---
    labyrinth = Problem(f'labyrinth2_{name}')

    Direction = UserType("Direction")
    N = Object("N", Direction)
    S = Object("S", Direction)
    E = Object("E", Direction)
    W = Object("W", Direction)
    direction_by_name = {"N": N, "S": S, "E": E, "W": W}
    labyrinth.add_objects([N, S, E, W])

    card_at = Fluent('card_at', ArrayType(n, ArrayType(n, SetType(Direction))))
    labyrinth.add_fluent(card_at, default_initial_value=set())

    robot_row = Fluent('robot_row', IntType(0, n - 1))
    robot_col = Fluent('robot_col', IntType(0, n - 1))
    labyrinth.add_fluent(robot_row, default_initial_value=0)
    labyrinth.add_fluent(robot_col, default_initial_value=0)

    # Set the whole array at once: a per-cell set_initial_value(card_at[r][c], ...)
    # is rejected, because a nested array read is not a fluent_exp as far as
    # set_initial_value's assertion is concerned.
    labyrinth.set_initial_value(card_at, [
        [{direction_by_name[d] for d in paths[r][c]} for c in range(n)] for r in range(n)
    ])
    # The robot starts on card_0, which every instance places at (0, 0).
    labyrinth.set_initial_value(robot_row, 0)
    labyrinth.set_initial_value(robot_col, 0)

    # --- Actions ---
    # Each move checks that the robot is on (r, c), that (r, c) is open towards the
    # neighbour, and that the neighbour is open back the other way. The explicit
    # bounds guard keeps the neighbour read card_at[r-1][c] etc. inside the array.
    move_north = InstantaneousAction('move_north', r=IntType(0, n-1), c=IntType(0, n-1))
    r = move_north.parameter('r')
    c = move_north.parameter('c')
    move_north.add_precondition(GE(r, 1))
    move_north.add_precondition(Equals(robot_row, r))
    move_north.add_precondition(Equals(robot_col, c))
    move_north.add_precondition(SetMember(N, card_at[r][c]))
    move_north.add_precondition(SetMember(S, card_at[r-1][c]))
    move_north.add_effect(robot_row, r - 1)
    labyrinth.add_action(move_north)

    move_south = InstantaneousAction('move_south', r=IntType(0, n-1), c=IntType(0, n-1))
    r = move_south.parameter('r')
    c = move_south.parameter('c')
    move_south.add_precondition(LE(r, n - 2))
    move_south.add_precondition(Equals(robot_row, r))
    move_south.add_precondition(Equals(robot_col, c))
    move_south.add_precondition(SetMember(S, card_at[r][c]))
    move_south.add_precondition(SetMember(N, card_at[r+1][c]))
    move_south.add_effect(robot_row, r + 1)
    labyrinth.add_action(move_south)

    move_east = InstantaneousAction('move_east', r=IntType(0, n-1), c=IntType(0, n-1))
    r = move_east.parameter('r')
    c = move_east.parameter('c')
    move_east.add_precondition(LE(c, n - 2))
    move_east.add_precondition(Equals(robot_row, r))
    move_east.add_precondition(Equals(robot_col, c))
    move_east.add_precondition(SetMember(E, card_at[r][c]))
    move_east.add_precondition(SetMember(W, card_at[r][c+1]))
    move_east.add_effect(robot_col, c + 1)
    labyrinth.add_action(move_east)

    move_west = InstantaneousAction('move_west', r=IntType(0, n-1), c=IntType(0, n-1))
    r = move_west.parameter('r')
    c = move_west.parameter('c')
    move_west.add_precondition(GE(c, 1))
    move_west.add_precondition(Equals(robot_row, r))
    move_west.add_precondition(Equals(robot_col, c))
    move_west.add_precondition(SetMember(W, card_at[r][c]))
    move_west.add_precondition(SetMember(E, card_at[r][c-1]))
    move_west.add_effect(robot_col, c - 1)
    labyrinth.add_action(move_west)

    # Rotations. The direction sets ride along with the cells, so a single check
    # that the robot is not in the moving row/column replaces v1's per-card tests.
    # The writes are unrolled to mirror domain.pddl (UP effects all read the
    # pre-state, so assigning every cell at once is a genuine rotation).
    rotate_col_up = InstantaneousAction('rotate_col_up', c=IntType(0, n-1))
    c = rotate_col_up.parameter('c')
    rotate_col_up.add_precondition(Not(Equals(robot_col, c)))
    for i in range(n - 1):
        rotate_col_up.add_effect(card_at[i][c], card_at[i+1][c])
    rotate_col_up.add_effect(card_at[n-1][c], card_at[0][c])
    labyrinth.add_action(rotate_col_up)

    rotate_col_down = InstantaneousAction('rotate_col_down', c=IntType(0, n-1))
    c = rotate_col_down.parameter('c')
    rotate_col_down.add_precondition(Not(Equals(robot_col, c)))
    for i in range(1, n):
        rotate_col_down.add_effect(card_at[i][c], card_at[i-1][c])
    rotate_col_down.add_effect(card_at[0][c], card_at[n-1][c])
    labyrinth.add_action(rotate_col_down)

    rotate_row_left = InstantaneousAction('rotate_row_left', r=IntType(0, n-1))
    r = rotate_row_left.parameter('r')
    rotate_row_left.add_precondition(Not(Equals(robot_row, r)))
    for i in range(n - 1):
        rotate_row_left.add_effect(card_at[r][i], card_at[r][i+1])
    rotate_row_left.add_effect(card_at[r][n-1], card_at[r][0])
    labyrinth.add_action(rotate_row_left)

    rotate_row_right = InstantaneousAction('rotate_row_right', r=IntType(0, n-1))
    r = rotate_row_right.parameter('r')
    rotate_row_right.add_precondition(Not(Equals(robot_row, r)))
    for i in range(1, n):
        rotate_row_right.add_effect(card_at[r][i], card_at[r][i-1])
    rotate_row_right.add_effect(card_at[r][0], card_at[r][n-1])
    labyrinth.add_action(rotate_row_right)

    # --- Goals ---
    # Reach the bottom-right cell, which must be open to the south (the exit).
    labyrinth.add_goal(Equals(robot_row, n - 1))
    labyrinth.add_goal(Equals(robot_col, n - 1))
    labyrinth.add_goal(SetMember(S, card_at[n-1][n-1]))

    # --- Costs ---
    # domain.pddl declares no :metric, so this is a deliberate addition (as in every
    # other domain script here) and the one divergence --compare will report.
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
    parser = argparse.ArgumentParser(description="Solve Labyrinth Problem (v2, sets-in-grid)")
    parser.add_argument('--instance', type=str, default=None, help='Instance name from instances.txt')
    parser.add_argument('--compilation', type=str, help='Compilation strategy to apply')
    parser.add_argument('--solving', type=str, help='Planner to use')
    args = parser.parse_args()

    compilation_solving.compile_and_solve(get_problem(args.instance), args.solving, args.compilation)