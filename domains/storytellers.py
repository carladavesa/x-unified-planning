"""storytellers planning domain.

# A set of storytellers tell their stories to different audiences.
# The storytellers know different (possibly intersecting) sets of stories.
# The audiences begin having heard none of the stories.
# Entertaining an audience leaves it having heard all the stories a storyteller knows.
# A storyteller might tell stories an audience has already heard, adding nothing to the stories the audience knows.

This module implements the dump_trucks benchmark as a `Domain`.
It is intended to be executed via `run.py`.

Example:
  python run.py --domain storytellers --instance st5 --compilation set_count_bool --solving fast-downward
"""
import math
from typing import Dict, Optional

from unified_planning.model import Action, Expression, Variable
from unified_planning.shortcuts import (
    And,
    Equals,
    Fluent,
    GT,
    InstantaneousAction,
    Int,
    LT,
    MinimizeActionCosts,
    Object,
    Problem,
    SetType,
    SetAdd,
    SetCardinality,
    SetMember,
    SetRemove,
    SetUnion,
    UserType, Forall, GE, Or,
)

from domains.base import Domain

# Instances map a name to the number of packages.
INSTANCES: Dict[str, int] = {
    "st5": 5,
    "st10": 10,
    "st12": 12,
    "st15": 15,
    "st17": 17,
    "st20": 20,
}


class StorytellersDomain(Domain):
    def __init__(self) -> None:
        self._instances = INSTANCES

    def list_instances(self) -> dict[str, dict]:
        return {k: {"n_stories": v} for k, v in self._instances.items()}

    def get_instance(self, instance: Optional[str] = None) -> int:
        """Return the number of stories for a named instance.

        Prefer a pre-defined instance from the table. If the requested instance
        is not present, raise an error.
        """
        if instance and instance in self._instances:
            return self._instances[instance]
        else:
            raise ValueError(f"Instance '{instance}' not found!")

    def build_problem(self, instance: str | None = None) -> "Problem":
        n_stories = self.get_instance(instance)

        # --- Problem ---
        storytellers_problem = Problem('storytellers_problem')

        Storyteller = UserType('Storyteller')
        st1 = Object('st1', Storyteller)
        st2 = Object('st2', Storyteller)
        st3 = Object('st3', Storyteller)
        st4 = Object('st4', Storyteller)
        st5 = Object('st5', Storyteller)

        Audience = UserType('Audiences')
        a1 = Object('a1', Audience)
        a2 = Object('a2', Audience)

        storytellers_problem.add_objects([a1, a2, st1, st2, st3, st4, st5])

        objects = []
        Stories = UserType('Stories')
        for i in range(n_stories):
            objects.append(Object(f's{i + 1}', Stories))
        storytellers_problem.add_objects(objects)

        known = Fluent('known', SetType(Stories), st=Storyteller)
        heard = Fluent('heard', SetType(Stories), a=Audience)
        story_set = Fluent('story_set', SetType(Stories))

        storytellers_problem.add_fluent(known, default_initial_value=set())
        storytellers_problem.add_fluent(heard, default_initial_value=set())
        storytellers_problem.add_fluent(story_set, default_initial_value=set())

        # initial state
        storytellers_problem.set_initial_value(story_set, {*objects})

        n_per_st = int(n_stories / 5)
        split = 0
        for st_n in range(5):
            st_objects = []
            st = storytellers_problem.object(f"st{st_n + 1}")
            for n in range(n_per_st):
                st_objects.append(storytellers_problem.object(f's{split + (n + 1)}'))
            split += n_per_st

            storytellers_problem.set_initial_value(known(st), {*st_objects})

        # --- Actions ---
        entertain = InstantaneousAction('entertain', st=Storyteller, a=Audience)
        st = entertain.parameter('st')
        a = entertain.parameter('a')
        entertain.add_effect(heard(a), SetUnion(heard(a), known(st)))
        storytellers_problem.add_action(entertain)

        # --- Goals ---
        # audiences hear at least half of the storie
        a_var = Variable('a_var', Audience)
        storytellers_problem.add_goal(Forall(
            GE(
                SetCardinality(heard(a_var)), math.ceil(n_stories / 2)
            ),
            a_var
        ))

        # saturation: all stories have been heard by at least one of the audiences
        a_stories = Variable('a_stories', Stories)
        storytellers_problem.add_goal(Forall(
            Or(SetMember(a_stories, heard(a1)), SetMember(a_stories, heard(a2))),
            a_stories
        ))

        # equality: all audiences hear the same stories
        #a_var2 = Variable('a_var2', Audience)
        #storytellers_problem.add_goal(
        #    Forall(
        #        Equals(heard(a_var), heard(a_var2)),
        #        a_var, a_var2
        #    )
        #)

        return storytellers_problem


DOMAIN = StorytellersDomain()