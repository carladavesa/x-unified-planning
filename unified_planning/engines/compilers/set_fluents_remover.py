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
"""This module defines the set fluents remover class."""

import itertools
from itertools import product
import unified_planning as up
import unified_planning.engines as engines
from unified_planning import model
from unified_planning.engines.mixins.compiler import CompilationKind, CompilerMixin
from unified_planning.engines.results import CompilerResult
from unified_planning.exceptions import UPProblemDefinitionError
from unified_planning.model import (
    Problem,
    Action,
    ProblemKind,
    Fluent,
    Effect,
    Expression,
    FNode,
    InstantaneousAction,
)
from unified_planning.model.problem_kind_versioning import LATEST_PROBLEM_KIND_VERSION
from unified_planning.model.types import _IntType, _SetType, _UserType
from unified_planning.engines.compilers.utils import (
    get_fresh_name,
    replace_action,
    updated_minimize_action_costs,
)
from typing import Dict, Iterable, Optional, Tuple, Union, List
from functools import partial
from unified_planning.shortcuts import (
    BoolType,
    EMPTY_SET,
    Or,
    Not,
    And,
    TRUE,
    Iff,
    Equals,
    FALSE,
    IntType,
    ObjectExp,
    UserType,
    Int,
)


class SetFluentsRemover(engines.engine.Engine, CompilerMixin):
    """
    Compiler that transforms set fluents into Boolean-indexed fluents.
    Encoding:
    - Original: s(params): set{T}
    - Encoded: s(t, params): bool where t ranges over objects of type T

    The compiler also rewrites set predicates/operations and introduces cardinality helper fluents when needed.
    Only problems with instantaneous actions are supported.
    """

    def __init__(self, cardinality_encoding: str = "integer"):
        assert cardinality_encoding in ("integer", "count"), (
            f"cardinality_encoding must be 'integer' or 'count', got {cardinality_encoding}"
        )
        engines.engine.Engine.__init__(self)
        CompilerMixin.__init__(self, CompilationKind.SET_FLUENTS_REMOVING)
        self.cardinality_encoding = cardinality_encoding
        self._fluent_mapping: Dict[str, Fluent] = {}
        self._cardinality_registry: Dict[str, FNode] = {}
        self._union_cardinalities: Dict[FNode, FNode] = {}
        self._cardinality_deltas: Dict[FNode, Dict[Tuple[FNode, int], FNode]] = {}
        self._int_range_types: Dict[str, model.Type] = {}  # type_name → UserType
        self._int_to_obj: Dict[str, Dict[int, model.Object]] = {}
        self._obj_to_int: Dict[str, Dict[model.Object, int]] = {}

    @property
    def name(self):
        return "sfrm"

    @staticmethod
    def supported_kind() -> ProblemKind:
        supported_kind = ProblemKind(version=LATEST_PROBLEM_KIND_VERSION)
        supported_kind.set_problem_class("ACTION_BASED")
        supported_kind.set_typing("FLAT_TYPING")
        supported_kind.set_typing("HIERARCHICAL_TYPING")
        supported_kind.set_parameters("BOOL_FLUENT_PARAMETERS")
        supported_kind.set_parameters("BOUNDED_INT_FLUENT_PARAMETERS")
        supported_kind.set_parameters("BOOL_ACTION_PARAMETERS")
        supported_kind.set_parameters("REAL_ACTION_PARAMETERS")
        supported_kind.set_numbers("BOUNDED_TYPES")
        supported_kind.set_problem_type("SIMPLE_NUMERIC_PLANNING")
        supported_kind.set_problem_type("GENERAL_NUMERIC_PLANNING")
        supported_kind.set_fluents_type("INT_FLUENTS")
        supported_kind.set_fluents_type("REAL_FLUENTS")
        supported_kind.set_fluents_type("ARRAY_FLUENTS")
        supported_kind.set_fluents_type("SET_FLUENTS")
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
        supported_kind.set_simulated_entities("SIMULATED_EFFECTS")
        supported_kind.set_constraints_kind("STATE_INVARIANTS")
        supported_kind.set_constraints_kind("TRAJECTORY_CONSTRAINTS")
        supported_kind.set_quality_metrics("ACTIONS_COST")
        supported_kind.set_actions_cost_kind("STATIC_FLUENTS_IN_ACTIONS_COST")
        supported_kind.set_actions_cost_kind("FLUENTS_IN_ACTIONS_COST")
        supported_kind.set_quality_metrics("PLAN_LENGTH")
        supported_kind.set_quality_metrics("OVERSUBSCRIPTION")
        supported_kind.set_quality_metrics("FINAL_VALUE")
        supported_kind.set_actions_cost_kind("INT_NUMBERS_IN_ACTIONS_COST")
        supported_kind.set_actions_cost_kind("REAL_NUMBERS_IN_ACTIONS_COST")
        supported_kind.set_oversubscription_kind("INT_NUMBERS_IN_OVERSUBSCRIPTION")
        supported_kind.set_oversubscription_kind("REAL_NUMBERS_IN_OVERSUBSCRIPTION")
        return supported_kind

    @staticmethod
    def supports(problem_kind):
        return problem_kind <= SetFluentsRemover.supported_kind()

    @staticmethod
    def supports_compilation(compilation_kind: CompilationKind) -> bool:
        return compilation_kind == CompilationKind.SET_FLUENTS_REMOVING

    def _get_or_create_int_range_type(self, new_problem, int_type):
        """Return a UserType representing the range of int_type.
        Creates the type and its objects if not present.

        Registers a bidirectional int↔Object mapping in self._int_to_obj / self._obj_to_int.
        """
        lb, ub = int_type.lower_bound, int_type.upper_bound
        type_name = f"IntRange_{lb}_{ub}"

        # Reuse if exists
        if type_name in self._int_range_types:
            return self._int_range_types[type_name]

        # Create new UserType
        new_type = UserType(type_name)
        self._int_range_types[type_name] = new_type

        # Create objects and register mapping
        obj_map = {}  # int → Object
        inv_map = {}  # Object → int
        for i in range(lb, ub + 1):
            obj_name = f"i_{i}"
            obj = model.Object(obj_name, new_type)
            new_problem.add_object(obj)
            obj_map[i] = obj
            inv_map[obj] = i

        self._int_to_obj[type_name] = obj_map
        self._obj_to_int[type_name] = inv_map
        return new_type

    def _resolve_element_type(self, new_problem, elements_type):
        """Return the UserType actually used for elements of the given type.
        For user-types, returns unchanged. For int-types, returns the synthesized
        IntRange UserType."""
        if elements_type.is_user_type():
            return elements_type
        if elements_type.is_int_type():
            return self._get_or_create_int_range_type(new_problem, elements_type)
        raise NotImplementedError(f"Unsupported element type: {elements_type}")

    def _to_element_object(self, new_problem, elements_type, value):
        """Convert a raw element value to the corresponding Object.
        Accepts: Object, ObjectExp, int, IntExp (FNode).
        """
        if elements_type.is_user_type():
            # Unwrap ObjectExp if needed
            if hasattr(value, "object"):  # FNode with .object()
                return value.object()
            return value
        if elements_type.is_int_type():
            # Unwrap IntExp if needed
            if hasattr(value, "constant_value"):  # FNode
                value = value.constant_value()
            self._get_or_create_int_range_type(new_problem, elements_type)
            type_name = (
                f"IntRange_{elements_type.lower_bound}_{elements_type.upper_bound}"
            )
            return self._int_to_obj[type_name][value]
        raise NotImplementedError(f"Unsupported element type: {elements_type}")

    def _enumerate_elements(self, new_problem, elements_type):
        """Return all possible elements of the given type, as Objects."""
        resolved = self._resolve_element_type(new_problem, elements_type)
        return list(new_problem.objects(resolved))

    def _int_to_object(self, new_problem, int_type, value):
        """Get the Object corresponding to an int value in the range of int_type."""
        lb, ub = int_type.lower_bound, int_type.upper_bound
        type_name = f"IntRange_{lb}_{ub}"
        if type_name not in self._int_to_obj:
            self._get_or_create_int_range_type(new_problem, int_type)
        return self._int_to_obj[type_name][value]

    @staticmethod
    def resulting_problem_kind(
        problem_kind: ProblemKind,
        compilation_kind: Optional[CompilationKind] = None,
    ) -> ProblemKind:
        new_kind = problem_kind.clone()
        if problem_kind.has_set_fluents():
            new_kind.unset_fluents_type("SET_FLUENTS")
            # Include features introduced by either cardinality encoding.
            new_kind.set_fluents_type("INT_FLUENTS")
            new_kind.set_conditions_kind("COUNTING")
            new_kind.set_conditions_kind("NEGATIVE_CONDITIONS")
            new_kind.set_conditions_kind("DISJUNCTIVE_CONDITIONS")
            new_kind.set_conditions_kind("EQUALITIES")
            new_kind.set_typing("FLAT_TYPING")
            new_kind.set_numbers("BOUNDED_TYPES")
            new_kind.set_problem_type("SIMPLE_NUMERIC_PLANNING")
            new_kind.set_problem_type("GENERAL_NUMERIC_PLANNING")
            new_kind.set_effects_kind("CONDITIONAL_EFFECTS")
            new_kind.set_effects_kind("INCREASE_EFFECTS")
            new_kind.set_effects_kind("DECREASE_EFFECTS")
        return new_kind

    # ==================== FLUENT TRANSFORMATION ====================

    def _get_param_combinations(self, problem: Problem, signature):
        """Get all combinations of parameter values."""
        param_values = [problem.objects(param.type) for param in signature]
        return list(product(*param_values))

    def _add_set_as_boolean_fluent(
        self, problem: Problem, new_problem: Problem, fluent: Fluent, default_value
    ):
        """
        Encode a set fluent as a Boolean fluent with an extra element parameter.
        Supports sets of user-type and int-type elements (int -> synthesized UserType)
        """
        set_type = fluent.type
        assert isinstance(set_type, _SetType)
        elements_type = set_type.elements_type
        assert elements_type is not None
        param_type = self._resolve_element_type(new_problem, elements_type)
        param_name = str(param_type)[0].lower() if elements_type.is_user_type() else "i"
        element_param = model.Parameter(param_name, param_type)

        new_signature = [element_param] + list(fluent.signature)
        new_fluent = model.Fluent(
            name=fluent.name,
            typename=BoolType(),
            _signature=new_signature,
            environment=fluent.environment,
        )
        new_problem.add_fluent(new_fluent, default_initial_value=False)
        self._fluent_mapping[fluent.name] = new_fluent

        param_combinations = self._get_param_combinations(problem, fluent.signature)
        for params in param_combinations:
            initial_value = problem.explicit_initial_values.get(fluent(*params))
            if initial_value:
                elements = initial_value.set_constant_value()
            elif default_value and default_value != EMPTY_SET():
                elements = default_value.set_constant_value()
            else:
                continue

            for element in elements:
                element_obj = self._to_element_object(
                    new_problem, elements_type, element
                )
                new_problem.set_initial_value(new_fluent(element_obj, *params), True)

    def _transform_fluents(self, problem: Problem, new_problem: Problem):
        """Transform all fluents from old problem to new problem."""
        for fluent in problem.fluents:
            default_value = problem.fluents_defaults.get(fluent)
            if fluent.type.is_set_type():
                self._add_set_as_boolean_fluent(
                    problem, new_problem, fluent, default_value
                )
            else:
                self._add_regular_fluent(problem, new_problem, fluent, default_value)

    def _set_boolean_values(self, new_problem, new_fluent, base_params, elements):
        """Set boolean values for each element in the set."""
        for element in elements:
            params = [element] + list(base_params)
            new_problem.set_initial_value(new_fluent(*params), True)

    def _add_regular_fluent(
        self, problem: Problem, new_problem: Problem, fluent: Fluent, default_value
    ):
        """Add non-set fluent unchanged."""
        new_problem.add_fluent(fluent, default_initial_value=default_value)
        self._fluent_mapping[fluent.name] = fluent

        for f, v in problem.explicit_initial_values.items():
            if f.fluent() == fluent:
                new_problem.set_initial_value(fluent(*f.args), v)

    # ==================== EXPRESSION TRANSFORMATION ====================

    def _transform_fluent_exp(
        self, old_problem, new_problem: Problem, node: FNode
    ) -> FNode:
        """Transform fluent expression."""
        fluent = node.fluent()
        new_args = [
            self._transform_expression(old_problem, new_problem, arg)
            for arg in node.args
        ]
        return new_problem.fluent(fluent.name)(*new_args)

    def _transform_member(self, new_problem: Problem, node: FNode) -> FNode:
        """
        Transform: element in set_fluent(params)
        Into: set_fluent(element, params)
        """
        element = node.args[0]
        set_expr = node.args[1]
        set_type = set_expr.type
        assert isinstance(set_type, _SetType), "Second arg must be a set"
        assert set_expr.is_fluent_exp() or set_expr.is_constant(), (
            "Set expression must be a fluent or a constant"
        )

        if set_expr.is_set_constant():
            return self._get_element_membership_expr(set_expr, element, new_problem)

        elements_type = set_type.elements_type
        assert elements_type is not None
        new_fluent = self._fluent_mapping[set_expr.fluent().name]
        # Case: element is a dynamic int expression (fluent or complex expression)
        # expand into a disjunction
        if (
            elements_type.is_int_type()
            and not element.is_int_constant()
            and not element.is_parameter_exp()
        ):
            assert isinstance(elements_type, _IntType)
            lower, upper = elements_type.lower_bound, elements_type.upper_bound
            assert lower is not None and upper is not None
            disjuncts = []
            for v in range(lower, upper + 1):
                elem_obj = self._to_element_object(new_problem, elements_type, v)
                guard = Equals(element, Int(v))
                membership = new_fluent(ObjectExp(elem_obj), *set_expr.args)
                disjuncts.append(And(guard, membership))
            return Or(*disjuncts)

        # Wrap element if it's a raw int value (for int-set fluents).
        if element.is_int_constant() and elements_type.is_int_type():
            elem_obj = self._to_element_object(
                new_problem, elements_type, element.int_constant_value()
            )
            new_args = [ObjectExp(elem_obj)] + list(set_expr.args)
        else:
            new_args = [element] + list(set_expr.args)
        return new_fluent(*new_args)

    def _transform_subseteq(self, new_problem: Problem, node: FNode) -> FNode:
        """
        Transform: S1 subseteq S2
        Into: for every element o, member(S1, o) -> member(S2, o)
        """
        simplified = node.simplify()
        if simplified.is_bool_constant():
            return simplified
        set_expr_1 = node.args[0]
        set_expr_2 = node.args[1]

        def get_elements_type(set_expr: FNode):
            if set_expr.is_fluent_exp() or set_expr.is_set_constant():
                set_type = set_expr.type
                assert isinstance(set_type, _SetType)
                return set_type.elements_type
            if (
                set_expr.is_set_union()
                or set_expr.is_set_intersect()
                or set_expr.is_set_difference()
            ):
                return get_elements_type(set_expr.arg(0))
            raise UPProblemDefinitionError(
                f"Unsupported set expression in subseteq: {set_expr}"
            )

        elements_type = get_elements_type(set_expr_1)
        clauses = []
        for element in self._enumerate_elements(new_problem, elements_type):
            element_exp = ObjectExp(element)
            in_first = self._get_element_membership_expr(
                set_expr_1, element_exp, new_problem
            )
            in_second = self._get_element_membership_expr(
                set_expr_2, element_exp, new_problem
            )
            clauses.append(Or(Not(in_first), in_second).simplify())
        return And(*clauses).simplify() if clauses else TRUE()

    def _transform_disjoint(self, new_problem: Problem, node: FNode) -> FNode:
        """
        Transform: set_1 ∩ set_2 == ∅
        Into: And([Not(And(fluent1(obj1, ...), fluent2(obj1, ...))), ...])
        """
        simplified = node.simplify()
        if simplified.is_bool_constant():
            return simplified
        set1 = node.args[0]
        set2 = node.args[1]
        set_type1, set_type2 = set1.type, set2.type
        assert isinstance(set_type1, _SetType) and isinstance(set_type2, _SetType), (
            "Both arguments must be sets"
        )
        assert set1.is_fluent_exp() or set1.is_constant(), (
            "Set expression must be a fluent or a constant"
        )
        assert set2.is_fluent_exp() or set2.is_constant(), (
            "Set expression must be a fluent or a constant"
        )

        elements_type = (
            set_type1.elements_type if set1.is_fluent_exp() else set_type2.elements_type
        )
        elements = self._enumerate_elements(new_problem, elements_type)
        and_expr = []

        if set1.is_fluent_exp() and set2.is_fluent_exp():
            fluent1 = self._fluent_mapping[set1.fluent().name]
            fluent2 = self._fluent_mapping[set2.fluent().name]
            for elem in elements:
                and_expr.append(
                    Not(
                        And(fluent1(elem, *set1.args), fluent2(elem, *set2.args))
                    ).simplify()
                )
        else:
            fluent, constant_raw = (
                (set1, set2.set_constant_value())
                if set1.is_fluent_exp()
                else (set2, set1.set_constant_value())
            )
            new_fluent = self._fluent_mapping[fluent.fluent().name]
            for elem in constant_raw:
                elem_obj = self._to_element_object(new_problem, elements_type, elem)
                and_expr.append(Not(new_fluent(elem_obj, *fluent.args)).simplify())
        return And(*and_expr)

    def _transform_cardinality_as_count(
        self, new_problem: Problem, set_expr: FNode, elements: list
    ) -> FNode:
        """Transform |S| into Count([membership(o) for each element o]).

        This encoding avoids introducing auxiliary integer fluents and conditional
        effects to maintain their values. The resulting Count expression can be
        handled by COUNT_TO_BOOL_REMOVING, COUNT_TO_INT_REMOVING, or the general
        integer remover with native Count support.
        """
        em = new_problem.environment.expression_manager
        membership_exprs = [
            self._get_element_membership_expr(set_expr, ObjectExp(elem), new_problem)
            for elem in elements
        ]
        return em.Count(*membership_exprs)

    def _get_element_membership_expr(
        self, set_expr: FNode, elem_expr: FNode, new_problem: Problem
    ) -> FNode:
        """Build a Boolean expression asserting that elem is in set_expr.

        Supports: set fluents, unions, intersections, differences.
        """
        em = new_problem.environment.expression_manager

        if set_expr.is_fluent_exp():
            # elem in S: use the encoded membership fluent
            old_fluent = set_expr.fluent()
            new_fluent = self._fluent_mapping[old_fluent.name]
            return new_fluent(elem_expr, *set_expr.args)

        if set_expr.is_set_constant():
            # Compare integer values, not objects belonging to different ranges.
            element = elem_expr
            if elem_expr.is_object_exp():
                obj = elem_expr.object()
                obj_type = obj.type
                assert isinstance(obj_type, _UserType)
                int_values = self._obj_to_int.get(obj_type.name)
                if int_values is not None:
                    element = em.Int(int_values[obj])
            return em.Or(
                em.Equals(element, value) for value in set_expr.set_constant_value()
            ).simplify()

        if set_expr.is_set_union():
            # elem in (A u B): elem in A OR elem in B
            set1, set2 = set_expr.args
            return em.Or(
                self._get_element_membership_expr(set1, elem_expr, new_problem),
                self._get_element_membership_expr(set2, elem_expr, new_problem),
            )

        if set_expr.is_set_intersect():
            # elem in (A & B): elem in A AND elem in B
            set1, set2 = set_expr.args
            return em.And(
                self._get_element_membership_expr(set1, elem_expr, new_problem),
                self._get_element_membership_expr(set2, elem_expr, new_problem),
            )

        if set_expr.is_set_difference():
            # elem in (A \ B): elem in A AND NOT elem in B
            set1, set2 = set_expr.args
            return em.And(
                self._get_element_membership_expr(set1, elem_expr, new_problem),
                em.Not(self._get_element_membership_expr(set2, elem_expr, new_problem)),
            )

        raise NotImplementedError(
            f"Cardinality with encoding 'count' does not support set expression: {set_expr}"
        )

    def _transform_cardinality(
        self, old_problem: Problem, new_problem: Problem, node: FNode
    ) -> FNode:
        """
        Transform |set_expr| into an integer helper fluent representing the cardinality.
        """
        set_expr = node.args[0]
        set_type = set_expr.type if set_expr.is_fluent_exp() else set_expr.arg(0).type
        assert isinstance(set_type, _SetType)
        elements_type = set_type.elements_type
        elements = self._enumerate_elements(new_problem, elements_type)
        # Count encoding
        if self.cardinality_encoding == "count":
            return self._transform_cardinality_as_count(new_problem, set_expr, elements)
        # Integer encoding
        if set_expr.is_fluent_exp():
            # Create an integer helper fluent (same parameters as the source fluent)
            old_fluent = set_expr.fluent()
            card_parameters = [
                a.parameter() if a.is_parameter_exp() else a.variable()
                for a in set_expr.args
                if a.is_parameter_exp() or a.is_variable_exp()
            ]

            fluent_name = f"card_{old_fluent.name}"
            if new_problem.has_fluent(fluent_name):
                return new_problem.fluent(fluent_name)(*set_expr.args)

            # Contains action parameters
            if card_parameters:
                # New cardinality fluent contains a value from 0 to the number of objects of the type it contains in the problem
                new_fluent = Fluent(
                    fluent_name,
                    IntType(0, len(elements)),
                    [
                        model.Parameter(p.name, p.type, p.environment)
                        for p in card_parameters
                    ],
                )
                default_initial_value = len(
                    old_problem.fluents_defaults[old_fluent].set_constant_value()
                )

                self._cardinality_registry[fluent_name] = set_expr
                new_problem.add_fluent(
                    new_fluent, default_initial_value=default_initial_value
                )

                # Initial values
                parameter_values = self._get_param_combinations(
                    new_problem, card_parameters
                )
                for p in parameter_values:
                    try:
                        initial_value = len(
                            old_problem.explicit_initial_values[
                                old_fluent(*p)
                            ].set_constant_value()
                        )
                        new_problem.set_initial_value(new_fluent(*p), initial_value)
                    except KeyError:
                        pass

                return new_fluent(*set_expr.args)

            # Doesn't contain action parameters
            else:
                fluent_name = (
                    f"card_{old_fluent.name}_{'_'.join(str(a) for a in set_expr.args)}"
                )
                if new_problem.has_fluent(fluent_name):
                    return new_problem.fluent(fluent_name)(*set_expr.args)

                new_fluent = Fluent(fluent_name, IntType(0, len(elements)))
                default_initial_value = len(
                    old_problem.fluents_defaults[old_fluent].set_constant_value()
                )
                new_problem.add_fluent(
                    new_fluent, default_initial_value=default_initial_value
                )

                # Initialize with arguments parameters (if so)
                try:
                    # If the instantiation has an initial value, add it
                    initial_value = len(
                        old_problem.explicit_initial_values[
                            old_fluent(*set_expr.args)
                        ].set_constant_value()
                    )
                    new_problem.set_initial_value(
                        new_fluent(*set_expr.args), initial_value
                    )
                except:
                    pass

                self._cardinality_registry[fluent_name] = set_expr
                return new_fluent()

        elif set_expr.is_set_union():
            return self._transform_union_cardinality(old_problem, new_problem, set_expr)

        raise NotImplementedError(
            f"Cardinality of {set_expr.node_type} not supported yet."
        )

    def _initial_set_value(self, problem: Problem, expression: FNode) -> set[FNode]:
        """Evaluate a ground set expression in the original initial state."""
        if expression.is_fluent_exp():
            value = problem.initial_value(expression)
            assert value is not None
            return set(value.set_constant_value())
        if expression.is_set_constant():
            return set(expression.set_constant_value())
        left = self._initial_set_value(problem, expression.arg(0))
        right = self._initial_set_value(problem, expression.arg(1))
        if expression.is_set_union():
            return left | right
        if expression.is_set_intersect():
            return left & right
        if expression.is_set_difference():
            return left - right
        raise NotImplementedError(f"Initial value of {expression} is not supported.")

    def _transform_union_cardinality(
        self, old_problem: Problem, new_problem: Problem, expression: FNode
    ) -> FNode:
        if expression in self._union_cardinalities:
            return self._union_cardinalities[expression]
        em = new_problem.environment.expression_manager
        parameters: List[FNode] = []

        def collect_parameters(node: FNode):
            if node.is_parameter_exp() or node.is_variable_exp():
                if node not in parameters:
                    parameters.append(node)
            for arg in node.args:
                collect_parameters(arg)

        collect_parameters(expression)
        set_type = expression.type
        assert isinstance(set_type, _SetType)
        elements = self._enumerate_elements(new_problem, set_type.elements_type)
        helper = Fluent(
            get_fresh_name(new_problem, "card_union"),
            new_problem.environment.type_manager.IntType(0, len(elements)),
            [
                model.Parameter(f"p{i}", p.type, new_problem.environment)
                for i, p in enumerate(parameters)
            ],
            environment=new_problem.environment,
        )
        new_problem.add_fluent(helper, default_initial_value=0)
        for values in self._get_param_combinations(new_problem, helper.signature):
            substitutions: Dict[Expression, Expression] = dict(zip(parameters, values))
            ground_expression = expression.substitute(substitutions)
            new_problem.set_initial_value(
                helper(*values),
                len(self._initial_set_value(old_problem, ground_expression)),
            )
        result = em.FluentExp(helper, parameters)
        self._union_cardinalities[expression] = result
        return result

    def _add_union_cardinality_effects(
        self, new_problem: Problem, action: InstantaneousAction
    ):
        """Count changes to union membership after all simultaneous set effects."""
        if not self._union_cardinalities:
            return
        em = new_problem.environment.expression_manager
        effects = [
            ground
            for effect in action.effects
            for ground in effect.expand_effect(new_problem)
            if ground.fluent.type.is_bool_type()
        ]
        for expression, card in self._union_cardinalities.items():
            set_type = expression.type
            assert isinstance(set_type, _SetType)
            elements = self._enumerate_elements(new_problem, set_type.elements_type)
            for values in self._get_param_combinations(
                new_problem, card.fluent().signature
            ):
                substitutions: Dict[Expression, Expression] = dict(
                    zip(card.args, values)
                )
                ground_expression = expression.substitute(substitutions)
                ground_card = card.fluent()(*values)
                for element in elements:
                    before = self._get_element_membership_expr(
                        ground_expression, em.ObjectExp(element), new_problem
                    ).simplify()
                    updates: Dict[Expression, Expression] = {}
                    for membership in self._find_affected_fluents(before):
                        enabled_true = []
                        enabled_false = []
                        for effect in effects:
                            if effect.fluent.fluent() != membership.fluent():
                                continue
                            matches = em.And(
                                [
                                    em.Equals(a, b)
                                    for a, b in zip(effect.fluent.args, membership.args)
                                ]
                            )
                            condition = em.And(effect.condition, matches).simplify()
                            if condition.is_false():
                                continue
                            enabled_true.append(em.And(condition, effect.value))
                            enabled_false.append(
                                em.And(condition, em.Not(effect.value))
                            )
                        updates[membership] = em.Or(
                            em.Or(enabled_true),
                            em.And(membership, em.Not(em.Or(enabled_false))),
                        ).simplify()
                    after = before.substitute(updates).simplify()
                    if after == before:
                        continue
                    self._record_cardinality_delta(
                        ground_card, before, 1, em.And(em.Not(before), after).simplify()
                    )
                    self._record_cardinality_delta(
                        ground_card,
                        before,
                        -1,
                        em.And(before, em.Not(after)).simplify(),
                    )

    def _transform_add_remove(self, new_problem: Problem, node: FNode) -> FNode:
        """
        Transform: add(S, e) or remove(S, e) appearing in an expression.
        """
        element = node.arg(1)
        set_expr = node.arg(0)
        assert set_expr.is_fluent_exp(), "Add/Remove only works on fluent sets"

        set_type = set_expr.type
        assert isinstance(set_type, _SetType)
        elements_type = set_type.elements_type
        assert elements_type is not None
        new_fluent = self._fluent_mapping[set_expr.fluent().name]

        if (
            elements_type.is_int_type()
            and not element.is_int_constant()
            and not element.is_parameter_exp()
        ):
            raise NotImplementedError(
                "add/remove with dynamic int element in expression context is not supported. "
                "This case typically only appears in effects, which are handled separately."
            )

        if element.is_int_constant() and elements_type.is_int_type():
            elem_obj = self._to_element_object(
                new_problem, elements_type, element.constant_value()
            )
            return new_fluent(ObjectExp(elem_obj), *set_expr.args)
        return new_fluent(element, *set_expr.args)

    def _transform_union(self, new_problem: Problem, node: FNode) -> FNode:
        """Union should not appear alone, only in comparison operations, cardinality, or effects."""
        raise NotImplementedError(
            "Outermost union expressions are only accepted in effect context"
        )

    def _transform_equality(
        self, old_problem: Problem, new_problem: Problem, node: FNode
    ) -> FNode:
        """
        Transform equality between set expressions.
        Cases:
            1. `set_fluent == {constant_set}`
            2. `set_fluent1 == set_fluent2`
        """
        left = node.arg(0)
        right = node.arg(1)
        em = new_problem.environment.expression_manager

        set_fluent = None
        constant_set = None
        other_set_fluent = None

        if left.is_fluent_exp() and left.fluent().type.is_set_type():
            set_fluent = left
            if right.is_set_constant():
                constant_set = right
            elif right.is_fluent_exp() and right.fluent().type.is_set_type():
                other_set_fluent = right
        elif right.is_fluent_exp() and right.fluent().type.is_set_type():
            set_fluent = right
            if left.is_set_constant():
                constant_set = left
            elif left.is_fluent_exp() and left.fluent().type.is_set_type():
                other_set_fluent = left

        # Case 1: set_fluent == {constant_set}
        if set_fluent and constant_set:
            fluent_name = set_fluent.fluent().name
            fluent_args = set_fluent.args
            set_type = set_fluent.fluent().type
            assert isinstance(set_type, _SetType)
            elements_type = set_type.elements_type
            constant_raw = list(constant_set.set_constant_value())
            constant_objects = [
                self._to_element_object(new_problem, elements_type, e)
                for e in constant_raw
            ]
            all_elements = self._enumerate_elements(new_problem, elements_type)

            clauses = []
            for elem_obj in constant_objects:
                elem_exp = em.ObjectExp(elem_obj)
                member_fluent = new_problem.fluent(fluent_name)(elem_exp, *fluent_args)
                clauses.append(member_fluent)
            for obj in all_elements:
                if obj not in constant_objects:
                    elem_exp = em.ObjectExp(obj)
                    member_fluent = new_problem.fluent(fluent_name)(
                        elem_exp, *fluent_args
                    )
                    clauses.append(Not(member_fluent))
            return And(clauses).simplify() if clauses else TRUE()

        # Case 2: set_fluent1 == set_fluent2
        elif set_fluent and other_set_fluent:
            fluent1_name = set_fluent.fluent().name
            fluent1_args = set_fluent.args
            fluent2_name = other_set_fluent.fluent().name
            fluent2_args = other_set_fluent.args

            set_type = set_fluent.fluent().type
            assert isinstance(set_type, _SetType)
            elements_type = set_type.elements_type
            all_elements = self._enumerate_elements(new_problem, elements_type)

            clauses = []
            for obj in all_elements:
                elem_exp = em.ObjectExp(obj)
                member1 = new_problem.fluent(fluent1_name)(elem_exp, *fluent1_args)
                member2 = new_problem.fluent(fluent2_name)(elem_exp, *fluent2_args)
                clauses.append(Iff(member1, member2))

            return And(clauses).simplify() if clauses else TRUE()

        # No sets equality
        else:
            new_left = self._transform_expression(old_problem, new_problem, left)
            new_right = self._transform_expression(old_problem, new_problem, right)
            return Equals(new_left, new_right).simplify()

    def _transform_expression(
        self, old_problem: Problem, new_problem: Problem, node: FNode
    ) -> FNode:
        """
        Transform expressions recursively.
        Delegates to specific handlers based on node type.
        """
        if node.is_fluent_exp():
            return self._transform_fluent_exp(old_problem, new_problem, node)
        elif node.is_parameter_exp() or node.is_variable_exp() or node.is_constant():
            return node
        elif node.is_set_member():
            return self._transform_member(new_problem, node)
        elif node.is_set_subseteq():
            return self._transform_subseteq(new_problem, node)
        elif node.is_set_disjoint():
            return self._transform_disjoint(new_problem, node)
        elif node.is_set_cardinality():
            return self._transform_cardinality(old_problem, new_problem, node)
        elif node.is_set_add() or node.is_set_remove():
            return self._transform_add_remove(new_problem, node)
        elif node.is_set_union():
            return self._transform_union(new_problem, node)
        elif node.is_equals():
            return self._transform_equality(old_problem, new_problem, node)
        else:
            em = new_problem.environment.expression_manager
            new_args = [
                self._transform_expression(old_problem, new_problem, arg)
                for arg in node.args
            ]
            if node.is_exists() or node.is_forall():
                return em.create_node(
                    node.node_type, tuple(new_args), tuple(node.variables())
                ).simplify()
            return em.create_node(node.node_type, tuple(new_args)).simplify()

    # ==================== ACTION TRANSFORMATION ====================

    def _transform_effect(
        self, old_problem: Problem, new_problem: Problem, effect: Effect
    ) -> Union[Effect, List[Effect], None]:
        """Transform one effect, dispatching to the proper set-operation handler."""
        if effect.value.is_set_add() or effect.value.is_set_remove():
            return self._transform_add_remove_effect(old_problem, new_problem, effect)
        elif effect.value.is_set_union():
            return self._transform_union_effect(old_problem, new_problem, effect)
        elif effect.value.is_set_intersect():
            return self._transform_intersect_effect(old_problem, new_problem, effect)
        elif effect.value.is_set_difference():
            return self._transform_difference_effect(old_problem, new_problem, effect)
        elif effect.value.is_set_constant():
            return self._transform_set_constant_effect(old_problem, new_problem, effect)
        else:
            # Non-set value: transform recursively.
            new_fluent = self._transform_expression(
                old_problem, new_problem, effect.fluent
            )
            new_value = self._transform_expression(
                old_problem, new_problem, effect.value
            )
            new_condition = self._transform_expression(
                old_problem, new_problem, effect.condition
            )

            if new_condition.is_false():
                return None

            return Effect(
                new_fluent, new_value, new_condition, effect.kind, effect.forall
            )

    def _transform_add_remove_effect(
        self, old_problem: Problem, new_problem: Problem, effect: Effect
    ):
        """
        Transform: set_fluent := set_fluent.add(elem) or set_fluent.remove(elem)
        Into: set_fluent(elem, ...) := True/False

        When elem is a dynamic value (fluent or parameter) of int-type, expand into
        one conditional effect per possible value in the range.
        """
        set_expr = effect.value.arg(0)
        element = effect.value.arg(1)
        assert (
            set_expr.is_fluent_exp()
            or set_expr.is_constant()
            or set_expr.is_parameter_exp()
        ), "Nesting of Set methods not supported!"
        assert effect.fluent == set_expr, (
            "Assignment to different set not supported with Add/Remove"
        )

        new_value = TRUE() if effect.value.is_set_add() else FALSE()
        new_condition = self._transform_expression(
            old_problem, new_problem, effect.condition
        )
        set_type = set_expr.type
        assert isinstance(set_type, _SetType)
        elements_type = set_type.elements_type
        assert elements_type is not None
        new_fluent = self._fluent_mapping[set_expr.fluent().name]

        # Case: element is a dynamic int expression (fluent or complex expression)
        # expand into one conditional effect per value in the int range
        if elements_type.is_int_type() and not element.is_int_constant():
            assert isinstance(elements_type, _IntType)
            lower, upper = elements_type.lower_bound, elements_type.upper_bound
            assert lower is not None and upper is not None
            expanded_effects = []
            for v in range(lower, upper + 1):
                elem_obj = self._to_element_object(new_problem, elements_type, v)
                # Guard: only apply this effect when element == v
                guard = Equals(element, Int(v))
                combined_cond = (
                    And(new_condition, guard).simplify()
                    if not new_condition.is_true()
                    else guard
                )
                fluent_expr = new_fluent(ObjectExp(elem_obj), *set_expr.args)
                expanded_effects.append(
                    Effect(
                        fluent_expr,
                        new_value,
                        combined_cond,
                        effect.kind,
                        effect.forall,
                    )
                )
            return expanded_effects

        # Case: element is a constant int or a user-type value — simple direct effect
        new_fluent_expr = self._transform_expression(
            old_problem, new_problem, effect.value
        )
        return Effect(
            new_fluent_expr, new_value, new_condition, effect.kind, effect.forall
        )

    def _transform_union_effect(
        self, old_problem: Problem, new_problem: Problem, effect: Effect
    ) -> Union[Effect, List[Effect], None]:
        """
        Transform: result_set := set1 u set2
        Into: for each object o: result_set(o) := set1(o) || set2(o)
        """
        return self._transform_set_assignment_effect(old_problem, new_problem, effect)

    def _transform_intersect_effect(
        self, old_problem: Problem, new_problem: Problem, effect: Effect
    ) -> List[Effect]:
        """
        Transform: result_set := set1 ∩ set2
        Into: for each object o: result_set(o) := set1(o) & set2(o)
        """
        return self._transform_set_assignment_effect(old_problem, new_problem, effect)

    def _transform_difference_effect(
        self, old_problem: Problem, new_problem: Problem, effect: Effect
    ):
        """
        Transform: result_set := set1 \\ set2
        Into: for each object o: result_set(o) := set1(o) & ¬set2(o)
        """
        return self._transform_set_assignment_effect(old_problem, new_problem, effect)

    def _transform_set_constant_effect(
        self, old_problem: Problem, new_problem: Problem, effect: Effect
    ):
        """
        Transform: set_fluent := {obj1, obj2, ...}
        Into: set_fluent(obj1) := True, set_fluent(obj2) := True,
              set_fluent(others) := False
        """
        return self._transform_set_assignment_effect(old_problem, new_problem, effect)

    def _transform_set_assignment_effect(
        self, old_problem: Problem, new_problem: Problem, effect: Effect
    ) -> List[Effect]:
        """Encode a complete assignment ``target_set := set_expression``."""
        assert effect.fluent.is_fluent_exp()
        set_type = effect.fluent.type
        assert isinstance(set_type, _SetType)
        elements_type = set_type.elements_type
        target = self._fluent_mapping[effect.fluent.fluent().name]
        condition = self._transform_expression(
            old_problem, new_problem, effect.condition
        )

        new_effects = []
        for element in self._enumerate_elements(new_problem, elements_type):
            element_exp = ObjectExp(element)
            membership = self._get_element_membership_expr(
                effect.value, element_exp, new_problem
            )
            target_bit = target(element_exp, *effect.fluent.args)
            new_effects.append(
                Effect(
                    target_bit,
                    TRUE(),
                    And(condition, membership).simplify(),
                    effect.kind,
                    effect.forall,
                )
            )
            new_effects.append(
                Effect(
                    target_bit,
                    FALSE(),
                    And(condition, Not(membership)).simplify(),
                    effect.kind,
                    effect.forall,
                )
            )
        return new_effects

    def _find_affected_fluents(self, expression: FNode) -> List[FNode]:
        """Extract all fluent expressions from an expression tree."""
        if expression.is_fluent_exp():
            return [expression]
        fluents = []
        for arg in expression.args:
            fluents.extend(self._find_affected_fluents(arg))
        return fluents

    def _exactly_k_combinations(self, arguments: List[FNode], k: int) -> List[FNode]:
        """Generate all formulas where exactly k arguments are true."""
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

    def _add_card_effect_to_action(
        self,
        new_problem,
        action: InstantaneousAction,
        card: FNode,
        old_value: FNode,
        new_effects: List[Effect],
        equality_conditions: List[FNode],
        effect_condition: Optional[FNode] = None,
    ):
        """Add conditional effects to maintain cardinality helper fluents."""
        if effect_condition is None:
            effect_condition = TRUE()
        card_expr = self._cardinality_registry[card.fluent().name]
        if card_expr.is_fluent_exp():
            # Quantified variables belong to the expression that reads the
            # cardinality. Update the instance written by this action instead.
            substitutions: Dict[Expression, Expression] = {}
            for equality in equality_conditions:
                if equality.arg(1).is_variable_exp():
                    substitutions.setdefault(equality.arg(1), equality.arg(0))
            card = card.substitute(substitutions)
            equality_conditions = [
                equality.substitute(substitutions).simplify()
                for equality in equality_conditions
            ]
        # A complete assignment to a tracked set replaces every membership
        # value.  Recompute its cardinality from the resulting expression,
        # rather than from the number of generated Boolean effects.
        if card_expr.is_fluent_exp() and (
            old_value.is_set_constant()
            or old_value.is_set_union()
            or old_value.is_set_intersect()
            or old_value.is_set_difference()
        ):
            card_type = card_expr.type
            assert isinstance(card_type, _SetType)
            elements_type = card_type.elements_type
            memberships = [
                self._get_element_membership_expr(
                    old_value, ObjectExp(element), new_problem
                )
                for element in self._enumerate_elements(new_problem, elements_type)
            ]
            matching_condition = And(*equality_conditions).simplify()
            for cardinality in range(len(memberships) + 1):
                exact_values = self._exactly_k_combinations(memberships, cardinality)
                action.add_effect(
                    card,
                    cardinality,
                    And(
                        effect_condition,
                        matching_condition,
                        Or(*exact_values),
                    ).simplify(),
                )
            return

        if old_value.is_set_add() or old_value.is_set_remove():
            for new_effect in new_effects:
                membership = new_effect.fluent
                adding = old_value.is_set_add()
                condition = And(
                    new_effect.condition,
                    equality_conditions,
                    Not(membership) if adding else membership,
                ).simplify()
                self._record_cardinality_delta(
                    card, membership, 1 if adding else -1, condition
                )
            return

        raise NotImplementedError(
            f"Cardinality update for {old_value} is not supported."
        )

    def _record_cardinality_delta(self, card, membership, delta, condition):
        # Removing the same element under two active conditions changes the
        # cardinality only once. The membership guard uses the pre-action state.
        updates = self._cardinality_deltas.setdefault(card, {})
        key = (membership, delta)
        updates[key] = Or(updates.get(key, FALSE()), condition).simplify()

    def _add_combined_cardinality_effects(self, action):
        """Emit mutually exclusive effects for the total cardinality change."""

        def literals(expression):
            if expression.is_and():
                return {term for arg in expression.args for term in literals(arg)}
            return {expression}

        def disjoint(left, right):
            terms = literals(left) | literals(right)
            values: Dict[FNode, FNode] = {}
            for term in terms:
                if term.is_false() or (term.is_not() and term.arg(0) in terms):
                    return True
                if term.is_equals():
                    expression, value = term.args
                    if expression.is_constant():
                        expression, value = value, expression
                    if value.is_constant():
                        if expression in values and values[expression] != value:
                            return True
                        values[expression] = value
            return False

        for card, updates in self._cardinality_deltas.items():
            terms = [(delta, guard) for (_, delta), guard in updates.items()]
            totals: Iterable[Tuple[int, FNode]]
            # Dynamic SetAdd/SetRemove can produce one exclusive case per
            # element. Preserve that linear encoding instead of enumerating it.
            if all(disjoint(a[1], b[1]) for a, b in itertools.combinations(terms, 2)):
                totals = terms
            else:
                totals_by_delta = {0: TRUE()}
                for delta, condition in terms:
                    next_totals: Dict[int, FNode] = {}
                    for total, guard in totals_by_delta.items():
                        for change, branch in ((0, Not(condition)), (delta, condition)):
                            enabled = And(guard, branch).simplify()
                            if enabled.is_false():
                                continue
                            value = total + change
                            next_totals[value] = Or(
                                next_totals.get(value, FALSE()), enabled
                            ).simplify()
                    totals_by_delta = next_totals
                totals = totals_by_delta.items()
            for delta, condition in totals:
                if condition.is_false() or delta == 0:
                    continue
                add = (
                    action.add_increase_effect
                    if delta > 0
                    else action.add_decrease_effect
                )
                add(card, abs(delta), condition)

    def _generate_card_effects(
        self,
        old_problem: Problem,
        new_problem: Problem,
        action: InstantaneousAction,
        transformed: List[Tuple[Effect, Union[Effect, List[Effect], None]]],
    ) -> InstantaneousAction:
        """Generate cardinality updates once all helper fluents have been registered."""
        new_action = action.clone()
        new_action.clear_effects()
        self._cardinality_deltas.clear()

        for old_effect, new_effects in transformed:
            if new_effects is None:
                continue
            if not isinstance(new_effects, list):
                new_effects = [new_effects]
            for new_effect in new_effects:
                new_action._add_effect_instance(new_effect)

            for card_name, card_expr in self._cardinality_registry.items():
                affected_fluents = self._find_affected_fluents(card_expr)
                tracked_fluents = []
                equality_conditions = []
                for tracked_fluent in affected_fluents:
                    if old_effect.fluent.fluent().name != tracked_fluent.fluent().name:
                        continue
                    all_match = True
                    for old_effect_arg, tracked_arg in zip(
                        old_effect.fluent.args, tracked_fluent.args
                    ):
                        if old_effect_arg == tracked_arg:
                            continue
                        elif (
                            old_effect_arg.is_parameter_exp()
                            or tracked_arg.is_variable_exp()
                        ):
                            equality_conditions.append(
                                Equals(old_effect_arg, tracked_arg)
                            )
                        else:
                            all_match = False
                            break
                    if not all_match:
                        continue
                    tracked_fluents.append(tracked_fluent)

                if not tracked_fluents:
                    continue

                card_parameters = [
                    a.parameter() if a.is_parameter_exp() else a.variable()
                    for a in card_expr.args
                    if a.is_parameter_exp() or a.is_variable_exp()
                ]
                card_fluent = new_problem.fluent(card_name)(*card_parameters)

                self._add_card_effect_to_action(
                    new_problem,
                    new_action,
                    card_fluent,
                    old_effect.value,
                    new_effects,
                    equality_conditions,
                    self._transform_expression(
                        old_problem, new_problem, old_effect.condition
                    ),
                )

        self._add_union_cardinality_effects(new_problem, new_action)
        self._add_combined_cardinality_effects(new_action)
        return new_action

    def _compile(
        self,
        problem: "up.model.AbstractProblem",
        compilation_kind: "up.engines.CompilationKind",
    ) -> CompilerResult:
        """Main compilation"""
        assert isinstance(problem, Problem)

        if type(problem) is Problem:
            new_problem = Problem(problem.name, problem.environment)
            problem._clone_to_without_actions_and_metrics(new_problem)
        else:
            new_problem = problem.clone()
            new_problem.clear_actions()
            new_problem.clear_quality_metrics()
        new_problem.name = f"{self.name}_{problem.name}"
        new_problem.clear_fluents()
        new_problem.clear_goals()
        new_problem.clear_axioms()
        new_problem.explicit_initial_values.clear()

        self._fluent_mapping.clear()
        self._cardinality_registry.clear()
        self._union_cardinalities.clear()
        new_to_old: Dict[Action, Optional[Action]] = {}

        # Transform set fluents
        self._transform_fluents(problem, new_problem)

        # Transform actions (preconditions only, effects later)
        temp_actions = []
        for action in problem.actions:
            assert isinstance(action, InstantaneousAction), (
                "SetFluentsRemover supports only instantaneous actions."
            )
            new_action = action.clone()
            new_action.name = get_fresh_name(new_problem, action.name)
            new_action.clear_preconditions()

            # Transform preconditions
            for precondition in action.preconditions:
                new_precondition = self._transform_expression(
                    problem, new_problem, precondition
                )
                if new_precondition.is_false():
                    new_action.add_precondition(FALSE())
                    break
                new_action.add_precondition(new_precondition)
            temp_actions.append(new_action)

        # Transform goals
        for goal in problem.goals:
            new_goal = self._transform_expression(problem, new_problem, goal)
            new_problem.add_goal(new_goal)

        # Register cardinalities used in every action before generating updates.
        transformed_effects = [
            [
                (effect, self._transform_effect(problem, new_problem, effect))
                for effect in action.effects
            ]
            for action in temp_actions
        ]
        final_actions = []
        for temp_action, old_action, effects in zip(
            temp_actions, problem.actions, transformed_effects
        ):
            final_action = self._generate_card_effects(
                problem, new_problem, temp_action, effects
            )
            final_actions.append(final_action)
            new_problem.add_action(final_action)
            new_to_old[final_action] = old_action

        # Transform quality metrics
        for qm in problem.quality_metrics:
            if qm.is_minimize_action_costs():
                new_problem.add_quality_metric(
                    updated_minimize_action_costs(
                        qm, new_to_old, new_problem.environment
                    )
                )
            else:
                new_problem.add_quality_metric(qm)

        return CompilerResult(
            new_problem, partial(replace_action, map=new_to_old), self.name
        )
