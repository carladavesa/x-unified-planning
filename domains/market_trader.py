"""market_trader planning domain.

Example:
  python run.py --domain market_trader --instance pfile1 --compilation uti --solving fast-downward
"""
import os
import re
from typing import Optional
from unified_planning.shortcuts import (
    Fluent, IntType, BoolType, UserType,
    InstantaneousAction, Problem,
    GE, LE, And, Plus, Minus, Int, Not, GT,
)
from domains.base import Domain

PDDL_DIR = os.path.join(os.path.dirname(__file__), 'market_trader', 'handcrafted')
INSTANCES: list[str] = [f"pfile{i}" for i in range(1, 21)]


class MarketTraderDomain(Domain):
    def __init__(self):
        self._instances = INSTANCES

    def list_instances(self) -> dict[str, dict]:
        return {k: {} for k in self._instances}

    def _parse_pddl(self, filepath: str) -> dict:
        with open(filepath, 'r') as f:
            content = f.read()
        content = re.sub(r';.*', '', content)
        content = re.sub(r'\s+', ' ', content).strip()

        # Objects
        objects_match = re.search(r'\(:objects\s+(.*?)\s*\)', content, re.DOTALL)
        camels = []
        goods = []
        markets = []
        if objects_match:
            objects_str = objects_match.group(1)
            # Parse groups: "o1 o2 o3 - type"
            for group_match in re.finditer(r'((?:\S+\s+)+?)-\s*(\S+)', objects_str):
                names_str = group_match.group(1).strip()
                type_name = group_match.group(2).lower()
                names = names_str.split()
                if type_name == 'camel':
                    camels.extend(names)
                elif type_name == 'goods':
                    goods.extend(names)
                elif type_name == 'market':
                    markets.extend(names)

        # Numeric values: (= (func args) value)
        prices = {}          # (goods, market) -> price
        on_sale = {}         # (goods, market) -> quantity
        bought = {}          # goods -> initial bought
        drive_cost = {}      # (from, to) -> cost
        cash = 0
        capacity = 0

        for m in re.finditer(r'\(=\s*\(price\s+(\S+)\s+(\S+)\)\s+([\d.]+)\)', content):
            prices[(m.group(1).lower(), m.group(2).lower())] = int(float(m.group(3)))
        for m in re.finditer(r'\(=\s*\(on_sale\s+(\S+)\s+(\S+)\)\s+([\d.]+)\)', content):
            on_sale[(m.group(1).lower(), m.group(2).lower())] = int(float(m.group(3)))
        for m in re.finditer(r'\(=\s*\(bought\s+(\S+)\)\s+([\d.]+)\)', content):
            bought[m.group(1).lower()] = int(float(m.group(2)))
        for m in re.finditer(r'\(=\s*\(drive_cost\s+(\S+)\s+(\S+)\)\s+([\d.]+)\)', content):
            drive_cost[(m.group(1).lower(), m.group(2).lower())] = int(float(m.group(3)))
        m = re.search(r'\(=\s*\(cash\)\s+([\d.]+)\)', content)
        if m:
            cash = int(float(m.group(1)))
        m = re.search(r'\(=\s*\(capacity\)\s+([\d.]+)\)', content)
        if m:
            capacity = int(float(m.group(1)))

        # can_drive predicates
        can_drive = []
        for m in re.finditer(r'\(can_drive\s+(\S+)\s+(\S+)\)', content):
            can_drive.append((m.group(1).lower(), m.group(2).lower()))

        # at_ predicates: (at_ camel market)
        at_init = {}
        for m in re.finditer(r'\(at_\s+(\S+)\s+(\S+)\)', content):
            at_init[m.group(1).lower()] = m.group(2).lower()

        # Goal: (<= VAL (cash)) or (>= (cash) VAL)
        goal_cash = 0
        goal_match = re.search(r'\(:goal\s*(.*?)\)\s*\)\s*$', content, re.DOTALL)
        if goal_match:
            goal_str = goal_match.group(1)
            m = re.search(r'\(<=\s+([\d.]+)\s+\(cash\)\)', goal_str)
            if m:
                goal_cash = int(float(m.group(1)))
            else:
                m = re.search(r'\(>=\s*\(cash\)\s+([\d.]+)\)', goal_str)
                if m:
                    goal_cash = int(float(m.group(1)))

        return {
            'camels': camels,
            'goods': goods,
            'markets': markets,
            'prices': prices,
            'on_sale': on_sale,
            'bought': bought,
            'drive_cost': drive_cost,
            'cash': cash,
            'capacity': capacity,
            'can_drive': can_drive,
            'at_init': at_init,
            'goal_cash': goal_cash,
        }

    def get_instance(self, instance: Optional[str] = None) -> dict:
        if not instance or instance not in self._instances:
            raise ValueError(f"Instance '{instance}' not found!")
        problem_path = os.path.join(PDDL_DIR, f"{instance}.pddl")
        if not os.path.exists(problem_path):
            raise ValueError(f"Problem file not found: {problem_path}")
        return self._parse_pddl(problem_path)

    def build_problem(self, instance: str | None = None) -> Problem:
        data = self.get_instance(instance)
        _camels = data['camels']
        _goods = data['goods']
        _markets = data['markets']
        _prices = data['prices']
        _on_sale = data['on_sale']
        _bought_init = data['bought']
        _drive_cost = data['drive_cost']
        _initial_cash = data['cash']
        _initial_capacity = data['capacity']
        _can_drive_init = data['can_drive']
        _at_init = data['at_init']
        _goal_cash = data['goal_cash']

        # ==== Bounds ====
        # capacity: inicial + upgrades possibles. Cada upgrade afegeix 20.
        # El nombre màxim d'upgrades és limitat per cash/500.
        max_upgrades = max(0, _initial_cash // 500)
        capacity_ub = _initial_capacity + max_upgrades * 20 + 20
        # bought: màxim és on_sale de qualsevol goods (o capacity)
        max_on_sale = max(_on_sale.values(), default=0)
        bought_ub = min(capacity_ub, max_on_sale + 10)
        # Llavors on_sale és essencialment static. Agafem el màxim inicial.
        on_sale_ub = max(max_on_sale, 1)
        # price: stàtic
        max_price = max(_prices.values(), default=1)
        price_ub = max_price
        # drive_cost: stàtic
        max_drive_cost = max(_drive_cost.values(), default=0)
        drive_cost_ub = max(max_drive_cost, 1)
        # cash
        cash_ub = _goal_cash + max_price

        problem = Problem('market_trader_problem')

        # Types
        Place = UserType('Place')
        Locatable = UserType('Locatable')
        Camel = UserType('Camel', Locatable)
        Goods = UserType('Goods', Locatable)
        Market = UserType('Market', Place)

        # Objects
        camel_objs = {c: problem.add_object(c, Camel) for c in _camels}
        goods_objs = {g: problem.add_object(g, Goods) for g in _goods}
        market_objs = {m: problem.add_object(m, Market) for m in _markets}

        # Fluents
        at_ = Fluent('at_', BoolType(), t=Camel, p=Place)
        can_drive = Fluent('can_drive', BoolType(), fr=Place, to=Place)
        on_sale = Fluent('on_sale', IntType(0, on_sale_ub), g=Goods, m=Market)
        drive_cost = Fluent('drive_cost', IntType(0, drive_cost_ub), p1=Place, p2=Place)
        price = Fluent('price', IntType(0, price_ub), g=Goods, m=Market)
        bought = Fluent('bought', IntType(0, bought_ub), g=Goods)
        cash = Fluent('cash', IntType(0, cash_ub))
        capacity = Fluent('capacity', IntType(0, capacity_ub))

        problem.add_fluent(at_, default_initial_value=False)
        problem.add_fluent(can_drive, default_initial_value=False)
        problem.add_fluent(on_sale, default_initial_value=Int(0))
        problem.add_fluent(drive_cost, default_initial_value=Int(0))
        problem.add_fluent(price, default_initial_value=Int(0))
        problem.add_fluent(bought, default_initial_value=Int(0))
        problem.add_fluent(cash, default_initial_value=Int(0))
        problem.add_fluent(capacity, default_initial_value=Int(0))


        # Initial values
        for (g, m), v in _prices.items():
            if g in goods_objs and m in market_objs:
                problem.set_initial_value(price(goods_objs[g], market_objs[m]), Int(v))
        for (g, m), v in _on_sale.items():
            if g in goods_objs and m in market_objs:
                problem.set_initial_value(on_sale(goods_objs[g], market_objs[m]), Int(v))
        for g, v in _bought_init.items():
            if g in goods_objs:
                problem.set_initial_value(bought(goods_objs[g]), Int(v))
        for (p1, p2), v in _drive_cost.items():
            if p1 in market_objs and p2 in market_objs:
                problem.set_initial_value(drive_cost(market_objs[p1], market_objs[p2]), Int(v))
        for (p1, p2) in _can_drive_init:
            if p1 in market_objs and p2 in market_objs:
                problem.set_initial_value(can_drive(market_objs[p1], market_objs[p2]), True)
        for c, m in _at_init.items():
            if c in camel_objs and m in market_objs:
                problem.set_initial_value(at_(camel_objs[c], market_objs[m]), True)

        problem.set_initial_value(cash, _initial_cash)
        problem.set_initial_value(capacity, _initial_capacity)

        # ==== Actions ====

        travel = InstantaneousAction('travel', t=Camel, fr=Market, to=Market)
        t, fr, to = travel.parameter('t'), travel.parameter('fr'), travel.parameter('to')
        travel.add_precondition(can_drive(fr, to))
        travel.add_precondition(GE(cash, drive_cost(fr, to)))
        travel.add_precondition(at_(t, fr))
        travel.add_decrease_effect(cash, drive_cost(fr, to))
        travel.add_effect(at_(t, to), True)
        travel.add_effect(at_(t, fr), False)
        problem.add_action(travel)

        buy = InstantaneousAction('buy', t=Camel, g=Goods, m=Market)
        t, g, m = buy.parameter('t'), buy.parameter('g'), buy.parameter('m')
        buy.add_precondition(at_(t, m))
        buy.add_precondition(LE(Plus(70, price(g, m)), cash))
        buy.add_precondition(GE(capacity, 1))
        buy.add_precondition(GT(on_sale(g, m), 0))
        buy.add_decrease_effect(capacity, 1)
        buy.add_increase_effect(bought(g), 1)
        buy.add_decrease_effect(cash, price(g, m))
        problem.add_action(buy)

        upgrade = InstantaneousAction('upgrade')
        upgrade.add_precondition(GE(cash, 570))
        upgrade.add_increase_effect(capacity, 20)
        upgrade.add_decrease_effect(cash, 500)
        problem.add_action(upgrade)

        sell = InstantaneousAction('sell', t=Camel, g=Goods, m=Market)
        t, g, m = sell.parameter('t'), sell.parameter('g'), sell.parameter('m')
        sell.add_precondition(at_(t, m))
        sell.add_precondition(GE(bought(g), 1))
        sell.add_increase_effect(capacity, 1)
        sell.add_decrease_effect(bought(g), 1)
        sell.add_increase_effect(cash, price(g, m))
        problem.add_action(sell)

        # Goal
        problem.add_goal(LE(_goal_cash, cash))

        return problem


DOMAIN = MarketTraderDomain()