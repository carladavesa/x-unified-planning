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
"""This module defines the count remover class."""
import itertools
import unified_planning.engines as engines
from unified_planning.exceptions import UPValueError
from unified_planning.engines.mixins.compiler import CompilationKind, CompilerMixin
from unified_planning.engines.results import CompilerResult
from unified_planning.model import (
    InstantaneousAction, Fluent, Variable, Parameter, Problem, Action, ProblemKind, OperatorKind, FNode, Effect
)
from unified_planning.model.problem_kind_versioning import LATEST_PROBLEM_KIND_VERSION
from unified_planning.engines.compilers.utils import (
    replace_action, get_fresh_name, updated_minimize_action_costs, check_count_argument,
)
from typing import Dict, Optional, Tuple, List
from functools import partial
from unified_planning.shortcuts import Not, And, Or, FALSE, TRUE, Int, IntType, Equals


class CountRemover(engines.engine.Engine, CompilerMixin):
    """
    Count remover class: transforms a Problem with Count expressions into an
    equivalent Problem without them, by rewriting each Count either as:
    - a boolean formula over its arguments (target='bool'), or
    - a sum of integer helper fluents (target='int').

    Both strategies are semantically equivalent; the choice affects the shape
    of the resulting problem.

    This `Compiler` supports only the `COUNT_REMOVING` :class:`~unified_planning.engines.CompilationKind`.
    """

    def __init__(self, target: str = 'bool'):
        engines.engine.Engine.__init__(self)
        CompilerMixin.__init__(self, CompilationKind.COUNT_REMOVING)
        if target not in ('bool', 'int'):
            raise ValueError(f"Target must be 'bool' or 'int', got {target!r}")
        self.target = target
        self._count_registry: Dict[str, FNode] = {}


    @property
    def name(self):
        return "ctbr" if self.target == 'bool' else "ctir"

    @staticmethod
    def supported_kind() -> ProblemKind:
        supported_kind = ProblemKind(version=LATEST_PROBLEM_KIND_VERSION)
        supported_kind.set_problem_class("ACTION_BASED")
        supported_kind.set_typing("FLAT_TYPING")
        supported_kind.set_typing("HIERARCHICAL_TYPING")
        supported_kind.set_parameters("BOOL_FLUENT_PARAMETERS")
        supported_kind.set_parameters("BOUNDED_INT_FLUENT_PARAMETERS")
        supported_kind.set_parameters("BOOL_ACTION_PARAMETERS")
        supported_kind.set_parameters("UNBOUNDED_INT_ACTION_PARAMETERS")
        supported_kind.set_parameters("REAL_ACTION_PARAMETERS")
        supported_kind.set_numbers("BOUNDED_TYPES")
        supported_kind.set_problem_type("SIMPLE_NUMERIC_PLANNING")
        supported_kind.set_problem_type("GENERAL_NUMERIC_PLANNING")
        supported_kind.set_fluents_type("INT_FLUENTS")
        supported_kind.set_fluents_type("REAL_FLUENTS")
        supported_kind.set_fluents_type("OBJECT_FLUENTS")
        supported_kind.set_conditions_kind("NEGATIVE_CONDITIONS")
        supported_kind.set_conditions_kind("DISJUNCTIVE_CONDITIONS")
        supported_kind.set_conditions_kind("EQUALITIES")
        supported_kind.set_conditions_kind("EXISTENTIAL_CONDITIONS")
        supported_kind.set_conditions_kind("UNIVERSAL_CONDITIONS")
        supported_kind.set_conditions_kind("COUNTING")
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
        return problem_kind <= CountRemover.supported_kind()

    @staticmethod
    def supports_compilation(compilation_kind: CompilationKind) -> bool:
        return compilation_kind == CompilationKind.COUNT_REMOVING

    def resulting_problem_kind(
        self, problem_kind: ProblemKind, compilation_kind: Optional[CompilationKind] = None
    ) -> ProblemKind:
        new_kind = problem_kind.clone()
        new_kind.unset_conditions_kind("COUNTING")
        if self.target == 'int':
            new_kind.set_fluents_type("INT_FLUENTS")
        return new_kind

    # ============================================================
    # BOOL helpers
    # ============================================================

    def _bool_transform_action(
        self, new_problem: Problem, action: InstantaneousAction
    ) -> InstantaneousAction:
        """Transform an action by replacing all Count expressions in preconditions and effects."""
        new_action = action.clone()
        new_action.name = get_fresh_name(new_problem, action.name)
        new_action.clear_preconditions()
        new_action.clear_effects()

        for precondition in action.preconditions:
            new_precondition = self._bool_transform_expression(new_problem, precondition)
            new_action.add_precondition(new_precondition)

        for effect in action.effects:
            self._bool_transform_effect(new_problem, new_action, effect)

        return new_action

    def _bool_transform_expression(self, new_problem: Problem, node: FNode) -> FNode:
        """
        Transform expressions recursively, replacing count expressions with boolean formulas.
        Complex goals (including large disjunctions produced here) are wrapped later
        by GoalsAsAxiomsCompiler if desired.
        """
        if (node.is_fluent_exp() or node.is_parameter_exp()
                or node.is_variable_exp() or node.is_constant()):
            return node

        comparison_ops = {OperatorKind.LT, OperatorKind.LE, OperatorKind.EQUALS}
        if node.node_type in comparison_ops and any(arg.is_count() for arg in node.args):
            return self._bool_transform_count_comparison(node)

        em = new_problem.environment.expression_manager
        new_args = [self._bool_transform_expression(new_problem, arg) for arg in node.args]
        if node.is_exists() or node.is_forall():
            return em.create_node(node.node_type, tuple(new_args), tuple(node.variables()))
        return em.create_node(node.node_type, tuple(new_args)).simplify()

    def _bool_transform_count_comparison(self, node: FNode) -> FNode:
        """
        Transform comparisons involving Count expressions into DNF boolean formulas.
        Handles:
        - Count(args) op constant
        - constant op Count(args)
        - Count(args1) op Count(args2)
        """
        left = node.arg(0)
        right = node.arg(1)
        op = node.node_type
        left_is_count = left.is_count()
        right_is_count = right.is_count()

        # Validate Count arguments: reject quantifier variables
        for side in (left, right):
            if side.is_count():
                for arg in side.args:
                    check_count_argument(arg, "COUNT_TO_BOOL_REMOVING")

        if left_is_count and right.is_int_constant():
            return self._bool_expand_count_vs_constant(left, right.constant_value(), op)
        elif right_is_count and left.is_int_constant():
            return self._bool_expand_constant_vs_count(left.constant_value(), right, op)
        elif left_is_count and right_is_count:
            return self._bool_expand_count_vs_count(left, right, op)
        else:
            raise UPValueError(f"Unexpected Count comparison structure: {node}")

    def _bool_exactly_k_combinations(self, arguments: List[FNode], k: int) -> List[FNode]:
        """
        Generate all formulas representing exactly k arguments being true.
        Returns list of conjunctions, one for each k-combination of true arguments.
        """
        n = len(arguments)
        if k > n or k < 0:
            return []
        combinations = []
        for true_indices in itertools.combinations(range(n), k):
            true_set = set(true_indices)
            literals = [
                arguments[i] if i in true_set else Not(arguments[i]) for i in range(n)
            ]
            combinations.append(And(*literals))
        return combinations

    def _bool_between_k_true_formula(
            self, arguments: List[FNode], min_true: int, max_true: int
    ) -> FNode:
        """
        Generate formula: "between min_true and max_true arguments are true".

        Uses specialized encodings for a few clear-win cases (all-false, all-true,
        at-least-1). Falls back to DNF expansion for the rest, which is competitive
        for at-most-K with small K and works well with Fast Downward's heuristics.
        """
        n = len(arguments)

        # Trivial cases
        if min_true > max_true or min_true > n:
            return FALSE()
        if min_true <= 0 and max_true >= n:
            return TRUE()

        # ========== Specialized encodings ==========

        # All false: max_true == 0
        if max_true == 0:
            return And(*[Not(a) for a in arguments])

        # All true: min_true == n
        if min_true == n:
            return And(*arguments) if n > 1 else arguments[0]

        # At-least-1: min_true >= 1 and max_true == n
        # (DNF would enumerate all 2^n - 1 combinations with at least one true)
        if min_true == 1 and max_true == n:
            return Or(*arguments) if n > 1 else arguments[0]

        # ========== Fallback: DNF expansion ==========
        combinations = []
        for k in range(min_true, max_true + 1):
            combinations.extend(self._bool_exactly_k_combinations(arguments, k))
        if not combinations:
            return FALSE()
        if len(combinations) == 1:
            return combinations[0]
        return Or(*combinations)

    def _bool_expand_count_vs_constant(
        self, count_node: FNode, value: int, op: OperatorKind
    ) -> FNode:
        """
        Expand Count(args) op value into boolean formula.

        Examples:
        - Count(a, b, c) <= 2 - "at most 2 of {a,b,c} are true"
        - Count(a, b, c) == 2 - "exactly 2 of {a,b,c} are true"
        - Count(a, b, c) < 2 - "at most 1 of {a,b,c} is true"
        """
        arguments = list(count_node.args)
        n = len(arguments)

        if op == OperatorKind.LE:
            min_true, max_true = 0, min(value, n)
        elif op == OperatorKind.EQUALS:
            min_true, max_true = value, value
        elif op == OperatorKind.LT:
            min_true, max_true = 0, min(value - 1, n)
        else:
            raise UPValueError(f"Operator {op} not supported (should be LT/LE/EQUALS)")
        return self._bool_between_k_true_formula(arguments, min_true, max_true)

    def _bool_expand_constant_vs_count(
        self, value: int, count_node: FNode, op: OperatorKind
    ) -> FNode:
        """
        Expand constant op Count(args) into boolean formula by flipping the comparison.
        """
        arguments = list(count_node.args)
        n = len(arguments)

        if op == OperatorKind.LT:
            # value < Count means Count > value means Count >= value+1
            min_true, max_true = value + 1, n
        elif op == OperatorKind.LE:
            # value <= Count means Count >= value
            min_true, max_true = value, n
        elif op == OperatorKind.EQUALS:
            # value = Count means Count = value
            min_true, max_true = value, value
        else:
            raise UPValueError(f"Operator {op} not supported (should be LT/LE/EQUALS)")

        # Generate boolean formula
        return self._bool_between_k_true_formula(arguments, min_true, max_true)

    def _bool_expand_count_vs_count(
        self, count1: FNode, count2: FNode, op: OperatorKind
    ) -> FNode:
        """
        Expand Count(args1) op Count(args2) into boolean formula.
        Enumerate all possible (k1, k2) pairs satisfying the comparison, then generate:
        Or over all valid pairs of (exactly k1 true in args1) ∧ (exactly k2 true in args2)
        """
        args1 = list(count1.args)
        args2 = list(count2.args)
        n1 = len(args1)
        n2 = len(args2)

        # Generate all valid (k1, k2) pairs
        valid_pairs = self._bool_get_valid_count_pairs(op, n1, n2)
        if len(valid_pairs) == 0:
            return FALSE()

        # Group k2 values by k1
        k1_to_k2s = {}
        for k1, k2 in valid_pairs:
            k1_to_k2s.setdefault(k1, []).append(k2)

        # Generate formula for each k1 group
        clauses = []
        for k1 in sorted(k1_to_k2s.keys()):
            k2_list = sorted(k1_to_k2s[k1])
            k2_min = min(k2_list)
            k2_max = max(k2_list)

            formula1 = self._bool_between_k_true_formula(args1, k1, k1)  # exactly k1

            # Check if k2_list is a continuous range
            if k2_list == list(range(k2_min, k2_max + 1)):
                formula2 = self._bool_between_k_true_formula(args2, k2_min, k2_max)
            else:
                # Non-continuous - enumerate each k2 separately
                k2_clauses = [
                    self._bool_between_k_true_formula(args2, k2, k2) for k2 in k2_list
                ]
                formula2 = Or(*k2_clauses) if len(k2_clauses) > 1 else k2_clauses[0]

            clauses.append(And(formula1, formula2))
        if len(clauses) == 1:
            return clauses[0]
        else:
            return Or(*clauses)

    def _bool_get_valid_count_pairs(
        self, op: OperatorKind, n1: int, n2: int
    ) -> List[Tuple[int, int]]:
        """
        Get all valid (k1, k2) pairs for Count(args1) op Count(args2).
        Returns list of tuples (k1, k2) where k1 in [0, n1] and k2 in [0, n2] and the pair satisfies the comparison.
        """
        pairs = []
        for k1 in range(n1 + 1):
            for k2 in range(n2 + 1):
                if (
                    (op == OperatorKind.LT and k1 < k2)
                    or (op == OperatorKind.LE and k1 <= k2)
                    or (op == OperatorKind.EQUALS and k1 == k2)
                ):
                    pairs.append((k1, k2))
        return pairs

    def _bool_transform_effect(
        self, new_problem: Problem, new_action: InstantaneousAction, effect: Effect
    ):
        """Transform a single effect by replacing count expressions in value and condition."""
        new_fluent = self._bool_transform_expression(new_problem, effect.fluent)
        new_value = self._bool_transform_expression(new_problem, effect.value)
        new_condition = self._bool_transform_expression(new_problem, effect.condition)

        # Add the appropriate type of effect
        if effect.is_increase():
            new_action.add_increase_effect(
                new_fluent, new_value, new_condition, effect.forall
            )
        elif effect.is_decrease():
            new_action.add_decrease_effect(
                new_fluent, new_value, new_condition, effect.forall
            )
        else:
            new_action.add_effect(new_fluent, new_value, new_condition, effect.forall)

    # ============================================================
    # INT helpers
    # ============================================================

    def _int_transform_action_preconditions(self, new_problem, action):
        """Rewrite preconditions; populates _count_registry."""
        new_action = action.clone()
        new_action.clear_preconditions()
        for precondition in action.preconditions:
            new_action.add_precondition(
                self._int_replace_count_with_fluents(new_problem, precondition)
            )
        return new_action

    def _int_replace_count_with_fluents(self, problem: Problem, expression: FNode) -> FNode:
        """Recursively replace Count sub-expressions with sums of helper fluents."""
        em = problem.environment.expression_manager
        if expression.is_fluent_exp() or expression.is_parameter_exp() or expression.is_constant():
            return expression

        if expression.is_count():
            return self._int_expand_count(problem, expression)
        new_args = [
            self._int_replace_count_with_fluents(problem, arg) for arg in expression.args
        ]
        return em.create_node(expression.node_type, tuple(new_args))

    def _int_expand_count(self, problem, count_expr):
        """Expand a single Count expression as a sum of helper fluents."""
        em = problem.environment.expression_manager
        for arg in count_expr.args:
            check_count_argument(arg, "COUNT_REMOVING")
        sum_args = []
        for arg in count_expr.args:
            if arg.is_false():
                continue
            if arg.is_true():
                sum_args.append(Int(1))
                continue
            sum_args.append(self._int_get_or_create_helper_fluent(problem, arg))
        if not sum_args:
            return Int(0)
        if len(sum_args) == 1:
            return sum_args[0]
        return em.Plus(*sum_args)

    def _int_get_or_create_helper_fluent(self, problem: Problem, arg: FNode) -> FNode:
        """Return the helper fluent expression for arg. Creates it if absent."""
        em = problem.environment.expression_manager

        # Look up existing by structural equality
        for name, expr in self._count_registry.items():
            if expr == arg:
                # Reconstruct the call with the same parameter list
                params = self._int_get_params_in_expression(expr)
                fluent = problem.fluent(name)
                if params:
                    return fluent(*[em.ParameterExp(p) for p in params])
                return fluent()

        # Create new
        fluent_name = f"count_{len(self._count_registry)}"
        self._count_registry[fluent_name] = arg
        count_parameters = self._int_get_params_in_expression(arg)

        if not count_parameters:
            return self._int_create_ground_helper(problem, arg, fluent_name)
        return self._int_create_parameterised_helper(
            problem, arg, fluent_name, count_parameters
        )

    def _int_create_ground_helper(
            self, problem: Problem, arg: FNode, fluent_name: str
    ) -> FNode:
        """Create a helper fluent for a ground Count argument (no action parameters).

        Evaluates arg against the initial state to set the fluent's initial value.
        """
        initial_eval = self._int_transform_expression(problem, arg)
        assert initial_eval.is_bool_constant(), (
            f"Count argument initial value must be a boolean constant, got: {initial_eval}"
        )
        initial_value = Int(1) if initial_eval.is_true() else Int(0)

        new_fluent = Fluent(fluent_name, IntType(0, 1))
        problem.add_fluent(new_fluent)
        problem.set_initial_value(new_fluent, initial_value)

        return new_fluent()

    def _int_create_parameterised_helper(
            self, problem: Problem, arg: FNode, fluent_name: str,
            count_parameters: List[Parameter]
    ) -> FNode:
        """Create a helper fluent for a parameterised Count argument.

        Creates the fluent with the same parameter signature as arg, then sets its
        initial value for every combination of concrete objects by evaluating the
        substituted argument against the initial state.
        """
        from unified_planning.model.walkers import Substituter
        em = problem.environment.expression_manager
        subst = Substituter(problem.environment)

        new_fluent = Fluent(fluent_name, IntType(0, 1), count_parameters)
        problem.add_fluent(new_fluent)

        for values in self._int_get_param_combinations(problem, count_parameters):
            subs_map = {
                em.ParameterExp(p): em.ObjectExp(v)
                for p, v in zip(count_parameters, values)
            }
            instantiated_arg = subst.substitute(arg, subs_map)
            initial_eval = self._int_transform_expression(problem, instantiated_arg)
            if initial_eval.is_bool_constant():
                initial_value = Int(1) if initial_eval.is_true() else Int(0)
            else:
                initial_value = Int(0)  # Fallback if the arg couldn't be fully evaluated
            problem.set_initial_value(
                new_fluent(*[em.ObjectExp(v) for v in values]),
                initial_value
            )
        return new_fluent(*[em.ParameterExp(p) for p in count_parameters])

    def _int_transform_expression(
        self,
        problem: Problem,
        expression: FNode,
        fluent_to_update: Optional[FNode] = None,
        new_value: Optional[FNode] = None,
        effect_type: Optional[str] = None,
    ) -> FNode:
        """
        Evaluate an expression against the initial state.

        If fluent_to_update is provided, simulate the effect update on that fluent
        (assign/increase/decrease) before evaluating the expression.
        """
        em = problem.environment.expression_manager
        if (
            expression.is_constant()
            or expression.is_parameter_exp()
            or expression.is_object_exp()
        ):
            return expression
        if expression.is_fluent_exp():
            if fluent_to_update is not None and fluent_to_update == expression:
                if effect_type == "increase":
                    return em.Plus(expression, new_value).simplify()
                elif effect_type == "decrease":
                    return em.Minus(expression, new_value).simplify()
                else:
                    return new_value
            return problem.initial_value(expression)

        new_args = [
            self._int_transform_expression(
                problem, arg, fluent_to_update, new_value, effect_type
            )
            for arg in expression.args
        ]
        return em.create_node(expression.node_type, tuple(new_args)).simplify()

    def _int_find_affected_fluents(self, expression: FNode) -> List[FNode]:
        """Return all fluent expressions appearing in the expression tree."""
        if expression.is_fluent_exp():
            return [expression]
        fluents = []
        for arg in expression.args:
            fluents.extend(self._int_find_affected_fluents(arg))
        return fluents

    def _int_get_params_in_expression(self, expression: FNode) -> List:
        """Return all Parameter objects that appear anywhere in the expression tree."""
        params = []
        if expression.is_parameter_exp():
            params.append(expression.parameter())
        for arg in expression.args:
            params.extend(self._int_get_params_in_expression(arg))
        # Deduplicate preserving order
        seen = set()
        result = []
        for p in params:
            if p.name not in seen:
                seen.add(p.name)
                result.append(p)
        return result

    def _int_get_param_combinations(self, problem: Problem, signature):
        """Return all object instantiations for a parameter signature."""
        param_values = [problem.objects(param.type) for param in signature]
        return list(itertools.product(*param_values))

    def _int_add_count_effect_to_action(
        self,
        action: InstantaneousAction,
        count_fluent: FNode,
        new_expr: FNode,
        condition: Optional[FNode],
    ):
        """Add conditional effects that keep a helper count fluent consistent."""
        if new_expr.is_bool_constant():
            # Expression evaluates to constant
            value = 1 if new_expr.is_true() else 0
            if condition:
                action.add_effect(count_fluent, value, condition)
            else:
                action.add_effect(count_fluent, value)
        else:
            # Expression is conditional
            if condition:
                # True case
                action.add_effect(count_fluent, 1, And(new_expr, condition).simplify())
                # False case
                action.add_effect(
                    count_fluent, 0, And(Not(new_expr), condition).simplify()
                )
            else:
                action.add_effect(count_fluent, 1, new_expr)
                action.add_effect(count_fluent, 0, Not(new_expr).simplify())

    def _int_generate_count_effects(
        self, problem: Problem, action: InstantaneousAction
    ) -> InstantaneousAction:
        """
        Generate effects for helper count fluents based on action effects.
        For each registered count term, if an action effect may modify a fluent used in that term,
        synthesize corresponding conditional effects on the helper fluent.
        """
        for count_name, count_expr in self._count_registry.items():
            affected_fluents = self._int_find_affected_fluents(count_expr)
            # Find which fluents in count_expr are affected by action
            # Process each effect
            for effect in action.effects:
                # Check if this effect can affect any tracked fluent
                for tracked_fluent in affected_fluents:
                    # Must be same fluent name
                    if effect.fluent.fluent().name != tracked_fluent.fluent().name:
                        continue

                    # Check if arguments match (build equality conditions)
                    equality_conditions = []
                    all_match = True
                    for effect_arg, tracked_arg in zip(
                        effect.fluent.args, tracked_fluent.args
                    ):
                        if effect_arg == tracked_arg:
                            # Exact match (same parameter or object)
                            continue
                        elif effect_arg.is_parameter_exp():
                            # Effect has parameter, tracked has concrete object
                            equality_conditions.append(Equals(effect_arg, tracked_arg))
                        else:
                            # Different concrete values - no match possible
                            all_match = False
                            break
                    if not all_match:
                        continue
                    # This effect can modify the tracked fluent. Compute updated expression value
                    effect_type = (
                        "increase"
                        if effect.is_increase()
                        else "decrease"
                        if effect.is_decrease()
                        else None
                    )

                    new_expr = self._int_transform_expression(
                        problem, count_expr, tracked_fluent, effect.value, effect_type
                    )
                    count_parameters = [
                        Parameter(str(a), a.type)
                        for a in count_expr.args
                        if a.is_parameter_exp()
                    ]

                    # Combine effect condition with argument-matching equalities
                    condition = None
                    if effect.is_conditional():
                        condition = effect.condition
                    for eq_cond in equality_conditions:
                        condition = (
                            And(condition, eq_cond).simplify() if condition else eq_cond
                        )

                    # Add helper-fluent update effect
                    count_fluent = problem.fluent(count_name)(*count_parameters)
                    self._int_add_count_effect_to_action(
                        action, count_fluent, new_expr, condition
                    )
        return action

    # ============================================================
    # MAIN COMPILATION
    # ============================================================

    def _compile(
        self,
        problem: Problem,
        compilation_kind: CompilationKind,
    ) -> CompilerResult:
        """Main compilation"""
        assert isinstance(problem, Problem)

        # Clone problem
        new_problem = problem.clone()
        new_problem.name = f"{self.name}_{problem.name}"
        new_problem.clear_actions()
        new_problem.clear_goals()
        new_problem.clear_quality_metrics()

        # Select target-specific transformations
        if self.target == 'bool':
            transform_action = self._bool_transform_action
            transform_goal = self._bool_transform_expression
            post_process = None
        else:  # int
            transform_action = self._int_transform_action_preconditions
            transform_goal = self._int_replace_count_with_fluents
            post_process = self._int_generate_count_effects

        new_to_old: Dict[Action, Action] = {}

        # Transform actions
        temp_actions = []
        for action in problem.actions:
            new_action = transform_action(new_problem, action)
            temp_actions.append((new_action, action))

        # Transform goals
        for goal in problem.goals:
            new_problem.add_goal(transform_goal(new_problem, goal))

        # Finalize actions (add helper effects for 'int', no-op for 'bool')
        for new_action, old_action in temp_actions:
            if post_process is not None:
                new_action = post_process(new_problem, new_action)
            new_problem.add_action(new_action)
            new_to_old[new_action] = old_action

        # Quality metrics
        for metric in problem.quality_metrics:
            if metric.is_minimize_action_costs():
                new_problem.add_quality_metric(
                    updated_minimize_action_costs(
                        metric, new_to_old, new_problem.environment
                    )
                )
            else:
                new_problem.add_quality_metric(metric)

        return CompilerResult(
            new_problem, partial(replace_action, map=new_to_old), self.name
        )
