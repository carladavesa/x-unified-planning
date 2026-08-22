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
import unified_planning as up
import unified_planning.engines as engines
from unified_planning.engines.compilers.utils import remove_write_only_fluents, is_complex_goal
from typing import List, Tuple
from unified_planning.model.expression import ListExpression
from unified_planning.model.operators import OperatorKind
from unified_planning.engines.mixins.compiler import CompilationKind, CompilerMixin
from unified_planning.engines.results import CompilerResult
from unified_planning.exceptions import UPProblemDefinitionError
from unified_planning.model import (
    Problem, ProblemKind, Effect, EffectKind, Object, FNode, InstantaneousAction, Axiom, Fluent,
)
from unified_planning.model.problem_kind_versioning import LATEST_PROBLEM_KIND_VERSION
from unified_planning.engines.compilers.utils import get_fresh_name, replace_action, updated_minimize_action_costs
from typing import Optional, OrderedDict
from functools import partial
from unified_planning.shortcuts import And, Or, Equals, Not, FALSE, UserType, TRUE, ObjectExp, DerivedBoolType, \
    BoolType, Iff
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

        if representation == 'object':
            # Number objects (object representation)
            self._number_objects: Dict[int, Object] = {}
        else:
            # Bit encoding (binary representation)
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
    # BINARY REPRESENTATION
    # ============================================================

    def _num_bits(self, fluent_type) -> int:
        """Number of bits needed to represent all values in the fluent's range."""
        n_values = fluent_type.upper_bound - fluent_type.lower_bound + 1
        return max(1, math.ceil(math.log2(n_values))) if n_values > 1 else 1

    def _to_bits(self, value: int, n_bits: int, offset: int) -> List[bool]:
        """Convert an integer value to a list of n_bits booleans (MSB first).

        The value is first shifted by offset (which should be the lower bound of the fluent).
        """
        shifted = value - offset
        if shifted < 0 or shifted >= 2 ** n_bits:
            raise ValueError(f"Value {value} out of range for {n_bits} bits with offset {offset}")
        return [((shifted >> i) & 1) == 1 for i in range(n_bits - 1, -1, -1)]

    def _get_bit_fluents(self, fluent_ref: FNode, new_problem: Problem) -> List[FNode]:
        """Get the list of bit fluent references for a given integer fluent reference.

        E.g. for f(x, y) → [f_0(x, y), f_1(x, y), ..., f_k(x, y)] with MSB first.
        """
        fluent = fluent_ref.fluent()
        n_bits = self.n_bits[fluent.name]
        return [
            new_problem.fluent(f"{fluent.name}_{i}")(*fluent_ref.args)
            for i in range(n_bits)
        ]

    def _value_to_bit_pattern(self, value: int, fluent_type) -> List[bool]:
        """Convert an integer value to its bit pattern (MSB first) for the given type."""
        offset = fluent_type.lower_bound
        n_bits = self._num_bits(fluent_type)
        return self._to_bits(value, n_bits, offset)

    # ============================================================
    # NUMBER OBJECTS
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

    def _create_number_objects(self, problem: Problem, new_problem: Problem):
        """Create Number objects for all needed values."""
        number_ut = UserType('Number')
        needed = self._compute_needed_values(problem)
        for v in sorted(needed):
            obj = Object(f'n{v}', number_ut)
            new_problem.add_object(obj)
            self._number_objects[v] = obj

    # ============================================================
    # TRANSFORMATION: EXPRESSIONS
    # ============================================================

    def _emit_upper_bound_prec(self, fluent_ref: FNode, lb: int, upper: int) -> FNode:
        """Emit precondition: fluent_ref <= upper, given the fluent's lower bound lb."""
        allowed_objs = [ObjectExp(self._number_objects[v]) for v in range(lb, upper + 1)]
        if not allowed_objs:
            return FALSE()
        if len(allowed_objs) == 1:
            return Equals(fluent_ref, allowed_objs[0])
        return Or([Equals(fluent_ref, obj) for obj in allowed_objs])

    def _emit_lower_bound_prec(self, fluent_ref: FNode, lower: int, ub: int) -> FNode:
        """Emit precondition: fluent_ref >= lower, given the fluent's upper bound ub."""
        allowed_objs = [ObjectExp(self._number_objects[v]) for v in range(lower, ub + 1)]
        if not allowed_objs:
            return FALSE()
        if len(allowed_objs) == 1:
            return Equals(fluent_ref, allowed_objs[0])
        return Or([Equals(fluent_ref, obj) for obj in allowed_objs])

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
            if self.representation == 'object':
                return ObjectExp(self._number_objects[v])
            else:
                # For binary, integer constants outside comparisons should not appear after simplification
                return expr
        if expr.is_bool_constant():
            return expr

        # Integer fluent
        if expr.is_fluent_exp():
            fluent = expr.fluent()
            if fluent.type.is_int_type():
                return self._transform_fluent_ref(expr, new_problem)
            return expr

        # Try to simplify arithmetic patterns before dispatching
        if expr.is_le() or expr.is_lt():
            simplified = self._try_simplify_arithmetic(expr)
            if simplified is not expr:
                return self._transform_expression(simplified, new_problem)

        # Equality: f == c or f == g
        if expr.is_equals():
            if self.representation == 'object':
                return self._transform_equality_object(expr, new_problem)
            else:  # binary
                return self._transform_equality_binary(expr, new_problem)

        if expr.is_lt():
            left = expr.arg(0)
            right = expr.arg(1)
            if self.representation == 'object':
                return self._transform_lt_object(left, right, new_problem)
            else:  # binary
                return self._transform_lt_binary(left, right, new_problem)

        if expr.is_le():
            left = expr.arg(0)
            right = expr.arg(1)
            if self.representation == 'object':
                return self._transform_le_object(left, right, new_problem)
            else:  # binary
                return self._transform_le_binary(left, right, new_problem)

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
            new_fluent = new_problem.fluent(fluent.name)
            result = new_fluent(*expr.args)
            return result
        else:
            # For binary, this should not appear in simple contexts
            raise NotImplementedError(
                f"Binary representation of fluent references outside of assignments is not yet implemented."
            )

    def _transform_equality_object(self, expr: FNode, new_problem: Problem) -> FNode:
        """Transform f == c, f == g, c == c'."""
        left, right = expr.arg(0), expr.arg(1)

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

    def _transform_lt_object(self, left, right, new_problem):
        """Transform f_1 < f_2 as a disjunction over concrete values.

        Handles: fluent < constant, constant < fluent, fluent < fluent.
        """
        # Both constants
        if left.is_int_constant() and right.is_int_constant():
            return TRUE() if left.constant_value() < right.constant_value() else FALSE()

        # Case: fluent < constant  →  f = v for v in [lb, c-1]
        if left.is_fluent_exp() and right.is_int_constant():
            c = right.constant_value()
            left_type = left.fluent().type
            lb = left_type.lower_bound
            ub = min(left_type.upper_bound, c - 1)
            if lb > ub:
                return FALSE()
            new_left = self._transform_expression(left, new_problem)
            allowed = [ObjectExp(self._number_objects[v]) for v in range(lb, ub + 1)]
            if len(allowed) == 1:
                return Equals(new_left, allowed[0])
            return Or([Equals(new_left, obj) for obj in allowed])

        # Case: constant < fluent  →  f = v for v in [c+1, ub]
        if left.is_int_constant() and right.is_fluent_exp():
            c = left.constant_value()
            right_type = right.fluent().type
            lb = max(right_type.lower_bound, c + 1)
            ub = right_type.upper_bound
            if lb > ub:
                return FALSE()
            new_right = self._transform_expression(right, new_problem)
            allowed = [ObjectExp(self._number_objects[v]) for v in range(lb, ub + 1)]
            if len(allowed) == 1:
                return Equals(new_right, allowed[0])
            return Or([Equals(new_right, obj) for obj in allowed])

        # Case: fluent < fluent  →  disjunction over pairs
        if left.is_fluent_exp() and right.is_fluent_exp():
            left_type = left.fluent().type
            right_type = right.fluent().type
            lb_l, ub_l = left_type.lower_bound, left_type.upper_bound
            lb_r, ub_r = right_type.lower_bound, right_type.upper_bound

            new_left = self._transform_expression(left, new_problem)
            new_right = self._transform_expression(right, new_problem)

            clauses = []
            for v in range(lb_l, min(ub_l, ub_r - 1) + 1):
                n_v = self._get_number_object(new_problem, v)
                greater_values = [
                    self._get_number_object(new_problem, v_r)
                    for v_r in range(max(v + 1, lb_r), ub_r + 1)
                ]
                if not greater_values:
                    continue
                if len(greater_values) == 1:
                    f2_gt_v = Equals(new_right, greater_values[0])
                else:
                    f2_gt_v = Or([Equals(new_right, n) for n in greater_values])
                clauses.append(And(Equals(new_left, n_v), f2_gt_v))

            if not clauses:
                return FALSE()
            return Or(clauses) if len(clauses) > 1 else clauses[0]

        # Unsupported case (e.g., parameter < parameter)
        raise UPProblemDefinitionError(
            f"Cannot transform < between unsupported expressions: {left} < {right}"
        )

    def _transform_le_object(self, left, right, new_problem):
        """Transform f_1 <= f_2 as a disjunction over concrete values.

        Handles: fluent <= constant, constant <= fluent, fluent <= fluent.
        """
        # Both constants
        if left.is_int_constant() and right.is_int_constant():
            return TRUE() if left.constant_value() <= right.constant_value() else FALSE()

        # Case: fluent <= constant  →  f = v for v in [lb, c]
        if left.is_fluent_exp() and right.is_int_constant():
            c = right.constant_value()
            left_type = left.fluent().type
            lb = left_type.lower_bound
            ub = min(left_type.upper_bound, c)
            if lb > ub:
                return FALSE()
            new_left = self._transform_expression(left, new_problem)
            allowed = [ObjectExp(self._number_objects[v]) for v in range(lb, ub + 1)]
            if len(allowed) == 1:
                return Equals(new_left, allowed[0])
            return Or([Equals(new_left, obj) for obj in allowed])

        # Case: constant <= fluent  →  f = v for v in [c, ub]
        if left.is_int_constant() and right.is_fluent_exp():
            c = left.constant_value()
            right_type = right.fluent().type
            lb = max(right_type.lower_bound, c)
            ub = right_type.upper_bound
            if lb > ub:
                return FALSE()
            new_right = self._transform_expression(right, new_problem)
            allowed = [ObjectExp(self._number_objects[v]) for v in range(lb, ub + 1)]
            if len(allowed) == 1:
                return Equals(new_right, allowed[0])
            return Or([Equals(new_right, obj) for obj in allowed])

        # Case: fluent <= fluent  →  disjunction over pairs
        if left.is_fluent_exp() and right.is_fluent_exp():
            left_type = left.fluent().type
            right_type = right.fluent().type
            lb_l, ub_l = left_type.lower_bound, left_type.upper_bound
            lb_r, ub_r = right_type.lower_bound, right_type.upper_bound

            new_left = self._transform_expression(left, new_problem)
            new_right = self._transform_expression(right, new_problem)

            clauses = []
            for v in range(lb_l, min(ub_l, ub_r) + 1):
                n_v = self._get_number_object(new_problem, v)
                ge_values = [
                    self._get_number_object(new_problem, v_r)
                    for v_r in range(max(v, lb_r), ub_r + 1)
                ]
                if not ge_values:
                    continue
                if len(ge_values) == 1:
                    f2_ge_v = Equals(new_right, ge_values[0])
                else:
                    f2_ge_v = Or([Equals(new_right, n) for n in ge_values])
                clauses.append(And(Equals(new_left, n_v), f2_ge_v))

            if not clauses:
                return FALSE()
            return Or(clauses) if len(clauses) > 1 else clauses[0]

        raise UPProblemDefinitionError(
            f"Cannot transform <= between unsupported expressions: {left} <= {right}"
        )

    def _transform_equality_binary(self, expr: FNode, new_problem: Problem) -> FNode:
        """Transform an integer equality for the binary representation.

        Handles:
        - c == c'  (both constants): simplified
        - f == c   (fluent and constant): conjunction over bits of f
        - f == g   (both fluents): conjunction of Iff over corresponding bits
        """
        left, right = expr.arg(0), expr.arg(1)

        # Detect if this equality involves integer fluents/constants
        def is_int_related(node):
            if node.is_int_constant():
                return True
            if node.is_fluent_exp() and node.fluent().type.is_int_type():
                return True
            return False

        if not (is_int_related(left) or is_int_related(right)):
            # Non-integer equality: pass through unchanged
            return expr

        # Both constants
        if left.is_int_constant() and right.is_int_constant():
            return TRUE() if left.constant_value() == right.constant_value() else FALSE()

        # Fluent == constant
        if left.is_fluent_exp() and right.is_int_constant():
            return self._binary_equal_to_constant(left, right.constant_value(), new_problem)
        if right.is_fluent_exp() and left.is_int_constant():
            return self._binary_equal_to_constant(right, left.constant_value(), new_problem)

        # Both fluents
        if left.is_fluent_exp() and right.is_fluent_exp():
            return self._binary_equal_fluents(left, right, new_problem)

        raise UPProblemDefinitionError(
            f"Basic binary compiler does not support equality expression {expr}"
        )

    def _binary_equal_to_constant(self, fluent_ref: FNode, value: int, new_problem: Problem) -> FNode:
        """Encode f == c as a conjunction over the bits of f."""
        fluent_type = fluent_ref.fluent().type

        # Value out of range
        if value < fluent_type.lower_bound or value > fluent_type.upper_bound:
            return FALSE()

        n_bits = self.n_bits[fluent_ref.fluent().name]
        offset = self.offsets[fluent_ref.fluent().name]
        bit_pattern = self._to_bits(value, n_bits, offset)

        bit_fluents = [new_problem.fluent(f"{fluent_ref.fluent().name}_{i}")(*fluent_ref.args) for i in range(n_bits)]

        conjuncts = []
        for bit_val, bit_flu in zip(bit_pattern, bit_fluents):
            conjuncts.append(bit_flu if bit_val else Not(bit_flu))

        if len(conjuncts) == 1:
            return conjuncts[0]
        return And(conjuncts)

    def _binary_equal_fluents(self, f_ref: FNode, g_ref: FNode, new_problem: Problem) -> FNode:
        """Encode f == g as a conjunction of Iff on corresponding bits.

        Requires f and g to have the same offset (same lower_bound).
        If they have different bit widths, the extra MSB bits of the wider one must be all FALSE for the equality to hold.
        """
        f_type = f_ref.fluent().type
        g_type = g_ref.fluent().type

        # Check compatibility
        if f_type.lower_bound != g_type.lower_bound:
            raise UPProblemDefinitionError(
                f"Basic binary compiler requires the same offset for fluent equality: "
                f"{f_ref} has lb={f_type.lower_bound}, {g_ref} has lb={g_type.lower_bound}. "
                f"Use IntegerFluentsGeneralRemover instead."
            )

        f_name = f_ref.fluent().name
        g_name = g_ref.fluent().name
        f_nbits = self.n_bits[f_name]
        g_nbits = self.n_bits[g_name]

        f_bits = [new_problem.fluent(f"{f_name}_{i}")(*f_ref.args) for i in range(f_nbits)]
        g_bits = [new_problem.fluent(f"{g_name}_{i}")(*g_ref.args) for i in range(g_nbits)]

        conjuncts = []

        # If different lengths, the extra MSB bits of the wider one must be FALSE
        if f_nbits < g_nbits:
            pad = g_nbits - f_nbits
            # g has more bits: its extra MSB bits (indices 0..pad-1) must be FALSE
            conjuncts.extend([Not(g_bits[i]) for i in range(pad)])
            # Then match aligned bits
            for f_bit, g_bit in zip(f_bits, g_bits[pad:]):
                conjuncts.append(Iff(f_bit, g_bit))
        elif g_nbits < f_nbits:
            pad = f_nbits - g_nbits
            # f has more bits: its extra MSB bits must be FALSE
            conjuncts.extend([Not(f_bits[i]) for i in range(pad)])
            for f_bit, g_bit in zip(f_bits[pad:], g_bits):
                conjuncts.append(Iff(f_bit, g_bit))
        else:
            # Same width: direct bit-by-bit
            for f_bit, g_bit in zip(f_bits, g_bits):
                conjuncts.append(Iff(f_bit, g_bit))

        if len(conjuncts) == 1:
            return conjuncts[0]
        return And(conjuncts)

    def _binary_lt_constant(self, fluent_ref: FNode, value: int, new_problem: Problem) -> FNode:
        """Encode f < c using bit-by-bit comparison from MSB to LSB.

        f < c means there exists an index i such that:
          - f_j = c_j for all j < i (in MSB order, so j < i means more significant)
          - c_i = 1 AND f_i = 0

        Since c is constant, each c_j simplifies the disjunct.
        """
        fluent_type = fluent_ref.fluent().type
        lb = fluent_type.lower_bound
        ub = fluent_type.upper_bound

        # Trivial cases
        if value <= lb:
            return FALSE()  # No value in f's range is < lb+1 = ...
        if value > ub:
            return TRUE()  # All values in f's range are < value

        # value is within (lb, ub]. Compute bit pattern of (value - offset)
        # to shift into f's bit space.
        c_shifted = value - lb
        n_bits = self._num_bits(fluent_type)
        c_bits = self._to_bits(value, n_bits, lb)

        f_bits = self._get_bit_fluents(fluent_ref, new_problem)

        # Build disjuncts: for each bit i where c_i = 1, add:
        #   (all more significant bits of f are equal to c) AND (f_i is 0)
        disjuncts = []
        for i in range(n_bits):
            if c_bits[i]:  # c has a 1 at position i
                # Prefix condition: f_j equals c_j for j < i
                prefix = []
                for j in range(i):
                    prefix.append(f_bits[j] if c_bits[j] else Not(f_bits[j]))
                # This bit condition: f_i is 0
                this_bit = Not(f_bits[i])

                if prefix:
                    disjuncts.append(And(*prefix, this_bit) if len(prefix) > 0 else this_bit)
                else:
                    disjuncts.append(this_bit)

        if not disjuncts:
            return FALSE()
        if len(disjuncts) == 1:
            return disjuncts[0]
        return Or(*disjuncts)

    def _binary_lt_fluents(self, f_ref: FNode, g_ref: FNode, new_problem: Problem) -> FNode:
        """Encode f < g using bit-by-bit comparison from MSB to LSB.

        f < g <==> there exists an index i such that:
          - f_j = g_j for all j < i (in MSB order)
          - f_i = 0 AND g_i = 1

        Requires f and g to have the same offset. Different bit widths are
        handled by padding.
        """
        f_type = f_ref.fluent().type
        g_type = g_ref.fluent().type

        if f_type.lower_bound != g_type.lower_bound:
            raise UPProblemDefinitionError(
                f"Basic binary compiler requires the same offset for fluent comparison: "
                f"{f_ref} has lb={f_type.lower_bound}, {g_ref} has lb={g_type.lower_bound}"
            )

        f_bits = self._get_bit_fluents(f_ref, new_problem)
        g_bits = self._get_bit_fluents(g_ref, new_problem)

        # Pad the shorter side with FALSE at the MSB (conceptually)
        max_bits = max(len(f_bits), len(g_bits))
        if len(f_bits) < max_bits:
            # Pad f with implicit FALSE at MSB
            f_padded = [FALSE()] * (max_bits - len(f_bits)) + f_bits
        else:
            f_padded = f_bits
        if len(g_bits) < max_bits:
            g_padded = [FALSE()] * (max_bits - len(g_bits)) + g_bits
        else:
            g_padded = g_bits

        # For each bit position i, add disjunct:
        #   (all more significant bits equal) AND (f_i is 0) AND (g_i is 1)
        disjuncts = []
        for i in range(max_bits):
            # Prefix condition: f_j iff g_j for j < i
            prefix = []
            for j in range(i):
                prefix.append(Iff(f_padded[j], g_padded[j]))
            # This bit condition: not f_i AND g_i
            this_bit = And(Not(f_padded[i]), g_padded[i])

            if prefix:
                disjuncts.append(And(*prefix, this_bit))
            else:
                disjuncts.append(this_bit)

        if len(disjuncts) == 1:
            return disjuncts[0]
        return Or(*disjuncts)

    def _transform_lt_binary(self, left: FNode, right: FNode, new_problem: Problem) -> FNode:
        """Handle left < right for binary representation."""
        # Both constants
        if left.is_int_constant() and right.is_int_constant():
            return TRUE() if left.constant_value() < right.constant_value() else FALSE()

        # Fluent < constant
        if left.is_fluent_exp() and right.is_int_constant():
            return self._binary_lt_constant(left, right.constant_value(), new_problem)

        # constant < fluent  ->  fluent > constant  ->  not(fluent <= constant)  ->  not(fluent < constant+1)
        if left.is_int_constant() and right.is_fluent_exp():
            # c < f <==> f > c <==> not (f <= c) <==> not (f < c + 1)
            return Not(self._binary_lt_constant(right, left.constant_value() + 1, new_problem))

        # Fluent < fluent
        if left.is_fluent_exp() and right.is_fluent_exp():
            return self._binary_lt_fluents(left, right, new_problem)

        raise UPProblemDefinitionError(
            f"Basic binary compiler cannot handle less-than: {left} < {right}"
        )

    def _transform_le_binary(self, left: FNode, right: FNode, new_problem: Problem) -> FNode:
        """Handle left <= right for binary representation."""
        if left.is_int_constant() and right.is_int_constant():
            return TRUE() if left.constant_value() <= right.constant_value() else FALSE()

        if left.is_fluent_exp() and right.is_int_constant():
            return self._binary_lt_constant(left, right.constant_value() + 1, new_problem)

        if left.is_int_constant() and right.is_fluent_exp():
            # c <= f == not (f < c)
            return Not(self._binary_lt_constant(right, left.constant_value(), new_problem))

        if left.is_fluent_exp() and right.is_fluent_exp():
            # left <= right == not (right < left)
            return Not(self._binary_lt_fluents(right, left, new_problem))

        raise UPProblemDefinitionError(
            f"Basic binary compiler cannot handle less-or-equal: {left} <= {right}"
        )

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
                constraints.append(self._emit_lower_bound_prec(new_value, f_type.lower_bound, g_type.upper_bound))
            if g_type.upper_bound > f_type.upper_bound:
                constraints.append(self._emit_upper_bound_prec(new_value, g_type.lower_bound, f_type.upper_bound))
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
            bound_constraints.append(self._emit_lower_bound_prec(new_fluent, min_safe, ub))
        if max_safe < ub:
            bound_constraints.append(self._emit_upper_bound_prec(new_fluent, lb, max_safe))

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
        """Transform an effect for the binary representation.

        Returns (bound_precondition, list_of_effects).
        """
        new_condition = self._transform_expression(effect.condition, new_problem)
        if new_condition == FALSE():
            return TRUE(), []

        # Increase/decrease with constant delta
        if effect.is_increase() or effect.is_decrease():
            return self._expand_increase_decrease_binary(effect, new_condition, new_problem)

        # Simple assignment (f := c or f := g)
        return self._transform_assign_binary(effect, new_condition, new_problem)

    def _bool_assign_as_conditional(self, target, source, condition, forall):
        """Convert `target := source` (both booleans) into two conditional effects.

        Necessary because PDDL doesn't support non-constant boolean assignments directly.
        """
        if source.is_true() or source.is_false():
            # Already a constant, no conversion needed
            return [Effect(target, source, condition, EffectKind.ASSIGN, forall)]

        # Non-constant: split into two conditional effects
        pos_cond = And(condition, source).simplify() if condition != TRUE() else source
        neg_cond = And(condition, Not(source)).simplify() if condition != TRUE() else Not(source)
        return [
            Effect(target, TRUE(), pos_cond, EffectKind.ASSIGN, forall),
            Effect(target, FALSE(), neg_cond, EffectKind.ASSIGN, forall),
        ]

    def _transform_assign_binary(
            self, effect: Effect, new_condition: FNode, new_problem: Problem
    ) -> Tuple[FNode, List[Effect]]:
        """Transform f := c or f := g in binary representation."""
        f_ref = effect.fluent
        f_type = f_ref.fluent().type
        f_name = f_ref.fluent().name
        f_nbits = self.n_bits[f_name]
        f_offset = self.offsets[f_name]

        # Get bit fluents for f
        f_bits = [new_problem.fluent(f"{f_name}_{i}")(*f_ref.args) for i in range(f_nbits)]

        # Case: f := constant
        if effect.value.is_int_constant():
            value = effect.value.constant_value()
            if value < f_type.lower_bound or value > f_type.upper_bound:
                # Out of range: this action is unsatisfiable
                return FALSE(), []

            bit_pattern = self._to_bits(value, f_nbits, f_offset)
            result_effects = []
            for bit_flu, bit_val in zip(f_bits, bit_pattern):
                new_value = TRUE() if bit_val else FALSE()
                result_effects.append(Effect(
                    bit_flu, new_value, new_condition, EffectKind.ASSIGN, effect.forall
                ))
            return TRUE(), result_effects

        # Case: f := g (fluent copy)
        if effect.value.is_fluent_exp() and effect.value.fluent().type.is_int_type():
            g_ref = effect.value
            g_type = g_ref.fluent().type
            g_name = g_ref.fluent().name
            g_nbits = self.n_bits[g_name]

            # Require same offset (as we did for equality)
            if f_offset != g_type.lower_bound:
                raise UPProblemDefinitionError(
                    f"Basic binary compiler requires the same offset for fluent assignment: "
                    f"{f_ref} has lb={f_offset}, {g_ref} has lb={g_type.lower_bound}. "
                    f"Use IntegerFluentsGeneralRemover instead."
                )

            # Bound precondition if g can hold values outside f's range
            bound_prec = TRUE()
            constraints = []
            if g_type.upper_bound > f_type.upper_bound:
                # g <= f.upper_bound
                constraints.append(self._transform_le_binary(
                    g_ref,
                    effect.environment.expression_manager.Int(f_type.upper_bound),
                    new_problem
                ))
            if g_type.lower_bound < f_type.lower_bound:
                # g >= f.lower_bound
                constraints.append(Not(self._transform_lt_binary(
                    g_ref,
                    effect.environment.expression_manager.Int(f_type.lower_bound),
                    new_problem
                )))
            if len(constraints) == 1:
                bound_prec = constraints[0]
            elif len(constraints) > 1:
                bound_prec = And(constraints)

            # Assign each bit of f from the corresponding bit of g
            g_bits = [new_problem.fluent(f"{g_name}_{i}")(*g_ref.args) for i in range(g_nbits)]

            result_effects = []

            # Handle padding: if f has more bits than g, extra MSB bits of f become FALSE
            if f_nbits > g_nbits:
                pad = f_nbits - g_nbits
                for i in range(pad):
                    result_effects.append(Effect(
                        f_bits[i], FALSE(), new_condition, EffectKind.ASSIGN, effect.forall
                    ))
                # Then aligned bits
                for f_bit, g_bit in zip(f_bits[pad:], g_bits):
                    result_effects.extend(
                        self._bool_assign_as_conditional(f_bit, g_bit, new_condition, effect.forall)
                    )
            elif g_nbits > f_nbits:
                # g has more bits than f: only assign the LSB bits, ignore MSB.
                # This is safe only if the MSB bits of g are guaranteed to be FALSE
                # by the bound precondition.
                pad = g_nbits - f_nbits
                for f_bit, g_bit in zip(f_bits, g_bits[pad:]):
                    result_effects.extend(
                        self._bool_assign_as_conditional(f_bit, g_bit, new_condition, effect.forall)
                    )
            else:
                # Same width
                for f_bit, g_bit in zip(f_bits, g_bits):
                    result_effects.extend(
                        self._bool_assign_as_conditional(f_bit, g_bit, new_condition, effect.forall)
                    )

            return bound_prec, result_effects

        raise UPProblemDefinitionError(
            f"Basic binary compiler cannot handle assignment with value {effect.value}"
        )

    def _expand_increase_decrease_binary(
            self, effect: Effect, new_condition: FNode, new_problem: Problem
    ) -> Tuple[FNode, List[Effect]]:
        """Expand increase/decrease as conditional effects for binary representation.

        For each valid starting value i of f, generate a conditional effect that
        sets each bit of f to the bit pattern of (i + delta) or (i - delta).

        Returns (bound_precondition, list_of_effects).
        """
        fluent = effect.fluent.fluent()
        lb, ub = fluent.type.lower_bound, fluent.type.upper_bound
        delta = effect.value.constant_value()
        f_name = fluent.name
        f_nbits = self.n_bits[f_name]
        f_offset = self.offsets[f_name]

        f_bits = [new_problem.fluent(f"{f_name}_{i}")(*effect.fluent.args) for i in range(f_nbits)]

        if effect.is_increase():
            min_safe = lb
            max_safe = ub - delta
        else:  # decrease
            min_safe = lb + delta
            max_safe = ub

        # Bound precondition: min_safe <= f <= max_safe
        em = effect.environment.expression_manager
        bound_constraints = []
        if min_safe > lb:
            # f >= min_safe: not (f < min_safe)
            bound_constraints.append(Not(self._transform_lt_binary(
                effect.fluent, em.Int(min_safe), new_problem
            )))
        if max_safe < ub:
            # f <= max_safe
            bound_constraints.append(self._transform_le_binary(
                effect.fluent, em.Int(max_safe), new_problem
            ))

        if not bound_constraints:
            bound_prec = TRUE()
        elif len(bound_constraints) == 1:
            bound_prec = bound_constraints[0]
        else:
            bound_prec = And(bound_constraints)

        # For each valid current value, generate conditional effects on each bit
        result_effects = []
        for i in range(min_safe, max_safe + 1):
            next_val = i + delta if effect.is_increase() else i - delta

            # Value condition: f == i (in binary form)
            current_bits = self._to_bits(i, f_nbits, f_offset)
            value_cond_parts = []
            for bit_flu, bit_val in zip(f_bits, current_bits):
                value_cond_parts.append(bit_flu if bit_val else Not(bit_flu))
            if len(value_cond_parts) == 1:
                value_cond = value_cond_parts[0]
            else:
                value_cond = And(value_cond_parts)

            # Combine with existing condition
            full_condition = (
                And(value_cond, new_condition).simplify()
                if new_condition != TRUE() else value_cond
            )

            # Generate one effect per bit: assign the bit pattern of next_val
            next_bits = self._to_bits(next_val, f_nbits, f_offset)
            for bit_flu, next_bit_val in zip(f_bits, next_bits):
                new_value = TRUE() if next_bit_val else FALSE()
                result_effects.append(Effect(
                    bit_flu, new_value, full_condition, EffectKind.ASSIGN, effect.forall
                ))

        return bound_prec, result_effects

    # ============================================================
    # TRANSFORMATION: GOALS
    # ============================================================

    def _add_goal_as_axiom(self, problem: Problem, new_problem: Problem, goal_expr: FNode, index: int) -> None:
        """Create a derived Boolean fluent and axiom for a complex goal."""

        # Create a new derived Boolean fluent
        goal_name = get_fresh_name(new_problem, f"goal_derived_{index}")
        goal_derived_fluent = Fluent(goal_name, DerivedBoolType())
        new_problem.add_fluent(goal_derived_fluent, default_initial_value=FALSE())

        # Create the axiom
        axiom = Axiom(goal_name, {}, new_problem.environment)
        axiom.set_head(goal_derived_fluent)

        # Transform the goal expression using transformation
        axiom_condition = self._transform_expression(goal_expr, new_problem)

        if axiom_condition == TRUE():
            axiom.add_body_condition(TRUE())
        elif axiom_condition == FALSE():
            raise UPProblemDefinitionError("Goal is unsatisfiable")
        else:
            axiom.add_body_condition(axiom_condition)

        new_problem.add_axiom(axiom)
        new_problem.add_goal(goal_derived_fluent())

    def _transform_goals(self, problem: Problem, new_problem: Problem) -> None:
        """Transform goals: separate direct (simple) and complex (via axiom)."""
        direct_goals = []
        axiom_goals = []
        goals = problem.goals
        if len(goals) == 1 and goals[0].is_and():
            goals = problem.goals[0].args

        for goal in goals:
            if is_complex_goal(goal):
                axiom_goals.append(goal)
            else:
                direct_goals.append(goal)

        # 1. Direct goals: translate and add directly
        for goal in direct_goals:
            translated_goal = self._transform_expression(goal, new_problem)
            if translated_goal == TRUE():
                continue
            if translated_goal == FALSE():
                raise UPProblemDefinitionError("Goal is unsatisfiable")
            new_problem.add_goal(translated_goal)

        # 2. Complex goals: wrap in axiom
        for i, goal in enumerate(axiom_goals):
            j = len(direct_goals) + i
            self._add_goal_as_axiom(problem, new_problem, goal, j)

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
        """Raise error if the problem uses expressions the basic compiler cannot handle.

        The basic compiler does not support:
        - Arithmetic operations (+, -, *, /) in preconditions or effects that don't
          match one of the recognised simplifiable patterns (a+1<=b, etc.)
        - Non-constant deltas in increase/decrease effects
        - Arithmetic expressions on the RHS of assignments
        """
        # Try simplification first (e.g. a + 1 <= b becomes a < b)
        simplified = self._try_simplify_arithmetic(expr)
        if simplified is not expr:
            self._check_expression_compatible(simplified, context)
            return

        # Otherwise, arithmetic operations are not supported
        if expr.node_type in self.ARITHMETIC_OPS:
            raise UPProblemDefinitionError(
                f"IntegerFluentsBasicRemover does not support arithmetic expression "
                f"'{expr}' in {context}. Use IntegerFluentsGeneralRemover instead."
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
        new_problem.explicit_initial_values.clear()
        new_problem.clear_quality_metrics()

        # Step 3: setup representation-specific structures
        if self.representation == 'object':
            self._create_number_objects(problem, new_problem)

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
