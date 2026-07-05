# IPAR Compiler: OG vs. Current — Differences Guide

`unified_planning/engines/compilers/int_parameter_actions_remover.py`  
`unified_planning/engines/compilers/OG_int_parameter_actions_remover.py`

This document explains every meaningful difference between the original (`OG`) and the
current version of the `IntParameterActionsRemover` compiler (IPAR).

---

## Overview

IPAR's job is to eliminate integer action parameters by grounding them: an action
`move(?i: int[0,3])` becomes four concrete actions `move_0`, `move_1`, `move_2`,
`move_3`. It also expands `forall`/`exists` over `RangeVariable`s into flat
conjunctions/disjunctions.

The OG version handled the basic grounding correctly but had several correctness bugs
and an architectural mismatch with the downstream C++ backend regarding how array
fluents are represented. The current version fixes all of these.

---

## Difference 1 — Array fluent representation strategy

**File locations:** `_transform_fluent_exp` (OG line 421, current line 517)

### OG behaviour

When transforming an array fluent access like `board[?i][?j]` with `?i=1, ?j=0`, OG
fabricated a *new Fluent object* whose name encoded the indices:

```python
idx = "".join(f"[{i}]" for i in index_params)
return Fluent(f"{fluent_base_name}{idx}", ...)(*new_args)
# produces a Fluent named "board[1][0]"
```

### Current behaviour

The current version instead builds a proper `ARRAY_READ` chain using the original
declared fluent:

```python
result = old_problem.fluent(fluent_base_name)(*new_args)
for k in index_params:
    result = em.ArrayRead(result, Int(k))
# produces: ArrayRead(ArrayRead(board, 1), 0)
```

### Why it matters

The alias Fluent object (`board[1][0]`) was never registered via
`new_problem.add_fluent()`. Every downstream consumer — the protobuf writer, the C++
backend, any subsequent UP compiler — resolves fluents by looking up the declared
fluent list. A `FLUENT_EXP` pointing to an undeclared fluent causes a
`"Fluent definition not found"` crash at runtime.

The `ARRAY_READ`/`ARRAY_WRITE` chain is transparent to all consumers: the base fluent
(`board`) remains declared and unchanged.

The current version also adds a guard for **whole-array references** (e.g.
`pancake_stack()` used in a goal equality with no indices in the name). These are passed
through as-is so the downstream `arrays_remover` compiler can expand them into
element-wise comparisons.

---

## Difference 2 — Range variable substitution inside forall/exists bodies

**File locations:** `_transform_expression` (OG line 496, current lines 700–731)

### OG behaviour

OG treated all `variable_exp` nodes as a base case — a pass-through:

```python
if node.is_constant() or node.is_variable_exp() or node.is_timing_exp():
    return node
```

This meant that `RangeVariable` occurrences inside a `forall`/`exists` body were
**never substituted** with their concrete integer values. The expansion loop in
`_transform_quantifier` would produce copies of the symbolic variable rather than
integers.

### Current behaviour

The current version splits `is_variable_exp` out of the base case and adds dedicated
handling for both node kinds that can carry a `RangeVariable`:

```python
# is_variable_exp: only pass through for regular UP variables
if node.is_variable_exp():
    v = node.variable()
    if isinstance(v, RangeVariable) and v.name in int_params:
        return Int(instantiations[int_params[v.name]])
    return node

# Dedicated branch for is_range_variable_exp() nodes
if node.is_range_variable_exp():
    var_name = node.range_variable().name
    if var_name in int_params:
        return Int(instantiations[int_params[var_name]])
    return node
```

### Why it matters

Without this fix, a `forall (?k - range(0, n)) (= (cell ?k) 0)` would expand into
copies of the symbolic `?k` expression instead of `0, 1, ..., n-1`. The resulting
precondition/effect would be semantically wrong and would likely cause a type error
or silent incorrect behaviour downstream.

---

## Difference 3 — Effect target: ArrayRead → ArrayWrite upgrade

**File locations:** `_add_instantiated_effect` (OG line 596, current lines 902–906 and 927–929)

### OG behaviour

OG called `_transform_expression` on an effect's fluent target, which (in OG) returned
an indexed-name `Fluent`. This could be directly used as a write target.

### Current behaviour

Because `_transform_expression` now returns an `ArrayRead` chain for array fluents,
using the result directly as an effect target would produce a read node where a write
is needed. The current version upgrades it:

```python
if new_fluent is not None and new_fluent.is_array_read():
    em = problem.environment.expression_manager
    new_fluent = em.ArrayWrite(new_fluent.arg(0), new_fluent.arg(1))
```

This applies both in the no-range-var path and in the range-var expansion loop.

### Why it matters

The C++ backend and the UP effect model distinguish `ARRAY_READ` from `ARRAY_WRITE`.
An effect that writes to a cell must produce an `ARRAY_WRITE` node; using `ARRAY_READ`
would silently model a read (i.e., no state change) or crash validation.

---

## Difference 4 — Boundary-action pruning: `_precondition_is_infeasible`

**File locations:** new static method at current line 961; called from `_create_instantiated_action` at current line 1069

### OG behaviour

OG discarded an action only if a transformed precondition simplified to `FALSE()` or
`None`. UP's algebraic simplifier does not know about fluent type bounds, so a
precondition like `(= blank_row -1)` (where `blank_row ∈ [0,3]`) was not simplified to
`FALSE()` and the action was forwarded to the C++ backend.

### Current behaviour

A new static method checks whether any equality conjunct in a transformed precondition
equates a bounded-int fluent to a constant outside its declared type range:

```python
@staticmethod
def _precondition_is_infeasible(node: FNode) -> bool:
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
```

It is called in `_create_instantiated_action` after transformation and simplification:

```python
if self._precondition_is_infeasible(new_precondition):
    return None
```

### Why it matters

This handles the **boundary-action pattern** common in PDDL domains. Consider:

```pddl
(:action move_up
    :parameters (?i - (number 0 3))
    :precondition (= (blank_row) (- ?i 1))
    :effect (write ((board) (- ?i 1) ?j) ...))
```

At `?i=0`, substitution gives `(= blank_row -1)` and an effect on `board[-1]`. The
action is unreachable (the precondition is always false), but the C++
`SemanticValidationPass` performs static analysis on every action and would raise an
error on the `-1` index before any search begins. Discarding these actions proactively
prevents false validation errors.

**Important restriction:** the check applies only to *preconditions*, never to goals.
An out-of-bounds constant in a goal (e.g. `(= (score) 99)` for `score ∈ [0,5]`) is a
modelling error that should make the problem unsolvable — IPAR preserves it so the
planner can report the correct status.

---

## Difference 5 — Integer-parametered fluent grounding: `_transform_int_param_fluents`

**File locations:** new method at current line 771; called from `_compile` at current line 1233

### OG behaviour

OG left fluents with integer-typed parameters (e.g. `val(?i: int[0,4]): int`) unchanged
in the compiled problem. No grounding of fluent signatures was performed.

### Current behaviour

A new method iterates over all fluents and, for those with integer-typed parameters,
creates one parameterless grounded fluent per combination of integer values:

```
val(?i: int[0,4])  →  val_0, val_1, val_2, val_3, val_4
```

Non-integer parameters are preserved in each grounded fluent's signature. Explicit
initial values are rewritten to reference the grounded fluent names. The mapping is
stored in `self._int_param_fluents` for use by `_transform_fluent_exp` during action
transformation.

---

## Difference 6 — `_compile`: fluent and initial-value reset

**File locations:** `_compile` (OG line 806, current line 1206)

### OG behaviour

OG cloned the problem and only cleared actions, axioms, goals, and quality metrics.
Fluents and initial values from `problem.clone()` were left as-is:

```python
new_problem = problem.clone()
new_problem.clear_actions()
new_problem.clear_axioms()
new_problem.clear_goals()
new_problem.clear_quality_metrics()

for fluent in new_problem.fluents:   # reads from the already-cloned problem
    if fluent.type.is_array_type():
        self._save_array_domain(fluent)
```

### Current behaviour

The current version also clears fluents and initial values, then rebuilds them from
scratch via `_transform_int_param_fluents`:

```python
new_problem = problem.clone()
new_problem.clear_fluents()
new_problem.clear_actions()
new_problem.clear_axioms()
new_problem.clear_goals()
new_problem.clear_quality_metrics()
new_problem.initial_values.clear()

for fluent in problem.fluents:       # reads from the ORIGINAL problem
    if fluent.type.is_array_type():
        self._save_array_domain(fluent)

self._transform_int_param_fluents(problem, new_problem)
```

### Why it matters

The fluent reset is required to support integer-parametered fluent grounding (Difference 5).
Without it, both the original and grounded fluents would coexist in the compiled problem.
Note also that the array domain cache is now built from `problem.fluents` (the original)
rather than `new_problem.fluents` (which at that point has been cleared).

---

## Difference 7 — `_compile`: plan back-mapping closure

**File locations:** `_compile` return statement (OG line 833, current line 1239)

### OG behaviour

OG used the generic `lift_action_instance` utility:

```python
return CompilerResult(
    new_problem, partial(lift_action_instance, map=new_to_old), self.name
)
```

### Current behaviour

The current version uses a custom closure that correctly reconstructs the full parameter
list, interleaving integer instantiation values with regular (user-type) parameters:

```python
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
```

### Why it matters

`lift_action_instance` was designed for compilers that preserve the parameter list
structure. IPAR removes integer parameters entirely from grounded action signatures,
so the generic utility cannot reconstruct the original parameter list. The custom
closure zips the stored integer instantiation tuple back together with the surviving
regular parameters to produce a valid `ActionInstance` referencing the original action.

---

## Difference 8 — Bounds check guard in `_add_single_effect`

**File locations:** `_add_single_effect` (OG line 568, current line 874)

### OG behaviour

```python
if (fluent.type.is_int_type() and
        not fluent.type.lower_bound <= value.constant_value() <= fluent.type.upper_bound):
```

`.constant_value()` was called unconditionally, which crashes if `value` is a fluent
expression rather than a literal constant.

### Current behaviour

```python
if (fluent.type.is_int_type() and value.is_constant() and
        not fluent.type.lower_bound <= value.constant_value() <= fluent.type.upper_bound):
```

The `value.is_constant()` guard prevents the crash for non-constant values.

---

## Difference 9 — No-op action preservation in `_add_instantiated_effects`

**File locations:** `_add_instantiated_effects` return (OG line 644, current line 959)

### OG behaviour

```python
return len(new_action.effects) > 0
```

An action with no effects in the compiled output was always pruned.

### Current behaviour

```python
return len(new_action.effects) > 0 or not old_action.effects
```

If the *original* action had no effects (a deliberate no-op, e.g. an observation or
sensing action), the compiled action is kept. OG would prune it even though it was
a valid action in the original domain.

---

## Summary table

| # | What changed | Impact |
|---|---|---|
| 1 | Array fluent repr: indexed-name alias → `ARRAY_READ` chain | Fixes crash in proto writer / C++ backend |
| 2 | RangeVariable substitution in `is_variable_exp` base case | Fixes silent wrong expansion of `forall`/`exists` bodies |
| 3 | Effect target: `ArrayRead` → `ArrayWrite` upgrade | Fixes write effects on array cells being modelled as reads |
| 4 | `_precondition_is_infeasible` boundary-action pruning | Prevents false C++ `SemanticValidationPass` errors |
| 5 | `_transform_int_param_fluents`: grounds fluent signatures | Enables integer-parametered fluents in compiled problem |
| 6 | `_compile`: clears and rebuilds fluents + initial values | Required by difference 5 |
| 7 | Custom `_map_back` closure for plan lifting | Correctly reconstructs original `ActionInstance` |
| 8 | `value.is_constant()` guard in `_add_single_effect` | Prevents crash on non-constant effect values |
| 9 | No-op action preservation in `_add_instantiated_effects` | Keeps valid effect-free actions from being pruned |

---

# SetsRemover: Integer-Element Set Support

`unified_planning/engines/compilers/sets_remover.py`

This section documents the changes made to `SetsRemover` to support `set{integer[lb,ub]}`
element types end-to-end through the `iasciu` pipeline, enabling FastDownward (and any
PDDL-based solver) to handle domains with integer-element sets.

---

## Background

`SetsRemover` encodes a set fluent `s(params): set{T}` as a Boolean fluent
`s(t, params): bool` where `t` ranges over all elements of type `T`.

The **Original-parser** branch asserted `elements_type.is_user_type()` and rejected
any other element type with a hard crash. When integer-element set support was added
(`set{integer[lb,ub]}`), the new code created:

```python
element_param = model.Parameter("i", elements_type)  # elements_type = integer[0,5]
```

This introduced a `BOUNDED_INT_FLUENT_PARAMETERS` feature into the compiled problem.
No downstream compiler in the `iasciu` pipeline handled that feature, so FastDownward's
PDDL writer crashed with:

```
UPTypeError: PDDL supports only user type parameters
```

---

## Fix: Synthetic UserType mirroring the Original-parser approach

The fix mirrors exactly how the Original-parser handled UserType elements — it just
synthesises the type instead of using a declared one.

### New instance variables (`__init__`)

```python
self._int_type_map: Dict[tuple, object] = {}   # (lb, ub) -> UserType
self._int_obj_map:  Dict[tuple, object] = {}   # (lb, ub, n) -> Object
self._obj_to_int_val: Dict[str, int]   = {}    # obj_name -> integer value (reverse map)
```

### New method: `_get_or_create_int_usertype(lb, ub, new_problem)`

Creates (or retrieves from cache) a synthetic `UserType("Integer_{lb}_{ub}")` and
populates `new_problem` with one object per integer in `[lb, ub]`.

Object names use `iv{lb}_{ub}_{n}` — the bounds prefix avoids collision with
`ArraysRemover`'s `i0, i1, …` Index objects, which share the same problem.

```python
ut = new_problem.environment.type_manager.UserType(f"Integer_{lb}_{ub}")
for n in range(lb, ub + 1):
    obj = up.model.Object(f"iv{lb}_{ub}_{n}", ut)
    new_problem.add_object(obj)
    self._int_obj_map[(lb, ub, n)] = obj
    self._obj_to_int_val[f"iv{lb}_{ub}_{n}"] = n
```

### New method: `_canonicalize_elem(elem, elements_type)`

Maps `Int(n)` FNodes to `ObjectExp(iv{lb}_{ub}_{n})` when `elements_type` is an
integer type; leaves all other FNodes unchanged.

```python
def _canonicalize_elem(self, elem, elements_type):
    if elements_type.is_int_type() and elem.is_int_constant():
        lb, ub = elements_type.lower_bound, elements_type.upper_bound
        n = elem.constant_value()
        return elem.environment.expression_manager.ObjectExp(
            self._int_obj_map[(lb, ub, n)]
        )
    return elem
```

This is the single conversion point; all downstream code that was already correct for
UserType elements works unchanged once elements are ObjectExp.

---

## Changed: `_add_set_as_boolean_fluent`

The `elif elements_type.is_int_type()` branch now calls `_get_or_create_int_usertype`
and uses the resulting UserType as the parameter type:

```python
# Before (produced BOUNDED_INT_FLUENT_PARAMETERS):
element_param = model.Parameter("i", elements_type)

# After (uses a proper UserType, invisible to downstream compilers):
ut = self._get_or_create_int_usertype(lb, ub, new_problem)
element_param = model.Parameter("i", ut)
```

Initial values in the same method are also updated: each element from
`initial_value.constant_value()` (an `Int(n)` FNode) is passed through
`_canonicalize_elem` before being used as the first argument to the new Boolean fluent.

---

## Changed: `_get_elements_for_type`

For integer types, now returns `ObjectExp` nodes from `_int_obj_map` instead of
`Int(n)` FNodes:

```python
# Before:
return [em.Int(i) for i in range(lb, ub + 1)]

# After:
return [em.ObjectExp(self._int_obj_map[(lb, ub, n)]) for n in range(lb, ub + 1)]
```

This makes integer-element iteration identical to UserType-element iteration throughout
every `for elem in elements` loop in the compiler.

---

## Changed: `_transform_member`

Two distinct cases:

**Fluent set** — canonicalize the element argument using the fluent's declared element
type (not the expression's inferred type), then call the mapped Boolean fluent:

```python
elements_type = set_expr.fluent().type.elements_type
element = self._canonicalize_elem(element, elements_type)
new_fluent = self._fluent_mapping[set_expr.fluent().name]
return new_fluent(element, *set_expr.args)
```

**Constant set** — do **not** canonicalize. A constant set like `set.mk(2 4 6)` gets
its element type inferred from its values (e.g. `integer[2,6]`), which may differ from
the domain type (`integer[0,9]`). After IPAR grounding, an element like `Int(0)` may be
outside the constant's inferred range, so canonicalization would raise a `KeyError`.
Instead, direct `Equals` comparison is used; UP's simplifier evaluates it to True/False
at compile time:

```python
or_expr = [Equals(element, e) for e in set_expr.constant_value()]
return Or(*or_expr).simplify()
```

---

## Changed: `_transform_add_remove`

The element argument to `set.add(elem, fluent)` / `set.remove(elem, fluent)` is
also canonicalized using the fluent's element type before calling the Boolean fluent.

---

## Changed: `_set_membership_expr` (constant set branch)

When `elem` is a synthetic UserType object (identified via `_obj_to_int_val`),
membership in a constant set is evaluated at compile time:

```python
if elem.is_object_exp() and elem.object().name in self._obj_to_int_val:
    k = self._obj_to_int_val[elem.object().name]
    em = elem.environment.expression_manager
    return TRUE() if em.Int(k) in constant_values else FALSE()
```

This avoids a type-incompatible `Equals(ObjectExp, Int)` that UP's type checker would
reject, and collapses the result immediately so planners see no spurious conditions.

---

## Changed: all other transform methods

`_transform_equality`, `_transform_set_constant_effect`, `_transform_intersect_effect`,
`_transform_difference_effect`, `_transform_disjoint`, and `_add_card_effect_to_action`
all received the same pattern fix: when iterating over constant set elements, canonicalize
using the **fluent's** declared element type rather than the constant set's inferred type.

The `_transform_difference_effect` constant-second case also fixed a pre-existing bug:
it called `.object()` on each element of `constant_value()` to get the underlying
`Object`, which crashes when the element is `Int(n)`. The fix uses FNodes directly.

---

## Changed: `_compile` — infeasible action pruning

When any precondition in a grounded action simplifies to `FALSE()`, the action is now
**skipped entirely** instead of being added with an empty precondition list.

### Before

```python
if new_precondition in [FALSE(), None]:
    break              # exits the loop but still appends the action
new_action.add_precondition(new_precondition)
...
temp_actions.append(new_action)  # always reached
```

### After

```python
infeasible = False
for precondition in action.preconditions:
    new_precondition = self._transform_expression(...)
    if new_precondition in [FALSE(), None]:
        infeasible = True
        break
    new_action.add_precondition(new_precondition)
if infeasible:
    continue           # skip this action entirely
temp_actions.append(new_action)
```

### Why it matters

With integer-element sets, `member(Int(0), set.mk(2 4 6))` simplifies to `FALSE()`.
Without this fix, the break would discard the False precondition but keep the action
with whatever preconditions had been added before it — making the action unconditionally
applicable and polluting the search space.

---

## Changed: `resulting_problem_kind`

`BOUNDED_INT_FLUENT_PARAMETERS` is now explicitly unset in the compiled problem kind:

```python
new_kind.unset_parameters("BOUNDED_INT_FLUENT_PARAMETERS")
```

The original code left this feature set when integer-element sets were present, which
caused UP's engine selector to reject FD (which only accepts UserType parameters). After
the fix, no `BOUNDED_INT_FLUENT_PARAMETERS` is introduced, so this line is a no-op for
existing problems and a correctness guarantee for new ones.

---

## Summary table (SetsRemover)

| Change | Location | Effect |
|---|---|---|
| `_get_or_create_int_usertype` | new method | Creates `UserType` + objects for integer ranges |
| `_canonicalize_elem` | new method | Maps `Int(n)` → `ObjectExp(iv{lb}_{ub}_{n})` |
| `_obj_to_int_val` | new dict | Reverse map for compile-time membership evaluation |
| `_add_set_as_boolean_fluent` | int branch | Uses UserType parameter; no `BOUNDED_INT_FLUENT_PARAMETERS` |
| `_get_elements_for_type` | int branch | Returns `ObjectExp` nodes, parallel to UserType path |
| `_transform_member` | fluent case | Canonicalizes element against fluent's declared type |
| `_transform_member` | constant case | Uses direct `Equals`; avoids inferred-type mismatch |
| `_transform_add_remove` | elem arg | Canonicalizes element before fluent call |
| `_set_membership_expr` | constant case | Evaluates membership at compile time via `_obj_to_int_val` |
| All other `_transform_*` | constant elements | Canonicalize using fluent's type, not constant's type |
| `_compile` action loop | precondition check | Skips infeasible actions instead of dropping only the `False` |
| `resulting_problem_kind` | return | Unsets `BOUNDED_INT_FLUENT_PARAMETERS` |