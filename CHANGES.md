# Compiler Bug Fixes and Domain Changes

## Context

These changes were made while debugging the **labyrinth** planning domain in two variants:

- `domain.pddl` — card-based labyrinth (array of cards, robot tracks identity)
- `1_domain.pddl` — set-based labyrinth (array of direction-sets, robot tracks 2D position as bounded-integer fluents)

---

## Bug 1 — IPAR expression cache contaminates across actions (workaround in domain)

**File:** `docs/extensions/domains/labyrinth/pddl-extension/domain.pddl`

### Root cause

`IntParameterActionsRemover._transform_expression` uses a cache keyed by `(id(node), instantiations)`.
When processing a `forall` quantifier, the range variable is appended to `instantiations` to form `full_inst`, but this extended tuple is used as the cache key for sub-expressions **without** incorporating the per-action `int_params` mapping.

Because different actions can share the same FNode id and produce tuples of the same shape (e.g., a 2-element tuple `(row, col)` in a move action and a 2-element `(action_param, range_var)` in a rotation action), the cache returns stale results from a previous action.

Concretely: `rotate_col_down_0` with `forall ?r` at `r=1` caches
`(id(read_rc), (0,1)) → card_at[1][0]`, and later `move_north_0_1` reads that entry as `card_at[0][1]` — a wrong cell.
This made the compiled rotation actions read from and write to incorrect grid positions, producing invalid plans.

### Fix (workaround)

The cache bug is in `int_parameter_actions_remover.py`. As a domain-level workaround, all `forall` quantifiers in the rotation actions were replaced with explicit 4-element conjunctions, so the IPAR cache path for quantifiers is never exercised on these actions:

```pddl
; Before (triggers cache collision):
:precondition (forall (?r - idx) (not (= (robot_at) (read (card_at) ?r ?c))))
:effect       (forall (?r - idx) (when (>= ?r 1) (write ((card_at) (- ?r 1) ?c) (read (card_at) ?r ?c))))

; After (explicit, cache-safe):
:precondition (and
    (not (= (robot_at) (read (card_at) 0 ?c)))
    (not (= (robot_at) (read (card_at) 1 ?c)))
    (not (= (robot_at) (read (card_at) 2 ?c)))
    (not (= (robot_at) (read (card_at) 3 ?c))))
:effect (and
    (write ((card_at) 0 ?c) (read (card_at) 1 ?c))
    ...
```

The same pattern was applied to all four rotation actions (`rotate_col_up`, `rotate_col_down`, `rotate_row_left`, `rotate_row_right`).

**Note:** The underlying cache bug in `int_parameter_actions_remover.py` remains. The proper fix is to include `int_params` in the cache key: `cache_key = (id(node), instantiations, tuple(sorted(int_params.items())))`.

---

## Bug 2 — SetsRemover: missing handler for set-fluent-to-set-fluent copy effect

**File:** `unified_planning/engines/compilers/sets_remover.py`
**Method:** `_transform_effect` / new method `_transform_set_copy_effect`

### Root cause

After `ARRAYS_REMOVING`, a rotation action's `write` effect becomes a set-valued assignment of one array cell to another — e.g. `card_at(i0, ic) := card_at(i3, ic)`, where both sides have type `set{direction}`.

`SetsRemover._transform_effect` had no branch for this pattern (`value.is_fluent_exp() and value.type.is_set_type()`), so it fell through to the generic `else` branch, which tried to call `_transform_expression` on a set-typed fluent expression. This raised:

```
UPExpressionDefinitionError: In FluentExp, fluent: card_at has arity 3 but 2 parameters were passed.
```

### Fix

Added a new dispatch branch in `_transform_effect`:

```python
elif effect.value.is_fluent_exp() and effect.value.type.is_set_type():
    return self._transform_set_copy_effect(old_problem, new_problem, effect)
```

And implemented `_transform_set_copy_effect`, which expands the set copy per element using **conditional effects** to avoid non-constant boolean assignments (see Bug 3):

```python
def _transform_set_copy_effect(self, old_problem, new_problem, effect):
    # target_set := source_set  →  for each elem:
    #   when (condition AND source(elem)): target(elem) := true
    #   when (condition AND NOT source(elem)): target(elem) := false
    ...
    for elem in all_elements:
        target_expr = target_fluent(elem, *effect.fluent.args)
        source_expr = source_fluent(elem, *effect.value.args)
        cond_true  = And(new_condition, source_expr)
        cond_false = And(new_condition, Not(source_expr))
        new_effects.append(Effect(target_expr, TRUE(),  cond_true,  effect.kind, effect.forall))
        new_effects.append(Effect(target_expr, FALSE(), cond_false, effect.kind, effect.forall))
```

**Why conditional effects and not `target(elem) := source(elem)`?** PDDL has no predicate-to-predicate assignment syntax. UP's `PDDLWriter` would raise `UPProblemDefinitionError` unless `rewrite_bool_assignments=True`, which `pddl_planner.py` defaults to `False`. Emitting conditional effects here avoids touching the planner configuration.

---

## Bug 3 — SetsRemover: effect re-adding loop loses INCREASE/DECREASE kind

**File:** `unified_planning/engines/compilers/sets_remover.py`
**Location:** `_transform_actions` effect-reconstruction loop (~line 953)

### Root cause

When SETS_REMOVING reconstructs a transformed action's effects, it called `add_effect(...)` for every effect regardless of kind:

```python
for new_effect in new_effects:
    new_action.add_effect(new_effect.fluent, new_effect.value,  # always ASSIGN!
                          new_effect.condition, new_effect.forall)
```

`add_effect` always creates an `EffectKind.ASSIGN` effect. Any `INCREASE` or `DECREASE` effect that passed through `_transform_effect` unchanged (the `else` branch correctly preserves `effect.kind`) was silently converted to `ASSIGN` here.

**Observed symptom:** `1_domain.pddl`'s movement actions use `(decrease (robot-row) 1)`. After SETS_REMOVING, the effect became `robot-row := 1` — the robot's row was "set to the delta" rather than decremented. All movement actions were no-ops, making the problem unsolvable. Fast-Downward returned `UNSOLVABLE_INCOMPLETELY`.

### Fix

Dispatch by effect kind, matching the pattern already used in IPAR:

```python
for new_effect in new_effects:
    if new_effect.is_increase():
        new_action.add_increase_effect(new_effect.fluent, new_effect.value,
                                       new_effect.condition, new_effect.forall)
    elif new_effect.is_decrease():
        new_action.add_decrease_effect(new_effect.fluent, new_effect.value,
                                       new_effect.condition, new_effect.forall)
    else:
        new_action.add_effect(new_effect.fluent, new_effect.value,
                              new_effect.condition, new_effect.forall)
```

---

## New pipeline: `iasi`

**File:** `docs/extensions/domains/compilation_solving.py`

Added a new compilation pipeline for domains that combine **arrays-of-sets** and **bounded-integer fluents** (like `1_domain.pddl`) targeting classical planners (e.g., Fast Downward):

```python
'iasi': [
    CompilationKind.INT_PARAMETER_ACTIONS_REMOVING,
    CompilationKind.ARRAYS_REMOVING,
    CompilationKind.SETS_REMOVING,
    CompilationKind.INTEGERS_REMOVING,
    CompilationKind.USERTYPE_FLUENTS_REMOVING,
]
```

**Order rationale:**
1. `IPAR` first — grounds integer action parameters so ARRAYS_REMOVING sees concrete indices.
2. `ARRAYS_REMOVING` — converts the `grid: array[4][4][dir_set]` to indexed set-typed fluents `card_at(i, j): set{direction}`.
3. `SETS_REMOVING` — converts set-typed fluents to boolean-indexed predicates `card_at(d, i, j): bool`. Must come before `INTEGERS_REMOVING` because the set elements are direction objects, not integers.
4. `INTEGERS_REMOVING` — converts bounded-integer fluents (`robot-row`, `robot-col`) to object-typed fluents, expanding `increase`/`decrease` effects to conditional object transitions.
5. `USERTYPE_FLUENTS_REMOVING` — converts object-typed fluents to boolean predicates (one-hot encoding), making the problem fully propositional for classical planners.

**Why not `sci` or `scin`?** `sci` applies `SETS_REMOVING` before `IPAR`, so the grid (an array of sets) hasn't been flattened yet and the set compiler can't enumerate its indices. `scin` keeps cardinality as numeric functions and requires a numeric planner (ENHSP), not Fast Downward.

---

## Bug 4 — SetsRemover: `_transform_difference_effect` has wrong signature and mutates action directly

**File:** `unified_planning/engines/compilers/sets_remover.py`
**Method:** `_transform_difference_effect`

### Root cause

`_transform_difference_effect` was defined with an extra `new_action: Action` parameter:

```python
def _transform_difference_effect(self, new_problem: Problem, new_action: Action, effect: Effect):
```

Its call-site in `_transform_effect`, however, only passes two arguments:

```python
return self._transform_difference_effect(new_problem, effect)
```

Python maps `effect` to the `new_action` slot and raises `TypeError: missing 1 required positional argument: 'effect'`. Additionally, the method body called `new_action.add_effect(...)` directly instead of collecting effects in a list and returning them — inconsistent with every other effect-transform method (`_transform_intersect_effect`, `_transform_union_effect`, etc.), and incompatible with the cardinality post-processing in `_generate_card_effects` that consumes the returned list.

This caused a complete failure for any domain whose actions contain set-difference effects.

### Fix

Removed the `new_action` parameter, changed the body to collect effects in a list, and returned that list — matching the pattern of all sibling methods:

```python
def _transform_difference_effect(self, new_problem: Problem, effect: Effect) -> List[Effect]:
    new_effects = []
    ...
    for elem in elements:
        new_effects.append(Effect(new_fluent_expr, TRUE(), new_condition, effect.kind, effect.forall))
    return new_effects
```

Also corrected Python `True` literals to `TRUE()` (see Bug 5) in the same method.

---

## Bug 5 — SetsRemover: Python `True` literal passed to `Effect()` instead of UP `TRUE()` FNode

**File:** `unified_planning/engines/compilers/sets_remover.py`
**Methods:** `_transform_intersect_effect`, `_transform_difference_effect`

### Root cause

Several `Effect(...)` constructor calls passed Python's `True` (a `bool`) as the value argument instead of UP's `TRUE()` (an `FNode`):

```python
new_effects.append(Effect(new_fluent_expr, True, new_condition, effect.kind, effect.forall))
```

UP's `Effect.__init__` validates that the value is an `FNode`. When `True` is passed, an `AssertionError` is raised with no message — manifesting as the bare `AssertionError:` reported for `domain_sets2.pddl`. By contrast, methods written later (e.g. `_transform_set_constant_effect`, `_transform_add_remove_effect`) already used `TRUE()` / `FALSE()` correctly.

### Fix

Replaced all `True` / `False` literals in effect-value positions with `TRUE()` and `FALSE()` respectively. Affected lines were in `_transform_intersect_effect` (both the fluent×fluent and fluent×constant branches) and `_transform_difference_effect` (all three branches).

---

## Bug 6 — SetsRemover: integer-typed set elements not supported

**File:** `unified_planning/engines/compilers/sets_remover.py`
**Methods:** `_add_set_as_boolean_fluent`, new `_get_elements_for_type`, and seven callers

### Root cause

`_add_set_as_boolean_fluent` opened with a hard assertion:

```python
assert elements_type.is_user_type(), "Only UserType types are supported"
```

Any fluent of type `set{integer[lo,hi]}` (e.g. `set{integer[0,4]}`) triggered this immediately, before any transformation took place. The same restriction propagated silently into every method that enumerated the set's universe via `new_problem.objects(elements_type)` — a call that only works for `UserType` and returns nothing useful for integer types.

### Fix

Added a new helper method:

```python
def _get_elements_for_type(self, elements_type, problem: Problem) -> List[FNode]:
    em = problem.environment.expression_manager
    if elements_type.is_user_type():
        return [em.ObjectExp(obj) for obj in problem.objects(elements_type)]
    elif elements_type.is_int_type():
        lb, ub = elements_type.lower_bound, elements_type.upper_bound
        assert lb is not None and ub is not None, "set element type must be bounded"
        return [em.Int(i) for i in range(lb, ub + 1)]
    else:
        raise NotImplementedError(f"set element type {elements_type} is not supported")
```

The helper always returns FNodes (ObjectExp for UserType, Int for bounded integers), so callers can be written uniformly. Replaced every `list(new_problem.objects(elements_type))` call with `self._get_elements_for_type(elements_type, new_problem)` in:

- `_transform_disjoint`
- `_transform_cardinality`
- `_transform_union_effect`
- `_transform_intersect_effect`
- `_transform_difference_effect`
- `_transform_set_constant_effect` (also updated `constant_elements` extraction to keep elements as FNodes)
- `_transform_set_copy_effect`
- `_transform_equality` (both case 1 and case 2; removed `em.ObjectExp(obj)` wrappers since elements are now already FNodes)

`_add_set_as_boolean_fluent` was updated to build the element parameter using `IntType` when the element type is an integer, removing the old assertion entirely.

---

## Bug 7 — Pipelines: `BOUNDED_TYPES_REMOVING` incorrectly added; `sc`/`sci` missing `IPAR`

**File:** `docs/extensions/domains/compilation_solving.py`
**Pipelines affected:** `uti`, `iasi`, `sci`, `sc`, `all`

### Root cause (A) — `BOUNDED_TYPES_REMOVING` makes `INTEGERS_REMOVING` fail

`BoundedTypesRemover` converts bounded-integer types (e.g. `integer[15,25]`) to *unbounded* `integer` by adding precondition guards. After this step, `IntegersRemover` at line 958 asserts:

```python
lb, ub = fluent.type.lower_bound, fluent.type.upper_bound
assert lb is not None and ub is not None
```

The assertion fires because `BoundedTypesRemover` stripped the bounds. `IntegersRemover` must operate directly on bounded-integer fluents — it is designed to do so. `BOUNDED_TYPES_REMOVING` should NOT precede `INTEGERS_REMOVING`.

### Root cause (B) — `sc`/`sci` pipelines lack `INT_PARAMETER_ACTIONS_REMOVING`

`SetsRemover.supported_kind()` only includes `BOOL_ACTION_PARAMETERS` and `REAL_ACTION_PARAMETERS`, not `BOUNDED_INT_ACTION_PARAMETERS`. Domains with bounded-integer action parameters (e.g. `?a - altitude` where `altitude = integer[0,9]`) trigger `UPNoSuitableEngineAvailableException` when `SETS_REMOVING` runs first. `INT_PARAMETER_ACTIONS_REMOVING` grounds those parameters before `SETS_REMOVING` sees them.

### Fix

| Pipeline | Before | After |
|----------|--------|-------|
| `uti`  | `IPAR → ARRAYS → BOUNDED_TYPES → INTEGERS → USERTYPE` | `IPAR → ARRAYS → INTEGERS → USERTYPE` |
| `iasi` | `IPAR → ARRAYS → SETS → BOUNDED_TYPES → INTEGERS → USERTYPE` | `IPAR → ARRAYS → SETS → INTEGERS → USERTYPE` |
| `sc`   | `SETS → COUNT → USERTYPE` | `IPAR → SETS → COUNT → USERTYPE` |
| `sci`  | `SETS → COUNT_INT → BOUNDED_TYPES → INTEGERS → USERTYPE` | `IPAR → SETS → COUNT_INT → INTEGERS → USERTYPE` |
| `all`  | `SETS → COUNT → USERTYPE → BOUNDED_TYPES → INTEGERS` | `IPAR → SETS → COUNT → USERTYPE → INTEGERS` |

---

## Bug 8 — SetsRemover: `_transform_subseteq` crashes on fluent-fluent subset

**File:** `unified_planning/engines/compilers/sets_remover.py`
**Method:** `_transform_subseteq`

### Root cause

`_transform_subseteq` called `set_expr_1.constant_value()` unconditionally, which asserts `self.is_constant()` inside UP's FNode. When `set_expr_1` is a fluent expression (e.g. `subset(shelf1, shelf3)`), this raises an `AssertionError`.

### Fix

Rewrote `_transform_subseteq` to use the new `_set_membership_expr` helper (see Bug 9), applying the universal subset definition `∀e: (e ∈ set1) → (e ∈ set2)` = `And([Or(Not(set1(e)), set2(e)) for e in elements])`. Updated the call-site in `_transform_expression` to pass `new_problem`.

---

## Bug 9 — SetsRemover: `_transform_union_effect` crashes on nested union trees

**File:** `unified_planning/engines/compilers/sets_remover.py`
**Method:** `_transform_union_effect`

### Root cause

`_transform_union_effect` asserted both operands are fluents/constants/parameters:
```python
assert set1.is_fluent_exp() or set1.is_constant() or set1.is_parameter_exp()
```
When an operand is itself a union node (e.g. `union(union(a, b), c)`), this assertion fires.

### Fix

Added `_set_membership_expr(new_problem, elem, set_expr)` — a recursive helper that computes the boolean "is `elem` a member of `set_expr`?" for any set expression (fluent, union, intersect, difference, constant). Rewrote `_transform_union_effect` (and implicitly `_transform_subseteq`) to use this helper, enabling nested union/intersect/difference trees in effects and preconditions.

---

## Bug 10 — SetsRemover: `_transform_cardinality` KeyError for fluents without defaults

**File:** `unified_planning/engines/compilers/sets_remover.py`
**Method:** `_transform_cardinality`

### Root cause

```python
default_initial_value = len(old_problem.fluents_defaults[old_fluent].constant_value())
```

Used `[]` subscript instead of `.get()`. Fluents created by `ARRAYS_REMOVING` (e.g. indexed set fluents) may have no default value, causing a `KeyError`.

### Fix

Replaced with `.get()` and a fallback of 0:
```python
_def = old_problem.fluents_defaults.get(old_fluent)
default_initial_value = len(_def.constant_value()) if _def is not None else 0
```

---

## Bug 11 — SetsRemover: `_add_card_effect_to_action` missing remove/intersect/difference/copy cases

**File:** `unified_planning/engines/compilers/sets_remover.py`
**Method:** `_add_card_effect_to_action`

### Root cause

The method handled `is_constant()`, `is_set_add()`, and `is_set_union()`, but fell through to `raise NotImplementedError` for:
- `is_set_remove()` — should decrease cardinality by 1 when element was present
- `is_set_intersect()`, `is_set_difference()` — should enumerate new cardinalities
- `is_fluent_exp()` with set type (set copy) — same
- `is_set_union()` with empty `equality_conditions` — was iterating zero times, adding no effects

### Fix

Added handlers for all missing cases. For union/intersect/difference/copy, the pattern is uniform: extract the membership-condition of each element in the result, then use `_exactly_k_combinations` to generate `card := k` effects for each possible cardinality k. For remove, decrease by 1 conditioned on the element being currently present.

---

## Bug 12 — TypeChecker: integer membership range-overlap check too strict

**File:** `unified_planning/model/walkers/type_checker.py`
**Method:** `walk_member`

### Root cause

`walk_member` called `is_compatible_type(element_type, set_type.elements_type)` to validate `x in S`. For integers:
- `Int(0)` has type `integer[0,0]` (exact-value type from `walk_identity_int`)
- `{2,4,6}` has type `set{integer[2,6]}` (range-union of element types from `combine_types`)

`is_compatible_type(integer[0,0], integer[2,6])` checks range overlap: `[0,0]` and `[2,6]` don't overlap → returns False → `walk_member` returns None → `UPTypeError`.

This is semantically wrong: asking whether 0 is in `{2,4,6}` is well-formed (it's just False). Range-overlap is appropriate for *assignment* compatibility but not for *membership queries*.

### Fix

Added a special case in `walk_member`: if both the element type and the set's element type are integer types, accept the expression as well-formed unconditionally (return `BOOL` without the range check).

---

## Bug 13 — IntegersRemover: `_transform_actions` crashes when CP-SAT finds no solutions

**File:** `unified_planning/engines/compilers/integers_remover.py`
**Method:** `_transform_actions` / `_transform_action_integers`

### Root cause

When CP-SAT finds no valid variable assignment for an action (the action is always infeasible, e.g. `set-counter_v0` with precondition `counter < 0` where counter ∈ [0,5]), `_transform_action_integers` returns `[]`. The caller then called `new_problem.add_action([])`, which raised `AttributeError: 'list' object has no attribute 'environment'`.

### Fix

Added a guard in `_transform_actions`:
```python
if not new_action:
    continue  # CP-SAT found no solutions; action is always infeasible, skip it
```

---

## Bug 14 — ArraysRemover: 2D arrays leave out-of-bounds Index slots undefined

**Files:** `unified_planning/engines/compilers/arrays_remover.py`

### Root cause

`_add_array_as_indexed_fluent` uses a single shared `Index` UserType whose object count = `max(dimension sizes)`. For a 2×3 array, the Index objects are `{i0, i1, i2}`. When UP checks if all `(Index, Index)` pairs have initial values, it sees 3×3=9 pairs but only 2×3=6 are actually in the grid. The remaining 3 pairs (row `i2` with any column) have no initial value and no default.

This triggered `UNDEFINED_INITIAL_NUMERIC` (for integer elements) or `UNDEFINED_INITIAL_SYMBOLIC` (for set elements), and no engine supports those features, causing `UPNoSuitableEngineAvailableException`.

### Fix

In `_add_array_as_indexed_fluent`, set a type-appropriate default when none is given:
- Integer element type → default `0`
- Set element type → default `EMPTY_SET()`

Out-of-bounds slots then have a defined (but semantically irrelevant) value and don't trigger the undefined-initial feature.

---

## Domain redesign — `1_domain.pddl` (labyrinth Option A)

**File:** `docs/extensions/domains/labyrinth/pddl-extension/1_domain.pddl`

### Summary

The set-based labyrinth variant was completely redesigned. The previous domain used a single `pos` fluent (type `integer[0,15]`) as the robot's location, encoding row and column via the formula `pos = row * 4 + col`. This forced every movement precondition to carry arithmetic like `(= (robot_at) (+ (* ?r 4) ?c))` and every movement effect to write `(write (robot_at) (+ (* (+ ?r 1) 4) ?c))`.

### Changes

| Aspect | Before | After |
|--------|--------|-------|
| Robot position type | Single `pos - (number 0 15)` | Two `idx - (number 0 3)` fluents: `(robot-row)` and `(robot-col)` |
| Requirements | `:arrays :bounded-integers` | `:arrays :bounded-integers :sets` |
| Movement precondition | `(= (robot_at) (+ (* ?r 4) ?c))` equality check | Separate `(= (robot-row) ?r)` and `(= (robot-col) ?c)` checks, plus in-bounds guard (`>= ?r 1`, `<= ?r 2`, etc.) |
| Movement effect | `(write (robot_at) (+ (* ... 4) ...))` | `(increase (robot-row) 1)` / `(decrease (robot-row) 1)` etc. |
| Rotation precondition | `(forall (?r - idx) (not (= (robot_at) (+ (* ?r 4) ?c))))` — 4 cells via quantifier over the flat index | `(not (= (robot-col) ?c))` — single inequality on the column fluent |
| Domain name | `labyrinth` | `labyrinth2` |

The new design is cleaner because the bounded-integer fluents `robot-row` / `robot-col` encode position structurally, so `increase`/`decrease` effects replace computed writes, and rotation safety needs only one inequality check instead of a forall over a flat encoding.

---

## Instance redesign — `1_i1.pddl`

**File:** `docs/extensions/domains/labyrinth/pddl-extension/1_i1.pddl`

Updated to match the new `labyrinth2` domain:

- Domain reference changed from `labyrinth` to `labyrinth2`.
- Robot position initialised as `(= (robot-row) 0)` / `(= (robot-col) 0)` instead of `(= (robot_at) 0)`.
- Grid initialised with a single `array.mk` expression; the redundant per-cell `(= ((card_at) r c) ...)` initialisations were removed.
- Goal changed from `(= (robot_at) 15)` to `(= (robot-row) 3)` and `(= (robot-col) 3)`.

---

## Data fix — `i1.pddl` card_11 connections

**File:** `docs/extensions/domains/labyrinth/pddl-extension/i1.pddl`

`(connections card_11 W)` was incorrect; corrected to `(connections card_11 S)`.

---

## Reader update — `pddl_reader.py` switched to `1_` files and `iasi` pipeline

**File:** `docs/extensions/domains/pddl_reader.py`

The reader now loads `1_domain.pddl` / `1_i1.pddl` (the redesigned set-based labyrinth) instead of `domain.pddl` / `i1.pddl`, and runs the `iasi` compilation pipeline instead of `uti`. The comment block was also updated to include `iasi` in the list of available pipelines.

---

## Bug 15 — `_add_card_effect_to_action`: `equality_conditions` default `True` causes silent failures

**File:** `unified_planning/engines/compilers/sets_remover.py`
**Method:** `_add_card_effect_to_action`

### Root cause

The parameter `equality_conditions` had a default value of `True` (a bare Python bool). Inside the method, it was passed directly to `And(equality_conditions)` and used in `if equality_conditions:` checks. When the caller omits the argument (no equality constraints), `True` is truthy, so the code entered the equality-iteration loops and called `And(True)`, which UP's expression manager does not accept, or silently iterated zero times.

### Fix

Changed the default to `None` and added an early guard:

```python
def _add_card_effect_to_action(self, ..., equality_conditions=None):
    if equality_conditions is None:
        equality_conditions = []
```

Updated all conditional branches to distinguish between "has equalities" and "has no equalities", so unconditional set operations (no quantifier, no IPAR instantiation) now correctly emit effects without guarding conditions.

---

## Bug 16 — `_add_card_effect_to_action`: no-equality path missing for `is_set_add` + union cardinality

**File:** `unified_planning/engines/compilers/sets_remover.py`
**Method:** `_add_card_effect_to_action`

### Root cause

The `is_set_add` + `card_expr.is_set_union()` branch iterated `for equality in equality_conditions:` without a guard, so when `equality_conditions` was empty (no IPAR instantiation), the loop body never ran and no cardinality effect was emitted — silently producing an incorrect compiled problem.

### Fix

Added an `else` branch for the no-equality case:

```python
if equality_conditions:
    for equality in equality_conditions:
        ...add_increase_effect(...)
else:
    action.add_increase_effect(card, 1, base_cond)
```

---

## Bug 17 — `_add_card_effect_to_action`: `is_set_copy` cardinality update counted FALSE effects

**File:** `unified_planning/engines/compilers/sets_remover.py`
**Method:** `_add_card_effect_to_action`

### Root cause

`_transform_set_copy_effect` emits **two** effects per element: one with value `TRUE()` (element present in result) and one with value `FALSE()` (element absent). The union/intersect/difference/copy branch in `_add_card_effect_to_action` used all effects' conditions to enumerate cardinalities, meaning every element counted twice — once for its TRUE effect and once for its FALSE effect. This produced wrong cardinality bounds.

### Fix

Filter to only TRUE-value effects before enumerating cardinalities:

```python
true_effects = [e for e in new_effects if not e.value.is_false()]
condition_effects = [e.condition for e in true_effects]
```

Only the TRUE-branch conditions represent "this element is in the result set", which is the correct basis for counting.
