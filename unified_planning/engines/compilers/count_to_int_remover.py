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
"""This module defines the count to int remover class."""
import unified_planning.engines as engines
from itertools import product
from unified_planning.engines.mixins.compiler import CompilationKind, CompilerMixin
from unified_planning.engines.results import CompilerResult
from unified_planning.exceptions import UPProblemDefinitionError
from unified_planning.model import (
    Problem,
    Action,
    ProblemKind,
    FNode,
    AbstractProblem,
    Fluent,
    Parameter,
    Variable,
    InstantaneousAction,
)
from unified_planning.model.problem_kind_versioning import LATEST_PROBLEM_KIND_VERSION
from unified_planning.engines.compilers.utils import (
    replace_action,
    updated_minimize_action_costs, check_count_argument,
)
from typing import Dict, List, Optional
from functools import partial
from unified_planning.shortcuts import Int, Not, And, Equals, IntType


class CountToIntRemover(engines.engine.Engine, CompilerMixin):
    """
    Count to integer remover class: this class offers the capability to transform
    a :class:`~unified_planning.model.Problem` with `Count` expressions into an
    equivalent `Problem` without them, by introducing an integer helper fluent
    (with domain 0/1) for each boolean term inside a count, and rewriting the count
    as the sum of those helper fluents.

    Each helper fluent is kept consistent with its term through conditional effects
    added to every action that may change the term's value. For example,
    `Count((a > b), my_bool) >= 1` becomes `count_0 + count_1 >= 1`, where `count_0`
    tracks `(a > b)` and `count_1` tracks `my_bool`.

    Count terms must be free of unresolved parameters and quantifier variables:
    the :class:`~unified_planning.engines.CompilationKind.QUANTIFIERS_REMOVING`
    compiler should be run beforehand if the problem contains them.

    This capability is offered by the :meth:`~unified_planning.engines.compilers.CountToIntRemover.compile`
    method, that returns a :class:`~unified_planning.engines.CompilerResult` in which the
    :meth:`problem <unified_planning.engines.CompilerResult.problem>` field is the compiled `Problem`.

    This `Compiler` supports only the `COUNT_TO_INT_REMOVING` :class:`~unified_planning.engines.CompilationKind`.
    """

    def __init__(self):
        engines.engine.Engine.__init__(self)
        CompilerMixin.__init__(self, CompilationKind.COUNT_TO_INT_REMOVING)
        self._count_registry: Dict[str, FNode] = {}

    @property
    def name(self):
        return "ctir"

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
        return problem_kind <= CountToIntRemover.supported_kind()

    @staticmethod
    def supports_compilation(compilation_kind: CompilationKind) -> bool:
        return compilation_kind == CompilationKind.COUNT_TO_INT_REMOVING

    @staticmethod
    def resulting_problem_kind(
        problem_kind: ProblemKind, compilation_kind: Optional[CompilationKind] = None
    ) -> ProblemKind:
        new_kind = problem_kind.clone()
        new_kind.unset_conditions_kind("COUNTING")
        new_kind.set_fluents_type("INT_FLUENTS")
        return new_kind

    # ==================== EXPRESSION EVALUATION ====================

    def _transform_expression(
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
            self._transform_expression(
                problem, arg, fluent_to_update, new_value, effect_type
            )
            for arg in expression.args
        ]
        return em.create_node(expression.node_type, tuple(new_args)).simplify()

    def _find_affected_fluents(self, expression: FNode) -> List[FNode]:
        """Return all fluent expressions appearing in the expression tree."""
        if expression.is_fluent_exp():
            return [expression]
        fluents = []
        for arg in expression.args:
            fluents.extend(self._find_affected_fluents(arg))
        return fluents

    def _get_params_in_expression(self, expression: FNode) -> List:
        """Return all Parameter objects that appear anywhere in the expression tree."""
        params = []
        if expression.is_parameter_exp():
            params.append(expression.parameter())
        for arg in expression.args:
            params.extend(self._get_params_in_expression(arg))
        # Deduplicate preserving order
        seen = set()
        result = []
        for p in params:
            if p.name not in seen:
                seen.add(p.name)
                result.append(p)
        return result

    # ==================== COUNT EXPRESSION REPLACEMENT ====================

    def _get_param_combinations(self, problem: Problem, signature):
        """Return all object instantiations for a parameter signature."""
        param_values = [problem.objects(param.type) for param in signature]
        return list(product(*param_values))

    def _replace_count_with_fluents(self, problem: Problem, expression: FNode) -> FNode:
        """
        Replace Count sub-expressions with integer sums over helper fluents.
        New helper fluents are created lazily and cached in _count_registry.
        """
        em = problem.environment.expression_manager

        if (
            expression.is_fluent_exp()
            or expression.is_parameter_exp()
            or expression.is_constant()
        ):
            return expression

        if expression.is_count():
            for i, arg in enumerate(expression.args):
                check_count_argument(arg, "COUNT_TO_INT_REMOVING")
            sum_args = []
            for arg in expression.args:
                # Skip trivial cases
                if arg.is_false():
                    continue
                elif arg.is_true():
                    sum_args.append(Int(1))
                    continue
                # Check if we already have a fluent for this expression
                existing_name = next(
                    (
                        name
                        for name, expr in self._count_registry.items()
                        if expr == arg
                    ),
                    None,
                )
                if existing_name:
                    sum_args.append(problem.fluent(existing_name)())
                else:
                    # Create and initialize a new helper fluent for this term
                    fluent_name = f"count_{len(self._count_registry)}"
                    self._count_registry[fluent_name] = arg
                    count_parameters = self._get_params_in_expression(arg)
                    count_variables = [
                        Variable(str(a), a.type)
                        for a in arg.args
                        if a.is_variable_exp()
                    ]
                    def _collect_vars(e):
                        if e.is_variable_exp():
                            count_variables.append(e.variable())
                        for a in e.args:
                            _collect_vars(a)
                    _collect_vars(arg)

                    # Evaluate initial value
                    if not count_parameters and not count_variables:
                        # Ground case: direct initialization from initial-state evaluation
                        initial_eval = self._transform_expression(problem, arg)
                        assert (
                            initial_eval.is_bool_constant()
                        ), f"Count argument initial value must be boolean constant, got: {initial_eval}"
                        initial_value = Int(1) if initial_eval.is_true() else Int(0)
                        # Add fluent to problem
                        new_fluent = Fluent(fluent_name, IntType(0, 1))
                        problem.add_fluent(new_fluent)
                        problem.set_initial_value(new_fluent, initial_value)
                        sum_args.append(new_fluent())
                    else:
                        # Parameterised case: initialize helper fluent for each object combination
                        new_fluent = Fluent(
                            fluent_name, IntType(0, 1), count_parameters
                        )
                        problem.add_fluent(new_fluent)

                        # Substitute parameters with concrete objects for each combination
                        from unified_planning.model.walkers import Substituter
                        subst = Substituter(problem.environment)
                        em = problem.environment.expression_manager

                        instantiations = self._get_param_combinations(problem, count_parameters)
                        for values in instantiations:
                            # Build substitution map: parameter to object
                            subs_map = {
                                em.ParameterExp(p): em.ObjectExp(v)
                                for p, v in zip(count_parameters, values)
                            }
                            instantiated_arg = subst.substitute(arg, subs_map)
                            initial_eval = self._transform_expression(problem, instantiated_arg)
                            if initial_eval.is_bool_constant():
                                initial_value = Int(1) if initial_eval.is_true() else Int(0)
                            else:
                                # Fallback: default to 0
                                initial_value = Int(0)
                            problem.set_initial_value(
                                problem.fluent(fluent_name)(*[em.ObjectExp(v) for v in values]),
                                initial_value
                            )

                        sum_args.append(problem.fluent(fluent_name)(*[em.ParameterExp(p) for p in count_parameters]))

            # Return the arithmetic replacement for the original count expression
            if not sum_args:
                result = Int(0)
            elif len(sum_args) == 1:
                result = sum_args[0]
            else:
                result = em.Plus(*sum_args)

            return result

        new_args = [
            self._replace_count_with_fluents(problem, arg) for arg in expression.args
        ]
        return em.create_node(expression.node_type, tuple(new_args))

    # ==================== EFFECT GENERATION ====================

    def _add_count_effect_to_action(
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

    def _generate_count_effects(
        self, problem: Problem, action: InstantaneousAction
    ) -> InstantaneousAction:
        """
        Generate effects for helper count fluents based on action effects.
        For each registered count term, if an action effect may modify a fluent used in that term,
        synthesize corresponding conditional effects on the helper fluent.
        """
        for count_name, count_expr in self._count_registry.items():
            affected_fluents = self._find_affected_fluents(count_expr)
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

                    new_expr = self._transform_expression(
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
                    self._add_count_effect_to_action(
                        action, count_fluent, new_expr, condition
                    )
        return action

    def _compile(
        self,
        problem: AbstractProblem,
        compilation_kind: CompilationKind,
    ) -> CompilerResult:
        """
        Compile a problem by eliminating Count conditions.

        The compilation rewrites preconditions/goals, introduces helper fluents,
        then augments actions with effects that maintain those helper fluents.
        """
        assert isinstance(problem, Problem)

        new_problem = problem.clone()
        new_problem.name = f"{self.name}_{problem.name}"
        new_problem.clear_actions()
        new_problem.clear_goals()
        new_problem.clear_quality_metrics()

        new_to_old: Dict[Action, Action] = {}

        # Rewrite action preconditions first to get the set of count expressions that need tracking
        temp_actions = []
        for action in problem.actions:
            new_action = action.clone()
            new_action.clear_preconditions()
            for precondition in action.preconditions:
                new_precondition = self._replace_count_with_fluents(
                    new_problem, precondition
                )
                new_action.add_precondition(new_precondition)
            temp_actions.append(new_action)

        # Rewrite goals to get the set of count expressions that need tracking
        for goal in problem.goals:
            new_goal = self._replace_count_with_fluents(new_problem, goal)
            new_problem.add_goal(new_goal)

        # Add effects for count fluents and add actions to problem
        final_actions = []
        for temp_action, old_action in zip(temp_actions, problem.actions):
            final_action = self._generate_count_effects(new_problem, temp_action)
            final_actions.append(final_action)
            new_problem.add_action(final_action)
            new_to_old[final_action] = old_action

        # Rewrite quality metrics with updated action mapping
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
