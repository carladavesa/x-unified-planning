"""sugar supply chain planning domain."""
import os
import re
from typing import Optional
from unified_planning.model import Object
from unified_planning.shortcuts import (
    Fluent, IntType, InstantaneousAction,
    Problem, UserType, BoolType, GE, GT, Plus, Int,
)
from domains.base import Domain

PDDL_DIR = os.path.join(os.path.dirname(__file__), 'sugar/handcrafted')
INSTANCES: list[str] = [f"pfile{i}" for i in range(1, 21)]


def _pddl_name(name: str) -> str:
    """Convert PDDL name with hyphens to valid UP name with underscores."""
    return name.replace('-', '_')


class SugarDomain(Domain):
    def __init__(self) -> None:
        self._instances = INSTANCES

    def list_instances(self) -> dict[str, dict]:
        return {k: {} for k in self._instances}

    def _parse_pddl(self, filepath: str) -> dict:
        with open(filepath, 'r') as f:
            content = f.read()

        # Parse numeric fluents from init: (= (fluent_name) value)
        # Handles names with hyphens
        numeric_init = {}
        for match in re.finditer(r'\(=\s*\(([\w\-]+(?:_[\w\-]+)*)\)\s+([\d.]+)\s*\)', content):
            numeric_init[match.group(1)] = int(float(match.group(2)))

        # Parse init boolean predicates (section between :init and :goal)
        init_section = re.search(r':init(.*?):goal', content, re.DOTALL)
        init_str = init_section.group(1) if init_section else ''

        bool_init = []
        for match in re.finditer(r'\(([\w\-][\w\-]*(?:_[\w\-]+)*)\)(?!\s*\))', init_str):
            name = match.group(1)
            if not name.startswith('=') and not name.startswith('>'):
                bool_init.append(name)

        # Parse goal
        goal_section = re.search(r':goal\s*(.*?)(?=\s*\)?\s*$)', content, re.DOTALL)
        goal_str = goal_section.group(1) if goal_section else ''

        return {
            'numeric_init': numeric_init,
            'bool_init': bool_init,
            'goal_str': goal_str,
        }

    def _parse_domain(self, filepath: str) -> dict:
        with open(filepath, 'r') as f:
            content = f.read()

        # Extract predicates
        predicates = []
        # A _parse_domain, secció predicates:
        preds_section = re.search(r'\(:predicates(.*?)\n\)', content, re.DOTALL)
        if preds_section:
            for match in re.finditer(r'\(([\w][\w\-]*)\)', preds_section.group(1)):
                predicates.append(match.group(1))  # guarda amb guions originals

        # Extract functions
        functions = []
        funcs_match = re.search(r'\(:functions(.*?)\n\)', content, re.DOTALL)
        if funcs_match:
            for match in re.finditer(r'\(([\w][\w\-_]*)\)', funcs_match.group(1)):
                functions.append(match.group(1))

        # Extract actions by splitting on ':action'
        actions = []
        action_blocks = re.split(r'(?=\(:action\s)', content)
        for block in action_blocks:
            block = block.strip()
            if not block.startswith('(:action'):
                continue

            name_match = re.search(r'\(:action\s+([\w\-_]+)', block)
            if not name_match:
                continue
            name = name_match.group(1)

            prec_match = re.search(r':precondition\s*(\(.*?)\s*:effect', block, re.DOTALL)
            eff_match = re.search(r':effect\s*(\(.*)', block, re.DOTALL)

            prec_str = prec_match.group(1).strip() if prec_match else ''
            eff_str = eff_match.group(1).strip() if eff_match else ''
            # Remove trailing closing paren from the action block
            if eff_str.endswith('))'):
                eff_str = eff_str[:-1].strip()

            actions.append({
                'name': name,
                'precondition': prec_str,
                'effect': eff_str,
            })

        return {
            'predicates': predicates,
            'functions': functions,
            'actions': actions,
        }

    def get_instance(self, instance: Optional[str] = None) -> dict:
        if instance and instance in self._instances:
            path = os.path.join(PDDL_DIR, f"{instance}.pddl")
            return self._parse_pddl(path)
        raise ValueError(f"Instance '{instance}' not found!")

    def get_domain(self, instance: str) -> dict:
        path = os.path.join(PDDL_DIR, f"domain_{instance}.pddl")
        return self._parse_domain(path)

    def build_problem(self, instance: str | None = None) -> "Problem":
        data = self.get_instance(instance)
        domain_data = self.get_domain(instance)
        problem = Problem("sugar_problem")

        # Compute bounds
        max_val = max(data['numeric_init'].values(), default=20)
        int_type = IntType(0, max_val + 50)

        # Create fluents from domain functions (numeric)
        numeric_fluents = {}
        for fname in domain_data['functions']:
            up_name = _pddl_name(fname)
            f = Fluent(up_name, int_type)
            problem.add_fluent(f, default_initial_value=0)
            numeric_fluents[fname] = f

        # Create fluents from domain predicates (boolean)
        bool_fluents = {}
        for pname in domain_data['predicates']:
            up_name = _pddl_name(pname)
            f = Fluent(up_name, BoolType())
            problem.add_fluent(f, default_initial_value=False)
            bool_fluents[pname] = f

        # Set initial numeric values
        for fname, val in data['numeric_init'].items():
            if fname in numeric_fluents:
                problem.set_initial_value(numeric_fluents[fname](), val)

        # Set initial boolean values
        for pname in data['bool_init']:
            if pname in bool_fluents:
                problem.set_initial_value(bool_fluents[pname](), True)

        def parse_precondition(prec_str: str):
            # al principi de parse_precondition

            conditions = []
            prec_str = prec_str.strip()
            if prec_str.startswith('(and'):
                prec_str = prec_str[4:].strip().rstrip(')')

            import re
            # Boolean predicates en precondicions
            for match in re.finditer(r'\(([\w][.\w-]*)\)', prec_str):
                pname = match.group(1)
                if pname in bool_fluents:
                    conditions.append(bool_fluents[pname]())
                elif pname in numeric_fluents:
                    pass

            prec_str = '(and  (at-location_truck2_depot2))'

            for match in re.finditer(r'\(([\w][\w_-]*)\)', prec_str):
                pname = match.group(1)
                if pname in bool_fluents:
                    conditions.append(bool_fluents[pname]())

            # (>= (+ (fluent) -X) 0.0) → fluent >= X
            for match in re.finditer(
                    r'\(>=\s*\(\+\s*\(([\w\-_]+)\)\s*(-?[\d.]+)\s*\)\s*([\d.]+)\s*\)', prec_str
            ):
                fname = match.group(1)
                offset = int(float(match.group(2)))
                threshold = -offset
                if fname in numeric_fluents and threshold > 0:
                    conditions.append(GE(numeric_fluents[fname](), Int(threshold)))

            return conditions

        def parse_effects(eff_str: str):
            effects = []
            eff_str = eff_str.strip()
            if eff_str.startswith('(and'):
                eff_str = eff_str[4:].strip()
            if eff_str.endswith(')'):
                eff_str = eff_str[:-1].strip()

            # increase / decrease primer
            for match in re.finditer(r'\(increase\s*\(([\w\-_]+)\)\s*([\d.]+)\s*\)', eff_str):
                fname, val = match.group(1), int(float(match.group(2)))
                if fname in numeric_fluents:
                    effects.append(('increase', fname, val))

            for match in re.finditer(r'\(decrease\s*\(([\w\-_]+)\)\s*([\d.]+)\s*\)', eff_str):
                fname, val = match.group(1), int(float(match.group(2)))
                if fname in numeric_fluents:
                    effects.append(('decrease', fname, val))

            # set false: (not (pred)) — ABANS de set_true per evitar captures incorrectes
            false_preds = set()
            for match in re.finditer(r'\(not\s*\(([\w][\w\-_]*)\)\s*\)', eff_str):
                pname = match.group(1)
                if pname in bool_fluents:
                    effects.append(('set_false', pname, None))
                    false_preds.add(pname)

            # set true: (pred) — excloent els que ja són dins de (not (...))
            # Eliminem tots els (not (...)) del string abans de buscar set_true
            eff_str_no_not = re.sub(r'\(not\s*\([\w][\w\-_]*\)\s*\)', '', eff_str)
            for match in re.finditer(r'\(([\w][\w\-_]*)\)', eff_str_no_not):
                pname = match.group(1)
                if pname in bool_fluents:
                    effects.append(('set_true', pname, None))

            return effects

        for action_data in domain_data['actions']:
            precs = parse_precondition(action_data['precondition'])
            effs = parse_effects(action_data['effect'])

            a = InstantaneousAction(_pddl_name(action_data['name']))

            # Preconditions
            for cond in parse_precondition(action_data['precondition']):
                a.add_precondition(cond)

            # Effects
            seen_fluents = set()
            for (etype, name, val) in parse_effects(action_data['effect']):
                if etype == 'increase':
                    if name not in seen_fluents:
                        a.add_increase_effect(numeric_fluents[name](), val)
                        seen_fluents.add(name)
                elif etype == 'decrease':
                    if name not in seen_fluents:
                        a.add_decrease_effect(numeric_fluents[name](), val)
                        seen_fluents.add(name)
                elif etype == 'set_true':
                    a.add_effect(bool_fluents[name](), True)
                elif etype == 'set_false':
                    a.add_effect(bool_fluents[name](), False)

            problem.add_action(a)

        # Goals - parse numeric goal
        goal_str = data['goal_str']
        for match in re.finditer(
            r'\(>=\s*\(\+\s*\(\*\s*\(([\w\-_]+)\)\s*([\d.]+)\s*\)\s*(-?[\d.]+)\s*\)\s*([\d.]+)\s*\)',
            goal_str
        ):
            fname = match.group(1)
            # coeff * fluent + offset >= rhs
            # 1.0 * fluent - 3.0 >= 0.0 → fluent >= 3
            offset = float(match.group(3))
            threshold = int(-offset)
            if fname in numeric_fluents and threshold > 0:
                problem.add_goal(GE(numeric_fluents[fname](), Int(threshold)))

        return problem


DOMAIN = SugarDomain()