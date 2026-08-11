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
"""This module defines the integer fluents basic remover class."""
import math
import operator
import unified_planning as up
import unified_planning.engines as engines
from bidict import bidict
from ortools.sat.python import cp_model
from unified_planning.engines.compilers.utils import (
    add_cp_constraints, add_effect_bounds_constraints, solve_with_cp_sat,
    substitute_modified_fluents, evaluate_goal_in_initial_state, get_fluent_exps_in_expression, evaluate_with_solution,
    remove_write_only_fluents, requires_csp, is_complex_goal
)
from typing import Any, List, Tuple
from unified_planning.model.expression import ListExpression
from unified_planning.model.operators import OperatorKind
from unified_planning.engines.mixins.compiler import CompilationKind, CompilerMixin
from unified_planning.engines.results import CompilerResult
from unified_planning.exceptions import UPProblemDefinitionError
from unified_planning.model import (
    Problem, Action, ProblemKind, Effect, EffectKind, Object, FNode, InstantaneousAction, Axiom, Fluent,
    MinimizeActionCosts
)
from unified_planning.model.problem_kind_versioning import LATEST_PROBLEM_KIND_VERSION
from unified_planning.engines.compilers.utils import get_fresh_name, replace_action, updated_minimize_action_costs
from typing import Optional, Iterator, OrderedDict, Union
from functools import partial
from unified_planning.shortcuts import And, Or, Equals, Not, FALSE, UserType, TRUE, ObjectExp, DerivedBoolType, BoolType
from typing import Dict

class IntegerFluentsBasicRemover(engines.engine.Engine, CompilerMixin):
    """
    Basic compiler for removing bounded integer fluents from planning problems.

    Handles only simple integer expressions:
    - Preconditions: f op c (op in {==, <, <=, >, >=, !=}, c constant), and negations
    - Effects: f := c (constant assign), f := g (fluent assign), increase/decrease f c (constant delta)

    Does NOT invoke a constraint solver: transformation is direct and syntactic.
    Supports two representations of integer values:
    - 'object': integer values become objects of a Number user type.
    - 'binary': integer values become sequences of Boolean bit fluents.
    """

    def __init__(self, representation: str = 'object'):
        assert representation in ('object', 'binary'), \
            f"representation must be 'object' or 'binary', got {representation}"
        engines.engine.Engine.__init__(self)
        CompilerMixin.__init__(self, CompilationKind.INTEGER_FLUENTS_BASIC_REMOVING)
        self.representation = representation

        # lt predicate (per object representation)
        self._lt_fluent: Optional[Fluent] = None

        if representation == 'object':
            # Number objects (per object representation)
            self._number_objects: Dict[int, Object] = {}
        else:
            # Bit encoding (per binary representation)
            self.n_bits: OrderedDict = OrderedDict()
            self.offsets: Dict[str, int] = {}

    @property
    def name(self):
        return "iofbr" if self.representation == 'object' else "ilfbr"

    @staticmethod
    def supported_kind() -> ProblemKind:
        supported_kind = ProblemKind(version=LATEST_PROBLEM_KIND_VERSION)
        supported_kind.set_problem_class("ACTION_BASED")
        supported_kind.set_typing("FLAT_TYPING")
        supported_kind.set_typing("HIERARCHICAL_TYPING")
        supported_kind.set_parameters("BOOL_FLUENT_PARAMETERS")
        supported_kind.set_parameters("BOUNDED_INT_FLUENT_PARAMETERS")
        supported_kind.set_parameters("BOOL_ACTION_PARAMETERS")
        #supported_kind.set_parameters("BOUNDED_INT_ACTION_PARAMETERS")
        #supported_kind.set_parameters("UNBOUNDED_INT_ACTION_PARAMETERS")
        supported_kind.set_parameters("REAL_ACTION_PARAMETERS")
        supported_kind.set_numbers("BOUNDED_TYPES")
        supported_kind.set_problem_type("SIMPLE_NUMERIC_PLANNING")
        supported_kind.set_problem_type("GENERAL_NUMERIC_PLANNING")
        supported_kind.set_fluents_type("INT_FLUENTS")
        supported_kind.set_fluents_type("REAL_FLUENTS")
        supported_kind.set_fluents_type("OBJECT_FLUENTS")
        supported_kind.set_fluents_type("DERIVED_FLUENTS")
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
        return problem_kind <= IntegerFluentsBasicRemover.supported_kind()

    @staticmethod
    def supports_compilation(compilation_kind: CompilationKind) -> bool:
        return compilation_kind == CompilationKind.INTEGER_FLUENTS_BASIC_REMOVING

    @staticmethod
    def resulting_problem_kind(
            problem_kind: ProblemKind, compilation_kind: Optional[CompilationKind] = None
    ) -> ProblemKind:
        new_kind = problem_kind.clone()
        new_kind.unset_conditions_kind("INT_FLUENTS")
        new_kind.unset_parameters("BOUNDED_INT_FLUENT_PARAMETERS")
        return new_kind

    # Operators that can appear inside arithmetic expressions
    ARITHMETIC_OPS = {
        OperatorKind.PLUS: 'plus',
        OperatorKind.MINUS: 'minus',
        OperatorKind.DIV: 'div',
        OperatorKind.TIMES: 'mult',
    }

    # ============================================================
    # NUMBER OBJECTS and lt PREDICATE (object representation)
    # ============================================================

    def _compute_needed_values(self, problem: Problem) -> set:
        """Compute the set of integer values that need Number objects."""
        needed = set()
        # Bounds of integer fluents
        for fluent in problem.fluents:
            if fluent.type.is_int_type():
                lb, ub = fluent.type.lower_bound, fluent.type.upper_bound
                needed.update(range(lb, ub + 1))

        # Integer constants in expressions
        def scan(node):
            if node.is_int_constant():
                needed.add(node.constant_value())
            for arg in node.args:
                scan(arg)

        for action in problem.actions:
            for prec in action.preconditions:
                scan(prec)
            for effect in action.effects:
                scan(effect.value)
                scan(effect.condition)
        for goal in problem.goals:
            scan(goal)
        return needed

    def _needs_lt_predicate(self, problem: Problem) -> bool:
        """Return True if the problem requires the lt predicate.

        We need it when:
        - Any lt/le comparison appears in the problem
        - Any increase/decrease effect exists (bound preconditions)
        - Any fluent-to-fluent assignment with mismatched bounds exists
        """

        def scan(node):
            if node.is_lt() or node.is_le():
                return True
            return any(scan(arg) for arg in node.args)

        for action in problem.actions:
            for prec in action.preconditions:
                if scan(prec):
                    return True
            for effect in action.effects:
                if scan(effect.condition):
                    return True
                # increase/decrease need lt for bound preconditions
                if effect.is_increase() or effect.is_decrease():
                    return True
                # f := g with mismatched ranges needs lt
                if (effect.value.is_fluent_exp()
                        and effect.value.fluent().type.is_int_type()
                        and effect.fluent.fluent().type.is_int_type()):
                    f_type = effect.fluent.fluent().type
                    g_type = effect.value.fluent().type
                    if (g_type.lower_bound < f_type.lower_bound
                            or g_type.upper_bound > f_type.upper_bound):
                        return True
        for goal in problem.goals:
            if scan(goal):
                return True
        return False

    def _needs_succ_predicate(self, problem: Problem) -> bool:
        """Return True if the problem requires the succ predicate.

        We need it when there are equalities matching successor patterns:
        - a == b + 1
        - a + 1 == b
        - a == b - 1
        - a - 1 == b
        """

        def scan(node):
            if node.is_equals():
                left, right = node.arg(0), node.arg(1)
                # Check if either side is (X + 1), (1 + X), (X - 1), or (X + Y with Y=1)
                for side in (left, right):
                    if side.is_plus() and len(side.args) == 2:
                        a, b = side.arg(0), side.arg(1)
                        if b.is_int_constant() and b.constant_value() == 1:
                            return True
                        if a.is_int_constant() and a.constant_value() == 1:
                            return True
                    if side.is_minus() and len(side.args) == 2:
                        a, b = side.arg(0), side.arg(1)
                        if b.is_int_constant() and b.constant_value() == 1:
                            return True
            return any(scan(arg) for arg in node.args)

        for action in problem.actions:
            for prec in action.preconditions:
                if scan(prec):
                    return True
            for effect in action.effects:
                if scan(effect.condition):
                    return True
        for goal in problem.goals:
            if scan(goal):
                return True
        return False

    def _create_number_objects(self, problem: Problem, new_problem: Problem):
        """Create Number objects for all needed values."""
        number_ut = UserType('Number')
        needed = self._compute_needed_values(problem)
        for v in sorted(needed):
            obj = Object(f'n{v}', number_ut)
            new_problem.add_object(obj)
            self._number_objects[v] = obj

    def _setup_lt_predicate(self, new_problem: Problem):
        """Create the static 'lt' predicate and initialize its extension."""
        number_ut = UserType('Number')
        lt_fluent = Fluent(
            'lt',
            BoolType(),
            OrderedDict([('a', number_ut), ('b', number_ut)])
        )
        new_problem.add_fluent(lt_fluent, default_initial_value=FALSE())
        self._lt_fluent = lt_fluent

        values = sorted(self._number_objects.keys())
        for i in values:
            for j in values:
                if i < j:
                    new_problem.set_initial_value(
                        lt_fluent(
                            ObjectExp(self._number_objects[i]),
                            ObjectExp(self._number_objects[j])
                        ),
                        TRUE()
                    )

    def _setup_succ_predicate(self, new_problem: Problem):
        """Create the static 'succ' predicate: succ(a, b) iff b = a + 1."""
        number_ut = UserType('Number')
        succ_fluent = Fluent(
            'succ',
            BoolType(),
            OrderedDict([('a', number_ut), ('b', number_ut)])
        )
        new_problem.add_fluent(succ_fluent, default_initial_value=FALSE())
        self._succ_fluent = succ_fluent

        values = sorted(self._number_objects.keys())
        for v in values:
            if (v + 1) in self._number_objects:
                new_problem.set_initial_value(
                    succ_fluent(
                        ObjectExp(self._number_objects[v]),
                        ObjectExp(self._number_objects[v + 1])
                    ),
                    TRUE()
                )

    # ============================================================
    # TRANSFORMATION: EXPRESSIONS
    # ============================================================

    def _emit_upper_bound_prec(self, fluent_ref: FNode, upper: int) -> FNode:
        """Emit precondition: fluent_ref <= upper, using lt predicate."""
        n_upper_plus_1 = ObjectExp(self._number_objects[upper + 1])
        return self._lt_fluent(fluent_ref, n_upper_plus_1)

    def _emit_lower_bound_prec(self, fluent_ref: FNode, lower: int) -> FNode:
        """Emit precondition: fluent_ref >= lower, using lt predicate."""
        n_lower = ObjectExp(self._number_objects[lower])
        # fluent >= lower == not (fluent < lower)
        return Not(self._lt_fluent(fluent_ref, n_lower))

    def _try_simplify_arithmetic(self, expr: FNode) -> FNode:
        """Try to simplify arithmetic expressions to non-arithmetic ones.

        Handles common patterns like:
        - (a + 1) <= b   ->  a < b
        - (1 + a) <= b   ->  a < b
        - a <= (b - 1)   ->  a < b
        - (a - 1) >= b   ->  b < a (UP already normalizes > to <)
        - etc.
        """
        em = expr.environment.expression_manager

        # Recursively simplify children first
        if expr.args:
            new_args = [self._try_simplify_arithmetic(a) for a in expr.args]
            if any(new is not old for new, old in zip(new_args, expr.args)):
                expr = em.create_node(expr.node_type, tuple(new_args)).simplify()

        # Pattern: X op Y where X or Y involves (+/- 1)
        if expr.is_le() or expr.is_lt():
            left, right = expr.arg(0), expr.arg(1)
            is_le = expr.is_le()

            # Left = (a + c) with c constant
            if left.is_plus() and len(left.args) == 2:
                a, b = left.arg(0), left.arg(1)
                # (a + c) op right  where c is int constant
                if b.is_int_constant():
                    c = b.constant_value()
                    if is_le and c == 1:
                        # (a + 1) <= right  ->  a < right
                        return em.LT(a, right)
                elif a.is_int_constant():
                    c = a.constant_value()
                    if is_le and c == 1:
                        # (1 + b) <= right  ->  b < right
                        return em.LT(b, right)

            # Right = (b + c) with c constant
            if right.is_plus() and len(right.args) == 2:
                a, b = right.arg(0), right.arg(1)
                if b.is_int_constant():
                    c = b.constant_value()
                    if not is_le and c == 1:
                        # left < (b + 1)  -> left <= b
                        return em.LE(left, a)
                elif a.is_int_constant():
                    c = a.constant_value()
                    if not is_le and c == 1:
                        # left < (1 + b)  ->  left <= b
                        return em.LE(left, b)

            # Right = (b - c) with c constant
            if right.is_minus() and len(right.args) == 2:
                a, b = right.arg(0), right.arg(1)
                if b.is_int_constant():
                    c = b.constant_value()
                    if is_le and c == 1:
                        # left <= (b - 1)  ->  left < b
                        return em.LT(left, a)
        return expr

    def _transform_expression(self, expr: FNode, new_problem: Problem) -> FNode:
        """
        Transform an expression to the new representation.

        Handles:
        - Equalities f == c, f == g
        - Comparisons f < c, f < g, f <= c, f <= g
        - Logical combinations (and, or, not)
        """
        # Constants
        if expr.is_int_constant():
            v = expr.constant_value()
            return ObjectExp(self._number_objects[v])
        if expr.is_bool_constant():
            return expr

        # Integer fluent
        if expr.is_fluent_exp():
            fluent = expr.fluent()
            if fluent.type.is_int_type():
                return self._transform_fluent_ref(expr, new_problem)
            return expr  # Boolean or user-type fluent: pass through

        # Equality: f == c or f == g
        if expr.is_equals():
            return self._transform_equality(expr, new_problem)

        # Less than: f < c, f < g, etc.
        if expr.is_lt():
            simplified = self._try_simplify_arithmetic(expr)
            if simplified is not expr and not simplified.is_lt():
                return self._transform_expression(simplified, new_problem)
            return self._transform_lt(expr.arg(0), expr.arg(1), new_problem)

        if expr.is_le():
            # Try to simplify (a + 1) <= b to a < b before transforming
            simplified = self._try_simplify_arithmetic(expr)
            if simplified is not expr and not simplified.is_le():
                # Was simplified to something else (likely lt or true/false)
                return self._transform_expression(simplified, new_problem)
            return self._transform_le(expr.arg(0), expr.arg(1), new_problem)

        # Logical combinations
        if expr.is_not():
            return Not(self._transform_expression(expr.arg(0), new_problem))
        if expr.is_and():
            return And([self._transform_expression(a, new_problem) for a in expr.args])
        if expr.is_or():
            return Or([self._transform_expression(a, new_problem) for a in expr.args])

        # Object references, parameters: pass through
        if expr.is_object_exp() or expr.is_parameter_exp():
            return expr

        # Anything else: recurse
        em = new_problem.environment.expression_manager
        new_args = [self._transform_expression(a, new_problem) for a in expr.args]
        return em.create_node(expr.node_type, tuple(new_args)).simplify()

    def _transform_fluent_ref(self, expr: FNode, new_problem: Problem) -> FNode:
        """Transform a reference to an integer fluent to its new form."""
        fluent = expr.fluent()
        if self.representation == 'object':
            return new_problem.fluent(fluent.name)(*expr.args)
        else:
            # For binary, this should not appear in simple contexts
            raise NotImplementedError(
                f"Binary representation of fluent references outside of assignments is not yet implemented."
            )

    def _try_succ_pattern(self, left: FNode, right: FNode, new_problem: Problem) -> Optional[FNode]:
        """Detect equality patterns that translate to succ predicate.

        Handles:
        - a == b + 1  →  succ(b, a)
        - a + 1 == b  →  succ(a, b)
        - a == b - 1  →  succ(a, b)  (equivalent)
        - a - 1 == b  →  succ(b, a)  (equivalent)
        """
        # a == b + 1
        if right.is_plus() and len(right.args) == 2:
            b, c = right.arg(0), right.arg(1)
            if c.is_int_constant() and c.constant_value() == 1:
                new_a = self._transform_expression(left, new_problem)
                new_b = self._transform_expression(b, new_problem)
                return self._succ_fluent(new_b, new_a)
            if b.is_int_constant() and b.constant_value() == 1:
                # a == 1 + c'
                new_a = self._transform_expression(left, new_problem)
                new_c = self._transform_expression(c, new_problem)
                return self._succ_fluent(new_c, new_a)

        # a + 1 == b
        if left.is_plus() and len(left.args) == 2:
            a, c = left.arg(0), left.arg(1)
            if c.is_int_constant() and c.constant_value() == 1:
                new_a = self._transform_expression(a, new_problem)
                new_b = self._transform_expression(right, new_problem)
                return self._succ_fluent(new_a, new_b)
            if a.is_int_constant() and a.constant_value() == 1:
                new_c = self._transform_expression(c, new_problem)
                new_b = self._transform_expression(right, new_problem)
                return self._succ_fluent(new_c, new_b)

        # a == b - 1 <=> a + 1 == b <=> succ(a, b)
        if right.is_minus() and len(right.args) == 2:
            b, c = right.arg(0), right.arg(1)
            if c.is_int_constant() and c.constant_value() == 1:
                new_a = self._transform_expression(left, new_problem)
                new_b = self._transform_expression(b, new_problem)
                return self._succ_fluent(new_a, new_b)

        # a - 1 == b  ⟺  a == b + 1  ⟺  succ(b, a)
        if left.is_minus() and len(left.args) == 2:
            a, c = left.arg(0), left.arg(1)
            if c.is_int_constant() and c.constant_value() == 1:
                new_a = self._transform_expression(a, new_problem)
                new_b = self._transform_expression(right, new_problem)
                return self._succ_fluent(new_b, new_a)

        return None

    def _transform_equality(self, expr: FNode, new_problem: Problem) -> FNode:
        """Transform f == c, f == g, c == c'."""
        left, right = expr.arg(0), expr.arg(1)

        # Detect a == b + c or a + c == b (successor patterns)
        succ_result = self._try_succ_pattern(left, right, new_problem)
        if succ_result is not None:
            return succ_result

        # Not integers
        left_is_int = (left.is_int_constant() or (left.is_fluent_exp() and left.fluent().type.is_int_type()))
        right_is_int = (right.is_int_constant() or (right.is_fluent_exp() and right.fluent().type.is_int_type()))

        if not (left_is_int or right_is_int):
            # Not an integer equality: recurse
            em = new_problem.environment.expression_manager
            new_args = [self._transform_expression(a, new_problem) for a in expr.args]
            return em.create_node(expr.node_type, tuple(new_args)).simplify()

        # Both constants: simplify
        if left.is_int_constant() and right.is_int_constant():
            return TRUE() if left.constant_value() == right.constant_value() else FALSE()

        # Transform both sides and emit equality of new representations
        new_left = self._transform_expression(left, new_problem)
        new_right = self._transform_expression(right, new_problem)
        return Equals(new_left, new_right)

    def _transform_lt(self, left: FNode, right: FNode, new_problem: Problem) -> FNode:
        """Transform 'left < right'."""
        # Both constants
        if left.is_int_constant() and right.is_int_constant():
            return TRUE() if left.constant_value() < right.constant_value() else FALSE()

        # In object mode, use lt predicate
        if self.representation == 'object':
            new_left = self._transform_expression(left, new_problem)
            new_right = self._transform_expression(right, new_problem)
            return self._lt_fluent(new_left, new_right)

        raise NotImplementedError("Binary representation of < not implemented in Basic.")

    def _transform_le(self, left: FNode, right: FNode, new_problem: Problem) -> FNode:
        """Transform 'left <= right' as 'left < right or left == right'."""
        if left.is_int_constant() and right.is_int_constant():
            return TRUE() if left.constant_value() <= right.constant_value() else FALSE()

        if self.representation == 'object':
            new_left = self._transform_expression(left, new_problem)
            new_right = self._transform_expression(right, new_problem)
            return Or(self._lt_fluent(new_left, new_right), Equals(new_left, new_right))

        raise NotImplementedError("Binary representation of <= not implemented in Basic.")

    # ============================================================
    # TRANSFORMATION: FLUENTS
    # ============================================================

    def _transform_fluents(self, problem: Problem, new_problem: Problem):
        """Transform integer fluents to the target representation."""
        if self.representation == 'object':
            self._transform_fluents_object(problem, new_problem)
        else:
            self._transform_fluents_binary(problem, new_problem)

    def _transform_fluents_object(self, problem: Problem, new_problem: Problem):
        """Transform integer fluents to object-typed fluents (Number)."""
        number_ut = UserType('Number')

        for fluent in problem.fluents:
            default_value = problem.fluents_defaults.get(fluent)

            if fluent.type.is_int_type():
                new_fluent = Fluent(
                    fluent.name, number_ut, fluent.signature, new_problem.environment
                )
                if default_value is not None:
                    default_obj = ObjectExp(
                        self._number_objects[default_value.constant_value()]
                    )
                    new_problem.add_fluent(new_fluent, default_initial_value=default_obj)
                else:
                    new_problem.add_fluent(new_fluent)

                for f, v in problem.explicit_initial_values.items():
                    if f.fluent() == fluent:
                        new_problem.set_initial_value(
                            new_problem.fluent(fluent.name)(*f.args),
                            ObjectExp(self._number_objects[v.constant_value()])
                        )
            else:
                new_problem.add_fluent(fluent, default_initial_value=default_value)
                for f, v in problem.explicit_initial_values.items():
                    if f.fluent() == fluent:
                        new_problem.set_initial_value(f, v)

    def _transform_fluents_binary(self, problem: Problem, new_problem: Problem):
        """Transform integer fluents to bit fluents."""
        for fluent in problem.fluents:
            if fluent.type.is_int_type():
                lb, ub = fluent.type.lower_bound, fluent.type.upper_bound
                self.offsets[fluent.name] = lb
                n_values = ub - lb + 1
                n_bits = 1 if n_values <= 1 else math.ceil(math.log2(n_values))
                self.n_bits[fluent.name] = n_bits

                default_value = problem.fluents_defaults.get(fluent)
                if default_value is not None:
                    default_bits = self._to_bits(default_value.constant_value(), n_bits, lb)
                else:
                    default_bits = [False] * n_bits

                for i in range(n_bits):
                    bit_fluent = Fluent(
                        f"{fluent.name}_{i}",
                        _signature=fluent.signature,
                        environment=new_problem.environment
                    )
                    new_problem.add_fluent(bit_fluent, default_initial_value=default_bits[i])

                for f, v in problem.explicit_initial_values.items():
                    if f.fluent() == fluent:
                        bits = self._to_bits(v.constant_value(), n_bits, lb)
                        for bit_idx in range(n_bits):
                            bit_f = new_problem.fluent(f"{fluent.name}_{bit_idx}")(*f.args)
                            new_problem.set_initial_value(bit_f, bits[bit_idx])
            else:
                default_value = problem.fluents_defaults.get(fluent)
                new_problem.add_fluent(fluent, default_initial_value=default_value)
                for f, v in problem.explicit_initial_values.items():
                    if f.fluent() == fluent:
                        new_problem.set_initial_value(f, v)

    def _to_bits(self, value: int, n_bits: int, offset: int) -> List[bool]:
        """Convert an integer to a list of n_bits booleans."""
        shifted = value - offset
        return [b == '1' for b in bin(shifted)[2:].zfill(n_bits)]

    # ============================================================
    # TRANSFORMATION: ACTIONS
    # ============================================================

    def _transform_action(self, problem, new_problem, old_action):
        """Transform a single action to the new representation."""
        params = OrderedDict(((p.name, p.type) for p in old_action.parameters))
        new_action = InstantaneousAction(
            old_action.name, _parameters=params, _env=problem.environment
        )

        # Transform preconditions
        for precondition in old_action.preconditions:
            new_precondition = self._transform_expression(precondition, new_problem)
            if new_precondition == TRUE():
                continue
            if new_precondition == FALSE():
                return None  # unsatisfiable action, drop it
            new_action.add_precondition(new_precondition)

        # Transform effects, collecting bound preconditions along the way
        for effect in old_action.effects:
            bound_prec, new_effects = self._transform_effect(effect, new_problem)

            # Add bound precondition if not trivial
            if bound_prec != TRUE():
                new_action.add_precondition(bound_prec)

            # Add effects
            for new_eff in new_effects:
                new_action.add_effect(
                    new_eff.fluent, new_eff.value, new_eff.condition, new_eff.forall
                )

        return new_action

    def _transform_effect(
            self, effect: Effect, new_problem: Problem
    ) -> Tuple[FNode, List[Effect]]:
        """Transform one effect. Returns (bound_precondition, list_of_effects)."""
        if self.representation == 'object':
            return self._transform_effect_object(effect, new_problem)
        else:
            return self._transform_effect_binary(effect, new_problem)

    def _transform_effect_object(
            self, effect: Effect, new_problem: Problem
    ) -> Tuple[FNode, List[Effect]]:
        """Transform an effect for the object representation.

        Returns (bound_precondition, list_of_effects).
        The bound precondition is TRUE if no bound check is needed.
        """
        new_condition = self._transform_expression(effect.condition, new_problem)
        if new_condition == FALSE():
            return TRUE(), []

        # Increase/decrease with constant delta
        if effect.is_increase() or effect.is_decrease():
            return self._expand_increase_decrease_object(effect, new_condition, new_problem)

        # Simple assignment
        new_fluent = self._transform_expression(effect.fluent, new_problem)
        new_value = self._transform_expression(effect.value, new_problem)

        # Compute bound precondition if RHS is a fluent with wider range
        bound_prec = TRUE()
        if (effect.value.is_fluent_exp()
                and effect.value.fluent().type.is_int_type()
                and effect.fluent.fluent().type.is_int_type()):
            f_type = effect.fluent.fluent().type
            g_type = effect.value.fluent().type
            constraints = []
            if g_type.lower_bound < f_type.lower_bound:
                # g >= f_lb
                constraints.append(self._emit_lower_bound_prec(new_value, f_type.lower_bound))
            if g_type.upper_bound > f_type.upper_bound:
                # g <= f_ub
                constraints.append(self._emit_upper_bound_prec(new_value, f_type.upper_bound))
            if len(constraints) == 1:
                bound_prec = constraints[0]
            elif len(constraints) > 1:
                bound_prec = And(constraints)

        effects = [Effect(new_fluent, new_value, new_condition, EffectKind.ASSIGN, effect.forall)]
        return bound_prec, effects

    def _expand_increase_decrease_object(
            self, effect: Effect, new_condition: FNode, new_problem: Problem
    ) -> Tuple[FNode, List[Effect]]:
        """Expand increase/decrease as conditional effects.

        Returns:
            - A bound precondition ensuring the action is applicable without
              producing out-of-bounds values.
            - The list of conditional effects (one per valid starting value).
        """
        fluent = effect.fluent.fluent()
        lb, ub = fluent.type.lower_bound, fluent.type.upper_bound
        delta = effect.value.constant_value()
        new_fluent = new_problem.fluent(fluent.name)(*effect.fluent.args)

        if effect.is_increase():
            # f + delta must be in [lb, ub], so f must be in [lb, ub - delta]
            min_safe = lb
            max_safe = ub - delta
        else:  # decrease
            # f - delta must be in [lb, ub], so f must be in [lb + delta, ub]
            min_safe = lb + delta
            max_safe = ub

        # Build bound precondition: min_safe <= f <= max_safe
        bound_constraints = []
        if min_safe > lb:
            bound_constraints.append(self._emit_lower_bound_prec(new_fluent, min_safe))
        if max_safe < ub:
            bound_constraints.append(self._emit_upper_bound_prec(new_fluent, max_safe))

        if not bound_constraints:
            bound_prec = TRUE()
        elif len(bound_constraints) == 1:
            bound_prec = bound_constraints[0]
        else:
            bound_prec = And(bound_constraints)

        # Generate conditional effects for the valid range
        result_effects = []
        for i in range(min_safe, max_safe + 1):
            next_val = i + delta if effect.is_increase() else i - delta
            obj_i = ObjectExp(self._number_objects[i])
            obj_next = ObjectExp(self._number_objects[next_val])
            value_cond = Equals(new_fluent, obj_i)
            full_condition = (
                And(value_cond, new_condition).simplify()
                if new_condition != TRUE() else value_cond
            )
            result_effects.append(Effect(
                new_fluent, obj_next, full_condition, EffectKind.ASSIGN, effect.forall
            ))
        return bound_prec, result_effects

    def _transform_effect_binary(
            self, effect: Effect, new_problem: Problem
    ) -> Tuple[FNode, List[Effect]]:
        """Transform an effect for the binary representation."""
        raise NotImplementedError("Binary effect transformation not yet implemented")

    # ============================================================
    # TRANSFORMATION: GOALS
    # ============================================================

    def _transform_goals(self, problem: Problem, new_problem: Problem):
        """Transform each goal."""
        for goal in problem.goals:
            print("goal", goal)
            new_goal = self._transform_expression(goal, new_problem)
            print("new_goal", new_goal)
            if new_goal == FALSE():
                raise UPProblemDefinitionError("Goal is unsatisfiable after transformation")
            if new_goal == TRUE():
                continue
            new_problem.add_goal(new_goal)

    # ============================================================
    # AXIOMS
    # ============================================================

    def _transform_axioms(self, problem: Problem, new_problem: Problem, new_to_old: Dict):
        """Transform axioms by transforming their body expressions."""
        for axiom in problem.axioms:
            params = OrderedDict((p.name, p.type) for p in axiom.parameters)
            new_axiom_name = get_fresh_name(new_problem, axiom.name)
            new_axiom = Axiom(new_axiom_name, params, axiom.environment)
            new_axiom.set_head(axiom.head.fluent)
            for body in axiom.body:
                new_body = self._transform_expression(body, new_problem)
                new_axiom.add_body_condition(new_body)
            new_problem.add_axiom(new_axiom)
            new_to_old[new_axiom] = axiom

    def _get_number_object(self, problem: Problem, value: int) -> FNode:
        """Get or create object representing numeric value (e.g., n5 for 5)."""
        try:
            return ObjectExp(problem.object(f'n{value}'))
        except UPProblemDefinitionError:
            raise UPProblemDefinitionError(
                f"Number object 'n{value}' not found. "
                f"Ensure _compute_number_range covers all needed values."
            )

    # ============================================================
    # MAIN COMPILATION
    # ============================================================

    def _check_problem_compatible(self, problem: Problem) -> None:
        """Raise error if the problem uses expressions the basic compiler cannot handle.

        The basic compiler does not support:
        - Arithmetic operations (+, -, *, /) in preconditions or effects that don't
          match one of the recognised simplifiable patterns (a+1<=b, succ, etc.)
        - Non-constant deltas in increase/decrease effects
        - Arithmetic expressions on the RHS of assignments
        """
        for action in problem.actions:
            for prec in action.preconditions:
                self._check_expression_compatible(
                    prec, context=f"precondition of action '{action.name}'"
                )
            for effect in action.effects:
                self._check_effect_compatible(
                    effect, context=f"effect of action '{action.name}'"
                )
        for goal in problem.goals:
            self._check_expression_compatible(goal, context="goal")

    def _check_expression_compatible(self, expr: FNode, context: str) -> None:
        """Recursively check that an expression contains no unsupported operations."""
        # Try simplification first (e.g. a + 1 <= b becomes a < b)
        simplified = self._try_simplify_arithmetic(expr)
        if simplified is not expr:
            self._check_expression_compatible(simplified, context)
            return

        # Try successor pattern (a == b + 1 becomes succ(b, a))
        if expr.is_equals():
            left, right = expr.arg(0), expr.arg(1)
            for l, r in [(left, right), (right, left)]:
                # Check if right side is (X + 1), (1 + X), (X - 1)
                if r.is_plus() and len(r.args) == 2:
                    a, b = r.arg(0), r.arg(1)
                    if (b.is_int_constant() and b.constant_value() == 1) or \
                            (a.is_int_constant() and a.constant_value() == 1):
                        return  # This will be handled by _try_succ_pattern
                if r.is_minus() and len(r.args) == 2:
                    a, b = r.arg(0), r.arg(1)
                    if b.is_int_constant() and b.constant_value() == 1:
                        return  # This will be handled by _try_succ_pattern

        # Otherwise, arithmetic operations are not supported
        if expr.node_type in self.ARITHMETIC_OPS:
            raise UPProblemDefinitionError(
                f"IntegerFluentsBasicRemover does not support arithmetic expression "
                f"'{expr}' in {context}. Use IntegerFluentsGeneralRemover instead."
            )

        # For binary representation, comparisons between two fluents are not supported
        if self.representation == 'binary' and (expr.is_lt() or expr.is_le()):
            left, right = expr.arg(0), expr.arg(1)
            if left.is_fluent_exp() and right.is_fluent_exp():
                raise UPProblemDefinitionError(
                    f"IntegerFluentsBasicRemover (binary) does not support comparison "
                    f"between two fluents '{expr}' in {context}."
                )

        for arg in expr.args:
            self._check_expression_compatible(arg, context)

    def _check_effect_compatible(self, effect: Effect, context: str) -> None:
        """Check that an effect is compatible with the basic compiler."""
        # increase/decrease: value must be a constant
        if effect.is_increase() or effect.is_decrease():
            if not effect.value.is_constant():
                raise UPProblemDefinitionError(
                    f"IntegerFluentsBasicRemover does not support increase/decrease "
                    f"with non-constant delta '{effect.value}' in {context}. "
                    f"Use IntegerFluentsGeneralRemover instead."
                )
        else:
            # Simple assignment: value must be a constant, a fluent ref, or an object
            val = effect.value
            if effect.fluent.type.is_int_type():
                if not (val.is_constant() or val.is_fluent_exp() or val.is_object_exp()):
                    raise UPProblemDefinitionError(
                        f"IntegerFluentsBasicRemover does not support assignment "
                        f"with complex expression '{val}' in {context}. "
                        f"Use IntegerFluentsGeneralRemover instead."
                    )

        # Effect condition must also be compatible
        if effect.condition is not None and not effect.condition.is_true():
            self._check_expression_compatible(effect.condition, context)

    def _compile(
            self,
            problem: "up.model.AbstractProblem",
            compilation_kind: "up.engines.CompilationKind",
    ) -> CompilerResult:
        """Main compilation"""
        assert isinstance(problem, Problem)

        # Step 0: check compatibility
        self._check_problem_compatible(problem)

        # Step 1: clean the problem
        cleaned_problem = remove_write_only_fluents(problem)
        name_to_original = {a.name: a for a in problem.actions}

        # Step 2: create empty new problem
        new_problem = problem.clone()
        new_problem.name = f"{self.name}_{problem.name}"
        new_problem.clear_fluents()
        new_problem.clear_actions()
        new_problem.clear_goals()
        new_problem.clear_axioms()
        new_problem.initial_values.clear()
        new_problem.clear_quality_metrics()

        # Step 3: setup representation-specific structures
        if self.representation == 'object':
            self._create_number_objects(problem, new_problem)
            if self._needs_lt_predicate(problem):
                self._setup_lt_predicate(new_problem)
            if self._needs_succ_predicate(problem):
                self._setup_succ_predicate(new_problem)

        # Step 4: transform fluents
        self._transform_fluents(cleaned_problem, new_problem)

        # Step 5: transform actions
        new_to_old = {}
        for old_action in cleaned_problem.actions:
            new_action = self._transform_action(cleaned_problem, new_problem, old_action)
            if new_action is not None:
                new_problem.add_action(new_action)
                original = name_to_original.get(old_action.name, old_action)
                new_to_old[new_action] = original

        # Step 6: transform axioms
        self._transform_axioms(cleaned_problem, new_problem, new_to_old)

        # Step 7: transform goals
        self._transform_goals(cleaned_problem, new_problem)

        # Step 8: transform quality metrics
        for metric in problem.quality_metrics:
            if metric.is_minimize_action_costs():
                updated = updated_minimize_action_costs(
                    metric, new_to_old, new_problem.environment
                )
                new_problem.add_quality_metric(updated)
            else:
                new_problem.add_quality_metric(metric)

        return CompilerResult(
            new_problem, partial(replace_action, map=new_to_old), self.name
        )
