"""GoalsAsAxiomsCompiler: rewrite complex goals as derived boolean fluents + axioms.

Applied as the final, optional step of any compilation pipeline. For each
goal that is structurally complex, the goal is replaced by a derived boolean
fluent whose axiom body is the original goal expression.

Benefits planners with native axiom
support (e.g. Fast Downward) by keeping the goal formula flat.
"""
from functools import partial
import unified_planning.engines as engines
from unified_planning.model import Problem, ProblemKind, FNode, Fluent, Axiom
from unified_planning.engines.compilers.utils import (
    replace_action
)
from unified_planning.engines.mixins.compiler import CompilationKind, CompilerMixin
from unified_planning.engines.results import CompilerResult
from unified_planning.model.problem_kind_versioning import LATEST_PROBLEM_KIND_VERSION


class GoalsAsAxiomsCompiler(engines.engine.Engine, CompilerMixin):
    def __init__(self):
        engines.engine.Engine.__init__(self)
        CompilerMixin.__init__(self, CompilationKind.GOALS_AS_AXIOMS)

    @property
    def name(self):
        return "gaa"

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
        return problem_kind <= GoalsAsAxiomsCompiler.supported_kind()

    @staticmethod
    def supports_compilation(compilation_kind):
        return compilation_kind == CompilationKind.GOALS_AS_AXIOMS

    @staticmethod
    def resulting_problem_kind(problem_kind, compilation_kind=None):
        new_kind = problem_kind.clone()
        new_kind.set_fluents_type("DERIVED_BOOLEAN_FLUENTS")
        return new_kind

    def is_complex_goal(self, node):
        """
        True if the goal benefits from being wrapped in an axiom, either because:
        - It would generate Exists quantifiers when translated (e.g., fluent-fluent equality).
        - It is structurally complex (large or/and combinations).
        """
        # Fluent-fluent equality
        if node.is_equals():
            left, right = node.arg(0), node.arg(1)
            if left.is_fluent_exp() and right.is_fluent_exp():
                return True

        # Structural complexity
        if node.is_or() and len(node.args) >= 2:
            return True
        if node.is_and() and len(node.args) >= 2:
            return True
        return any(self.is_complex_goal(arg) for arg in node.args)

    def wrap_as_derived_fluent_axiom(
            self,
            new_problem: Problem,
            body_expr: FNode,
            fluent_name: str,
    ) -> FNode:
        """Wrap a boolean expression in a derived fluent + axiom.

        Creates a new DerivedBoolType fluent with the given name, and an axiom whose
        head is the fluent and whose body is body_expr. Returns the fluent expression
        that can be used in place of body_expr at the call site.

        Useful for keeping goals simple: instead of a disjunctive goal that degrades
        heuristic search, the disjunction is hidden inside an axiom.
        """

        derived_fluent = Fluent(fluent_name, new_problem.environment.type_manager.DerivedBoolType())
        new_problem.add_fluent(derived_fluent, default_initial_value=new_problem.environment.expression_manager.FALSE())

        axiom = Axiom(f"{derived_fluent}")
        axiom.set_head(derived_fluent())
        axiom.add_body_condition(body_expr)
        new_problem.add_axiom(axiom)

        return derived_fluent()

    def _compile(self, problem: Problem, compilation_kind: CompilationKind) -> CompilerResult:
        new_problem = problem.clone()
        new_problem.clear_goals()

        goals = problem.goals
        if len(goals) == 1 and goals[0].is_and():
            goals = list(goals[0].args)

        for i, goal in enumerate(goals):
            if self.is_complex_goal(goal):
                fluent_name = f"goal_{i}"
                new_goal = self.wrap_as_derived_fluent_axiom(new_problem, goal, fluent_name)
                new_problem.add_goal(new_goal)
            else:
                new_problem.add_goal(goal)

        trace_back_map = {a: a for a in new_problem.actions}
        return CompilerResult(
            new_problem,
            partial(replace_action, map=trace_back_map),
            self.name,
        )