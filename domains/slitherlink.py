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

        node_degree = Fluent("node_degree", ArrayType(rows + 1, ArrayType(cols + 1, IntType(0, 2))))
        # Cells with a ring of outside cells around the grid, as in the handcrafted model: cell (i, j)
        # of the grid is cell_capacity[i + 1][j + 1], and each outside cell borders one edge.
        cell_capacity = Fluent("cell_capacity", ArrayType(rows + 2, ArrayType(cols + 2, IntType(0, 4))))
        h_edge = Fluent("h_edge", ArrayType(rows + 1, ArrayType(cols, BoolType())))
        v_edge = Fluent("v_edge", ArrayType(rows, ArrayType(cols + 1, BoolType())))
        disable_link_0_0 = Fluent("disable_link_0_0", BoolType())

        problem.add_fluent(node_degree, default_initial_value=0)
        problem.add_fluent(cell_capacity, default_initial_value=0)
        problem.add_fluent(h_edge, default_initial_value=False)
        problem.add_fluent(v_edge, default_initial_value=False)
        problem.add_fluent(disable_link_0_0, default_initial_value=False)

        problem.set_initial_value(node_degree, data["node_degree_init"])
        capacity = [[0] * (cols + 2) for _ in range(rows + 2)]
        for i in range(rows):
            capacity[i + 1][0] = capacity[i + 1][cols + 1] = 1
            for j in range(cols):
                capacity[i + 1][j + 1] = data["cell_capacity_init"][i][j]
        for j in range(cols):
            capacity[0][j + 1] = capacity[rows + 1][j + 1] = 1
        problem.set_initial_value(cell_capacity, capacity)
        if data["disable_init"]:
            problem.set_initial_value(disable_link_0_0, True)

        # Link two adjacent nodes of degrees d1 and d2, as the actions link-d1-d2 of the handcrafted model
        # Only the first link joins two nodes of degree 0, so the links form a single cycle
        actions = []
        for horizontal in (True, False):
            for d1 in (0, 1):
                for d2 in (0, 1):
                    name = f"link_{'h' if horizontal else 'v'}_{d1}_{d2}"
                    # k1 and k2 are the capacities of the two cells beside the edge
                    if horizontal:
                        action = InstantaneousAction(name, r=IntType(0, rows), c=IntType(0, cols - 1), k1=IntType(1, 4), k2=IntType(1, 4))
                    else:
                        action = InstantaneousAction(name, r=IntType(0, rows - 1), c=IntType(0, cols), k1=IntType(1, 4), k2=IntType(1, 4))
                    r, c = action.parameter("r"), action.parameter("c")
                    k1, k2 = action.parameter("k1"), action.parameter("k2")
                    if horizontal:
                        edge, n1, n2 = h_edge[r][c], node_degree[r][c], node_degree[r][c + 1]
                        c1, c2 = cell_capacity[r][c + 1], cell_capacity[r + 1][c + 1]
                    else:
                        edge, n1, n2 = v_edge[r][c], node_degree[r][c], node_degree[r + 1][c]
                        c1, c2 = cell_capacity[r + 1][c], cell_capacity[r + 1][c + 1]
                    action.add_precondition(Not(edge))
                    action.add_precondition(Equals(n1, d1))
                    action.add_precondition(Equals(n2, d2))
                    action.add_precondition(Equals(c1, k1))
                    action.add_precondition(Equals(c2, k2))
                    action.add_effect(edge, True)
                    action.add_effect(n1, d1 + 1)
                    action.add_effect(n2, d2 + 1)
                    action.add_effect(c1, k1 - 1)
                    action.add_effect(c2, k2 - 1)
                    if d1 == 0 and d2 == 0:
                        action.add_precondition(Not(disable_link_0_0))
                        action.add_effect(disable_link_0_0, True)
                    actions.append(action)
        problem.add_actions(actions)

        for r, c in data["goal_node_not_degree1"]:
            problem.add_goal(Not(Equals(node_degree[r][c], 1)))
        for r, c in data["goal_cell_cap0"]:
            problem.add_goal(Equals(cell_capacity[r + 1][c + 1], 0))
        return problem


DOMAIN = SlitherlinkDomain()
