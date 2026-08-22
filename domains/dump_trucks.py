"""dump_trucks planning domain.

Trucks deliver packages between locations. Packages are loaded one by one,
and each unload operation dumps the full truck content. Exercises set fluents
(membership, cardinality, union, add/remove).

This module implements the dump_trucks benchmark as a `Domain`.
It is intended to be executed via `run.py`.

Example:
  python run.py --domain dump_trucks --instance dt10 --compilation sc --solving fast-downward
"""
import math
from typing import Dict, Optional

from unified_planning.model import Action, Expression
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
    UserType,
)

from domains.base import Domain

# Instances map a name to the number of packages.
INSTANCES: Dict[str, int] = {
    "dt10": 10,
    "dt12": 12,
    "dt15": 15,
    "dt17": 17,
    "dt20": 20,
}


class DumpTrucksDomain(Domain):
    def __init__(self) -> None:
        self._instances = INSTANCES

    def list_instances(self) -> dict[str, dict]:
        return {k: {"n_packages": v} for k, v in self._instances.items()}

    def get_instance(self, instance: Optional[str] = None) -> int:
        """Return the number of packages for a named instance.

        Prefer a pre-defined instance from the table. If the requested instance
        is not present, raise an error.
        """
        if instance and instance in self._instances:
            return self._instances[instance]
        else:
            raise ValueError(f"Instance '{instance}' not found!")

    def build_problem(self, instance: str | None = None) -> "Problem":
        n_packages = self.get_instance(instance)

        # --- Problem ---
        problem = Problem('dump_trucks_problem')

        Location = UserType('Location')
        l1 = Object('l1', Location)
        l2 = Object('l2', Location)

        Truck = UserType('Truck')
        t1 = Object('t1', Truck)
        t2 = Object('t2', Truck)

        Package = UserType('Package')
        packages = [Object(f'p{i + 1}', Package) for i in range(n_packages)]

        problem.add_objects([l1, l2, t1, t2])
        problem.add_objects(packages)

        loc_of_truck = Fluent('loc_of_truck', Location, t=Truck)      # where a truck is
        pat = Fluent('pat', SetType(Package), l=Location)             # packages at a location
        pin = Fluent('pin', SetType(Package), T=Truck)                # packages in a truck
        connects = Fluent('connects', SetType(Location), l=Location)  # locations connected from a location

        em = problem.environment.expression_manager

        problem.add_fluent(loc_of_truck, default_initial_value=l1)
        problem.add_fluent(pat, default_initial_value=set())
        problem.add_fluent(pin, default_initial_value=set())
        problem.add_fluent(connects, default_initial_value=set())

        problem.set_initial_value(loc_of_truck(t1), l1)
        problem.set_initial_value(loc_of_truck(t2), l2)
        problem.set_initial_value(pat(l1), {*packages})
        problem.set_initial_value(connects(l1), {l2})
        problem.set_initial_value(connects(l2), {l1})

        # --- Actions ---
        move_truck = InstantaneousAction('move_truck', t=Truck, lfrom=Location, lto=Location)
        t = move_truck.parameter('t')
        lfrom = move_truck.parameter('lfrom')
        lto = move_truck.parameter('lto')
        move_truck.add_precondition(SetMember(lto, connects(lfrom)))
        move_truck.add_precondition(Equals(loc_of_truck(t), lfrom))
        move_truck.add_effect(loc_of_truck(t), lto)

        load_truck = InstantaneousAction('load_truck', p=Package, t=Truck, l=Location)
        p = load_truck.parameter('p')
        t = load_truck.parameter('t')
        l = load_truck.parameter('l')
        load_truck.add_precondition(Equals(l, loc_of_truck(t)))
        load_truck.add_precondition(SetMember(p, pat(l)))
        load_truck.add_precondition(LT(SetCardinality(pin(t)), 6))
        load_truck.add_effect(pat(l), SetRemove(p, pat(l)))
        load_truck.add_effect(pin(t), SetAdd(p, pin(t)))

        unload_truck = InstantaneousAction('unload_truck', t=Truck, l=Location)
        t = unload_truck.parameter('t')
        l = unload_truck.parameter('l')
        unload_truck.add_precondition(Equals(l, loc_of_truck(t)))
        unload_truck.add_effect(pat(l), SetUnion(pat(l), pin(t)))
        unload_truck.add_effect(pin(t), set())

        problem.add_actions([move_truck, load_truck, unload_truck])

        # --- Goals ---
        problem.add_goal(
            And(
                GT(SetCardinality(SetUnion(pin(t1), pin(t2))), 5),
                LT(SetCardinality(pin(t1)), SetCardinality(pin(t2)))
            )
        )

        # --- Costs ---
        costs: Dict[Action, Expression] = {
            move_truck: Int(1), load_truck: Int(1), unload_truck: Int(1)
        }
        problem.add_quality_metric(MinimizeActionCosts(costs))

        return problem


DOMAIN = DumpTrucksDomain()