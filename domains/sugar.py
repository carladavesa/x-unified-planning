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
        preds_section = re.search(r'\(:predicates(.*?)\n\)', content, re.DOTALL)
        if preds_section:
            for match in re.finditer(r'\(([\w][\w\-]*)\)', preds_section.group(1)):
                predicates.append(match.group(1))

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

    def compute_fluent_bound(self, fname, domain_data, data, dead_counters):
        """Calcula un bound apretat per a un fluent numèric.

        Optimitzacions:
        1. Dead counters: bound 1
        2. Fluents immutables (mai modificats): bound = valor inicial
        3. Resta: max(initial, goal_threshold, max_operand) + marge de 5
        """
        # 1. Dead counter
        if fname in dead_counters:
            return 1

        initial = data['numeric_init'].get(fname, 0)

        # 2. Comprovar si el fluent és mai modificat
        is_modified = False
        for adata in domain_data['actions']:
            if re.search(
                    rf'\(\s*(?:increase|decrease)\s*\(\s*{re.escape(fname)}\s*\)',
                    adata['effect']
            ):
                is_modified = True
                break

        if not is_modified:
            return max(initial, 1)

        # 3. Threshold del goal: (>= (+ (* (fluent) coeff) -X) 0.0) → fluent >= X
        goal_threshold = 0
        for match in re.finditer(
                r'\(>=\s*\(\+\s*\(\*\s*\(([\w\-_]+)\)\s*[\d.]+\s*\)\s*-([\d.]+)\s*\)',
                data['goal_str']
        ):
            if match.group(1) == fname:
                goal_threshold = max(goal_threshold, int(float(match.group(2))))

        # 4. Valor màxim que apareix com a operand a effects o preconditions
        max_op = 0
        for adata in domain_data['actions']:
            # Increases / decreases
            for match in re.finditer(
                    r'\((?:increase|decrease)\s*\(([\w\-_]+)\)\s*([\d.]+)\s*\)',
                    adata['effect']
            ):
                if match.group(1) == fname:
                    max_op = max(max_op, int(float(match.group(2))))
            # Precondicions tipus (>= (+ (fluent) -X) 0.0)
            for match in re.finditer(
                    r'\(>=\s*\(\+\s*\(([\w\-_]+)\)\s*-([\d.]+)\s*\)\s*[\d.]+\s*\)',
                    adata['precondition']
            ):
                if match.group(1) == fname:
                    max_op = max(max_op, int(float(match.group(2))))
            # Precondicions tipus (> (fluent) X)
            for match in re.finditer(
                    r'\(>\s*\(([\w\-_]+)\)\s*([\d.]+)\s*\)',
                    adata['precondition']
            ):
                if match.group(1) == fname:
                    max_op = max(max_op, int(float(match.group(2))) + 1)

        return max(initial, goal_threshold, max_op) + 5

    def build_problem(self, instance: str | None = None) -> "Problem":
        data = self.get_instance(instance)
        domain_data = self.get_domain(instance)
        problem = Problem("sugar_problem")

        # Detectar dead counters
        def is_dead_counter(fname):
            for adata in domain_data['actions']:
                if fname in adata['precondition']:
                    return False
            if fname in data['goal_str']:
                return False
            return True

        dead_counters = set()
        for fname in domain_data['functions']:
            if is_dead_counter(fname):
                dead_counters.add(fname)
                print(f"Dead counter: {fname}")

        # Crear fluents numèrics amb bounds calculats per fluent
        numeric_fluents = {}
        for fname in domain_data['functions']:
            if fname in dead_counters:
                continue

            up_name = _pddl_name(fname)
            bound = self.compute_fluent_bound(fname, domain_data, data, dead_counters)
            f = Fluent(up_name, IntType(0, bound))
            problem.add_fluent(f, default_initial_value=0)
            numeric_fluents[fname] = f

        # Crear fluents booleans
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
            conditions = []
            prec_str = prec_str.strip()
            if prec_str.startswith('(and'):
                prec_str = prec_str[4:].strip()
                if prec_str.endswith(')'):
                    prec_str = prec_str[:-1].strip()  # NOMÉS un ')'

            # Boolean predicates
            for match in re.finditer(r'\(([\w][\w\-_]*)\)', prec_str):
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

            # (> (fluent) X) → fluent >= X+1
            for match in re.finditer(r'\(>\s*\(([\w\-_]+)\)\s*([\d.]+)\s*\)', prec_str):
                fname = match.group(1)
                threshold = int(float(match.group(2)))
                if fname in numeric_fluents:
                    conditions.append(GE(numeric_fluents[fname](), Int(threshold + 1)))

            # (>= (fluent) X) → fluent >= X (sense + operator)
            for match in re.finditer(r'\(>=\s*\(([\w\-_]+)\)\s*([\d.]+)\s*\)', prec_str):
                fname = match.group(1)
                threshold = int(float(match.group(2)))
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

            # Acumular tots els increments i decrements del mateix fluent
            increases = {}
            decreases = {}

            for match in re.finditer(r'\(increase\s*\(([\w\-_]+)\)\s*([\d.]+)\s*\)', eff_str):
                fname, val = match.group(1), int(float(match.group(2)))
                if fname in numeric_fluents:
                    increases[fname] = increases.get(fname, 0) + val

            for match in re.finditer(r'\(decrease\s*\(([\w\-_]+)\)\s*([\d.]+)\s*\)', eff_str):
                fname, val = match.group(1), int(float(match.group(2)))
                if fname in numeric_fluents:
                    decreases[fname] = decreases.get(fname, 0) + val

            # Calcular efecte net: increase - decrease (per evitar conflictes IR)
            all_fluents = set(increases) | set(decreases)
            for fname in all_fluents:
                net = increases.get(fname, 0) - decreases.get(fname, 0)
                if net > 0:
                    effects.append(('increase', fname, net))
                elif net < 0:
                    effects.append(('decrease', fname, -net))
                # net == 0 → no-op, ignorat

            # set false: (not (pred))
            for match in re.finditer(r'\(not\s*\(([\w][\w\-_]*)\)\s*\)', eff_str):
                pname = match.group(1)
                if pname in bool_fluents:
                    effects.append(('set_false', pname, None))

            # set true: (pred) — excloent (not ...) i increase/decrease
            eff_str_clean = re.sub(r'\(not\s*\([\w][\w\-_]*\)\s*\)', '', eff_str)
            eff_str_clean = re.sub(r'\(increase\s*\([\w\-_]+\)\s*[\d.]+\s*\)', '', eff_str_clean)
            eff_str_clean = re.sub(r'\(decrease\s*\([\w\-_]+\)\s*[\d.]+\s*\)', '', eff_str_clean)

            for match in re.finditer(r'\(([\w][\w\-_]*)\)', eff_str_clean):
                pname = match.group(1)
                if pname in bool_fluents:
                    effects.append(('set_true', pname, None))

            return effects

        # Crear accions
        for action_data in domain_data['actions']:
            a = InstantaneousAction(_pddl_name(action_data['name']))

            # Preconditions
            for cond in parse_precondition(action_data['precondition']):
                a.add_precondition(cond)

            # Effects
            for (etype, name, val) in parse_effects(action_data['effect']):
                if etype == 'increase':
                    a.add_increase_effect(numeric_fluents[name](), val)
                elif etype == 'decrease':
                    a.add_decrease_effect(numeric_fluents[name](), val)
                elif etype == 'set_true':
                    a.add_effect(bool_fluents[name](), True)
                elif etype == 'set_false':
                    a.add_effect(bool_fluents[name](), False)

            problem.add_action(a)

        # Goals - parse numeric goal: (>= (+ (* (fluent) coeff) -X) 0.0)
        goal_str = data['goal_str']
        for match in re.finditer(
            r'\(>=\s*\(\+\s*\(\*\s*\(([\w\-_]+)\)\s*([\d.]+)\s*\)\s*(-?[\d.]+)\s*\)\s*([\d.]+)\s*\)',
            goal_str
        ):
            fname = match.group(1)
            offset = float(match.group(3))
            threshold = int(-offset)
            if fname in numeric_fluents and threshold > 0:
                problem.add_goal(GE(numeric_fluents[fname](), Int(threshold)))

        return problem


DOMAIN = SugarDomain()