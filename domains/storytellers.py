"""storytellers planning domain.

A set of storytellers tell their stories to different audiences.
The storytellers know different (possibly intersecting) sets of stories.
The audiences begin having heard none of the stories.
Entertaining an audience leaves it having heard all the stories a storyteller knows.
A storyteller might tell stories an audience has already heard, adding nothing to the stories the audience knows.

This module implements the storytellers benchmark as a `Domain`.
It is intended to be executed via `run.py`.

The instances use two audiences and five storytellers.
Set GOAL_VARIANT below to "saturation" or "equality" to select both the goal and the corresponding story counts.
In both variants each audience must hear at least half of all stories.
Each size has three fixed seeds: stN uses seed 1, stN_2 seed 2, and stN_3 seed 3.

Stories are shuffled and distributed among the five storytellers.
Each other storyteller independently also knows a story with probability 0.25.
Thus every story is known, every storyteller knows at least one story, and knowledge sets may overlap.
These assignments replace the old disjoint blocks, so results from the old and new instances must not be mixed.

Example:
  python run.py --domain storytellers --instance st10 --compilation S2 --solving fast-downward
"""
from __future__ import annotations
import math
import random
from typing import Dict, Optional

from unified_planning.model import Variable
from unified_planning.shortcuts import (
    Equals,
    Fluent,
    InstantaneousAction,
    Object,
    Problem,
    SetType,
    SetCardinality,
    SetMember,
    SetUnion,
    UserType, Forall, GE, Or,
)

from domains.base import Domain

# Select the goal and its instance sizes together.
GOAL_VARIANT = "saturation"  # "saturation" or "equality"
STORY_COUNTS_BY_GOAL = {
    "saturation": (10, 12, 14, 16, 18, 20, 30, 40, 50, 60, 70, 80, 90, 100),
    "equality": (5, 6, 7, 8, 9, 10, 12, 14, 16, 18, 20),
}
EXTRA_KNOWLEDGE_PROBABILITY = 0.25


def generate_known_stories(n_stories: int, seed: int) -> list[list[int]]:
    """Return the sorted, one-based story IDs known by each storyteller.

    Use a local random generator so generation does not depend on the order
    in which instances are built or affect other domains' random generators.
    """
    if n_stories < 5:
        raise ValueError("At least five stories are required.")
    rng = random.Random(seed)
    stories = list(range(1, n_stories + 1))
    rng.shuffle(stories)
    known_stories = [[] for _ in range(5)]
    for i, story in enumerate(stories):
        owner = i % 5
        known_stories[owner].append(story)
        for storyteller in range(5):
            if storyteller != owner and rng.random() < EXTRA_KNOWLEDGE_PROBABILITY:
                known_stories[storyteller].append(story)
    return [sorted(stories) for stories in known_stories]


class StorytellersDomain(Domain):
    def __init__(self, goal_variant: str = GOAL_VARIANT) -> None:
        if goal_variant not in STORY_COUNTS_BY_GOAL:
            raise ValueError(
                f"Unknown goal variant '{goal_variant}'; choose 'saturation' or 'equality'."
            )
        self._goal_variant = goal_variant
        self._instances: Dict[str, int] = {
            f"st{n}" + ("" if seed == 1 else f"_{seed}"): n
            for n in STORY_COUNTS_BY_GOAL[goal_variant]
            for seed in (1, 2, 3)
        }

    def list_instances(self) -> dict[str, dict]:
        return {
            name: {
                "n_stories": n,
                "seed": self._seed(name),
                "goal": self._goal_variant,
                "extra_knowledge_probability": EXTRA_KNOWLEDGE_PROBABILITY,
                "known_stories": generate_known_stories(n, self._seed(name)),
            }
            for name, n in self._instances.items()
        }

    @staticmethod
    def _seed(instance: str) -> int:
        return int(instance.rsplit("_", 1)[1]) if "_" in instance else 1

    def get_instance(self, instance: Optional[str] = None) -> int:
        """Return the number of stories for a named instance.

        Prefer a pre-defined instance from the table. If the requested instance
        is not present, raise an error.
        """
        if instance and instance in self._instances:
            return self._instances[instance]
        else:
            raise ValueError(
                f"Instance '{instance}' not found for goal '{self._goal_variant}'!"
            )

    def build_problem(self, instance: str | None = None) -> "Problem":
        n_stories = self.get_instance(instance)

        # --- Problem ---
        storytellers_problem = Problem(f'storytellers_{self._goal_variant}_{instance}')

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

        assignments = generate_known_stories(n_stories, self._seed(instance))
        for st_n, story_ids in enumerate(assignments):
            st = storytellers_problem.object(f"st{st_n + 1}")
            st_objects = {objects[story_id - 1] for story_id in story_ids}
            storytellers_problem.set_initial_value(known(st), st_objects)

        # --- Actions ---
        entertain = InstantaneousAction('entertain', st=Storyteller, a=Audience)
        st = entertain.parameter('st')
        a = entertain.parameter('a')
        entertain.add_effect(heard(a), SetUnion(heard(a), known(st)))
        storytellers_problem.add_action(entertain)

        # --- Goals ---
        # Both variants require each audience to hear at least half of the stories.
        a_var = Variable('a_var', Audience)
        storytellers_problem.add_goal(Forall(
            GE(
                SetCardinality(heard(a_var)), math.ceil(n_stories / 2)
            ),
            a_var
        ))

        if self._goal_variant == "saturation":
            # All stories have been heard by at least one audience.
            a_stories = Variable('a_stories', Stories)
            storytellers_problem.add_goal(Forall(
                Or(SetMember(a_stories, heard(a1)), SetMember(a_stories, heard(a2))),
                a_stories
            ))
        else:
            # The two audiences hear the same set; it need not contain all stories.
            storytellers_problem.add_goal(Equals(heard(a1), heard(a2)))

        return storytellers_problem


DOMAIN = StorytellersDomain()
