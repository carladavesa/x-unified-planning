"""slitherlink planning domain.

High-level encoding using ArrayType to represent the grid:
- node degrees over a (rows+1) x (cols+1) node matrix
- cell capacities over a rows x cols cell matrix
- selected horizontal/vertical edges as boolean matrices
"""

import os
import re
from typing import Optional

from unified_planning.shortcuts import (
    And,
    ArrayType,
    BoolType,
    Equals,
    Fluent,
    GE,
    IntType,
    InstantaneousAction,
    LT,
    Minus,
    Not,
    Or,
    Plus,
    Problem,
)

from domains.base import Domain

PDDL_DIR = os.path.join(os.path.dirname(__file__), "slitherlink", "handcrafted")
INSTANCES: list[str] = [f"p{i:02d}" for i in range(1, 21)]


class SlitherlinkDomain(Domain):
    def __init__(self) -> None:
        self._instances = INSTANCES

    def list_instances(self) -> dict[str, dict]:
        return {k: {} for k in self._instances}

    @staticmethod
    def _extract_balanced_block(content: str, start_token: str) -> str:
        start = content.find(start_token)
        if start < 0:
            return ""
        depth = 0
        for idx in range(start, len(content)):
            if content[idx] == "(":
                depth += 1
            elif content[idx] == ")":
                depth -= 1
                if depth == 0:
                    return content[start : idx + 1]
        return ""

    @staticmethod
    def _node_name_to_rc(name: str) -> tuple[int, int]:
        m = re.fullmatch(r"n-(\d+)-(\d+)", name)
        if m is None:
            raise ValueError(f"Invalid node name '{name}'")
        return int(m.group(1)), int(m.group(2))

    @staticmethod
    def _inside_cell_name_to_rc(name: str) -> tuple[int, int] | None:
        m = re.fullmatch(r"cell-(\d+)-(\d+)", name)
        if m is None:
            return None
        return int(m.group(1)), int(m.group(2))

    def _parse_pddl(self, filepath: str) -> dict:
        with open(filepath, "r", encoding="utf-8") as f:
            content = f.read()

        content = re.sub(r";.*", "", content)

        obj_match = re.search(
            r"\(:objects\s*(.*?)\)\s*\(:init",
            content,
            re.IGNORECASE | re.DOTALL,
        )
        if obj_match is None:
            raise ValueError(f"Could not parse objects in '{filepath}'")
        objects_raw = obj_match.group(1).strip()

        node_names: list[str] = []
        cell_names: list[str] = []
        typed_tokens = objects_raw.replace("\n", " ").split()
        bucket: list[str] = []
        i = 0
        while i < len(typed_tokens):
            token = typed_tokens[i]
            if token == "-" and i + 1 < len(typed_tokens):
                obj_type = typed_tokens[i + 1].lower()
                if obj_type == "node":
                    node_names.extend(bucket)
                elif obj_type == "cell":
                    cell_names.extend(bucket)
                bucket = []
                i += 2
                continue
            bucket.append(token)
            i += 1

        node_rc = [self._node_name_to_rc(n) for n in node_names]
        max_node_r = max(r for r, _ in node_rc)
        max_node_c = max(c for _, c in node_rc)
        rows = max_node_r
        cols = max_node_c

        node_degree_init = [[0 for _ in range(cols + 1)] for _ in range(rows + 1)]
        cell_capacity_init = [[0 for _ in range(cols)] for _ in range(rows)]

        init_match = re.search(
            r"\(:init\s*(.*?)\)\s*\(:goal",
            content,
            re.IGNORECASE | re.DOTALL,
        )
        if init_match is None:
            raise ValueError(f"Could not parse init block in '{filepath}'")
        init_raw = init_match.group(1)

        for m in re.finditer(r"\(node-degree([012])\s+([\w-]+)\)", init_raw, re.IGNORECASE):
            r, c = self._node_name_to_rc(m.group(2))
            node_degree_init[r][c] = int(m.group(1))

        for m in re.finditer(r"\(CELL-CAPACITY\s+([\w-]+)\s+cap-(\d+)\)", init_raw, re.IGNORECASE):
            cell_name = m.group(1)
            rc = self._inside_cell_name_to_rc(cell_name)
            if rc is not None:
                r, c = rc
                cell_capacity_init[r][c] = int(m.group(2))

        disable_init = bool(re.search(r"\(disable-link-0-0\)", init_raw, re.IGNORECASE))

        goal_block = self._extract_balanced_block(content, "(:goal")
        if not goal_block:
            raise ValueError(f"Could not parse goal block in '{filepath}'")

        goal_node_not_degree1: list[tuple[int, int]] = []
        for n_name in re.findall(
            r"\(not\s*\(node-degree1\s+([\w-]+)\)\)",
            goal_block,
            re.IGNORECASE,
        ):
            goal_node_not_degree1.append(self._node_name_to_rc(n_name))

        goal_cell_cap0: list[tuple[int, int]] = []
        for c_name in re.findall(
            r"\(CELL-CAPACITY\s+([\w-]+)\s+cap-0\)",
            goal_block,
            re.IGNORECASE,
        ):
            rc = self._inside_cell_name_to_rc(c_name)
            if rc is not None:
                goal_cell_cap0.append(rc)

        return {
            "rows": rows,
            "cols": cols,
            "node_degree_init": node_degree_init,
            "cell_capacity_init": cell_capacity_init,
            "disable_init": disable_init,
            "goal_node_not_degree1": goal_node_not_degree1,
            "goal_cell_cap0": goal_cell_cap0,
        }

    def get_instance(self, instance: Optional[str] = None) -> dict:
        if not instance or instance not in self._instances:
            raise ValueError(f"Instance '{instance}' not found!")
        return self._parse_pddl(os.path.join(PDDL_DIR, f"{instance}.pddl"))

    def build_problem(self, instance: str | None = None) -> Problem:
        data = self.get_instance(instance)
        rows = data["rows"]
        cols = data["cols"]

        problem = Problem("slitherlink_problem")

        node_degree = Fluent(
            "node_degree",
            ArrayType(rows + 1, ArrayType(cols + 1, IntType(0, 2))),
        )
        cell_capacity = Fluent(
            "cell_capacity",
            ArrayType(rows, ArrayType(cols, IntType(0, 4))),
        )
        h_edge = Fluent(
            "h_edge",
            ArrayType(rows + 1, ArrayType(cols, BoolType())),
        )
        v_edge = Fluent(
            "v_edge",
            ArrayType(rows, ArrayType(cols + 1, BoolType())),
        )
        disable_link_0_0 = Fluent("disable_link_0_0", BoolType())

        problem.add_fluent(node_degree, default_initial_value=0)
        problem.add_fluent(cell_capacity, default_initial_value=0)
        problem.add_fluent(h_edge, default_initial_value=False)
        problem.add_fluent(v_edge, default_initial_value=False)
        problem.add_fluent(disable_link_0_0, default_initial_value=False)

        problem.set_initial_value(node_degree, data["node_degree_init"])
        problem.set_initial_value(cell_capacity, data["cell_capacity_init"])
        if data["disable_init"]:
            problem.set_initial_value(disable_link_0_0, True)

        link_h_inner = InstantaneousAction(
            "link_h_inner",
            r=IntType(1, rows - 1),
            c=IntType(0, cols - 1),
        )
        r = link_h_inner.parameter("r")
        c = link_h_inner.parameter("c")
        link_h_inner.add_precondition(Not(h_edge[r][c]))
        link_h_inner.add_precondition(LT(node_degree[r][c], 2))
        link_h_inner.add_precondition(LT(node_degree[r][c + 1], 2))
        link_h_inner.add_precondition(GE(cell_capacity[r - 1][c], 1))
        link_h_inner.add_precondition(GE(cell_capacity[r][c], 1))
        link_h_inner.add_precondition(
            Or(
                Not(And(Equals(node_degree[r][c], 0), Equals(node_degree[r][c + 1], 0))),
                Not(disable_link_0_0),
            )
        )
        link_h_inner.add_effect(h_edge[r][c], True)
        link_h_inner.add_effect(node_degree[r][c], Plus(node_degree[r][c], 1))
        link_h_inner.add_effect(node_degree[r][c + 1], Plus(node_degree[r][c + 1], 1))
        link_h_inner.add_effect(cell_capacity[r - 1][c], Minus(cell_capacity[r - 1][c], 1))
        link_h_inner.add_effect(cell_capacity[r][c], Minus(cell_capacity[r][c], 1))
        link_h_inner.add_effect(
            disable_link_0_0,
            True,
            And(Equals(node_degree[r][c], 0), Equals(node_degree[r][c + 1], 0)),
        )

        link_h_top = InstantaneousAction("link_h_top", c=IntType(0, cols - 1))
        c = link_h_top.parameter("c")
        link_h_top.add_precondition(Not(h_edge[0][c]))
        link_h_top.add_precondition(LT(node_degree[0][c], 2))
        link_h_top.add_precondition(LT(node_degree[0][c + 1], 2))
        link_h_top.add_precondition(GE(cell_capacity[0][c], 1))
        link_h_top.add_precondition(
            Or(
                Not(And(Equals(node_degree[0][c], 0), Equals(node_degree[0][c + 1], 0))),
                Not(disable_link_0_0),
            )
        )
        link_h_top.add_effect(h_edge[0][c], True)
        link_h_top.add_effect(node_degree[0][c], Plus(node_degree[0][c], 1))
        link_h_top.add_effect(node_degree[0][c + 1], Plus(node_degree[0][c + 1], 1))
        link_h_top.add_effect(cell_capacity[0][c], Minus(cell_capacity[0][c], 1))
        link_h_top.add_effect(
            disable_link_0_0,
            True,
            And(Equals(node_degree[0][c], 0), Equals(node_degree[0][c + 1], 0)),
        )

        link_h_bottom = InstantaneousAction("link_h_bottom", c=IntType(0, cols - 1))
        c = link_h_bottom.parameter("c")
        link_h_bottom.add_precondition(Not(h_edge[rows][c]))
        link_h_bottom.add_precondition(LT(node_degree[rows][c], 2))
        link_h_bottom.add_precondition(LT(node_degree[rows][c + 1], 2))
        link_h_bottom.add_precondition(GE(cell_capacity[rows - 1][c], 1))
        link_h_bottom.add_precondition(
            Or(
                Not(And(Equals(node_degree[rows][c], 0), Equals(node_degree[rows][c + 1], 0))),
                Not(disable_link_0_0),
            )
        )
        link_h_bottom.add_effect(h_edge[rows][c], True)
        link_h_bottom.add_effect(node_degree[rows][c], Plus(node_degree[rows][c], 1))
        link_h_bottom.add_effect(node_degree[rows][c + 1], Plus(node_degree[rows][c + 1], 1))
        link_h_bottom.add_effect(cell_capacity[rows - 1][c], Minus(cell_capacity[rows - 1][c], 1))
        link_h_bottom.add_effect(
            disable_link_0_0,
            True,
            And(Equals(node_degree[rows][c], 0), Equals(node_degree[rows][c + 1], 0)),
        )

        link_v_inner = InstantaneousAction(
            "link_v_inner",
            r=IntType(0, rows - 1),
            c=IntType(1, cols - 1),
        )
        r = link_v_inner.parameter("r")
        c = link_v_inner.parameter("c")
        link_v_inner.add_precondition(Not(v_edge[r][c]))
        link_v_inner.add_precondition(LT(node_degree[r][c], 2))
        link_v_inner.add_precondition(LT(node_degree[r + 1][c], 2))
        link_v_inner.add_precondition(GE(cell_capacity[r][c - 1], 1))
        link_v_inner.add_precondition(GE(cell_capacity[r][c], 1))
        link_v_inner.add_precondition(
            Or(
                Not(And(Equals(node_degree[r][c], 0), Equals(node_degree[r + 1][c], 0))),
                Not(disable_link_0_0),
            )
        )
        link_v_inner.add_effect(v_edge[r][c], True)
        link_v_inner.add_effect(node_degree[r][c], Plus(node_degree[r][c], 1))
        link_v_inner.add_effect(node_degree[r + 1][c], Plus(node_degree[r + 1][c], 1))
        link_v_inner.add_effect(cell_capacity[r][c - 1], Minus(cell_capacity[r][c - 1], 1))
        link_v_inner.add_effect(cell_capacity[r][c], Minus(cell_capacity[r][c], 1))
        link_v_inner.add_effect(
            disable_link_0_0,
            True,
            And(Equals(node_degree[r][c], 0), Equals(node_degree[r + 1][c], 0)),
        )

        link_v_left = InstantaneousAction("link_v_left", r=IntType(0, rows - 1))
        r = link_v_left.parameter("r")
        link_v_left.add_precondition(Not(v_edge[r][0]))
        link_v_left.add_precondition(LT(node_degree[r][0], 2))
        link_v_left.add_precondition(LT(node_degree[r + 1][0], 2))
        link_v_left.add_precondition(GE(cell_capacity[r][0], 1))
        link_v_left.add_precondition(
            Or(
                Not(And(Equals(node_degree[r][0], 0), Equals(node_degree[r + 1][0], 0))),
                Not(disable_link_0_0),
            )
        )
        link_v_left.add_effect(v_edge[r][0], True)
        link_v_left.add_effect(node_degree[r][0], Plus(node_degree[r][0], 1))
        link_v_left.add_effect(node_degree[r + 1][0], Plus(node_degree[r + 1][0], 1))
        link_v_left.add_effect(cell_capacity[r][0], Minus(cell_capacity[r][0], 1))
        link_v_left.add_effect(
            disable_link_0_0,
            True,
            And(Equals(node_degree[r][0], 0), Equals(node_degree[r + 1][0], 0)),
        )

        link_v_right = InstantaneousAction("link_v_right", r=IntType(0, rows - 1))
        r = link_v_right.parameter("r")
        link_v_right.add_precondition(Not(v_edge[r][cols]))
        link_v_right.add_precondition(LT(node_degree[r][cols], 2))
        link_v_right.add_precondition(LT(node_degree[r + 1][cols], 2))
        link_v_right.add_precondition(GE(cell_capacity[r][cols - 1], 1))
        link_v_right.add_precondition(
            Or(
                Not(And(Equals(node_degree[r][cols], 0), Equals(node_degree[r + 1][cols], 0))),
                Not(disable_link_0_0),
            )
        )
        link_v_right.add_effect(v_edge[r][cols], True)
        link_v_right.add_effect(node_degree[r][cols], Plus(node_degree[r][cols], 1))
        link_v_right.add_effect(node_degree[r + 1][cols], Plus(node_degree[r + 1][cols], 1))
        link_v_right.add_effect(cell_capacity[r][cols - 1], Minus(cell_capacity[r][cols - 1], 1))
        link_v_right.add_effect(
            disable_link_0_0,
            True,
            And(Equals(node_degree[r][cols], 0), Equals(node_degree[r + 1][cols], 0)),
        )

        problem.add_actions(
            [
                link_h_inner,
                link_h_top,
                link_h_bottom,
                link_v_inner,
                link_v_left,
                link_v_right,
            ]
        )

        for r, c in data["goal_node_not_degree1"]:
            problem.add_goal(Not(Equals(node_degree[r][c], 1)))
        for r, c in data["goal_cell_cap0"]:
            problem.add_goal(Equals(cell_capacity[r][c], 0))

        return problem


DOMAIN = SlitherlinkDomain()
