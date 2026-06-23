"""Folding planning domain.

Example:
  python run.py --domain folding --compilation uti --solving fast-downward
"""

from typing import Dict, Optional
from unified_planning.model import Action, Expression, Object, RangeVariable
from unified_planning.shortcuts import (
    Fluent,
    Int,
    IntType,
    InstantaneousAction,
    MinimizeActionCosts,
    Problem, UserType, Minus, Plus, LE, GE, ArrayType, And, Or, Equals, Not, Forall,
)
from domains.base import Domain

INSTANCES: Dict[str, tuple[int, int, list[tuple[int, int]], list[tuple[int, int]]]] = {
    "example3": (3, 3, [(2,0), (1,0), (0,0)], [(2,0), (2,1), (1,1)]),
    "example5": (5, 5, [(4,0), (3,0), (2,0), (1,0), (0,0)], [(4,0), (4,1), (3,1), (3,0), (2,0)]),
    "example8": (8, 8, [(7,0), (6,0), (5,0), (4,0), (3,0), (2,0), (1,0), (0,0)], [(7,0), (6,0), (6,1), (7,1), (7,2), (7,3), (7,4), (7,5)]),
    "o01": (15, 15, [(7, 7), (6, 7), (5, 7), (4, 7), (3, 7), (2, 7), (1, 7), (0, 7)], [(7, 7), (7, 8), (8, 8), (8, 7), (9, 7), (9, 8), (10, 8), (10, 9)])
}


class FoldingDomain(Domain):
    def __init__(self) -> None:
        self._instances = INSTANCES

    def list_instances(self) -> dict[str, dict[str, list]]:
        return {k: {f"{c} folding": v} for k, (c, v) in self._instances.items()}

    def get_instance(self, instance: Optional[str] = None) -> tuple[int, int, list[tuple[int, int]], list[tuple[int, int]]]:
        """Return (max_int, counter_values) for the given instance."""

        if instance and instance in self._instances:
            r, c, initial_state, goal_state = self._instances[instance]
            return r, c, initial_state, goal_state
        else:
            raise ValueError(f"Instance '{instance}' not found!")


    def build_problem(self, instance: str | None = None) -> "Problem":
        r, c, initial_state, goal_state = self.get_instance(instance)
        nodes = len(initial_state)

        # --- Problem ---
        problem = Problem('folding_problem')

        rows = Fluent('rows', ArrayType(nodes, IntType(0, r - 1)))
        cols = Fluent('cols', ArrayType(nodes, IntType(0, c - 1)))

        problem.add_fluent(rows, default_initial_value=0)
        problem.add_fluent(cols, default_initial_value=0)

        for i, s in enumerate(initial_state):
            problem.set_initial_value(rows[i], s[0])
            problem.set_initial_value(cols[i], s[1])

        rotate_clockwise = InstantaneousAction('rotate_clockwise', n=IntType(0, nodes - 2))
        n = rotate_clockwise.parameter('n')
        g = RangeVariable('g', n + 1, nodes - 1)
        b = RangeVariable('b', 0, n)
        for i in range(nodes):
            for j in range(i + 1, nodes):
                if j == i + 1:
                    # Consecutive nodes must be adjacent
                    rotate_clockwise.add_precondition(
                        Or(
                            And(
                                Equals(rows[j], rows[i]),
                                Or(Equals(cols[j], cols[i] + 1), Equals(cols[j] + 1, cols[i]))
                            ),
                            And(
                                Equals(cols[j], cols[i]),
                                Or(Equals(rows[j], rows[i] + 1), Equals(rows[j] + 1, rows[i]))
                            )
                        )
                    )
                else:
                    # No consecutive nodes: no collision
                    rotate_clockwise.add_precondition(
                        Or(Not(Equals(rows[i], rows[j])), Not(Equals(cols[i], cols[j])))
                    )
        # All nodes that are being moved (g), are not in the same position as the ones still (b)
        next_row = rows[n] - cols[n] + cols[g]
        next_col = cols[n] + rows[n] - rows[g]
        rotate_clockwise.add_precondition(Forall(
            Or(Not(Equals(rows[b], next_row)),
               Not(Equals(cols[b], next_col))), g, b))

        rotate_clockwise.add_effect(rows[g], next_row, forall=[g])
        rotate_clockwise.add_effect(cols[g], next_col, forall=[g])
        problem.add_action(rotate_clockwise)

        rotate_counter_clockwise = InstantaneousAction('rotate_counter_clockwise', n=IntType(0, nodes - 1))
        n = rotate_counter_clockwise.parameter('n')
        g = RangeVariable('g', n + 1, nodes - 1)
        b = RangeVariable('b', 0, n)
        for i in range(nodes):
            for j in range(i + 1, nodes):
                if j == i + 1:
                    # Consecutive nodes must be adjacent
                    rotate_counter_clockwise.add_precondition(
                        Or(
                            And(
                                Equals(rows[j], rows[i]),
                                Or(Equals(cols[j], cols[i] + 1), Equals(cols[j] + 1, cols[i]))
                            ),
                            And(
                                Equals(cols[j], cols[i]),
                                Or(Equals(rows[j], rows[i] + 1), Equals(rows[j] + 1, rows[i]))
                            )
                        )
                    )
                else:
                    # No consecutive nodes: no collision
                    rotate_counter_clockwise.add_precondition(
                        Or(Not(Equals(rows[i], rows[j])), Not(Equals(cols[i], cols[j])))
                    )
        # All nodes that are being moved (g), are not in the same position as the ones still (b)
        next_row = rows[n] + cols[n] - cols[g]
        next_col = cols[n] - rows[n] + rows[g]
        rotate_counter_clockwise.add_precondition(Forall(
            Or(Not(Equals(rows[b], next_row)),
               Not(Equals(cols[b], next_col))), g, b))

        rotate_counter_clockwise.add_effect(rows[g], next_row, forall=[g])
        rotate_counter_clockwise.add_effect(cols[g], next_col, forall=[g])
        problem.add_action(rotate_counter_clockwise)

        for i, g in enumerate(goal_state):
            problem.add_goal(Equals(rows[i], g[0]))
            problem.add_goal(Equals(cols[i], g[1]))

        costs: Dict[Action, Expression] = {
            rotate_clockwise: Int(1),
            rotate_counter_clockwise: Int(1),
        }

        problem.add_quality_metric(MinimizeActionCosts(costs))

        return problem


DOMAIN = FoldingDomain()