import os
from unified_planning.shortcuts import *
from docs.extensions.domains import compilation_solving
from docs.extensions.domains.instance_loading import resolve_instance
import argparse

# Run: python -m docs.extensions.domains.puzznic.Puzznic --compilation up --solving fast-downward


def _parse_prob_file(path):
    """Inlined from read_instance.py, fixed to take a real path instead of a
    hardcoded absolute '/probs/<name>.prob' that doesn't exist on this filesystem
    (the original script shelled out to it via subprocess and never actually
    resolved — 'experiments/puzznic/read_instance.py' doesn't exist either)."""
    with open(path) as f:
        inlines = f.readlines()
    lines = []
    for l in inlines:
        if l == '\n':
            break
        lines.append(l)
    matrix = [list(line.rstrip('\n')) for line in lines]

    initial_state = {}
    undefined = []
    row_index = 0
    for row in matrix[1:-1]:
        if row[0] == '#' and row[1] != '#':
            first_wall_index = -1
        else:
            first_wall_index = row.index('#') - 1
        if row[-1] == '#' and row[-2] != '#':
            last_wall_index = len(row[1:-1])
        else:
            last_wall_index = len(row) - 1 - row[::-1].index('#')
        for col_index, cell in enumerate(row[1:-1]):
            if col_index <= first_wall_index or col_index >= last_wall_index or cell == '#':
                undefined.append((row_index, col_index))
            elif cell != ' ':
                initial_state[(row_index, col_index)] = cell
        row_index += 1

    num_rows = row_index
    num_cols = len(matrix[0]) - 2
    return initial_state, undefined, num_rows, num_cols


def get_problem(instance_name=None):
    """Build the Puzznic Problem for one instance from instances.txt (defaults to
    the first line; instance data itself lives in probs/<name>.prob). Doesn't
    compile or solve anything."""
    name, _ = resolve_instance(__file__, instance_name)
    prob_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "probs", f"{name}.prob")
    initial_state, undefined, rows, columns = _parse_prob_file(prob_path)
    n_blocks = rows*columns - len(undefined)

    # --- Problem ---
    puzznic_problem = Problem(f'puzznic_problem_{name}')

    Pattern = UserType('Pattern')

    F = Object('F', Pattern) # Free
    B = Object('B', Pattern) # Blue
    Y = Object('Y', Pattern) # Yellow
    G = Object('G', Pattern) # Green
    R = Object('R', Pattern) # Red
    L = Object('L', Pattern) # Lightblue
    O = Object('O', Pattern) # Orange
    V = Object('V', Pattern) # Violet
    P = Object('P', Pattern) # Pink
    C = Object('C', Pattern) # Coal
    pattern_by_symbol = {'F': F, 'B': B, 'Y': Y, 'G': G, 'R': R, 'L': L, 'O': O, 'V': V, 'P': P, 'C': C}

    puzznic_problem.add_object(F)

    patterned = Fluent('patterned', ArrayType(rows, ArrayType(columns)), p=Pattern, undefined_positions=undefined)
    puzznic_problem.add_fluent(patterned, default_initial_value=False)

    # set_initial_value needs a single-level fluent_exp: patterned(pattern_obj) is one
    # (the extra `p` param applied), but patterned(pattern_obj)[r][c] is a nested
    # ArrayRead chain and isn't — same limitation as Labyrinth's card_at. Build one
    # full rows x columns grid per pattern symbol and set each fluent_exp once, instead
    # of per-cell.
    used_symbols = set(initial_state.values()) | {'F'}
    grids = {sym: [[False] * columns for _ in range(rows)] for sym in used_symbols}
    for (r, c), sym in initial_state.items():
        grids[sym][r][c] = True
    for r in range(rows):
        for c in range(columns):
            if (r, c) not in initial_state.keys() and (r, c) not in undefined:
                grids['F'][r][c] = True

    for sym in used_symbols:
        pattern_obj = pattern_by_symbol[sym]
        if not puzznic_problem.has_object(sym):
            puzznic_problem.add_object(pattern_obj)
        puzznic_problem.set_initial_value(patterned(pattern_obj), grids[sym])

    falling_flag = Fluent('falling_flag', DerivedBoolType())
    puzznic_problem.add_fluent(falling_flag, default_initial_value=False)
    matching_flag = Fluent('matching_flag', DerivedBoolType())
    puzznic_problem.add_fluent(matching_flag, default_initial_value=False)
    # NOTE: RTP's serializer wants these explicitly initialized (same requirement as
    # every other object fluent in this file), but UP refuses to let you call
    # set_initial_value on a derived fluent at all ("You cannot set the initial value
    # of a derived fluent!") — its value must come from the axiom, never be stored.
    # That's a genuine gap in RTP's protobuf writer for derived/axiom fluents, not
    # something fixable from the domain-model side; get_problem() still returns a
    # valid UP Problem, it just won't compile through RTP's native pipeline yet.

    # --- Axioms ---
    # Falling
    axiom_falling = Axiom('axiom_falling')
    axiom_falling.set_head(falling_flag)
    i = RangeVariable('i', 1, rows-1)
    j = RangeVariable('j', 0, columns-1)
    axiom_falling.add_body_condition(
        Exists(And(Not(patterned(F)[i-1][j]), patterned(F)[i][j]), i,j)
    )
    puzznic_problem.add_axiom(axiom_falling)

    # Matching
    axiom_matching = Axiom('axiom_matching')
    axiom_matching.set_head(matching_flag)
    i = RangeVariable('i', 0, rows-1)
    j = RangeVariable('j', 0, columns-2)
    p = Variable('p', Pattern)
    matching_horizontal = Exists(
        And(patterned(p)[i][j], patterned(p)[i][j + 1], Not(Equals(p,F))), i,j,p
    )
    i = RangeVariable('i', 0, rows-2)
    j = RangeVariable('j', 0, columns-1)
    p = Variable('p', Pattern)
    matching_vertical = Exists(
        And(patterned(p)[i][j], patterned(p)[i + 1][j], Not(patterned(F)[i][j])), i,j,p
    )
    axiom_matching.add_body_condition(
        Or(matching_horizontal, matching_vertical)
    )
    puzznic_problem.add_axiom(axiom_matching)

    # --- Actions ---
    # Move Block
    move_block_right = InstantaneousAction('move_block_right', p=Pattern, r=IntType(0, rows - 1), c=IntType(0, columns - 1))
    p = move_block_right.parameter('p')
    r = move_block_right.parameter('r')
    c = move_block_right.parameter('c')
    move_block_right.add_precondition(Not(falling_flag))
    move_block_right.add_precondition(Not(matching_flag))
    move_block_right.add_precondition(patterned(p)[r][c])
    move_block_right.add_precondition(Not(Equals(p, F)))
    move_block_right.add_precondition(patterned(F)[r][c + 1])
    move_block_right.add_effect(patterned(F)[r][c], True)
    move_block_right.add_effect(patterned(p)[r][c + 1], True)
    move_block_right.add_effect(patterned(p)[r][c], False)
    move_block_right.add_effect(patterned(F)[r][c + 1], Or(patterned(p)[r][c], patterned(p)[r][c+1]))
    puzznic_problem.add_action(move_block_right)

    move_block_left = InstantaneousAction('move_block_left', p=Pattern, r=IntType(0, rows - 1), c=IntType(0, columns - 1))
    p = move_block_left.parameter('p')
    r = move_block_left.parameter('r')
    c = move_block_left.parameter('c')
    move_block_left.add_precondition(Not(falling_flag))
    move_block_left.add_precondition(Not(matching_flag))
    move_block_left.add_precondition(patterned(p)[r][c])
    move_block_left.add_precondition(Not(Equals(p, F)))
    move_block_left.add_precondition(patterned(F)[r][c - 1])
    move_block_left.add_effect(patterned(F)[r][c], True)
    move_block_left.add_effect(patterned(p)[r][c - 1], True)
    move_block_left.add_effect(patterned(p)[r][c], False)
    move_block_left.add_effect(patterned(F)[r][c - 1], False)
    puzznic_problem.add_action(move_block_left)

    # Fall Block
    fall_block = InstantaneousAction('fall_block', p=Pattern, r=IntType(0, rows - 2), c=IntType(0, columns - 1))
    p = fall_block.parameter('p')
    r = fall_block.parameter('r')
    c = fall_block.parameter('c')
    fall_block.add_precondition(falling_flag)
    fall_block.add_precondition(patterned(p)[r][c])
    fall_block.add_precondition(Not(Equals(p, F)))
    fall_block.add_precondition(patterned(F)[r + 1][c])
    fall_block.add_effect(patterned(F)[r][c], True)
    fall_block.add_effect(patterned(p)[r + 1][c], True)
    fall_block.add_effect(patterned(p)[r][c], False)
    fall_block.add_effect(patterned(F)[r + 1][c], False)
    puzznic_problem.add_action(fall_block)

    # Match Blocks
    matching_blocks = InstantaneousAction('matching_blocks')
    matching_blocks.add_precondition(Not(falling_flag))
    matching_blocks.add_precondition(matching_flag)
    # The original single Or(...) over all 4 neighbor directions needed i+1 up to rows
    # and i-1/j-1 down to -1 — out of bounds for a RangeVariable spanning the full
    # [0, rows-1]/[0, columns-1] range, unlike axiom_falling/axiom_matching above which
    # already clamp their RangeVariable per-direction. Same fix here: one add_effect per
    # direction, each with the range clamped so that direction's neighbor read is always
    # in bounds. All four assign True to the same fluent, so they compose safely — a
    # cell with more than one matching neighbor just gets cleared by more than one of
    # them, which is redundant, not conflicting.
    p = Variable('p', Pattern)

    i = RangeVariable('i', 1, rows-1)
    j = RangeVariable('j', 0, columns-1)
    matching_blocks.add_effect(patterned(F)[i][j], True, condition=And(
        Not(Equals(p, F)), patterned(p)[i][j], patterned(p)[i - 1][j]
    ), forall=[i,j,p])

    i = RangeVariable('i', 0, rows-2)
    j = RangeVariable('j', 0, columns-1)
    matching_blocks.add_effect(patterned(F)[i][j], True, condition=And(
        Not(Equals(p, F)), patterned(p)[i][j], patterned(p)[i + 1][j]
    ), forall=[i,j,p])

    i = RangeVariable('i', 0, rows-1)
    j = RangeVariable('j', 1, columns-1)
    matching_blocks.add_effect(patterned(F)[i][j], True, condition=And(
        Not(Equals(p, F)), patterned(p)[i][j], patterned(p)[i][j - 1]
    ), forall=[i,j,p])

    i = RangeVariable('i', 0, rows-1)
    j = RangeVariable('j', 0, columns-2)
    matching_blocks.add_effect(patterned(F)[i][j], True, condition=And(
        Not(Equals(p, F)), patterned(p)[i][j], patterned(p)[i][j + 1]
    ), forall=[i,j,p])

    puzznic_problem.add_action(matching_blocks)

    # --- Goals ---
    for i in range(rows):
        for j in range(columns):
            if (i,j) not in undefined:
                puzznic_problem.add_goal(patterned(F)[i][j])

    # --- Costs ---
    costs: Dict[Action, Expression] = {
        move_block_right: Int(1),
        move_block_left: Int(1),
        matching_blocks: Int(0),
        fall_block: Int(0)
    }
    puzznic_problem.add_quality_metric(MinimizeActionCosts(costs))

    return puzznic_problem


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Solve Puzznic")
    parser.add_argument('--instance', type=str, default=None, help='Instance name from instances.txt')
    parser.add_argument('--compilation', type=str, help='Compilation strategy to apply')
    parser.add_argument('--solving', type=str, help='Planner to use')
    args = parser.parse_args()

    assert args.compilation in ['up'], f"Unsupported compilation type: {args.compilation} for this domain!"

    compilation_solving.compile_and_solve(get_problem(args.instance), args.solving, args.compilation)
