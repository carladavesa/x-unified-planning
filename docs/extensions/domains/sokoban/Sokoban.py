import os
from docs.extensions.domains import compilation_solving
from docs.extensions.domains.instance_loading import resolve_instance
from unified_planning.shortcuts import *
import argparse

# Run: python -m docs.extensions.domains.sokoban.Sokoban --compilation up --solving fast-downward


def _parse_prob_file(path):
    """Inlined from read_instance.py, fixed to take a real path instead of a
    hardcoded absolute '/probs/<name>.txt' that doesn't exist on this filesystem
    (the original script shelled out to it via subprocess and never actually
    resolved — 'experiments/sokoban/read_instance.py' doesn't exist either)."""
    with open(path) as f:
        lines = f.readlines()

    matrix = [list(line.rstrip('\n')) for line in lines]
    initial_state = {}
    defined_positions = []
    goal_positions = []

    row_limits = {}
    for i, row in enumerate(matrix[1:-1]):
        if all(x == '#' for x in row) or '#' not in row:
            row_limits[i] = (0, len(row)-3)
        else:
            start = row.index('#')
            while row[start] == '#':
                start += 1
            end = len(row) - 1
            while row[end] == '#':
                end -= 1
            row_limits[i] = (start-1, end-1)

    columns = []
    num_cols = max(len(row) for row in matrix)
    padded_matrix = [list(''.join(row).ljust(num_cols)) for row in matrix]
    for col_idx in range(num_cols):
        columns.append([row[col_idx] for row in padded_matrix])
    col_limits = {}
    for i, col in enumerate(columns[1:-1]):
        if all(x == '#' for x in col) or '#' not in col:
            col_limits[i] = (0, len(col)-3)
        else:
            start = col.index('#')
            while col[start] == '#':
                start += 1
            end = len(col) - 1 - col[::-1].index('#')
            while col[end] == '#':
                end -= 1
            col_limits[i] = (start-1, end-1)

    for ri, row in enumerate(matrix[1:-1]):
        for ci, cell in enumerate(row[1:-1]):
            if cell != '#' and (ri >= col_limits[ci][0] and ri <= col_limits[ci][1]) and (ci >= row_limits[ri][0] and ci <= row_limits[ri][1]):
                defined_positions.append((ri, ci))
                if cell == '@':
                    initial_state[(ri, ci)] = 'P' # Person
                elif cell == '$':
                    initial_state[(ri, ci)] = 'B' # Box
                elif cell == '.':
                    goal_positions.append((ri, ci))
                elif cell == '*':
                    goal_positions.append((ri, ci))
                    initial_state[(ri, ci)] = 'B' # Box

    rows = max(x[0] for x in defined_positions) + 1
    num_columns = max(x[1] for x in defined_positions) + 1
    all_positions = {(f, c) for f in range(rows) for c in range(num_columns)}
    undefined_positions = sorted(all_positions - set(defined_positions))
    return initial_state, undefined_positions, goal_positions, rows, num_columns


def get_problem(instance_name=None):
    """Build the Sokoban Problem for one instance from instances.txt (defaults to
    the first line; instance data itself lives in probs/<name>.txt). Doesn't
    compile or solve anything."""
    name, _ = resolve_instance(__file__, instance_name)
    prob_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "probs", f"{name}.txt")
    initial_state, undefined_positions, goal_positions, rows, columns = _parse_prob_file(prob_path)

    # --- Problem ---
    # Sokoban model with an action per direction of movement
    sokoban_problem = Problem(f'sokoban_problem_{name}')

    Pattern = UserType('Pattern')
    P = Object('P', Pattern)  # Player
    B = Object('B', Pattern)  # Box
    pattern_by_symbol = {'P': P, 'B': B}
    sokoban_problem.add_objects([P, B])

    grid = Fluent('grid', ArrayType(rows, ArrayType(columns)), p=Pattern, undefined_positions=undefined_positions)
    sokoban_problem.add_fluent(grid, default_initial_value=False)
    # set_initial_value needs a single-level fluent_exp: grid(pattern_obj) is one (the
    # extra `p` param applied), but grid(pattern_obj)[r][c] is a nested ArrayRead chain
    # and isn't — same limitation as Labyrinth/Puzznic. Build one full grid per pattern
    # symbol and set each fluent_exp once, instead of per-cell.
    for sym, obj in pattern_by_symbol.items():
        cells = [[False] * columns for _ in range(rows)]
        for (r, c), v in initial_state.items():
            if v == sym:
                cells[r][c] = True
        sokoban_problem.set_initial_value(grid(obj), cells)

    # --- Actions ---
    move_right = InstantaneousAction('move_right', r=IntType(0, rows - 1), c=IntType(0, columns - 1))
    r = move_right.parameter('r')
    c = move_right.parameter('c')
    move_right.add_precondition(grid(P)[r][c])
    move_right.add_precondition(Not(grid(P)[r][c+1]))
    move_right.add_precondition(Not(grid(B)[r][c+1]))
    move_right.add_effect(grid(P)[r][c+1], True)
    move_right.add_effect(grid(P)[r][c], False)

    move_left = InstantaneousAction('move_left', r=IntType(0, rows - 1), c=IntType(0, columns - 1))
    r = move_left.parameter('r')
    c = move_left.parameter('c')
    move_left.add_precondition(grid(P)[r][c])
    move_left.add_precondition(Not(grid(P)[r][c-1]))
    move_left.add_precondition(Not(grid(B)[r][c-1]))
    move_left.add_effect(grid(P)[r][c-1], True)
    move_left.add_effect(grid(P)[r][c], False)

    move_up = InstantaneousAction('move_up', r=IntType(0, rows - 1), c=IntType(0, columns - 1))
    r = move_up.parameter('r')
    c = move_up.parameter('c')
    move_up.add_precondition(grid(P)[r][c])
    move_up.add_precondition(Not(grid(P)[r-1][c]))
    move_up.add_precondition(Not(grid(B)[r-1][c]))
    move_up.add_effect(grid(P)[r-1][c], True)
    move_up.add_effect(grid(P)[r][c], False)

    move_down = InstantaneousAction('move_down', r=IntType(0, rows - 1), c=IntType(0, columns - 1))
    r = move_down.parameter('r')
    c = move_down.parameter('c')
    move_down.add_precondition(grid(P)[r][c])
    move_down.add_precondition(Not(grid(P)[r+1][c]))
    move_down.add_precondition(Not(grid(B)[r+1][c]))
    move_down.add_effect(grid(P)[r+1][c], True)
    move_down.add_effect(grid(P)[r][c], False)

    push_box_right = InstantaneousAction('push_box_right', r=IntType(0, rows - 1), c=IntType(0, columns - 1))
    r = push_box_right.parameter('r')
    c = push_box_right.parameter('c')
    push_box_right.add_precondition(grid(P)[r][c])
    push_box_right.add_precondition(grid(B)[r][c+1])
    push_box_right.add_precondition(Not(grid(P)[r][c+2]))
    push_box_right.add_precondition(Not(grid(B)[r][c+2]))
    push_box_right.add_effect(grid(P)[r][c+1], True)
    push_box_right.add_effect(grid(B)[r][c+2], True)
    push_box_right.add_effect(grid(P)[r][c], False)
    push_box_right.add_effect(grid(B)[r][c+1], False)

    push_box_left = InstantaneousAction('push_box_left', r=IntType(0, rows - 1), c=IntType(0, columns - 1))
    r = push_box_left.parameter('r')
    c = push_box_left.parameter('c')
    push_box_left.add_precondition(grid(P)[r][c])
    push_box_left.add_precondition(grid(B)[r][c-1])
    push_box_left.add_precondition(Not(grid(P)[r][c-2]))
    push_box_left.add_precondition(Not(grid(B)[r][c-2]))
    push_box_left.add_effect(grid(P)[r][c-1], True)
    push_box_left.add_effect(grid(B)[r][c-2], True)
    push_box_left.add_effect(grid(P)[r][c], False)
    push_box_left.add_effect(grid(B)[r][c-1], False)

    push_box_up = InstantaneousAction('push_box_up', r=IntType(0, rows - 1), c=IntType(0, columns - 1))
    r = push_box_up.parameter('r')
    c = push_box_up.parameter('c')
    push_box_up.add_precondition(grid(P)[r][c])
    push_box_up.add_precondition(grid(B)[r-1][c])
    push_box_up.add_precondition(Not(grid(P)[r-2][c]))
    push_box_up.add_precondition(Not(grid(B)[r-2][c]))
    push_box_up.add_effect(grid(P)[r-1][c], True)
    push_box_up.add_effect(grid(B)[r-2][c], True)
    push_box_up.add_effect(grid(P)[r][c], False)
    push_box_up.add_effect(grid(B)[r-1][c], False)

    push_box_down = InstantaneousAction('push_box_down', r=IntType(0, rows - 1), c=IntType(0, columns - 1))
    r = push_box_down.parameter('r')
    c = push_box_down.parameter('c')
    push_box_down.add_precondition(grid(P)[r][c])
    push_box_down.add_precondition(grid(B)[r+1][c])
    push_box_down.add_precondition(Not(grid(P)[r+2][c]))
    push_box_down.add_precondition(Not(grid(B)[r+2][c]))
    push_box_down.add_effect(grid(P)[r+1][c], True)
    push_box_down.add_effect(grid(B)[r+2][c], True)
    push_box_down.add_effect(grid(P)[r][c], False)
    push_box_down.add_effect(grid(B)[r+1][c], False)

    sokoban_problem.add_actions([move_right, move_left, move_up, move_down, push_box_right, push_box_left, push_box_up, push_box_down])

    # --- Goals ---
    for r,c in goal_positions:
        sokoban_problem.add_goal(grid(B)[r][c])

    # --- Costs ---
    costs: Dict[Action, Expression] = {
        move_right: Int(0),
        move_left: Int(0),
        move_up: Int(0),
        move_down: Int(0),
        push_box_right: Int(1),
        push_box_left: Int(1),
        push_box_up: Int(1),
        push_box_down: Int(1),
    }
    sokoban_problem.add_quality_metric(MinimizeActionCosts(costs))

    return sokoban_problem


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Solve Sokoban")
    parser.add_argument('--instance', type=str, default=None, help='Instance name from instances.txt')
    parser.add_argument('--compilation', type=str, help='Compilation strategy to apply')
    parser.add_argument('--solving', type=str, help='Planner to use')
    args = parser.parse_args()

    assert args.compilation in ['up'], f"Unsupported compilation type: {args.compilation} for this domain!"

    compilation_solving.compile_and_solve(get_problem(args.instance), args.solving, args.compilation)
