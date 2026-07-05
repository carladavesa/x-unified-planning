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
"""This module defines the integer parameter actions remover and range variable remover compiler."""
from itertools import product
from unified_planning.exceptions import UPProblemDefinitionError
from unified_planning.model.fnode import FNode
import unified_planning.engines as engines
from collections import OrderedDict
from unified_planning.engines.mixins.compiler import CompilationKind, CompilerMixin
from unified_planning.engines.results import CompilerResult
from unified_planning.model import Problem, InstantaneousAction, Action, ProblemKind, Fluent, MinimizeActionCosts, \
    RangeVariable, OperatorKind, Effect, Axiom, Expression
from unified_planning.model.problem_kind_versioning import LATEST_PROBLEM_KIND_VERSION
from unified_planning.engines.compilers.utils import get_fresh_name, lift_action_instance
from unified_planning.plans import ActionInstance
from typing import Dict, List, Optional, Tuple, OrderedDict, Union
from functools import partial
from unified_planning.shortcuts import Int, FALSE, TRUE, Exists, Forall


# Sentinel returned by _transform_array_access when an index is a valid concrete
# integer but falls outside the array's declared bounds.  Distinct from None, which
# means the index could not be evaluated to a concrete integer at all.
_OOB = object()


class IntParameterActionsRemover(engines.engine.Engine, CompilerMixin):
    """
    Compiler that removes integer parameters from actions by instantiating them.

    Transforms:
    1. Integer action parameters -> grounded instantiated actions for each valid integer value
    2. Range variables -> expanded quantifiers over concrete integer ranges.
    3. Array accesses with integer-parameter indices  ->  the same read/write chain with
       concrete integer constants substituted in place of the parameters.

       Crucially, the base array fluent itself is *not* renamed or split.  A read like
       ``(read (read card_at r) c)`` with ``r=1, c=0`` becomes
       ``(read (read card_at 1) 0)`` — the declared fluent ``card_at`` is unchanged and
       the expression remains a proper ARRAY_READ node that the C++ backend understands
       natively.  Creating an indexed-name alias (``card_at[1][0]``) would produce a
       FLUENT_EXP referencing a fluent that is never declared in the compiled problem,
       breaking the proto fluent registry that the backend relies on.

    Example:
        action(p: Int[1,3]) with precondition p < 2
    Becomes:
        action_p1 (where p=1), action_p2 (where p=2), action_p3 (where p=3)
        But only action_p1 is created since 1 < 2 is true, while 2 < 2 and 3 < 2 are false.

    Dead-action pruning — boundary actions
    ──────────────────────────────────────
    A common PDDL design pattern uses preconditions to guard against boundary
    parameter values.  Consider a sliding-tile action:

        (:action move_up
            :parameters (?i ?j - (number 0 3))
            :precondition (= (blank_row) (- ?i 1))
            :effect       (write ((board) (- ?i 1) ?j) (read (board) ?i ?j)) ...)

    When IPAR instantiates ?i=0 it produces:

        move_up_0_j:
            precondition: (= blank_row -1)          ← always false; blank_row ∈ [0,3]
            effect:       (write board[-1][j] ...)   ← index -1 is out of bounds

    The action is unreachable at runtime (the precondition prevents it), so the
    out-of-bounds write can never execute.  However, the C++ SemanticValidationPass
    performs static analysis on every action it receives and would raise an error
    on the -1 index before any plan search begins.

    IPAR handles this by detecting, after substitution and simplification, that a
    transformed precondition contains an equality of the form

        (= <bounded-int-fluent> <constant-outside-its-type-range>)

    and discarding the entire action.  This is implemented in
    ``_precondition_is_infeasible`` and called from ``_create_instantiated_action``.
    The same pattern covers upper-boundary cases: instantiating ?i=N-1 into
    ``(= blank_row (+ ?i 1))`` yields ``(= blank_row N)``, which is equally infeasible.

    Important distinctions:
    - This pruning applies *only to preconditions*, not goals.  An out-of-bounds
      constant in a goal (e.g., ``(= (score) 99)`` for score ∈ [0,5]) is a domain
      error that should make the problem UNSOLVABLE — IPAR preserves it so the
      planner can report the correct status.
    - The check runs on the *transformed* precondition (after parameter substitution
      and UP's algebraic simplifier), not on the raw expression.  ``(- ?i 1)`` at
      ?i=0 is simplified to ``Int(-1)`` by the expression manager before the type
      range test is applied.
    - It is *not* called on goals, conditional-effect conditions, or effect values —
      only on action preconditions where an infeasible conjunct makes the whole
      action unreachable.
    """

    def __init__(self):
        engines.engine.Engine.__init__(self)
        CompilerMixin.__init__(self, CompilationKind.INT_PARAMETER_ACTIONS_REMOVING)
        self.domains: Dict[str, List[Tuple[int, ...]]] = {}
        self._expression_cache: Dict[Tuple[int, Tuple[int, ...]], FNode] = {}
        # Maps base fluent name → (int_param_indices, {int_vals_tuple: grounded_fluent})
        self._int_param_fluents: Dict[str, Tuple[Tuple[int, ...], Dict[Tuple[int, ...], Fluent]]] = {}

    @property
    def name(self):
        return "ipar"

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
        supported_kind.set_fluents_type("SET_FLUENTS")
        supported_kind.set_conditions_kind("NEGATIVE_CONDITIONS")
        supported_kind.set_conditions_kind("DISJUNCTIVE_CONDITIONS")
        supported_kind.set_conditions_kind("EQUALITIES")
        supported_kind.set_conditions_kind("EXISTENTIAL_CONDITIONS")
        supported_kind.set_conditions_kind("UNIVERSAL_CONDITIONS")
        supported_kind.set_conditions_kind("COUNTING")
        supported_kind.set_conditions_kind("MEMBERING")
        supported_kind.set_conditions_kind("RANGE_VARIABLES")
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
        return problem_kind <= IntParameterActionsRemover.supported_kind()

    @staticmethod
    def supports_compilation(compilation_kind: CompilationKind) -> bool:
        return compilation_kind == CompilationKind.INT_PARAMETER_ACTIONS_REMOVING

    @staticmethod
    def resulting_problem_kind(
        problem_kind: ProblemKind, compilation_kind: Optional[CompilationKind] = None
    ) -> ProblemKind:
        new_kind = problem_kind.clone()
        new_kind.unset_parameters("BOUNDED_INT_ACTION_PARAMETERS")
        new_kind.unset_conditions_kind("RANGE_VARIABLES")
        return new_kind

    # ======================== UTILITY METHODS ========================

    def _save_array_domain(self, fluent: Fluent):
        """
        Extract and cache valid array positions for a fluent.
        Stores all combinations of valid indices in self.domains, accounting for undefined positions if specified.
        """
        current_type = fluent.type
        domain_ranges = []
        dimensions = []

        while current_type.is_array_type():
            dimensions.append(current_type.size)
            domain_ranges.append(range(current_type.size))
            current_type = current_type.elements_type

        all_positions = list(product(*domain_ranges))

        if fluent.undefined_positions is not None:
            valid_positions = [
                pos for pos in all_positions
                if pos not in fluent.undefined_positions
            ]
        else:
            valid_positions = all_positions

        self.domains[fluent.name] = valid_positions

    # ==================== RANGE VARIABLE TRANSFORMATION ====================

    def _extract_variables(self, variables: List) -> Tuple[Tuple, Dict[str, Tuple[int, int]]]:
        """Separate regular variables from range variables."""
        regular_vars = []
        range_vars = {}
        for var in variables:
            if isinstance(var, RangeVariable):
                range_vars[var.name] = (var.initial, var.last)
            else:
                regular_vars.append(var)
        return tuple(regular_vars), range_vars

    def _update_range_vars(
            self, range_vars: Dict[str, Tuple[int, int]], int_params: Dict[str, int], instantiations: Tuple[int, ...]
    ) -> Dict[str, Tuple[int, int]]:
        """
        Evaluate range expressions with current parameter values.
        Substitutes integer parameter instantiations into range expressions so that quantified variables have concrete bounds.
        """
        updated = {}
        for var_name, (initial, last) in range_vars.items():
            initial_str = str(initial)
            last_str = str(last)
            for param_name, param_idx in int_params.items():
                param_value = str(instantiations[param_idx])
                initial_str = initial_str.replace(param_name, param_value)
                last_str = last_str.replace(param_name, param_value)

            updated[var_name] = (eval(initial_str), eval(last_str))
        return updated

    def _get_range_instantiations(self, ranges: Dict[str, Tuple[int, int]]) -> List[Tuple[int, ...]]:
        """Generate all combinations of values for range variables."""
        if not ranges:
            return [()]
        range_iterables = [
            range(start, end + 1)
            for start, end in ranges.values()
        ]
        return list(product(*range_iterables))

    # ==================== EXPRESSION TRANSFORMATION ====================

    def _transform_quantifier(
            self,
            old_problem: Problem,
            new_problem: Problem,
            node: FNode,
            int_params: Dict[str, int],
            instantiations: Tuple[int, ...],
    ) -> FNode:
        """
        Transform forall/exists by expanding range variables.
        Replaces range variables with concrete instantiations, then expands the quantifier into a
        conjunction/disjunction over valid value ranges.
        """
        regular_vars, range_vars = self._extract_variables(node.variables())

        if not range_vars:
            # No range variables: keep quantifier
            new_args = [
                self._transform_expression(old_problem, new_problem, arg, int_params, instantiations)
                for arg in node.args
            ]
            new_args = self._handle_none_args(node.node_type, new_args)
            if new_args is None:
                return None
            em = old_problem.environment.expression_manager
            return em.create_node(node.node_type, tuple(new_args), regular_vars).simplify()

        # Update ranges with current parameter values
        updated_ranges = self._update_range_vars(range_vars, int_params, instantiations)

        # Expand range variables
        expanded_int_params = int_params.copy()
        for var_name in range_vars.keys():
            expanded_int_params[var_name] = len(expanded_int_params)

        # Get all instantiations for range variables
        range_instantiations = self._get_range_instantiations(updated_ranges)

        # Expand quantifier body for each instantiation
        expanded_args = []
        for range_inst in range_instantiations:
            full_inst = instantiations + range_inst
            for arg in node.args:
                transformed = self._transform_expression(
                    old_problem, new_problem, arg, expanded_int_params, full_inst
                )
                if transformed is not None:
                    expanded_args.append(transformed)
        if not expanded_args:
            # Empty range: forall over nothing is vacuously True; exists over nothing is False.
            # Returning None here caused the action to be silently discarded downstream.
            em = new_problem.environment.expression_manager
            return em.TRUE() if node.is_forall() else em.FALSE()

        # Combine with appropriate operator
        em = new_problem.environment.expression_manager
        new_op = OperatorKind.AND if node.is_forall() else OperatorKind.OR
        new_node = em.create_node(new_op, tuple(expanded_args)).simplify()
        if regular_vars:
            if node.is_exists():
                return Exists(new_node, *regular_vars)
            elif node.is_forall():
                return Forall(new_node, *regular_vars)
            else:
                raise UPProblemDefinitionError(f"Error handling quantifiers!")
        return new_node

    def _transform_fluent_exp(
            self,
            old_problem: Problem,
            new_problem: Problem,
            node: FNode,
            int_params: Dict[str, int],
            instantiations: Tuple[int, ...]
    ) -> Union[FNode, None]:
        """
        Transform fluent expression by substituting integer parameters and array indices.
        For array fluents, extracts concrete indices; for regular fluents, substitutes parameter values into arguments.
        """
        # Transform arguments first
        new_args = []
        for arg in node.args:
            transformed = self._transform_expression(old_problem, new_problem, arg, int_params, instantiations)
            if transformed is None:
                return None
            new_args.append(transformed)

        fluent_base_name = node.fluent().name.split('[')[0]
        old_fluent = old_problem.fluent(fluent_base_name)
        # Array fluent: extract indices from name
        if old_fluent.type.is_array_type():
            # Whole-array reference: let ARRAYS_REMOVING expand it into element-wise comparisons.
            return node.fluent()(*new_args)

        # Integer-parametered fluent: substitute concrete int values into grounded name
        if fluent_base_name in self._int_param_fluents:
            int_param_indices, grounded = self._int_param_fluents[fluent_base_name]
            int_vals = tuple(new_args[i].constant_value() for i in int_param_indices)
            int_param_set = set(int_param_indices)
            non_int_args = [new_args[i] for i in range(len(new_args)) if i not in int_param_set]
            grounded_fluent = grounded.get(int_vals)
            if grounded_fluent is None:
                return None
            return grounded_fluent(*non_int_args)

        # Regular fluent
        return node.fluent()(*new_args)

    def _handle_none_args(self, node_type: OperatorKind, args: List) -> Union[List[FNode], None]:
        """Handle undefined (None) values in arguments based on operator semantics."""
        if None not in args:
            return args
        if node_type in {OperatorKind.OR, OperatorKind.COUNT, OperatorKind.EXISTS}:
            filtered = [arg for arg in args if arg is not None]
            return filtered if filtered else None
        elif node_type == OperatorKind.IMPLIES:
            if args[1] is None and args[0] is not None:
                return [args[0], FALSE()]
            return [TRUE(), args[1]] if args[1] is not None else None
        else:
            return None

    def _transform_generic(
            self,
            old_problem: Problem,
            new_problem: Problem,
            node: FNode,
            int_params: Dict[str, int],
            instantiations: Tuple[int, ...]
    ) -> Union[FNode, None]:
        """Generic recursive transformation."""
        em = old_problem.environment.expression_manager

        new_args = [
            self._transform_expression(old_problem, new_problem, arg, int_params, instantiations)
            for arg in node.args
        ]
        new_args = self._handle_none_args(node.node_type, new_args)
        if new_args is None or new_args == []:
            return None
        return em.create_node(node.node_type, tuple(new_args)).simplify()

    def _transform_array_access(
            self,
            old_problem: Problem,
            new_problem: Problem,
            node: FNode,
            int_params: Dict[str, int],
            instantiations: Tuple[int, ...]
    ) -> Union[FNode, None]:
        """
        Transform an ARRAY_READ or ARRAY_WRITE node by substituting concrete integer
        values into its index positions while preserving the read/write node structure.

        The key design constraint is that array fluents must remain declared in the
        compiled problem for the proto fluent registry to be consistent.  An earlier
        approach created indexed-name aliases like ``board[1][2]`` (a new Fluent object
        whose name encodes the concrete indices), but those objects were never registered
        via ``new_problem.add_fluent()``.  Every downstream consumer — the proto writer,
        the C++ backend, and any subsequent UP compiler — resolves fluent references by
        looking up the declared fluent list.  A FLUENT_EXP that points to an undeclared
        fluent therefore causes a ``Fluent definition not found`` error at runtime.

        The fix: keep the original ARRAY_READ / ARRAY_WRITE node type and only replace
        the index sub-expressions with concrete integer constants.

        Examples (N-dimensional, any mix of read/write layers):

            (read (read card_at r) c)    with r=1, c=0
                → (read (read card_at 1) 0)      -- ARRAY_READ chain, base fluent unchanged

            (write (write board i) j)    with i=2, j=3
                → (write (write board 2) 3)       -- ARRAY_WRITE chain, base fluent unchanged

        The base array fluent (``card_at``, ``board``) is never renamed, so its declaration
        in ``new_problem.fluents`` is always present and the backend can resolve every
        read/write expression it encounters.

        Returns None when an index evaluates to a non-integer, or when the resulting
        index tuple falls outside the pre-computed valid domain (out-of-bounds access).
        """
        em = old_problem.environment.expression_manager

        # Unwind the read/write chain from outermost to innermost, recording each
        # layer as (is_write: bool, concrete_index: FNode).  The outermost layer
        # corresponds to the last (highest) dimension; the innermost to dimension 0.
        layers: List[Tuple[bool, FNode]] = []
        current = node
        while current.is_array_read() or current.is_array_write():
            is_write = current.is_array_write()
            idx = self._transform_expression(
                old_problem, new_problem, current.arg(1), int_params, instantiations
            )
            if idx is None or not idx.is_int_constant():
                # Index could not be evaluated to a concrete integer — cannot transform.
                return None
            layers.append((is_write, idx))
            current = current.arg(0)

        if not current.is_fluent_exp():
            return None

        base_fluent = current.fluent()
        base_name = base_fluent.name.split('[')[0]

        # Build the index tuple in innermost-first order (dim0, dim1, ...) by reversing
        # the outermost-first collection order, then validate against the domain.
        indices = tuple(idx.constant_value() for _, idx in reversed(layers))
        if indices not in self.domains.get(base_name, []):
            # OOB or undefined position: the access is provably impossible.
            # Return the _OOB sentinel (not None) so the caller can distinguish
            # this case from a non-evaluable index and propagate infeasibility.
            return _OOB

        # Transform the base fluent's own arguments (e.g., object-typed parameters).
        new_fluent_args = [
            self._transform_expression(old_problem, new_problem, a, int_params, instantiations)
            for a in current.args
        ]
        if any(a is None for a in new_fluent_args):
            return None

        # Rebuild the read/write chain from innermost to outermost with concrete indices.
        # reversed(layers) processes innermost first, which is correct: the innermost
        # read/write is applied directly to the base fluent expression, and each
        # subsequent iteration wraps the result with the next outer operation.
        result: FNode = em.FluentExp(base_fluent, new_fluent_args)
        for is_write, concrete_idx in reversed(layers):
            result = em.ArrayWrite(result, concrete_idx) if is_write \
                else em.ArrayRead(result, concrete_idx)

        return result

    def _transform_expression(
            self,
            old_problem: Problem,
            new_problem: Problem,
            node: FNode,
            int_params: Optional[Dict[str, int]] = None,
            instantiations: Optional[Tuple[int, ...]] = None,
    ) -> Union[FNode, None]:
        """
        Transform expression by substituting integer parameters and expanding quantifiers, replacing:
        - Integer parameters with their instantiated constant values
        - Array accesses with indexed fluent names
        - Range variables with concrete bounds
        """
        if int_params is None:
            int_params = {}
        if instantiations is None:
            instantiations = ()
        cache_key = (id(node), instantiations)
        if cache_key in self._expression_cache:
            if self._expression_cache[cache_key] is None:
                return None
            return self._expression_cache[cache_key]

        # Base cases
        if node.is_constant() or node.is_timing_exp():
            return node

        # If experssion wraps a RangeVariable, substitute with integer
        if node.is_variable_exp():
            v = node.variable()
            if isinstance(v, RangeVariable) and v.name in int_params:
                param_index = int_params[v.name]
                result = Int(instantiations[param_index])
                self._expression_cache[cache_key] = result
                return result
            return node

        if node.is_parameter_exp():
            param_name = node.parameter().name
            if param_name in int_params:
                param_index = int_params[param_name]
                result = Int(instantiations[param_index])
                self._expression_cache[cache_key] = result
                if result is None:
                    return None
                return result
            return node

        if node.is_range_variable_exp():
            var_name = node.range_variable().name
            if var_name in int_params:
                param_index = int_params[var_name]
                result = Int(instantiations[param_index])
                self._expression_cache[cache_key] = result
                return result
            return node

        if node.is_fluent_exp():
            result = self._transform_fluent_exp(old_problem, new_problem, node, int_params, instantiations)
            self._expression_cache[cache_key] = result
            if result is None:
                return None
            return result

        if node.is_forall() or node.is_exists():
            result = self._transform_quantifier(old_problem, new_problem, node, int_params, instantiations)
            self._expression_cache[cache_key] = result
            if result is None:
                return None
            return result

        if node.is_array_read() or node.is_array_write():
            result = self._transform_array_access(old_problem, new_problem, node, int_params, instantiations)
            if result is _OOB:
                # Index is a valid concrete integer but out of bounds: the access is
                # provably impossible, so the surrounding expression is infeasible.
                # Propagate None so _handle_none_args / precondition checks prune the action.
                self._expression_cache[cache_key] = None
                return None
            if result is not None:
                self._expression_cache[cache_key] = result
                return result
            # _transform_array_access returned None: index could not be evaluated to a
            # concrete integer (state fluent as index, nested array read, etc.).
            # Fall through to generic transformation — preserve the ARRAY_READ/ARRAY_WRITE
            # structure so the C++ SemanticValidationPass can detect and report the error.

        result = self._transform_generic(old_problem, new_problem, node, int_params, instantiations)
        self._expression_cache[cache_key] = result
        if result is None:
            return None
        return result

    # ==================== FLUENT TRANSFORMATION ====================

    def _transform_int_param_fluents(self, problem: Problem, new_problem: Problem):
        """
        Replace each integer-parametered fluent with one parameterless grounded fluent per
        combination of integer values, and rewrite explicit initial values accordingly.

        Example: val[i: int[0,4]] → val_0, val_1, val_2, val_3, val_4
        Non-integer parameters (user-type) are preserved in each grounded fluent's signature.
        """
        for fluent in problem.fluents:
            default_value = problem.fluents_defaults.get(fluent)

            # Array fluents are handled by the array-access machinery; keep unchanged.
            if fluent.type.is_array_type():
                new_problem.add_fluent(fluent, default_initial_value=default_value)
                for f, v in problem.explicit_initial_values.items():
                    if f.fluent() == fluent:
                        new_problem.set_initial_value(fluent(*f.args), v)
                continue

            int_param_indices = tuple(
                i for i, p in enumerate(fluent.signature) if p.type.is_int_type()
            )

            if not int_param_indices:
                # No integer parameters: add unchanged and copy initial values.
                new_problem.add_fluent(fluent, default_initial_value=default_value)
                for f, v in problem.explicit_initial_values.items():
                    if f.fluent() == fluent:
                        new_problem.set_initial_value(fluent(*f.args), v)
                continue

            # Build grounded fluents for every combination of integer parameter values.
            int_param_set = set(int_param_indices)
            non_int_signature = OrderedDict(
                (fluent.signature[i].name, fluent.signature[i].type)
                for i in range(len(fluent.signature))
                if i not in int_param_set
            )
            int_ranges = [
                range(fluent.signature[i].type.lower_bound, fluent.signature[i].type.upper_bound + 1)
                for i in int_param_indices
            ]

            grounded: Dict[Tuple[int, ...], Fluent] = {}
            for int_vals in product(*int_ranges):
                grounded_name = fluent.name + "".join(f"_{v}" for v in int_vals)
                new_fluent = Fluent(
                    grounded_name, fluent.type, non_int_signature, fluent.environment
                )
                new_problem.add_fluent(new_fluent, default_initial_value=default_value)
                grounded[int_vals] = new_fluent

            self._int_param_fluents[fluent.name] = (int_param_indices, grounded)

            # Rewrite explicit initial values using the grounded fluent names.
            for f, v in problem.explicit_initial_values.items():
                if f.fluent() != fluent:
                    continue
                int_vals = tuple(f.args[i].constant_value() for i in int_param_indices)
                non_int_args = tuple(f.args[i] for i in range(len(f.args)) if i not in int_param_set)
                grounded_fluent = grounded.get(int_vals)
                if grounded_fluent is not None:
                    new_problem.set_initial_value(grounded_fluent(*non_int_args), v)

    # ==================== ACTION TRANSFORMATION ====================

    def _add_effect_to_action(
            self, action: Action, effect_type: str, fluent: FNode, value: FNode, condition: FNode, forall: Tuple
    ):
        """Add effect to action, dispatching by effect type (assign/increase/decrease)."""
        if effect_type == 'increase':
            action.add_increase_effect(fluent, value, condition, forall)
        elif effect_type == 'decrease':
            action.add_decrease_effect(fluent, value, condition, forall)
        else:
            action.add_effect(fluent, value, condition, forall)

    def _add_single_effect(
            self,
            action: Action,
            effect_type: str,
            fluent: FNode,
            value: FNode,
            condition: FNode,
            original_condition: FNode,
            forall: Tuple
    ) -> bool:
        """
        Add single effect to action with bounds checking.
        Prunes invalid effects (e.g., assignments violating integer bounds).
        Returns False if action should be pruned.
        """
        # Handle unconditional effects
        if original_condition == TRUE():
            if fluent is None or value is None:
                return False
            if fluent.type.is_int_type() and value.is_constant():
                if not fluent.type.lower_bound <= value.constant_value() <= fluent.type.upper_bound:
                    return False
            self._add_effect_to_action( action, effect_type, fluent, value, condition, forall)
        # Handle conditional effects
        else:
            if condition not in [None, FALSE()] and fluent is not None and value is not None:
                if (fluent.type.is_int_type() and value.is_constant() and
                        not fluent.type.lower_bound <= value.constant_value() <= fluent.type.upper_bound):
                    return True
                self._add_effect_to_action(action, effect_type, fluent, value, condition, forall)
        return True

    def _add_instantiated_effect(
            self,
            problem: Problem,
            new_problem: Problem,
            effect: Effect,
            new_action: Action,
            int_param_map: Dict[str, int],
            instantiation: Tuple[int, ...]
    ) -> bool:
        """
        Add single effect to action, handling forall with range variables.
        Expands forall effects over range variables into individual effects for each instantiation.
        """
        if effect.is_increase():
            effect_type = 'increase'
        elif effect.is_decrease():
            effect_type = 'decrease'
        else:
            effect_type = 'none'

        regular_forall, range_vars = self._extract_variables(effect.forall)
        if not range_vars:
            new_fluent = self._transform_expression(problem, new_problem, effect.fluent, int_param_map, instantiation)
            # cells[i] → ArrayRead in read ctx; upgrade to ArrayWrite for effect target.
            if new_fluent is not None and new_fluent.is_array_read():
                em = problem.environment.expression_manager
                new_fluent = em.ArrayWrite(new_fluent.arg(0), new_fluent.arg(1))
            new_value = self._transform_expression(problem, new_problem, effect.value, int_param_map, instantiation)
            new_condition = self._transform_expression(problem, new_problem, effect.condition, int_param_map, instantiation)

            return self._add_single_effect(
                new_action, effect_type, new_fluent, new_value, new_condition, effect.condition, regular_forall
            )

        # Evaluate range variables with current instantiation
        updated_ranges = self._update_range_vars(range_vars, int_param_map, instantiation)

        # Expand forall with range variables
        expanded_int_params = int_param_map.copy()
        for var_name in range_vars.keys():
            expanded_int_params[var_name] = len(expanded_int_params)

        range_insts = self._get_range_instantiations(updated_ranges)
        for range_inst in range_insts:
            full_inst = instantiation + range_inst
            new_fluent = self._transform_expression(problem, new_problem, effect.fluent, expanded_int_params, full_inst)
            # cells[i] → ArrayRead in read ctx; upgrade to ArrayWrite for effect target.
            if new_fluent is not None and new_fluent.is_array_read():
                em = problem.environment.expression_manager
                new_fluent = em.ArrayWrite(new_fluent.arg(0), new_fluent.arg(1))
            new_value = self._transform_expression(problem, new_problem, effect.value, expanded_int_params, full_inst)
            new_condition = self._transform_expression(problem, new_problem, effect.condition, expanded_int_params, full_inst)
            success = self._add_single_effect(
                new_action, effect_type, new_fluent, new_value, new_condition, effect.condition, regular_forall
            )
            if not success:
                return False
        return True

    def _add_instantiated_effects(
            self,
            problem: Problem,
            new_problem: Problem,
            old_action: Action,
            new_action: Action,
            int_param_map: Dict[str, int],
            instantiation: Tuple[int, ...]
    ) -> bool:
        """
        Add all effects to instantiated action.
        Returns True if any valid effects were added, False if action should be pruned.
        """
        for effect in old_action.effects:
            success = self._add_instantiated_effect(
                problem, new_problem, effect, new_action, int_param_map, instantiation
            )
            if not success:
                return False
        # An action with no original effects is a valid no-op (keep it for precondition validation).
        return len(new_action.effects) > 0 or not old_action.effects

    @staticmethod
    def _precondition_is_infeasible(node: FNode) -> bool:
        """Detect a trivially-false precondition arising from boundary parameter instantiation.

        Returns True if ``node``, or any conjunct of an AND ``node``, is an equality of the
        form ``(= <bounded-int-fluent> <integer-constant>)`` where the constant lies
        outside the fluent's declared ``(number lo hi)`` type range.

        Background
        ----------
        IPAR expands each bounded-int action parameter over its full type range, including
        boundary values.  Many PDDL domains guard boundary cases via preconditions rather
        than restricting the parameter range.  A typical pattern:

            (:action move_up
                :parameters (?i - (number 0 3))
                :precondition (= (blank_row) (- ?i 1))  ; blank_row must equal i-1
                :effect (write ((board) (- ?i 1) ...) ...)

        When IPAR instantiates ?i=0 it substitutes and simplifies, producing:

            move_up_0:
                precondition: (= (blank_row) -1)        ; blank_row ∈ [0,3], so always false
                effect:       (write board[-1] ...)      ; index -1 is out of bounds

        This action is unreachable (no state satisfies the precondition) and should be
        discarded.  However, UP's algebraic simplifier does not know about type bounds, so
        ``(= (blank_row) -1)`` is not reduced to ``FALSE()``.  If the action is forwarded
        to the C++ backend, ``SemanticValidationPass`` will raise a runtime error on the
        -1 array index even though that index can never be reached.

        The same pattern occurs at upper boundaries: ``(= (blank_row) 4)`` when
        blank_row ∈ [0,3].

        Implementation notes
        --------------------
        - Recursion into AND is required because UP stores the entire precondition as a
          single AND FNode, not as a flat list of conjuncts.  A top-level equality check
          alone would miss the infeasible conjunct nested inside the AND.
        - Only EQUALS nodes are examined.  Inequality constraints (e.g. ``(> (blank_row) -1)``)
          are not evaluated because they rarely arise from parameter substitution and their
          safe handling would require interval arithmetic.
        - The check is applied only to *preconditions*, never to goals.  An out-of-bounds
          constant in a goal (e.g., ``(= (score) 99)`` for score ∈ [0,5]) is a domain
          modelling error that should make the problem UNSOLVABLE, not silently disappear.
        - This method is called on the *post-transformation* node (after parameter
          substitution and simplification), so arithmetic expressions like ``(- ?i 1)``
          at ?i=0 have already been folded to the concrete integer -1 by the expression
          manager before this check runs.
        """
        if node.is_and():
            return any(IntParameterActionsRemover._precondition_is_infeasible(arg)
                       for arg in node.args)
        if not node.is_equals() or len(node.args) != 2:
            return False
        for sv_side, const_side in [(node.arg(0), node.arg(1)),
                                     (node.arg(1), node.arg(0))]:
            if sv_side.is_fluent_exp() and const_side.is_int_constant():
                ftype = sv_side.fluent().type
                if ftype.is_int_type():
                    v = const_side.constant_value()
                    if not (ftype.lower_bound <= v <= ftype.upper_bound):
                        return True
        return False

    def _create_instantiated_action(
            self,
            problem: Problem,
            new_problem: Problem,
            action: Action,
            regular_params: OrderedDict,
            int_param_map: Dict[str, int],
            instantiation: Tuple[int, ...]
    ) -> Union[Action, None]:
        """
        Create a single instantiated action for a specific integer parameter assignment.

        Transforms all preconditions and effects by substituting the given integer
        parameter values.  Returns None (discards the action) in any of these cases:

        1. A transformed precondition simplifies to FALSE() or None — the action is
           provably unreachable (e.g., ``(< 3 2)`` after constant folding).
        2. A transformed precondition satisfies ``_precondition_is_infeasible`` — it
           equates a bounded-int fluent to a constant outside its declared type range,
           which is the canonical boundary-action pattern (see class docstring and
           ``_precondition_is_infeasible``).
        3. Effect transformation fails or produces no valid effects — typically because
           an array index resolved to an out-of-domain position.

        Pruning here is critical: boundary actions (e.g., move_up_0 where i=0 forces
        blank_row=-1) are dead by construction but their array-write expressions contain
        out-of-bounds indices that ``SemanticValidationPass`` in C++ would reject.
        Discarding them before the protobuf serialisation step prevents false errors.
        """
        # Generate unique name
        action_name = get_fresh_name(new_problem, action.name, list(map(str, instantiation)))
        # Create action with only regular (noninteger) parameters
        assert isinstance(action, InstantaneousAction), "Only InstantaneousActions are supported"
        new_action = InstantaneousAction(action_name, regular_params, action.environment)
        # Transform preconditions
        for precondition in action.preconditions:
            new_precondition = self._transform_expression(
                problem, new_problem, precondition, int_param_map, instantiation
            )
            if new_precondition in [FALSE(), None]:
                return None
            # Boundary-action check: precondition requires a bounded-int fluent to equal
            # a constant outside its type range → action is unreachable, discard it.
            if self._precondition_is_infeasible(new_precondition):
                return None
            new_action.add_precondition(new_precondition)

        # Transform effects
        has_valid_effects = self._add_instantiated_effects(
            problem, new_problem, action, new_action, int_param_map, instantiation
        )
        if not has_valid_effects:
            return None
        return new_action

    def _instantiate_action(
            self, problem: Problem, new_problem: Problem, action: Action
    ) -> List[Tuple[Action, Tuple[int, ...]]]:
        """
        Create all valid instantiations of an action for integer parameters.
        Generates Cartesian product of integer parameter ranges, validates each, and returns list of pairs for valid instances.
        """
        # Separate regular and integer parameters
        regular_params = OrderedDict()
        int_param_map = {}
        int_param_ranges = []

        for param in action.parameters:
            if param.type.is_user_type():
                regular_params[param.name] = param.type
            elif param.type.is_int_type():
                int_param_map[param.name] = len(int_param_map)
                int_param_ranges.append((param.type.lower_bound, param.type.upper_bound))
            else:
                raise UPProblemDefinitionError(f"Parameter type {param.type} not supported")

        # Generate all instantiations
        instantiations = self._get_range_instantiations(
            {f"p{i}": r for i, r in enumerate(int_param_ranges)}
        ) if int_param_ranges else [()]
        result = []
        for inst in instantiations:
            new_action = self._create_instantiated_action(
                problem, new_problem, action, regular_params, int_param_map, inst
            )
            if new_action is not None:
                result.append((new_action, inst))
        return result

    def _transform_actions(self, problem: Problem, new_problem: Problem) -> Dict[Action, Tuple[Action, Tuple[int, ...]]]:
        """Transform all actions by grounding integer parameters."""
        new_to_old = {}
        for action in problem.actions:
            instantiated_actions = self._instantiate_action(problem, new_problem, action)
            for new_action, instantiation in instantiated_actions:
                new_problem.add_action(new_action)
                new_to_old[new_action] = (action, instantiation)
        return new_to_old

    # ==================== AXIOMS TRANSFORMATION ====================

    def _transform_axioms(self, problem: Problem, new_problem: Problem, new_to_old: Dict):
        """
        Transform axioms by replacing integer parameter references.
        Raises an error if axioms contain integer parameters (not yet supported).
        """
        for axiom in problem.axioms:
            for param in axiom.parameters:
                if param.type.is_int_type():
                    raise NotImplementedError(
                        "Integer parameters in axioms are not supported!"
                    )
            params = OrderedDict((p.name, p.type) for p in axiom.parameters)
            new_axiom_name = get_fresh_name(new_problem, axiom.name)
            new_axiom = Axiom(new_axiom_name, params, axiom.environment)

            skip_axiom = False
            new_axiom.set_head(axiom.head.fluent)
            for body in axiom.body:
                new_body = self._transform_expression(problem, new_problem, body)
                if new_body is None:
                    skip_axiom = True
                    break
                else:
                    new_axiom.add_body_condition(new_body)
            if skip_axiom:
                continue
            new_problem.add_axiom(new_axiom)
            new_to_old[new_axiom] = axiom

    # ==================== QUALITY METRICS TRANSFORMATION ====================

    def _transform_quality_metrics(
            self, problem: Problem, new_problem: Problem, new_to_old: Dict[Action, Tuple[Action, Tuple[int, ...]]]
    ):
        """Transform quality metrics, handling action costs with integer parameter substitution."""
        for qm in problem.quality_metrics:
            if qm.is_minimize_sequential_plan_length() or qm.is_minimize_makespan():
                new_problem.add_quality_metric(qm)
            elif qm.is_minimize_action_costs():
                assert isinstance(qm, MinimizeActionCosts)
                new_costs = self._transform_action_costs(qm, new_to_old)
                new_problem.add_quality_metric(
                    MinimizeActionCosts(new_costs, environment=new_problem.environment)
                )
            else:
                new_problem.add_quality_metric(qm)

    def _transform_action_costs(
            self,
            qm: MinimizeActionCosts,
            new_to_old: Dict[Action, Tuple[Action, Tuple[int, ...]]]
    ) -> Dict[Action, Expression]:
        """Transform action costs by substituting integer parameter values."""
        new_costs = {}
        for new_action, (old_action, instantiation) in new_to_old.items():
            if old_action is None:
                continue
            old_cost = qm.get_action_cost(old_action)
            # If cost is a parameter, substitute its instantiated value
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

    # ==================== GOALS TRANSFORMATION ====================
    def _transform_goals(self, problem: Problem, new_problem: Problem):
        for goal in problem.goals:
            transformed = self._transform_expression(problem, new_problem, goal)
            if transformed is not None and transformed != FALSE():
                new_problem.add_goal(transformed)

    def _compile(
        self,
        problem: "up.model.AbstractProblem",
        compilation_kind: "up.engines.CompilationKind",
    ) -> CompilerResult:
        """Main compilation."""
        assert isinstance(problem, Problem)
        self._expression_cache.clear()
        self._int_param_fluents.clear()

        # Create new problem, then rebuild fluents and init from scratch so that
        # integer-parametered fluents can be replaced by their grounded variants.
        new_problem = problem.clone()
        new_problem.name = f"{self.name}_{problem.name}"
        new_problem.clear_fluents()
        new_problem.clear_actions()
        new_problem.clear_axioms()
        new_problem.clear_goals()
        new_problem.clear_quality_metrics()
        new_problem.initial_values.clear()

        # Build array domain cache from original problem fluents.
        for fluent in problem.fluents:
            if fluent.type.is_array_type():
                self._save_array_domain(fluent)

        # Rebuild fluents (grounding integer-parametered ones) and initial values.
        self._transform_int_param_fluents(problem, new_problem)
        new_to_old = self._transform_actions(problem, new_problem)
        self._transform_quality_metrics(problem, new_problem, new_to_old)
        self._transform_axioms(problem, new_problem, new_to_old)
        self._transform_goals(problem, new_problem)

        def _map_back(action_instance, ipar_map=new_to_old):
            old_action, instantiation = ipar_map[action_instance.action]
            em = old_action.environment.expression_manager
            int_iter = iter(instantiation)
            reg_iter = iter(action_instance.actual_parameters)
            full_params = tuple(
                em.Int(next(int_iter)) if p.type.is_int_type() else next(reg_iter)
                for p in old_action.parameters
            )
            return ActionInstance(old_action, full_params)

        return CompilerResult(new_problem, _map_back, self.name)
