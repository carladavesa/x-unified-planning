# Copyright 2021-2023 AIPlan4EU project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
"""This module defines the preconditions to table simplifier class."""
from itertools import product

from unified_planning.engines.compilers.utils import (
    solve_with_cp_sat, requires_arithmetic, group_conditions_by_shared_fluents, add_cp_constraints,
    get_fluent_exps_in_expression, add_effect_bounds_constraints
)
from unified_planning.model.operators import OperatorKind
from bidict import bidict
from ortools.sat.python import cp_model
from unified_planning.engines.mixins.compiler import CompilationKind, CompilerMixin
from unified_planning.engines.results import CompilerResult
from unified_planning.model import (
    Problem, Action, ProblemKind, Object, MinimizeActionCosts, FNode, Effect, InstantaneousAction, EffectKind,
    Fluent, Parameter, Expression
)
from unified_planning.model.problem_kind_versioning import LATEST_PROBLEM_KIND_VERSION
from unified_planning.engines.compilers.utils import replace_action
from typing import Dict, List, Optional, OrderedDict, Tuple, Iterator, Union, Any
from functools import partial
from unified_planning.shortcuts import And, Not, Iff, Or, FALSE, TRUE, Int, Equals, ObjectExp, UserType, BoolType
import unified_planning as up
import unified_planning.engines as engines

class ConditionsToPredicatesSimplifier(engines.engine.Engine, CompilerMixin):
    """
    Arithmetic Conditions To Static Predicates Compiler:
    Uses CP-SAT to enumerate all valid value combinations satisfying the action preconditions
    (including bounds of unconditional numeric effects). Creates a new boolean static predicate
    per action, instantiated with all valid combinations as true in the initial state.
    The original action is replaced by a single action whose precondition checks this static predicate.
    """

    def __init__(self):
        engines.engine.Engine.__init__(self)
        CompilerMixin.__init__(self, CompilationKind.CONDITIONS_TO_PREDICATES_SIMPLIFIER)
        self._domains: Dict[str, Tuple[int, int]] = {}
        self._number_objects_cache: Dict[int, FNode] = {}
        self._conditions: Dict[FNode, int] = {}

    @property
    def name(self):
        return "ctps"

    @staticmethod
    def supported_kind() -> ProblemKind:
        supported_kind = ProblemKind(version=LATEST_PROBLEM_KIND_VERSION)
        supported_kind.set_problem_class("ACTION_BASED")
        supported_kind.set_typing("FLAT_TYPING")
        supported_kind.set_typing("HIERARCHICAL_TYPING")
        supported_kind.set_parameters("BOOL_FLUENT_PARAMETERS")
        supported_kind.set_parameters("BOUNDED_INT_FLUENT_PARAMETERS")
        supported_kind.set_parameters("BOOL_ACTION_PARAMETERS")
        supported_kind.set_parameters("BOUNDED_INT_ACTION_PARAMETERS")
        supported_kind.set_parameters("REAL_ACTION_PARAMETERS")
        supported_kind.set_numbers("BOUNDED_TYPES")
        supported_kind.set_problem_type("SIMPLE_NUMERIC_PLANNING")
        supported_kind.set_problem_type("GENERAL_NUMERIC_PLANNING")
        supported_kind.set_fluents_type("INT_FLUENTS")
        supported_kind.set_fluents_type("REAL_FLUENTS")
        supported_kind.set_fluents_type("ARRAY_FLUENTS")
        supported_kind.set_fluents_type("OBJECT_FLUENTS")
        supported_kind.set_fluents_type("DERIVED_FLUENTS")
        supported_kind.set_conditions_kind("NEGATIVE_CONDITIONS")
        supported_kind.set_conditions_kind("DISJUNCTIVE_CONDITIONS")
        supported_kind.set_conditions_kind("EQUALITIES")
        supported_kind.set_conditions_kind("EXISTENTIAL_CONDITIONS")
        supported_kind.set_conditions_kind("UNIVERSAL_CONDITIONS")
        supported_kind.set_effects_kind("CONDITIONAL_EFFECTS")
        supported_kind.set_effects_kind("INCREASE_EFFECTS")
        supported_kind.set_effects_kind("DECREASE_EFFECTS")
        supported_kind.set_effects_kind("STATIC_FLUENTS_IN_BOOLEAN_ASSIGNMENTS")
        supported_kind.set_effects_kind("STATIC_FLUENTS_IN_NUMERIC_ASSIGNMENTS")
        supported_kind.set_effects_kind("STATIC_FLUENTS_IN_OBJECT_ASSIGNMENTS")
        supported_kind.set_effects_kind("FLUENTS_IN_BOOLEAN_ASSIGNMENTS")
        supported_kind.set_effects_kind("FLUENTS_IN_NUMERIC_ASSIGNMENTS")
        supported_kind.set_effects_kind("FLUENTS_IN_OBJECT_ASSIGNMENTS")
        supported_kind.set_effects_kind("FORALL_EFFECTS")
        supported_kind.set_time("CONTINUOUS_TIME")
        supported_kind.set_time("DISCRETE_TIME")
        supported_kind.set_time("INTERMEDIATE_CONDITIONS_AND_EFFECTS")
        supported_kind.set_time("EXTERNAL_CONDITIONS_AND_EFFECTS")
        supported_kind.set_time("TIMED_EFFECTS")
        supported_kind.set_time("TIMED_GOALS")
        supported_kind.set_time("DURATION_INEQUALITIES")
        supported_kind.set_time("SELF_OVERLAPPING")
        supported_kind.set_expression_duration("STATIC_FLUENTS_IN_DURATIONS")
        supported_kind.set_expression_duration("FLUENTS_IN_DURATIONS")
        supported_kind.set_expression_duration("INT_TYPE_DURATIONS")
        supported_kind.set_expression_duration("REAL_TYPE_DURATIONS")
        supported_kind.set_simulated_entities("SIMULATED_EFFECTS")
        supported_kind.set_constraints_kind("STATE_INVARIANTS")
        supported_kind.set_constraints_kind("TRAJECTORY_CONSTRAINTS")
        supported_kind.set_quality_metrics("ACTIONS_COST")
        supported_kind.set_actions_cost_kind("STATIC_FLUENTS_IN_ACTIONS_COST")
        supported_kind.set_actions_cost_kind("FLUENTS_IN_ACTIONS_COST")
        supported_kind.set_quality_metrics("PLAN_LENGTH")
        supported_kind.set_quality_metrics("OVERSUBSCRIPTION")
        supported_kind.set_quality_metrics("TEMPORAL_OVERSUBSCRIPTION")
        supported_kind.set_quality_metrics("MAKESPAN")
        supported_kind.set_quality_metrics("FINAL_VALUE")
        supported_kind.set_actions_cost_kind("INT_NUMBERS_IN_ACTIONS_COST")
        supported_kind.set_actions_cost_kind("REAL_NUMBERS_IN_ACTIONS_COST")
        supported_kind.set_oversubscription_kind("INT_NUMBERS_IN_OVERSUBSCRIPTION")
        supported_kind.set_oversubscription_kind("REAL_NUMBERS_IN_OVERSUBSCRIPTION")
        return supported_kind

    @staticmethod
    def supports(problem_kind):
        return problem_kind <= ConditionsToPredicatesSimplifier.supported_kind()

    @staticmethod
    def supports_compilation(compilation_kind: CompilationKind) -> bool:
        return compilation_kind == CompilationKind.CONDITIONS_TO_PREDICATES_SIMPLIFIER

    @staticmethod
    def resulting_problem_kind(
            problem_kind: ProblemKind, compilation_kind: Optional[CompilationKind] = None
    ) -> ProblemKind:
        new_kind = problem_kind.clone()
        new_kind.unset_conditions_kind("INT_FLUENTS")
        new_kind.unset_conditions_kind("ARRAY_FLUENTS")
        return new_kind

    # ==================== AUXILIARY METHODS ====================

    def _get_number_object(self, value: int) -> FNode:
        if value in self._number_objects_cache:
            return self._number_objects_cache[value]
        new_object = Object(f'n{value}', UserType('Number'))
        self._new_problem.add_object(new_object)
        new_object_expression = ObjectExp(new_object)
        self._number_objects_cache[value] = new_object_expression
        return new_object_expression

    def _project_and_group_by_result(self, value: FNode, condition: FNode, solutions: List[dict]) -> dict:
        """
        Project solutions over effect dependencies and groups by solution
        Returns: {result_key: {'value': int, 'combinations': [tuple]}}
        """
        dependencies = self._get_effect_dependencies(value)
        if condition and condition != TRUE():
            dependencies |= self._get_effect_dependencies(condition)

        dep_values_to_result = {}
        for solution in solutions:
            sol_cond = self._evaluate_with_solution(condition, solution)
            if sol_cond is False or sol_cond == FALSE():
                continue
            dep_values = tuple(sorted(
                (var, solution[var]) for var in dependencies if var in solution
            ))
            value_result = self._evaluate_with_solution(value, solution)
            if value_result is None:
                continue
            result_key = str(value_result)
            if dep_values not in dep_values_to_result:
                dep_values_to_result[dep_values] = {'value': value_result, 'result_key': result_key}

        result_to_deps = {}
        for dep_values, data in dep_values_to_result.items():
            rk = data['result_key']
            if rk not in result_to_deps:
                result_to_deps[rk] = {'value': data['value'], 'combinations': []}
            result_to_deps[rk]['combinations'].append(dep_values)
        return result_to_deps

    def _get_effect_dependencies(self, node: FNode) -> set:
        """
        Get all fluent/parameter variable strings that appear in an expression.
        These are the variables that affect the result of the expression.
        """
        deps = set()
        if node.is_fluent_exp() or node.is_parameter_exp():
            deps.add(str(node))
        for arg in node.args:
            deps.update(self._get_effect_dependencies(arg))
        return deps

    def _create_precondition_from_variable(
            self,
            fnode: FNode,
            value: int
    ) -> Optional[FNode]:
        """
        Create a precondition from a variable and its value.
        Handles int fluents, fluents, bool fluents, and parameters.
        """
        if fnode.is_fluent_exp():
            fluent = fnode.fluent()
            new_fluent = self._new_problem.fluent(fluent.name)
            if fluent.type.is_int_type():
                num_obj = self._get_number_object(value)
                return new_fluent(*fnode.args, num_obj)
            elif fluent.type.is_user_type():
                obj = self._get_object_from_index(fluent.type, value)
                if obj:
                    return Equals(new_fluent, ObjectExp(obj))
            elif fluent.type.is_bool_type():
                if value == 1:
                    return new_fluent
                else:
                    return Not(new_fluent)

        elif fnode.is_parameter_exp():
            param = fnode.parameter()
            assert param.type.is_user_type(), "param type is not UserType"
            obj = self._get_object_from_index(param.type, value)
            if obj:
                return Equals(fnode, ObjectExp(obj))

        return None

    def _build_pattern_condition(
            self,
            var_str_to_fnode: dict,
            pattern: dict
    ) -> Optional[FNode]:
        """Build a condition from a pattern (dict of var_str -> value)."""
        conditions = []
        for var_str, value in pattern.items():
            fnode = var_str_to_fnode.get(var_str)
            if not fnode:
                continue
            cond = self._create_precondition_from_variable(fnode, value)
            if cond:
                conditions.append(cond)

        if not conditions:
            return None
        return And(conditions) if len(conditions) > 1 else conditions[0]

    # ========================= GETTERS =========================

    def _get_object_from_index(self, user_type, index):
        """Get object corresponding to an index for a UserType."""
        if hasattr(self, '_index_to_object'):
            return self._index_to_object.get((user_type, index))
        return None

    # =================== EXPRESSION TRANSFORMATION ===================

    def _convert_new_expression(
            self,
            new_problem: "up.model.AbstractProblem",
            node: "up.model.fnode.FNode"
    ) -> up.model.fnode.FNode:
        # faltara afegir que quan un UNIFORM fluent que conte parametre d'una accio (clar no esta instanciat,
        # thus no sabem el valor de l'static fluent, pero sabem que mai canvia per tant el substituim per el seu corresponent value
        operation_map = {
            OperatorKind.EQUALS: 'equals',  # The only operator that works within arrays
            OperatorKind.LT: 'lt',
            OperatorKind.LE: 'le',
            #OperatorKind.PLUS: 'plus',
            #OperatorKind.MINUS: 'minus',
            #OperatorKind.DIV: 'div',
            #OperatorKind.TIMES: 'mult',
        }
        operation = operation_map.get(node.node_type)
        # de mom suporta equals i lt
        if operation is not None:
            fluent, value = (node.arg(0), node.arg(1)) if node.arg(0).is_fluent_exp() else (node.arg(1), node.arg(0))
            if fluent.type.is_int_type():
                new_fluents, new_values = self._convert_fluent_and_value(new_problem, fluent, value)
                if operation == 'equals':
                    and_node = []
                    for f, v in zip(new_fluents, new_values):
                        if value.is_fluent_exp():
                            and_node.append(Iff(f, v))
                        else:
                            and_node.append(f if v else Not(f))
                    return And(and_node)

                elif operation == 'lt':
                    if value.is_fluent_exp():
                        or_node = []
                        iff_node = []
                        for f, v in zip(new_fluents, new_values):
                            new_and_node = And(Not(f), v)
                            or_node.append(And(iff_node, new_and_node))
                            iff_node.append(Iff(f, v))
                        return Or(or_node)
                    else:
                        # Comparació fluent < constant
                        value_bits = self._convert_value(value.constant_value(), len(new_fluents))
                        # Lexicographic comparison: f < v
                        # Find first position where f has 0 and v has 1
                        # and all previous bits are equal
                        or_terms = []
                        equals_prefix = []  # Acumula igualtat dels bits anteriors

                        for i in range(len(new_fluents) - 1, -1, -1):
                            f_bit = new_fluents[i]
                            v_bit = value_bits[i]

                            if v_bit:  # v té 1 en aquesta posició
                                # f < v si: (bits anteriors iguals) AND (f té 0 aquí) AND (v té 1)
                                term = And(equals_prefix + [Not(f_bit)])
                                or_terms.append(term)
                            # Si v té 0 en aquesta posició, no pot ser f < v amb aquest prefix
                            # Afegeix igualtat d'aquest bit per al següent prefix
                            if v_bit:
                                equals_prefix.append(f_bit)
                            else:
                                equals_prefix.append(Not(f_bit))

                        return Or(or_terms) if or_terms else FALSE()

                elif operation == 'le':
                    if value.is_fluent_exp():
                        # Fluent <= fluent (equals OR lt)
                        and_node = []
                        for f, v in zip(new_fluents, new_values):
                            and_node.append(Iff(f, v))
                        equals_node = And(and_node)
                        or_node = []
                        iff_node = []
                        for f, v in zip(new_fluents, new_values):
                            new_and_node = And(Not(f), v)
                            or_node.append(And(iff_node, new_and_node))
                            iff_node.append(Iff(f, v))
                        lt_node = Or(or_node)
                        return Or(equals_node, lt_node)
                    else:
                        value_bits = self._convert_value(value.constant_value(), len(new_fluents))
                        # Equals part
                        equals_and = []
                        for f, v_bit in zip(new_fluents, value_bits):
                            equals_and.append(f if v_bit else Not(f))
                        equals_node = And(equals_and)
                        # LT part (optimized)
                        or_terms = []
                        equals_prefix = []
                        for i in range(len(new_fluents) - 1, -1, -1):
                            f_bit = new_fluents[i]
                            v_bit = value_bits[i]
                            if v_bit:
                                term = And(equals_prefix + [Not(f_bit)])
                                or_terms.append(term)
                            if v_bit:
                                equals_prefix.append(f_bit)
                            else:
                                equals_prefix.append(Not(f_bit))
                        lt_node = Or(or_terms) if or_terms else FALSE()

                        return Or(equals_node, lt_node)

                elif operation == 'plus' or operation == 'minus' or operation == 'div' or operation == 'mult':
                    raise NotImplementedError(f"Operation {operation} not supported")
            elif fluent.type.is_array_type() and operation == 'equals':
                new_fluents, new_values = self._convert_fluent_and_value(new_problem, fluent, value)
                and_node = []
                for i in range(len(new_fluents)):
                    for f, v in zip(new_fluents[i], new_values[i]):
                        if value.is_fluent_exp():
                            and_node.append(Iff(f, v))
                        else:
                            and_node.append(f if v else Not(f))
                return And(and_node)
        elif node.is_constant() or node.is_variable_exp() or node.is_fluent_exp() or node.is_timing_exp() or node.is_parameter_exp():
            return node
        elif node.args:
            new_args = [
                self._convert_new_expression(new_problem, arg)
                for arg in node.args
            ]
            em = new_problem.environment.expression_manager
            return em.create_node(node.node_type, tuple(new_args)).simplify()
        return node

    def _convert_value(self, value, n_bits):
        """Convert integer value to binary list of n_bits."""
        return [b == '1' for b in bin(value)[2:].zfill(n_bits)]

    def _transform_node(
            self, old_problem: Problem, node: FNode
    ) -> Union[Union[str, FNode], Any]:
        """Transform expression node to use Number objects instead of integers."""
        em = self._new_problem.environment.expression_manager
        # Integer constants become Number objects
        if node.is_int_constant():
            return self._get_number_object(node.constant_value())

        # Other terminals
        if node.is_object_exp() or node.is_constant() or node.is_parameter_exp() or node.is_fluent_exp():
            return node

        if node.is_equals():
            fluent, constant = (node.arg(0), node.arg(1)) if node.arg(0).is_fluent_exp() else (node.arg(1), node.arg(0))
            # Integer fluents
            if fluent.type.is_int_type():
                return self._new_problem.fluent(fluent.fluent().name)(*fluent.args, self._get_number_object(constant.constant_value()))
            return node

        # Recursively transform children
        new_args = []
        for arg in node.args:
            transformed = self._transform_node(old_problem, arg)
            new_args.append(transformed)

        return em.create_node(node.node_type, tuple(new_args)).simplify()

    # ==================== ACTION TRANSFORMATION ====================

    def _get_assign_effect(
            self, problem, fluent, value, condition, forall, solutions, variables: bidict
    ) -> Iterator[Effect]:
        """Convert arithmetic assign effects to multiple assignments via conditional effects. """
        var_str_to_fnode = {str(k): k for k in variables.keys()}
        result_to_deps = self._project_and_group_by_result(value, condition, solutions)
        returned = set()
        for rk, data in result_to_deps.items():
            new_fluent = self._transform_node(problem, Equals(fluent, data['value']))
            new_value = TRUE()

            if len(result_to_deps) == 1:
                cond = TRUE()
            else:
                conditions = [
                    self._build_pattern_condition(var_str_to_fnode, dict(dv))
                    for dv in data['combinations']
                ]
                conditions = [c for c in conditions if c]
                cond = Or(conditions).simplify() if len(conditions) > 1 else conditions[0] if conditions else TRUE()

            ek = (str(new_fluent), str(new_value), str(cond))
            if ek not in returned:
                yield Effect(new_fluent, new_value, cond, EffectKind.ASSIGN, forall)
                returned.add(ek)

    def _add_effects_dnf_mode(
            self,
            new_action: InstantaneousAction,
            old_problem: Problem,
            variables: bidict,
            solutions: List[dict],
            unstatic_effects: List[Effect]
    ) -> None:
        """Add effects for DNF mode, handling arithmetic with conditional effects if needed."""
        for effect in unstatic_effects:
            if effect.is_increase():
                value = effect.fluent + 1
            elif effect.is_decrease():
                value = effect.fluent - 1
            else:
                value = effect.value

            for new_effect in self._get_assign_effect(
                    old_problem, effect.fluent, value, effect.condition, effect.forall, solutions, variables
            ):
                new_action.add_effect(new_effect.fluent, new_effect.value, new_effect.condition, new_effect.forall)

    def _add_effects_for_entry_bits(self, new_action, new_problem, old_problem, variables, entry, normalized_effects):
        pattern = entry['pattern']
        subtable_tuples = entry.get('subtable_tuples', [])

        entry_solutions = [dict(pattern)]
        if subtable_tuples:
            entry_solutions = [{**pattern, **t} for t in subtable_tuples]

        filtered_effects = []
        for effect in normalized_effects:
            if effect.condition != TRUE():
                cond_result = self._evaluate_with_solution(effect.condition, pattern)
                if cond_result is False or cond_result == FALSE():
                    continue
            filtered_effects.append(effect)

        self._add_effects_dnf_mode(new_action, new_problem, old_problem, variables, entry_solutions, filtered_effects)

    def _create_fluent_and_instantiate(self, old_action, solutions, variables):
        # Els paràmetres del fluent són NOMÉS els TIPUS dels fluents (Number), NO els objectes (Counter)
        new_action_parameters = []
        fluent_parameters = []
        i = 1
        for var in variables.keys():
            var_type = self._number_ut if var.fluent().type.is_int_type() else var.fluent().type
            param_name = f'p{i}' # new action parameter
            new_action_parameters.append(Parameter(param_name, var_type))
            fluent_parameters.append(Parameter(param_name, var_type))
            i +=1

        # Creating the new action fluent
        fluent_name = old_action.name + "_fluent"
        new_fluent = Fluent(fluent_name, BoolType(), fluent_parameters)

        # Afegir el fluent al problema
        self._new_problem.add_fluent(new_fluent, default_initial_value=False)

        # Instanciar el fluent NOMÉS amb els valors de les solucions (n0, n1, n2, n3)
        for solution in solutions:
            fluent_args = []
            for var in variables.keys():
                var_key = str(var)
                if var_key in solution:
                    solution_value = solution[var_key]
                    if var.fluent().type.is_int_type():
                        fluent_args.append(self._get_number_object(solution_value))
                    else:
                        fluent_args.append(solution_value)

            # Establir el valor inicial del fluent a True per aquesta combinació
            self._new_problem.set_initial_value(new_fluent(*fluent_args), True)

        # Create new action
        action_name = f"{old_action.name}"
        print("new_action_parameters", new_action_parameters)
        params = OrderedDict(((p.name, p.type) for p in old_action.parameters + new_action_parameters))

        new_action = InstantaneousAction(action_name, _parameters=params, _env=self._new_problem.environment)

        print("newww action_parameters", new_action.parameters)
        print("new_fluent", new_fluent)

        # Retornar l'expressió del fluent cridat
        i = 0
        new_args_fluent = []
        for var in variables.keys():
            # Add variable as precondition
            fluent_args = [*var.args]
            updated_fluent = self._new_problem.fluent(var.fluent().name)
            fluent_args.append(new_action_parameters[i])

            new_action.add_precondition(updated_fluent(*fluent_args))
            new_args_fluent.append(new_action_parameters[i])
            i += 1

        # Add new action fluent as precondition
        new_action.add_precondition(new_fluent(*new_args_fluent))

        return new_action, new_action_parameters

    def _transform_preconditions(
            self, old_preconditions: List[FNode], problem: Problem, new_problem: Problem
    ) -> List[FNode]:
        """
        Transform an action preconditions with instantiated predicates
        which is satisfied for all possible combination values of the expression constraints.
        """



        self._object_to_index = {}
        self._index_to_object = {}
        variables = bidict({})
        cp_model_obj = cp_model.CpModel()

        # Add preconditions as constraints


        # Add effect bounds constraints
        self._add_effect_bounds_constraints(problem, variables, cp_model_obj)

        # Solve
        solutions = solve_with_cp_sat(variables, cp_model_obj)
        if not solutions:
            return None

        # Create and instantiate new fluent with the possible combinations & add pre
        new_action, new_parameters = self._create_fluent_and_instantiate(solutions, variables)

        return new_action, new_parameters

    def _transform_actions(self, problem: Problem, new_problem: Problem):
        """Transform all actions by replacing all preconditions with a new instantiated predicate."""
        new_to_old = {}
        for action in problem.actions:
            print(action)
            new_action = action.clone()
            new_action.clear_preconditions()
            new_action.clear_effects()

            # Preonditions
            new_preconditions = []
            arithmetic_precs = [p for p in action.preconditions if requires_arithmetic(p)]
            non_arithmetic_precs = [p for p in action.preconditions if not requires_arithmetic(p)]

            # Non-arithmetic preconditions
            for precondition in non_arithmetic_precs:
                transformed = self._transform_node(problem, precondition)
                if transformed and transformed != TRUE():
                    new_preconditions.append(transformed)

            # Treat arithmetic preconditions with new predicates and CP-SAT
            if arithmetic_precs:
                groups = group_conditions_by_shared_fluents(arithmetic_precs)
                print(groups)

                # CP-SAT
                for nodes in groups:
                    print("group 1")
                    if len(nodes) == 1 and nodes[0] in self._conditions:
                        c_id = self._conditions[nodes[0]]
                        return new_problem.fluent(f"condition_{c_id}")

                    # Create a predicate for all conditions
                    fluent_name = f"condition_{len(self._conditions)}"
                    condition_fluent = Fluent(fluent_name, BoolType())
                    new_problem.add_fluent(condition_fluent, default_initial_value=FALSE())

                    self._object_to_index = {}
                    variables = bidict({})
                    cp_model_obj = cp_model.CpModel()
                    result_var = add_cp_constraints(problem, And(nodes), variables, cp_model_obj, self._object_to_index)
                    cp_model_obj.Add(result_var == 1)

                    # Filters relevant effects for this group of conditions
                    group_fluent_strs = {str(f) for c in nodes
                                         for f in get_fluent_exps_in_expression(c)}
                    relevant_effects = [e for e in action.effects
                                        if str(e.fluent) in group_fluent_strs
                                        or any(str(f) in group_fluent_strs
                                               for f in get_fluent_exps_in_expression(e.value))]

                    add_effect_bounds_constraints(problem, relevant_effects, variables, cp_model_obj)

                for new_precondition in new_preconditions:
                    new_action.add_precondition(new_precondition)

                # Effects
                # tractarlos un per un amb efectes condicionals?
                # checkejar els valors dels fluents, pero els que sigui impossible que passin ja estaran restringits
                # per les precondicions ?


            else:
                # Effects
                for effect in action.effects:
                    # tractarlos un per un amb efectes condicionals?
                    continue
            new_problem.add_action(new_action)
            new_to_old[new_action] = action
        return new_to_old

    # ==================== FLUENT TRANSFORMATION ====================

    def _transform_fluents(self, problem: Problem):
        """Transform integer fluents -> user-type fluents."""

        for fluent in problem.fluents:
            default_value = problem.fluents_defaults.get(fluent)

            if fluent.type.is_int_type():
                # Integer fluent -> Boolean fluent with user-type parameter

                new_fluent = Fluent(fluent.name, BoolType(), fluent.signature + [Parameter('n', self._number_ut)],
                                    self._new_problem.environment)
                lb, ub = fluent.type.lower_bound, fluent.type.upper_bound
                assert lb is not None and ub is not None
                self._domains[fluent.name] = (lb, ub)

                if default_value is not None:
                    default_obj = self._get_number_object(default_value.constant_value())
                    print(new_fluent, default_obj)
                    self._new_problem.add_fluent(new_fluent, default_initial_value=False)
                else:
                    self._new_problem.add_fluent(new_fluent)

                for f, v in problem.explicit_initial_values.items():
                    if f.fluent() == fluent:
                        self._new_problem.set_initial_value(
                            self._new_problem.fluent(fluent.name)(*f.args, self._get_number_object(v.constant_value())),
                            True
                        )
            else:
                self._new_problem.add_fluent(fluent, default_initial_value=default_value)
                for f, v in problem.explicit_initial_values.items():
                    if f.fluent() == fluent:
                        self._new_problem.set_initial_value(f, v)

    # ==================== GOALS TRANSFORMATION ====================


    def _transform_goals(self, problem: Problem, new_problem: Problem) -> None:
        """
        Transform goals, using CP-SAT only if there's arithmetic.
        """
        arithmetic_goals = []
        non_arithmetic_goals = []

        for goal in problem.goals:
            if requires_arithmetic(goal):
                arithmetic_goals.append(goal)
            else:
                non_arithmetic_goals.append(goal)

        # Non-arithmetic goals
        for goal in non_arithmetic_goals:
            transformed = self._transform_node(problem, goal)
            if transformed and transformed != TRUE():
                new_problem.add_goal(transformed)

        # Arithmetic goals: Create a fluent per goal and initialise the values using CP-SAT =====
        for goal in arithmetic_goals:
            new_goal = self._get_predicate_for_group_condition(new_problem, goal)
            new_problem.add_goal(new_goal)


    def _transform_action_costs(
            self,
            qm: MinimizeActionCosts,
            new_to_old: Dict[Action, Tuple[Action, Tuple[Action, FNode]]]
    ) -> Dict[Action, Expression]:
        """Transform action costs, substituting integer parameters."""
        new_costs = {}
        for new_action, (old_action, instantiation) in new_to_old.items():
            if old_action is None:
                continue
            old_cost = qm.get_action_cost(old_action)
            # If cost is a parameter, substitute its value
            if old_cost.is_parameter_exp():
                # Find which integer parameter this is
                param_idx = 0
                for param in old_action.parameters:
                    if param.name == str(old_cost):
                        break
                    if param.type.is_int_type():
                        param_idx += 1
                new_costs[new_action] = Int(instantiation[param_idx])
            else:
                new_costs[new_action] = old_cost
        return new_costs

    def _ground_minimize_action_costs_metric(
            self, metric: MinimizeActionCosts,
            trace_back_map: Dict[Action, Tuple[Action, List[FNode]]]
    ) -> MinimizeActionCosts:
        """
        Support method for a grounder to handle the MinimizeActionCosts metric.

        :param metric: The metric to convert.
        :param trace_back_map: The grounding map from a grounded Action to the Action
            and parameters that created the grounded action.
        :param simplifier: The simplifier used to evaluate the cost; if this simplifier
            has the Instance of the problem at construction time, it will also substitute
            the static fluents in the action cost with their value.
        :return: The equivalent MinimizeActionCosts metric for the grounded problem.
        """
        new_costs: Dict[Action, Expression] = {}
        for new_action, (old_action, params) in trace_back_map.items():
            old_cost = metric.get_action_cost(old_action)
            print("old cost", old_cost)
            if old_cost is not None:
                new_costs[new_action] = old_cost
        return MinimizeActionCosts(new_costs)

    def _compile(
            self,
            problem: "up.model.AbstractProblem",
            compilation_kind: "up.engines.CompilationKind",
    ) -> CompilerResult:
        """
        """
        assert isinstance(problem, Problem)

        new_problem = problem.clone()
        new_problem.name = f"{self.name}_{problem.name}"
        new_problem.clear_fluents()
        new_problem.clear_actions()
        new_problem.clear_goals()
        new_problem.clear_quality_metrics()
        new_problem.initial_values.clear()

        self._number_ut = UserType('Number')

        # ========== Transform Fluents ==========
        self._transform_fluents(problem)

        # ========== Transform Actions ==========
        new_to_old: Dict[Action, Tuple[Action, List[FNode]]] = self._transform_actions(problem, new_problem)

        # =========== Transform Goals ===========
        self._transform_goals(problem, new_problem)

        # ====== Transform Quality Metrics ======
        for qm in problem.quality_metrics:
            if qm.is_minimize_action_costs():
                assert isinstance(qm, MinimizeActionCosts)
                new_metric = self._ground_minimize_action_costs_metric(
                    qm, new_to_old
                )
                new_problem.add_quality_metric(new_metric)
            else:
                new_problem.add_quality_metric(qm)

        return CompilerResult(
            new_problem, partial(replace_action, map=new_to_old), self.name
        )
