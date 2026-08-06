# UP-Side Architecture Guide

Complete reference for how the modified `unified-planning` Python library works in this
project — types, expression trees, walkers, parser, serialization, and both pipeline
paths. All code references point to `~/unified-planning/unified_planning/` unless noted
otherwise. Changes introduced for PDDL-XTS are marked **[XTS]** (new code) or
**[XTS-MOD]** (modification to existing code).

**New here? Read [`UP-intro.md`](UP-intro.md) first** — a five-minute overview of the
five features, a file map, and how to run something. This guide is the deep reference
that comes after it.

This guide assumes no prior familiarity with `unified-planning`. If you already
know what fluents, grounding, and compilation pipelines are, skip straight to
§1. Everyone else should read §0 first.

---

## 0. Orientation: What Is `unified-planning`, and What Is PDDL-XTS?

### 0.1 What problem does `unified-planning` (UP) solve?

Automated planning is the field of writing software that, given a description
of a world (objects, what can change about them, what's true right now, and a
goal), finds a sequence of actions that reaches the goal. The programs that do
the searching are called **planners** — FastDownward, Z3-based solvers, etc.
Historically, every planner defined its own input format, so using a different
planner meant rewriting the problem description.

`unified-planning` is a Python library (from the AIPlan4EU project) that fixes
this by giving every planning problem **one** in-memory representation — a
`Problem` object, built either directly in Python or parsed from a PDDL file —
and then handing that same object to whichever backend planner you choose. The
library's job is to be a faithful, engine-agnostic middleman: parse the
problem once, then translate/compile it into whatever shape each specific
engine expects.

### 0.2 Vocabulary used throughout this guide

| Term | Meaning |
|------|---------|
| **Fluent** | A named piece of state that can change over time — e.g. `robot-at(?a: agent): location` or `battery-level: integer[0,100]`. Roughly: a variable in the planning problem. |
| **Object** | A concrete individual the problem is about (a specific robot, a specific room). Objects have **types** (`agent`, `location`, ...). |
| **Action** | A parametric template: given some objects as parameters, it has a **precondition** (a boolean formula over fluents that must hold before the action can run) and one or more **effects** (statements about how fluents change when the action runs). |
| **Grounding** | Replacing an action's parameters with every valid combination of concrete objects/values, producing one parameterless action per combination. `move(?a: agent, ?to: location)` with 3 agents and 5 locations grounds into 15 concrete actions. |
| **Problem** | Fluents + objects + actions + an initial state (the starting truth values of every fluent) + a goal (a formula that must hold at the end). |
| **Plan** | A sequence of grounded actions that, executed from the initial state, satisfies the goal. |
| **Compiler / compilation pipeline** | A `Problem → Problem` transformation that eliminates one feature the target planner can't handle natively by re-expressing it in terms of simpler features it does handle. UP chains several of these; §8 covers the ones relevant to this extension. |

### 0.3 PDDL and the UP parser

**PDDL** (Planning Domain Definition Language) is the standard text format for
planning problems: a `domain.pddl` file declares types, fluents (called
"predicates"/"functions" in PDDL), and actions; a separate problem file gives
the objects, initial state, and goal for one specific instance. UP ships its
own PDDL parser, `io/up_pddl_reader.py`, which reads PDDL text and builds the
in-memory `Problem`/`FNode` structures described in §3 and §5 below — nothing
here bypasses PDDL, it's just the entry point that turns text into objects.

### 0.4 What PDDL-XTS adds, and why

Standard PDDL has no array type, no set type, and no way to say "this integer
is only ever 0–9" — every such structure has to be hand-unrolled into dozens
of separate boolean predicates (`cell-0-0`, `cell-0-1`, ...). **PDDL-XTS** is
this project's own extension to PDDL's grammar and to the UP model that adds:

- **Arrays** — `(array N elem-type)` (multi-dimensional: `(array N M elem-type)`), read with
  `(read (arr args) i j)` and written with `(write ((arr args) i j) value)`.
- **Sets** — `(set elem-type)`, with `(member e (s))`, `(add e (s))` / `(remove e (s))`, `(cardinality (s))`.
- **Bounded integers** — `(number lo hi)`, e.g. `integer[0,9]`, usable as a fluent type, an action parameter type, or a `forall`/`exists` quantifier range.

In every one of these constructors the element type must be a **name already declared in
`(:types ...)`** — the grammar accepts a bare name there, not a nested constructor. So you
write `range - (number 0 15)` followed by `puzzle15 - (array 4 4 range)`, never
`(array 4 4 (number 0 15))`. See §2.2.

These are declared and used directly in PDDL text — the domains under
`docs/extensions/domains/` (15-puzzle, dump-trucks, labyrinth) are examples, and
`docs/extensions/domains/tests/pddl-extension/` holds ~20 small single-feature domains
that exercise one construct each.

The motivation is a research question, not just convenience: once arrays,
sets, and bounded integers exist as first-class expression types in UP, there
are two ways to get a solver to handle them — (a) compile them away into
plain boolean/object PDDL that a classical planner like FastDownward already
understands (the **classical planner path**), or (b) keep them intact and
hand them to a solver that natively understands arrays and arithmetic, such
as Z3 (the **native path**, called RTP/RanTanPlan here). §1 introduces both;
§8's pipeline traces and `archive/UP-changes.md`'s "Pipeline Consequences" section
show why the compiled-away version can blow up combinatorially in a way the
native encoding does not — that comparison is the point of building both.

---

## 1. The Two Paths

Every PDDL-XTS problem enters through the same parser and always passes through IPAR.
After that, there are two routes depending on the backend:

```
                       PDDL-XTS text  (or Python API)
                            │
                            ▼
                  io/up_pddl_reader.py  [XTS-MOD]
                  (UP model: FNode tree,
                   Problem, Actions, Fluents)
                   XTS semantic checks fire here
                            │
                            ▼
     engines/compilers/int_parameter_actions_remover.py  [XTS-MOD]
     IPAR — shared by both paths; grounds integer-typed action
     parameters; expands forall effects into one copy per value
                            │
              ┌─────────────┴──────────────────┐
              │                                │
    RTP-native path                    Classical planner path
              │                                │
    grpc/proto_writer.py [XTS-MOD]    engines/compilers/
    (protobuf binary)                 arrays_remover.py [XTS-MOD]
              │                                │
    C++ gRPC server                   sets_remover.py [XTS-MOD]
    (GroundingPass, etc.)                      │
              │                       count_remover.py [XTS-MOD]
      Z3 / SMT solver                          │
              │                       integers_remover.py [XTS-MOD]
         OPTIMAL/UNSAT                         │
                                   usertype_fluents_remover.py [unchanged]
                                               │
                                      classical planner
                                      (FastDownward, etc.)
```

**RTP-native path**: after IPAR, arrays, sets, and bounded integers travel to C++ as
first-class expression nodes (`ARRAY_READ`, `ARRAY_WRITE`, `SET_MEMBER`,
`RANGE_VARIABLE_EXP`). The C++ engine grounds actions, then Z3 handles XTS types
natively as `Array(IntSort, ...)` variables and arithmetic constraints.

**Classical planner path**: after IPAR, a chain of five compilers reduces everything
to standard PDDL before handing off to a classical planner. Each compiler returns a
new `Problem` and is unaware of the others; they must run in the order shown.
This path produces exponential blowup on integer arithmetic and is not the primary
route for XTS problems.

**The classical path compilers are optional and chosen at execution time** by
selecting a named compilation pipeline when invoking the solver: the
`--compilation` flag (`docs/extensions/solve.py:57–62`), whose choices come from
`COMPILATION_PIPELINES` (`docs/extensions/domains/compilation_solving.py:11`).
A problem going to the Z3 engine never runs ArraysRemover, SetsRemover,
CountRemover, IntegersRemover, or UserTypeFluentsRemover.

---

## 2. The Type System

### 2.1 Class hierarchy

All type classes live in `model/types.py`. Instances are managed by `TypeManager`
(`model/type_manager.py`) — never construct type objects directly.

```
Type (ABC)                                 model/types.py:24
├── _BoolType                              types.py:79     is_bool_type()
├── _DerivedBoolType                       types.py:89     is_derived_bool_type()
├── _TimeType                              types.py:99     is_time_type()
├── _UserType(name, father?)               types.py:110    is_user_type()
├── _IntType(lower?, upper?)               types.py:167    is_int_type()
├── _RealType(lower?, upper?)              types.py:207    is_real_type()
├── _ArrayType(size, elements_type)        types.py:249    is_array_type()  [XTS]
└── _SetType(elements_type)                types.py:273    is_set_type()    [XTS]
```

`TypeManager` factory methods (`model/type_manager.py`):

| Factory                              | Line | Notes                                        |
|--------------------------------------|------|----------------------------------------------|
| `tm.IntType(lo, hi)`                 | 102  | Returns cached `_IntType(lo, hi)`            |
| `tm.ArrayType(size, elem_type)`      | 150  | **[XTS]**                                    |
| `tm.SetType(elem_type)`              | 167  | **[XTS]**; nested-set guard at line 172–176  |

Nested-set guard (`type_manager.py:172–176`) **[XTS]**:
```python
# [XTS] Nested set types are not supported.
if elements_type is not None and elements_type.is_set_type():
    raise UPTypeError(
        f"Nested set type not supported: element type '{elements_type}' is itself "
        "a set; set element types must be bounded integers or user objects.")
```

### 2.2 PDDL-XTS → Python type mapping

| PDDL-XTS syntax                     | Python type object                               |
|-------------------------------------|--------------------------------------------------|
| `boolean`                           | `_BoolType` (singleton `BOOL`, `types.py:291`)   |
| `integer`                           | `_IntType(None, None)`                           |
| `(number 0 4)` / `integer[0,4]`     | `_IntType(0, 4)` **[XTS]**                       |
| `Color` (user-declared)             | `_UserType("Color")`                             |
| `(:types idx - (number 0 4))`       | `idx` → `_IntType(0, 4)` — **not a UserType** **[XTS]** |
| `(array 5 Color)`                   | `_ArrayType(5, _UserType("Color"))` **[XTS]**    |
| `(array 3 idx)` (with `idx - (number 0 2)`) | `_ArrayType(3, _IntType(0, 2))` **[XTS]**|
| `(array 4 4 range)`                 | `_ArrayType(4, _ArrayType(4, <range>))` **[XTS]**|
| `(set Color)`                       | `_SetType(_UserType("Color"))` **[XTS]**         |
| `(set idx)` (with `idx - (number 0 9)`) | `_SetType(_IntType(0, 9))` **[XTS]**         |

**Element types must be declared names, not inline constructors.** The grammar rules
are `Keyword("array") + OneOrMore(name | digits)` and `Keyword("set") + name`
(`up_pddl_reader.py:132–136`), and the resolver looks the element name up in
`types_map`, raising `SyntaxError` if it is missing (`up_pddl_reader.py:1652–1656`,
`1666–1668`). So `(array 3 (number 0 2))` and `(set (number 0 9))` do **not** parse —
declare the bounded-integer type first and refer to it by name.

**Multi-dimensional arrays are flat, not nested.** `(array 4 4 range)` is one
constructor with two sizes; the resolver builds the nesting inside out
(`up_pddl_reader.py:1657–1661`), last dimension first. There is no
`(array 4 (array 4 range))` form.

Key rule: `(:types idx - (number 0 4))` makes `idx` an alias for `IntType(0, 4)`.
The parser resolves it at declaration time (`up_pddl_reader.py:1602–1669`); there is
no `UserType("idx")` in the model. This is why IPAR's `_transform_int_param_fluents`
(§8.1) exists — fluents with `idx` parameters end up with `IntType` params, which the
PDDL writer rejects.

### 2.3 Type serialization to proto

`proto_type(tpe)` in `grpc/proto_writer.py:109–122` converts a Python type to its
proto string **[XTS-MOD]**:

| Python type                          | proto string                          |
|--------------------------------------|---------------------------------------|
| `_BoolType`                          | `"up:bool"`                           |
| `_IntType(0, 4)`                     | `"up:integer[0, 4]"`                  |
| `_UserType("Color")`                 | `"Color"`                             |
| `_ArrayType(3, IntType(0,2))`        | `"up:array[3,up:integer[0, 2]]"`      |
| `_SetType(IntType(0, 9))`            | `"up:set{up:integer[0, 9]}"`          |

`TypeDeclaration` proto messages also carry the new `element_type` (string, field 3)
and `size` (int32, field 4) fields (`unified_planning.proto:106`, `110`) **[XTS]**.
Serialized in `proto_writer.py:514–527` **[XTS]**, read in `proto_reader.py:372–379`
**[XTS]**.

---

## 3. The Expression Tree (FNode)

### 3.0 How the expression system is extended

Adding a new operator to UP requires touching **six layers** in dependency order.
`ARRAY_READ` and `ARRAY_WRITE` are the canonical example — each layer is shown
with the file and line where the change lives.

```
┌──────────────────────────────────────────────────────────────────────────┐
│  LAYER 1 — model/operators.py  (the enum)                                │
│                                                                          │
│  class OperatorKind(Enum):                                               │
│    ...                                                                   │
│    ARRAY_CONSTANT = auto()   ← pre-existing (line 42)                    │
│    ARRAY_READ     = auto()   ← [XTS] new    (line 43)                    │
│    ARRAY_WRITE    = auto()   ← [XTS] new    (line 44)                    │
│                                                                          │
│  Every other layer is downstream of this enum.                           │
└──────────────────────────────────────────────────────────────────────────┘
                                    │
                                    ▼
┌──────────────────────────────────────────────────────────────────────────┐
│  LAYER 2 — model/expression.py  (factory methods on ExpressionManager)   │
│                                                                          │
│  def ArrayRead(self, array_exp, index_exp):   # line 287                 │
│      return self.create_node(                                            │
│          OperatorKind.ARRAY_READ, (array_exp, index_exp))                │
│                                                                          │
│  create_node() interns the result: two calls with identical arguments    │
│  return the exact same Python object, making the expression graph a      │
│  DAG (directed acyclic graph) rather than a tree.                        │
└──────────────────────────────────────────────────────────────────────────┘
                                    │
                                    ▼
┌──────────────────────────────────────────────────────────────────────────┐
│  LAYER 3 — model/fnode.py  (predicates and string representation)        │
│                                                                          │
│  def is_array_read(self):   # line 316                                   │
│      return self.node_type == OperatorKind.ARRAY_READ                    │
│                                                                          │
│  __str__ dispatches through a lambda table keyed by OperatorKind:        │
│      OperatorKind.ARRAY_READ:  lambda: f"(read {arg(0)} {arg(1)})"  # 68 │
│      OperatorKind.ARRAY_WRITE: lambda: f"(write {arg(0)} {arg(1)})" # 69 │
└──────────────────────────────────────────────────────────────────────────┘
                                    │
                                    ▼
┌──────────────────────────────────────────────────────────────────────────┐
│  LAYER 4 — every walker in model/walkers/                                │
│                                                                          │
│  Walker.__init__ builds self.functions{} at instance-creation time:      │
│    for kind in OperatorKind:                                             │
│        try: self.functions[kind] = getattr(self, "walk_array_read")      │
│        except AttributeError: self.functions[kind] = self.walk_error     │
│                                                                          │
│  If walk_array_read is absent → self.functions[ARRAY_READ] = walk_error  │
│  walk_error (generic.py:113) raises NotImplementedError at traversal     │
│  time (not at import time).                                             │
│                                                                          │
│  Walkers that needed new handlers [XTS-MOD]:                             │
│    IdentityDagWalker  identitydag.py:110,113,124 — rebuilding            │
│    Simplifier         simplifier.py:337,340      — constant folding      │
│    TypeChecker        type_checker.py:518,574,578 — type inference       │
└──────────────────────────────────────────────────────────────────────────┘
                                    │
                                    ▼
┌──────────────────────────────────────────────────────────────────────────┐
│  LAYER 5 — engines/compilers/                                            │
│                                                                          │
│  IPAR (both paths): _transform_array_access (ipar.py:369)                │
│    evaluates concrete integer indices; delegates remaining array         │
│    structure to ArraysRemover on the classical path                      │
│                                                                          │
│  ArraysRemover (classical only): _transform_array_access                 │
│                                  (arrays_remover.py:279)                 │
│    rewrites ARRAY_READ(board(?a), Int(2)) → board(i2, ?a)                │
│                                                                          │
│  IntegersRemover: passes array reads/writes through unchanged            │
│    (arrays are already eliminated by this stage)                         │
└──────────────────────────────────────────────────────────────────────────┘
                                    │
                                    ▼
┌──────────────────────────────────────────────────────────────────────────┐
│  LAYER 6 — grpc/proto_writer.py + proto_reader.py  (serialization)       │
│                                                                          │
│  map_operator (proto_writer.py:84–87):                                   │
│    ARRAY_READ  → "up:array_read"                                         │
│    ARRAY_WRITE → "up:array_write"                                        │
│                                                                          │
│  walk_operator (proto_writer.py:428–447):                                │
│    emits FUNCTION_APPLICATION with FUNCTION_SYMBOL("up:array_read")      │
│    as list[0], and the two args as list[1], list[2]                      │
│                                                                          │
│  proto_reader.py:125–128 reverses the symbol back to an OperatorKind     │
│  (op_to_node_type, line 82); _convert_expression then rebuilds the       │
│  FNode generically via create_node (proto_reader.py:261, 279)            │
└──────────────────────────────────────────────────────────────────────────┘

```

**The failure mode for a missing layer**: forgetting Layer 4 for one walker
produces `NotImplementedError("unsupported operator kind for expression: ...")` the
first time that walker traverses an expression containing the new kind. This surfaces
at problem-construction time
(TypeChecker) or at compile time (compiler transformers) — not at import time and
not when the PDDL file is parsed.

---

### 3.1 Structure

Every expression in UP is an `FNode` (`model/fnode.py`). An FNode is immutable and
hashable:

```
FNode
├── node_type : OperatorKind          — kind of node (dispatched on by walkers)
├── args      : Tuple[FNode]          — children; empty for leaves
└── _content.payload                  — leaf value for constants/references
```

FNodes are created exclusively through `ExpressionManager` (at
`env.expression_manager`). The manager interns nodes — identical nodes share the same
Python object. Never construct `FNode` directly.

Examples:
```
Int(3)            → FNode(INT_CONSTANT, args=(), payload=3)
FluentExp(board)  → FNode(FLUENT_EXP, args=(), payload=<Fluent board>)
ARRAY_READ(f, i)  → FNode(ARRAY_READ, args=(f, i))      [XTS]
ARRAY_WRITE(f, i) → FNode(ARRAY_WRITE, args=(f, i))     [XTS]
RangeVarExp(rv)   → FNode(RANGE_VARIABLE_EXP, args=(), payload=<RangeVariable rv>)  [XTS]
Equals(a, b)      → FNode(EQUALS, args=(a, b))
```

### 3.2 OperatorKind (`model/operators.py`)

`OperatorKind` is a Python `enum.Enum`. Every walker, compiler, and serializer
dispatches on it. New members **[XTS]**:

| OperatorKind            | Line | Meaning                            | args                    |
|-------------------------|------|------------------------------------|-------------------------|
| `ARRAY_READ`            | 43   | `(read arr idx)` — read at index   | `(arr_node, idx_node)`  |
| `ARRAY_WRITE`           | 44   | `(write arr idx)` — effect target  | `(arr_node, idx_node)`  |

Pre-existing, relevant to XTS (not new):

| OperatorKind            | Line | Meaning                                 |
|-------------------------|------|-----------------------------------------|
| `RANGE_VARIABLE_EXP`    | 35   | range-quantifier variable; payload = `RangeVariable` |
| `ARRAY_CONSTANT`        | 42   | `(array.mk v0 v1 ...)` literal          |
| `SET_CONSTANT`          | 45   | `(set.mk e0 e1 ...)` literal            |
| `COUNT`                 | 59   | numeric count aggregate (pre-existing, not XTS set cardinality) |
| `SET_MEMBER`            | 60   | `(member elem set)` membership test     |
| `SET_CARDINALITY`       | 63   | `(cardinality set)` — XTS set cardinality **[XTS]** |

### 3.3 Factory methods (`model/expression.py`) **[XTS]**

| Factory                                  | Line | Creates                    |
|------------------------------------------|------|----------------------------|
| `em.ArrayRead(array_exp, index_exp)`     | 287  | `FNode(ARRAY_READ, ...)`   |
| `em.ArrayWrite(array_exp, index_exp)`    | 290  | `FNode(ARRAY_WRITE, ...)`  |
| `em.RangeVariableExp(rv)`                | 783  | `FNode(RANGE_VARIABLE_EXP, payload=rv)` |
| `em.Array(value_list)`                   | 878  | `FNode(ARRAY_CONSTANT, ...)` |
| `em.Set(value_set)`                      | 892  | `FNode(SET_CONSTANT, ...)`  |

### 3.4 FNode predicates and `__str__` (`model/fnode.py`) **[XTS]**

| Predicate / method            | Line | Notes                                              |
|-------------------------------|------|----------------------------------------------------|
| `node.is_array_read()`        | 316  | `node_type == ARRAY_READ`                          |
| `node.is_array_write()`       | 319  | `node_type == ARRAY_WRITE`                         |
| `node.is_range_variable_exp()`| 398  | `node_type == RANGE_VARIABLE_EXP`                  |
| `node.range_variable()`       | 243  | Returns `_content.payload` as `RangeVariable`      |
| `str()` for `ARRAY_READ`      | 68   | `f"(read {arg(0)} {arg(1)})"`                      |
| `str()` for `ARRAY_WRITE`     | 69   | `f"(write {arg(0)} {arg(1)})"`                     |
| `str()` for `RANGE_VARIABLE_EXP` | 87 | `self._content.payload.name`                     |

### 3.5 `ARRAY_WRITE` as an effect target

`ARRAY_WRITE` only appears as `effect.fluent` (left-hand side of an effect),
never in a precondition or goal.

**Key structural rule**: a fluent's own parameters (object-type arguments declared in
its signature) are children of the `FLUENT_EXP` node — `args` of `FluentExp(fluent,
params)` at `expression.py:706`. Array indices are separate args of the `ARRAY_READ`
or `ARRAY_WRITE` node that wraps the fluent. In PDDL this is the difference between
`(board ?a)` (fluent parameter, inside the parens) and `(read (board ?a) ?i)` (index,
outside, as the second argument to `read`).

**PDDL `write` syntax.** There is no `:=` operator; the assigned value is the *last*
token of the `write` form. The parser accepts three shapes (`up_pddl_reader.py:818–821`):

```lisp
(write (top ?p) val)              ; scalar — 3 tokens, plain fluent assignment
(write (tower ?p) (?r) val)       ; 1-D array — 4 tokens
(write ((board ?a) ?i ?j) val)    ; N-D array — 3 tokens, nested target
```

For `board(agent a) : array[3, array[3, int]]`, the write
`(write ((board ?a) ?i ?j) 5)` produces:

```
effect.fluent = FNode(ARRAY_WRITE)
                ├── arg(0): FNode(ARRAY_READ)
                │           ├── arg(0): FNode(FLUENT_EXP, payload=<Fluent board>)
                │           │           └── arg(0): FNode(PARAMETER_EXP, payload=<Param ?a>)
                │           │                       ↑ fluent parameter — lives inside FLUENT_EXP
                │           └── arg(1): FNode(PARAMETER_EXP, payload=<Param ?i>)
                │                       ↑ array index — lives outside, as arg of ARRAY_READ
                └── arg(1): FNode(PARAMETER_EXP, payload=<Param ?j>)
                            ↑ array index — lives outside, as arg of ARRAY_WRITE

effect.value = FNode(INT_CONSTANT, payload=5)
```

For a fluent with no extra parameters (`board : array[3, array[3, int]]`), `FLUENT_EXP`
has an empty `args` tuple and the tree is one level shallower.

`effect.py:80` **[XTS-MOD]** allows `ARRAY_WRITE` as a valid effect target alongside
`FLUENT_EXP`:
```python
if not fluent.is_array_write():
    assert fluent.is_fluent_exp() or fluent.is_dot(), ...
```

`effect.py:76` **[XTS-MOD]** widens the `forall` type annotation to accept
`RangeVariable` alongside `Variable`.

### 3.6 Example expression trees

**Example 1 — array read in a precondition**

PDDL: `(= (read (board ?a) ?i) 3)`  where `board: array[3, int]`
```
FNode(EQUALS)
├── FNode(ARRAY_READ)
│   ├── arg(0): FNode(FLUENT_EXP, payload=<Fluent board>)
│   │           └── arg(0): FNode(PARAMETER_EXP, payload=<Param ?a>)
│   │                       ↑ fluent parameter — lives inside FLUENT_EXP.args
│   └── arg(1): FNode(PARAMETER_EXP, payload=<Param ?i>)
│               ↑ array index — lives outside, as arg of ARRAY_READ
└── FNode(INT_CONSTANT, payload=3)
```

**Example 2 — combined array read and set membership**

PDDL: `(and (= (read (board ?a) ?i) 3) (member ?p (team ?a)))`
```
FNode(AND)
├── FNode(EQUALS)
│   ├── FNode(ARRAY_READ)
│   │   ├── arg(0): FNode(FLUENT_EXP, payload=<Fluent board>)
│   │   │           └── arg(0): FNode(PARAMETER_EXP, payload=<Param ?a>)
│   │   └── arg(1): FNode(PARAMETER_EXP, payload=<Param ?i>)
│   └── FNode(INT_CONSTANT, payload=3)
└── FNode(SET_MEMBER)
    ├── arg(0): FNode(PARAMETER_EXP, payload=<Param ?p>)   ← element
    └── arg(1): FNode(FLUENT_EXP, payload=<Fluent team>)   ← set fluent
                └── arg(0): FNode(PARAMETER_EXP, payload=<Param ?a>)
```

**Example 3 — the DAG: shared sub-expressions**

`create_node()` interns FNodes. The same `FLUENT_EXP(board, ?a)` appearing in two
places in one formula is the **same Python object**:

```
Expression: (and (= (board ?a) val) (member ?p (board ?a)))

              FNode(AND)
             /            \
       EQUALS            SET_MEMBER
      /       \          /         \
FLUENT_EXP  FLUENT_EXP  ?p       FLUENT_EXP
(board, ?a)  (val)              (board, ?a)
     ↑_________________________________↑
         same Python object (id() identical)
```

`DagWalker` memoizes by `id(node)`. Even though `FLUENT_EXP(board, ?a)` appears
in two branches, its handler is invoked exactly once; the second encounter returns
the cached result.

**Example 4 — RangeVariable in a forall effect**

PDDL: `(:effect (forall (?i - (number 0 4)) (write ((board) ?i) 0)))`
(`board: array[5, int]`, no object parameters)
```
Effect object:
  .forall = [RangeVariable("i", initial=0, last=4)]   ← Python object
  .fluent = FNode(ARRAY_WRITE)
              ├── arg(0): FNode(FLUENT_EXP, payload=<Fluent board>)
              │           args = ()  — board has no object parameters
              └── arg(1): FNode(VARIABLE_EXP, payload=<RangeVariable "i">)
                          ↑ parser wraps RangeVariable in VARIABLE_EXP
                            (see §6.2 for the VARIABLE_EXP vs RANGE_VARIABLE_EXP asymmetry)
  .value = FNode(INT_CONSTANT, payload=0)

Both paths (IPAR grounding, ipar.py:455):
  IPAR runs on both uti and native paths. Produces 5 concrete copies of the
  effect with VARIABLE_EXP(?i) substituted by INT_CONSTANT(0), ..., INT_CONSTANT(4).
  After IPAR: up path feeds these into further compilers (ArraysRemover, etc.);
  native path proto-serializes them directly as 5 concrete ARRAY_WRITE effects
  — no range_var encoding, because indices are already INT_CONSTANTs.

```

---

## 4. The Walker Architecture

### 4.1 How walkers work

A **walker** is a bottom-up visitor over the FNode expression graph. It visits every
unique node exactly once and returns a typed result for each. The base classes live in
`model/walkers/generic.py` and `model/walkers/dag.py`.

```
Walker                     generic.py:71
└── DagWalker              dag.py:19      memoized, bottom-up
    ├── IdentityDagWalker  identitydag.py — rebuilds tree identically [XTS-MOD]
    │   └── Substituter    substituter.py — node replacement
    ├── Simplifier         simplifier.py  — constant-folds [XTS-MOD]
    ├── TypeChecker        type_checker.py — type inference + XTS checks [XTS-MOD]
    └── ... (other walkers)
```

**What "bottom-up" means**:

Children are fully processed before their parent. Each handler receives the parent
`FNode` and a list `args` containing the already-computed results for all children.

```
Example tree:  EQUALS(ARRAY_READ(FLUENT_EXP(board,?a), ?i), INT_CONSTANT(3))

Visitation order:
  1.  FLUENT_EXP(board, ?a)    ← leaf: no children to wait for
  2.  PARAMETER_EXP(?i)         ← leaf
  3.  ARRAY_READ(1, 2)          ← parent of 1 and 2; handler receives args=[result1, result2]
  4.  INT_CONSTANT(3)           ← leaf
  5.  EQUALS(3, 4)              ← root; handler receives args=[result3, result4]
```

**What different walkers return from each handler**:

| Walker              | Each handler receives               | Each handler returns         | Purpose              |
|---------------------|-------------------------------------|------------------------------|----------------------|
| `TypeChecker`       | FNode + list of child `Type`s       | a Python `Type` object       | type inference       |
| `IdentityDagWalker` | FNode + list of child `FNode`s      | a (possibly new) `FNode`     | tree transformation  |
| `Simplifier`        | FNode + list of child `FNode`s      | `FNode` (possibly folded)    | constant folding     |

Because all three share `DagWalker`, any subclass of `IdentityDagWalker`
(Substituter, IPAR's expression transformer, etc.) gets XTS support for free
once the base class has `walk_array_read`, `walk_array_write`, and
`walk_range_variable_exp`.

**Memoization (DAG traversal)**:

`DagWalker` caches results by `id(node)`. Because `create_node()` interns FNodes,
the same Python object can appear in multiple branches of the formula. Without
memoization the traversal would re-enter the same node, which is redundant work and
can cause exponential blowup for deeply shared sub-expressions.

**Dispatch table construction** (`Walker.__init__`, `generic.py:77–84`):

```python
self.functions = {}
for o in OperatorKind:
    try:
        self.functions[o] = getattr(self, nt_to_fun(o))   # ARRAY_READ → "walk_array_read"
    except AttributeError:
        self.functions[o] = self.walk_error  # no handler → error at walk time
```

`nt_to_fun` (`generic.py:29`) lowercases the enum name and prepends `"walk_"`:
`OperatorKind.ARRAY_READ` → `"walk_array_read"`.

**Missing handler — the failure mode**:

```
Scenario: a walker class has no walk_array_read method.

At Walker.__init__():
  getattr(self, "walk_array_read") → AttributeError
  self.functions[ARRAY_READ] = self.walk_error

At traversal time, when an ARRAY_READ node is reached:
  f = self.functions[ARRAY_READ]         → walk_error
  walk_error(node, args, **kwargs)       → raise NotImplementedError(
                                             "unsupported operator kind for
                                              expression: ...")

The error surfaces at runtime when the walker first sees the node,
NOT at import time and NOT when the PDDL is parsed.
```

**Critical rule**: every new `OperatorKind` needs a named handler in every walker
that may encounter it.

### 4.2 Walkers extended for XTS

**`IdentityDagWalker`** (`model/walkers/identitydag.py`) **[XTS-MOD]**

Every transformer (Substituter, IPAR's own expression transformer, etc.) inherits
from `IdentityDagWalker` and relies on its fallback handlers. Without these, any
transformation touching an array expression crashes:

| Handler added              | Line | What it does                              |
|----------------------------|------|-------------------------------------------|
| `walk_array_read`          | 110  | `em.ArrayRead(args[0], args[1])`          |
| `walk_array_write`         | 113  | `em.ArrayWrite(args[0], args[1])`         |
| `walk_range_variable_exp`  | 124  | `em.RangeVariableExp(expression.range_variable())` |

**`Simplifier`** (`model/walkers/simplifier.py`) **[XTS-MOD]**

IPAR calls `.simplify()` after substituting concrete integer values. Without these
handlers, `Int(3) - Int(1)` inside an array index would fail to fold:

| Handler added     | Line | What it does                                                       |
|-------------------|------|--------------------------------------------------------------------|
| `walk_array_read` | 337  | Rebuilds `ARRAY_READ`; no constant-folding (arrays aren't folded) |
| `walk_array_write`| 340  | Same for `ARRAY_WRITE`                                             |

**`TypeChecker`** (`model/walkers/type_checker.py`) **[XTS-MOD]**

Invoked on every FNode added to the model. `walk_array_read` and
`walk_array_write` (lines 574, 578) both delegate to one shared method,
`_check_array_access` (line 518), since the two node kinds need identical
type inference and bounds checks:

| Check (in `_check_array_access` unless noted) | Line | What it guards                                                  |
|------------------------------------------------|------|-------------------------------------------------------------------|
| Fluent used as array index                      | 527  | An `ARRAY_READ`/`ARRAY_WRITE` index that is itself a state fluent (only constants, parameters, and forall variables are valid indices) |
| Nested `ARRAY_READ` as index (dynamic indexing) | 532  | `board[board[i]]`-style dynamic indexing, which isn't supported     |
| Constant index out of bounds                    | 537  | A literal index (`Int(5)` into a size-3 array) outside `[0, size-1]` |
| Forall range variable exceeds array dimension   | 544  | A `RangeVariable`'s declared upper/lower bound falls outside the array's index range |
| Arithmetic index interval out of bounds         | 559  | Uses `_index_interval` (see below) to prove an arithmetic index expression's bounds fall outside the array — e.g. `board[?i - 1]` where `?i : int[0,0]` |
| `walk_member` — untyped/empty set               | 592  | `member(x, set.empty)` has no element type to compare against; treated as well-formed and statically `False` rather than raising |
| `walk_member` — int-to-int membership           | 600  | `member(6, s)` where `s : set{integer[0,5]}` is well-formed (always `False` at runtime), so range overlap is deliberately *not* required — only that both sides are integer types |
| `walk_set_to_set` — element category mismatch   | 651–668 | `SET_ADD`/`SET_REMOVE` where the element is an integer and the set holds objects, or vice versa. Note the check is a category test (int vs user-type), not a bounds test, and it skips the two-set operators (`SET_UNION`/`SET_INTERSECT`/`SET_DIFFERENCE`) |

These range checks are **not** made redundant by IPAR. The source docstring
(`type_checker.py:520–522`) records why: an out-of-bounds slot that survives to
`arrays_remover` is silently defaulted to `0`/empty-set rather than reported, so the
TypeChecker is the stage that has to reject it. Catching it here also gives the
earliest, clearest error — at the moment the invalid expression is added to the model,
rather than deep inside a compiler pass.

**`_index_interval`** (`model/walkers/index_interval.py`, new file, 61 lines) **[XTS]**

A small standalone helper, not itself a walker: given an `FNode` used as an
array index or set element, it conservatively estimates the value's possible
range as a `(lo, hi)` pair, or returns `None` if no static bound is provable.
It recognizes `INT_CONSTANT`, `RANGE_VARIABLE_EXP`, `VARIABLE_EXP` wrapping a
bounded type, and `PLUS`/`MINUS`/`TIMES` combinations of the above (interval
arithmetic: e.g. `[0,2] + [0,2] → [0,4]`); anything else falls through to
`return None` at line 62 — including a bare `PARAMETER_EXP`, so an index that is a
plain action parameter is treated as unbounded and no bounds check fires for it.

It has two callers: `TypeChecker._check_array_access` (`type_checker.py:560`) and the
set-element bounds guard in `transition.py:317` (§9.1).

### 4.3 Worked traversal: TypeChecker on `ARRAY_READ`

Concrete example: `(= (read (board ?a) ?i) 3)` where
`board: array[3, integer[0,8]]`, `?a: agent`, `?i: integer[0,2]`.

```
Tree:
  EQUALS
  ├── ARRAY_READ
  │   ├── FLUENT_EXP(board, ?a)
  │   └── PARAMETER_EXP(?i)
  └── INT_CONSTANT(3)
```

TypeChecker visits bottom-up; each step shows which handler fires and what it returns:

```
Step 1  PARAMETER_EXP(payload=<Param ?a>)
        handler  → walk_param_exp
        returns  → _UserType("agent")           ← declared type of ?a

Step 2  FLUENT_EXP(payload=<Fluent board>, args=[PARAMETER_EXP(?a)])
        handler  → walk_fluent_exp
        args[0]  = _UserType("agent")           ← result from step 1
        checks   : fluent board expects one agent param → ✓
        returns  → _ArrayType(3, _IntType(0,8)) ← declared return type of board

Step 3  PARAMETER_EXP(payload=<Param ?i>)
        handler  → walk_param_exp
        returns  → _IntType(0, 2)              ← declared type of ?i

Step 4  ARRAY_READ(FLUENT_EXP(board,?a), PARAMETER_EXP(?i))
        handler  → walk_array_read (type_checker.py:574) → delegates to
                   _check_array_access (type_checker.py:518)
        The code reads:
          index    = expression.arg(1)           → PARAMETER_EXP(?i)
          arr_type = expression.arg(0).type      → _ArrayType(3, _IntType(0,8))
          (children have already been walked; .type was set by the walker)
        line 527: index.is_fluent_exp() → False ✓  (no state fluent as index)
        line 532: index.node_type == ARRAY_READ → False ✓  (no nested ARRAY_READ)
        arr_type.is_array_type() → True → enter bounds checks:
          index.is_int_constant()       → False (skip the constant-OOB branch)
          index.is_range_variable_exp() → False (skip the forall-range branch)
          else → line 560: _index_interval(PARAMETER_EXP(?i))
                   → None: the helper has no PARAMETER_EXP branch, so a bare
                     action parameter is unbounded even though ?i is declared
                     integer[0,2]. No static bounds check runs here.
        returns  → arr_type.elements_type = _IntType(0, 8)

        Note: the index bound for ?i is not enforced at type-check time. It is
        enforced later, by IPAR: ?i is only ever instantiated with values from
        its declared range, and _transform_array_access checks each concrete
        index against self.domains (§8.1). Swap ?i for a range variable —
        (forall (?i - (number 0 4)) ...) over a size-3 array — and the
        forall-range branch at line 544 does reject it statically.

Step 5  INT_CONSTANT(payload=3)
        handler  → walk_int_constant
        returns  → _IntType(None, None)        ← unbounded integer

Step 6  EQUALS(ARRAY_READ(...), INT_CONSTANT(3))
        handler  → walk_equals
        args[0]  = _IntType(0, 8)
        args[1]  = _IntType(None, None)
        checks   : types compatible → ✓
        returns  → _BoolType
```

The final result `_BoolType` is discarded (the caller already knows
preconditions must be boolean); what matters is that no exception was raised.

**What happens if the board fluent is never declared**:
Step 2 calls `problem.fluent("board")` inside `walk_fluent_exp` → raises
`UPValueError("Fluent board not found")`. The walk stops immediately; no
further nodes are visited.

**What happens if the walker has no `walk_array_read`**:
Step 4 calls `walk_error` instead → `NotImplementedError("unsupported operator
kind for expression: ...")`. The expression is valid PDDL; the error is a walker
implementation gap (Layer 4 in §3.0).

---

## 5. The Parser

`io/up_pddl_reader.py` uses a **stack machine**: each PDDL sub-expression is either
resolved to a leaf and pushed onto an expression stack, or triggers a reduction that
pops its arguments off that stack and pushes a new FNode. §5.0 walks the mechanism in
detail.

### 5.0 Stack machine step-by-step

`_parse_exp` (`up_pddl_reader.py:506`) maintains two stacks: a **work stack**
(`stack`) of `(vars, expr, status)` triples, and a `solved` stack of resolved
`FNode`s. Seeing a compound expression for the first time (`status=False`) pushes it
back with `status=True` — the *reduction marker*, which lands at the bottom — then
pushes each child. Since both stacks are LIFO, **children are resolved right-to-left**:
the last child is on top of the work stack and finishes first. The reduction marker
surfaces only after every child is on `solved`, and pops them, which reverses the order
back to left-to-right.

**Trace: `(read (board ?a) ?i ?j)`**
Assume `board: array[3, array[3, int]]`, `?a: agent`, `?i, ?j: integer[0,2]`.

```
Work-stack event                  Action                         solved stack after
─────────────────────────────────────────────────────────────────────────────────────
(read ...) seen, status=False     push (read…, True)  ← marker   []
  (line 678–680)                  push (board ?a), ?i, ?j
                                  → work-stack top is ?j
?j popped                         → ParameterExp(?j)             [ParamExp(?j)]
?i popped                         → ParameterExp(?i)             [ParamExp(?j),
                                                                   ParamExp(?i)]
(board ?a) popped, status=False   push marker, push ?a           (unchanged)
  ?a popped                       → ParameterExp(?a)             [?j, ?i, ParamExp(?a)]
  (board…) marker popped          reduce: has_fluent("board")
                                  args = pop 1 → [?a]
                                  → FluentExp(board, (?a,))      [?j, ?i,
                                                                   FluentExp(board,?a)]
(read…) marker popped             reduce: head == "read" (554)
                                  n_children = len(exp) - 1 = 3
                                  args = [solved.pop() for _ in range(3)]
                                       = [FluentExp(board,?a),   ← LIFO pops restore
                                          ParamExp(?i),             left-to-right order
                                          ParamExp(?j)]
                                  base_exp = args[0]
                                  loop over args[1:] (565–571):
                                    result = ArrayRead(base, ?i)
                                    result = ArrayRead(result, ?j)
                                  push result                    [ARRAY_READ(
                                                                   ARRAY_READ(
                                                                    FluentExp(board,?a),
                                                                    ?i),
                                                                   ?j)]
```

The right-to-left resolution order is invisible in the finished tree, but it is why
every reduction that pops a fixed number of operands reads them in source order —
e.g. `member` (573–576) pops `element` first, then `set_expr`, matching
`(member ?p (team ?a))`.

Final node on `solved`:
```
ARRAY_READ
├── arg(0): ARRAY_READ
│           ├── arg(0): FLUENT_EXP(board, ?a)
│           └── arg(1): PARAMETER_EXP(?i)        ← first index dimension
└── arg(1): PARAMETER_EXP(?j)                    ← second index dimension
```

The TypeChecker infers the type of the outer `ARRAY_READ` as `int` (element of
`array[3, int]`, which is itself the element type of `array[3, array[3, int]]`).

**Trace: effect `(write ((board ?a) ?i ?j) 5)`**

The `write` reduction (`up_pddl_reader.py:817–880`) is effect-only and does *not* use
the `solved` stack — it recurses into `_parse_exp` for each sub-part directly. For the
N-D shape (`len(exp) == 3` and `exp[1][0]` is itself a group, line 839) it walks the
target sequence `((board ?a) ?i ?j)`, chaining `n_indices - 1` `ArrayRead`s and
terminating with one `ArrayWrite`:

```
target_seq = ((board ?a) ?i ?j)   n_indices = 2
  target_seq[0] → FluentExp(board, ?a)                        (line 847)
  k=1: ArrayRead(FluentExp(board,?a), ?i)                     (line 859)
  last_idx = ?j → ArrayWrite(<above>, ?j)                     (line 867)
                  ↑ becomes effect.fluent

exp[2] = 5 → INT_CONSTANT(5)                                  (line 844)
             ↑ becomes effect.value
```

The value is `exp[2]`, the last token of the `write` form — there is no `:=` in the
grammar. The 1-D shape `(write (tower ?p) (?r) val)` takes the `len(exp) == 4` branch
(822) and builds a single `ArrayWrite`; the scalar shape `(write (top ?p) val)` falls
through to 868 and is equivalent to a plain `assign`.

### 5.1 Requirements tokens **[XTS-MOD]**

`up_pddl_reader.py:125` — the allowed requirements string now includes:
```
:arrays  :sets  :bounded-integers
```

### 5.2 Type constructors **[XTS-MOD]**

`up_pddl_reader.py:132–137` — grammar rules for `(number lo hi)`, `(array N… T)`,
`(set T)` are added to the `type_constructor` and `type_parent` grammar rules:

```python
type_constructor = (
    Group(Keyword("number") + signed_int + signed_int)
    | Group(Keyword("array") + OneOrMore((name | Word(pyparsing.nums))))
    | Group(Keyword("set") + name)
)
```

Note `array` and `set` take a bare `name` for the element type, which is why an inline
`(array 3 (number 0 2))` does not parse (§2.2).

`up_pddl_reader.py:1602–1669` — type declaration resolver: compound declarations are
resolved in declaration order (element types must appear before the array/set types
referencing them). When the parser sees `(:types idx - (number 0 4))` it calls
`tm.IntType(0, 4)` and maps the name `idx` directly to that type. No `UserType("idx")`
is created.

```python
# up_pddl_reader.py:1657–1661 — build multi-dimensional arrays inside out
sizes = [int(str(constructor[i])) for i in range(1, len(constructor) - 1)]
array_type = types_map[elem_name]
for size in reversed(sizes):
    array_type = self._tm.ArrayType(size, array_type)
# up_pddl_reader.py:1669
types_map[declared_type] = self._tm.SetType(types_map[elem_name])
```

### 5.3 Expression stack machine reductions **[XTS]**

| Token          | Lines              | Stack effect                                                     |
|----------------|--------------------|------------------------------------------------------------------|
| `"read"`       | 554–572            | Pops `base, idx…`; chains `em.ArrayRead` per index dimension     |
| `"write"`      | 817–880            | Effect only; bypasses `solved` and recurses into `_parse_exp`. Chains `ArrayRead` + terminal `ArrayWrite` |
| `"add"`        | 880–895            | `em.SetAdd(element, set_expr)`, assigned back to the set fluent  |
| `"remove"`     | 880–895            | `em.SetRemove(element, set_expr)`, assigned back to the set fluent |
| `"member"`     | 573–576            | `em.SetMember(element, set_expr)`                                |
| `"cardinality"` | 585–587           | `em.SetCardinality(set_expr)` — XTS set cardinality **[XTS]**   |
| `"count"`      | 530–532            | `em.Count(args)` — pre-existing numeric aggregate, not set cardinality |
| `"array.mk"`   | 638–658            | `em.Array([v0, v1, ...])` — handles nested 2-D arrays            |
| `"set.mk"`     | 659–669, 2176–2200 | `em.Set({e0, e1, ...})`; the `:init` path at 2176 also accepts nested `set.mk`/`array.mk` elements |

Multi-index read example: `(read (board ?a) ?i ?j)` chains two `ArrayRead` calls
(`up_pddl_reader.py:564–572`):
```python
result = FluentExp(board, [a])
for idx in [i, j]:
    result = em.ArrayRead(result, idx)
# result = ARRAY_READ(ARRAY_READ(board(?a), ?i), ?j)
```

### 5.4 Forall/exists range variable creation **[XTS-MOD]**

`up_pddl_reader.py:442–504` — `_parse_quantifier_vars`:

When `(forall (?i - (number 0 4)) body)` is parsed:
1. `(number 0 4)` resolves to `IntType(0, 4)` (line 500–501)
2. Creates `RangeVariable('i', initial=0, last=4)` (`range_variable.py:32–54`)
3. Returns a `Dict[str, Variable | RangeVariable]` — the method yields **variable
   objects, not FNodes**. Wrapping happens later: when the body is parsed, a `?i`
   token found in the `var` dict becomes `em.VariableExp(rv)`
   (`up_pddl_reader.py:698–701`), i.e. a `VARIABLE_EXP` whose payload is the
   `RangeVariable`. This is the source of the asymmetry described in §6.2.

A named bounded type behaves identically: `(forall (?i - idx) ...)` with
`idx - (number 0 4)` also produces a `RangeVariable`, because the lookup branch at
lines 483–484 checks `t.is_int_type()` with both bounds set.

Dynamic bounds (`(forall (?i - (number 0 ?n)) ...)` where `?n` is an action
parameter) store `last=Parameter("n")` in the `RangeVariable` (`_bound`, lines
491–499). The proto serializer encodes this as a `PARAMETER` proto expression; the
C++ side expands the range at instantiation time.

**Error handling** — three malformed-input cases each raise a specific
`SyntaxError` rather than crashing with a generic/unrelated exception or silently
misparsing:

| Input | Line | Behavior |
|-------|------|----------|
| A token that's neither `?var` nor `- type` inside a variable list | 462–466 | `SyntaxError` naming the unexpected token, instead of the token being silently skipped |
| `(forall (?i - UndeclaredType) ...)` | 478–481 | `SyntaxError` naming the undefined type, instead of an unrelated bare `KeyError` from the `types_map` lookup |
| `(number 0 ?n)` used outside an action body (`act is None`, e.g. directly in `:init` or `:goal`) | 492–497 | `SyntaxError` explaining that a parameter-dependent bound requires an action context, instead of crashing when `act.parameter(...)` is called on `None` |

**Nested `forall` on effects** (`up_pddl_reader.py:1351–1355`, and the
equivalent precondition sites at lines 1139 and 1172) **[XTS-MOD]**: a
`forall` reduction copies the current variable dict, adds its own bound
variable(s) to the copy, and recurses on the body with that copy:

```python
elif len(eff) == 3 and op == "forall":
    forall_variables = forall_variables.copy()
    forall_variables.update(self._parse_quantifier_vars(eff[1], act, types_map))
    to_add.append((eff[2], forall_variables))
```

Because each recursive branch gets its own dict copy, `(forall (?i ...) (forall (?j ...) body))`
ends up producing one flat effect whose `forall` list holds both `?i` and
`?j`, rather than two nested effect objects — `add_effect(..., forall=(i, j))`
instead of an effect nested inside another. Variable shadowing (an inner
`?i` reusing an outer name) still works correctly because the shadowing
branch's copy is never seen by sibling branches. This flattening is
semantically equivalent to true nesting and is what lets a single PDDL
`forall`-of-`forall` effect compile to one grounded copy per combination of
outer × inner range, rather than requiring the compilers to understand
nested `forall` structures.

---

## 5.5 How parsing, walkers, and compilers fit together

The guide's earlier sections each cover one component. This section shows how they
connect in time for a single concrete line of PDDL.

### The three roles

| Component | Class | Pattern | What it does |
|-----------|-------|---------|--------------|
| Parser | `UPPDDLReader` | stack machine | **Produces** FNodes; does not traverse them |
| TypeChecker | `TypeChecker(DagWalker)` | lazy walker | **Reads** FNodes to infer types; called on demand |
| IPAR transformer | `_transform_expression` | manual recursion | **Rebuilds** FNodes with int params substituted |
| Proto encoder | `FNode2Protobuf(DagWalker)` | eager walker | **Reads** FNodes to emit proto `Expression`s |

The parser is **not** a walker — it is a producer. Walkers only consume the FNode DAG
the parser has already built.

### When the TypeChecker actually runs

There is no dedicated "type-check phase" after parsing. The TypeChecker fires
on demand via the `FNode.type` property (`fnode.py:160–163`):

```python
@property
def type(self):
    return self._env.type_checker.get_type(self)  # triggers a DagWalker traversal
```

The parser itself calls `.type` inline during stack reductions — for example, inside
the `read` reduction (`up_pddl_reader.py:566`):

```python
if not result.type.is_array_type():
    raise SyntaxError(
        f"'read' has more indices than array dimensions: ...")
```

That single `.type` call triggers `TypeChecker.get_type(result)` → `self.walk(result)`,
which traverses the subtree bottom-up and caches the result. Future calls to `.type`
on the same node return immediately from the DagWalker cache (memoized by `id(node)`).

So type checking is interleaved with parsing, one sub-expression at a time — not a
separate pass over the finished tree.

### Why IPAR cannot use a DagWalker

`DagWalker` dispatches by node type alone. IPAR's `_transform_expression` needs two
extra pieces of context at every node: the `int_params` name→index map and the
`instantiations` tuple of concrete values for the current action copy. A DagWalker
handler cannot receive these because the dispatch signature is fixed.

Instead, `_transform_expression` is a hand-written recursive traversal
(`ipar.py:455`) with its own explicit cache (`ipar.py:473–477`):

```python
cache_key = (id(node), instantiations)
if cache_key in self._expression_cache:
    if self._expression_cache[cache_key] is None:
        return None
    return self._expression_cache[cache_key]
```

The cache key includes `instantiations` so the same node can produce different
results for different action copies. This is the one place in the codebase where the
DagWalker pattern is reinvented manually rather than inherited.

### The proto encoder is a DagWalker

After IPAR, the Problem's FNode trees are fully concrete (no `IntType` parameters,
no unresolved `RangeVariable`s for static bounds). `FNode2Protobuf` (`proto_writer.py:239`)
subclasses `DagWalker` directly: each `walk_*` handler receives its children's already-
encoded `proto.Expression`s as `args` and returns a new `proto.Expression`. The
bottom-up order guarantees that `list[1..]` children are ready before the
`FUNCTION_APPLICATION` wrapping them is built.

### End-to-end timeline for one expression

PDDL: `(= (read (slots ?p) ?i) 0)` — precondition of `fill-slot(?p player, ?i slot)`

```
1. Parser stack machine  (up_pddl_reader.py)
   tokens: = ( read ( slots ?p ) ?i ) 0
   ─────────────────────────────────────────────────────────────────────────
   close (slots ?p)  → FluentExp(slots, ?p)
   close (read ...)  → ARRAY_READ(FluentExp(slots,?p), ParamExp(?i))
                        ↑ parser calls .type on this node here (line 566)
                          → TypeChecker walks subtree:
                              FluentExp(slots,?p) → ArrayType(3, IntType(0,4))
                              ParamExp(?i)        → IntType(0,2)
                              ARRAY_READ          → IntType(0,4)   ← element type
                          cached for all future .type calls on this node
   token 0           → INT_CONSTANT(0)
   close (= ...)     → EQUALS(ARRAY_READ(...), INT_CONSTANT(0))

   Result: one FNode tree added to fill-slot's precondition list.

2. IPAR  (_transform_expression, ipar.py:455)
   For each ?i ∈ {0,1,2}:
     cache_key = (id(ARRAY_READ(...)), (0,)) etc.
     ParamExp(?i) → INT_CONSTANT(k)           ← substituted
     ARRAY_READ(FluentExp(slots,?p), INT_CONSTANT(k)) rebuilt
     EQUALS rebuilt
   → 3 new FNode trees (one per concrete ?i), added to 3 new action copies.
   FluentExp(slots,?p) is shared (same Python object, same id) across all copies.

3. Proto_writer  (FNode2Protobuf DagWalker, proto_writer.py:239)
   For fill-slot_0(?p):  precondition tree = EQUALS(ARRAY_READ(FluentExp(slots,?p), INT(0)), INT(0))
   Bottom-up DagWalker:
     FluentExp(slots,?p) → STATE_VARIABLE(slots(?p))
     INT_CONSTANT(0)     → CONSTANT(0)           [index]
     ARRAY_READ(...)     → FUNCTION_APPLICATION("up:array_read", STATE_VARIABLE, CONSTANT(0))
     INT_CONSTANT(0)     → CONSTANT(0)           [value]
     EQUALS(...)         → FUNCTION_APPLICATION("up:equals", array_read_expr, CONSTANT(0))

4. C++  (protobuf_io.cpp → SMT encoder)
   Reads proto: sees "up:array_read" → Z3 select(slots_p_t, 0) = 0
   No further expansion needed — all indices are already concrete.
```

### What the walker hierarchy buys

Any new walker only needs to add `walk_array_read`, `walk_array_write`, and
`walk_range_variable_exp` once (in `IdentityDagWalker`) and every subclass —
`Substituter`, future transformers — inherits XTS support automatically. The
TypeChecker's XTS handlers (`type_checker.py:518–579`) sit in one place and fire
for every caller that touches `.type`, whether that caller is the parser, IPAR, or
a semantic check.

---

## 6. RangeVariable (`model/range_variable.py`)

### 6.1 What it is

`RangeVariable` (`range_variable.py:32`) is the XTS analog of `Variable` for
integer-range quantifiers. It is not a subclass of `Variable`.

```python
class RangeVariable:         # range_variable.py:32
    _name    : str           # line 42 — variable name ("i")
    _initial : int|Parameter # line 43 — lower bound (static or action-param)
    _last    : int|Parameter # line 44 — upper bound
    _type_int: _IntType      # line 54 — IntType(lo, hi) derived from bounds

    @property name    # line 77
    @property initial # line 82 — returns int or param name string
    @property last    # line 90
    @property type    # line 98 — returns _type_int
```

### 6.2 How FNodes carry it

Two `OperatorKind` values can carry a `RangeVariable`:

| Kind                  | How it arises                                | Access                  |
|-----------------------|----------------------------------------------|-------------------------|
| `VARIABLE_EXP` (line 34 operators.py) | Parser creates it via `VariableExp(rv)` | `node.variable()` returns the payload — may be `Variable` or `RangeVariable`; use `isinstance(node.variable(), RangeVariable)` to distinguish. Calling `node.range_variable()` here would crash (asserts `is_range_variable_exp()`). |
| `RANGE_VARIABLE_EXP` (line 35) | Explicit `em.RangeVariableExp(rv)` | `node.range_variable()` at `fnode.py:243`. Calling `node.variable()` here would crash (asserts `is_variable_exp()`). |

The asymmetry is why `engines/compilers/utils.py:491–493` **[XTS-MOD]** adds
`_extract_var`:
```python
def _extract_var(exp):          # utils.py:491
    if exp.is_range_variable_exp():
        return exp.range_variable()
    return exp.variable()
```
This fixes `_apply_function_to_effect` (`utils.py:486–501`) which called `.variable()`
unconditionally on `effect.forall` elements, crashing when any was a `RangeVariable`.

### 6.3 Lifecycle across the two paths

```
Parser (_parse_quantifier_vars, up_pddl_reader.py:442–504)
│   creates RangeVariable; body parsing wraps it in VARIABLE_EXP (line 701),
│   or em.RangeVariableExp builds a RANGE_VARIABLE_EXP directly
│
│   IPAR _transform_expression (ipar.py:455)  ← runs on BOTH paths
│   VARIABLE_EXP(RangeVariable):    substitutes → Int(k)  [ipar.py:484–490]
│   RANGE_VARIABLE_EXP:             substitutes → Int(k)  [ipar.py:504–511]
│   one action copy per k ∈ [lo, hi]
│   (static bounds resolved entirely in Python; no RangeVariable survives into proto)
│
├── RTP-native path
│       proto_writer.py serializes the expanded concrete effects directly.
│       Exception — dynamic bounds (lo or hi is a non-integer action parameter
│       that IPAR cannot resolve):
│           range_var_expression, proto_writer.py:176–226 [XTS]
│           encodes as FUNCTION_APPLICATION("range_var", var, lo, hi)
│           where hi may be a PARAMETER reference instead of a CONSTANT
│           C++ action_instantiator substitutes the concrete param value
│           and expands ∀k ∈ [lo, hi]: body[k/rv] at grounding time
│
└── UP/classical path
        further compilers (ArraysRemover, etc.) receive already-expanded effects
```

---

## 7. The Protobuf Layer

### 7.1 Expression encoding

All expressions are `Expression` proto messages. The `kind` field selects the
representation. All XTS operators use `FUNCTION_APPLICATION`:

| `kind`                     | Used for                                          |
|----------------------------|---------------------------------------------------|
| `CONSTANT`                 | `Int(3)`, `Bool(true)`, etc.                      |
| `PARAMETER`                | action parameter reference                        |
| `VARIABLE`                 | forall variable reference                         |
| `STATE_VARIABLE`           | fluent application: `board(?a)`, `board(i1, i2)`  |
| `FLUENT_SYMBOL`            | just the fluent name (inside STATE_VARIABLE)      |
| `FUNCTION_SYMBOL`          | operator name (first element of FUNCTION_APPLICATION) |
| `FUNCTION_APPLICATION`     | compound: `list[0]` = op symbol, `list[1..]` = args |

**`ARRAY_READ` encoding** (`proto_writer.py:428–447`, `walk_operator`) **[XTS-MOD]**:
```
ARRAY_READ(board(?a), Int(2))
→ FUNCTION_APPLICATION
    list[0]: FUNCTION_SYMBOL("up:array_read")   ← proto_writer.py:84–85
    list[1]: STATE_VARIABLE(board(?a))
    list[2]: CONSTANT(2)
```

`map_operator` in `proto_writer.py:43–106` maps `OperatorKind` → string symbol.
`ARRAY_READ` and `ARRAY_WRITE` are added at lines 84–87 **[XTS-MOD]**.

Decoding is two-step rather than a direct constructor call. `op_to_node_type`
(`proto_reader.py:82`) maps the symbol back to an `OperatorKind` **[XTS]**:
```python
elif op == "up:array_read":   return OperatorKind.ARRAY_READ   # line 125–126
elif op == "up:array_write":  return OperatorKind.ARRAY_WRITE  # line 127–128
```
`_convert_expression` (`proto_reader.py:180`) then rebuilds the FNode generically —
it calls `op_to_node_type` on the head symbol (line 261) and hands the kind plus the
decoded args to `expression_manager.create_node` (line 279). No `ARRAY_READ`-specific
branch is needed on the read side.

**`RANGE_VARIABLE_EXP` encoding** (`range_var_expression`, `proto_writer.py:176–226`;
reached from `walk_range_variable_exp` at line 287 and from the `RangeVariable`
converter at line 1006) **[XTS]**:
```
RANGE_VARIABLE_EXP(rv_i, lo=0, hi=4)
→ FUNCTION_APPLICATION
    list[0]: FUNCTION_SYMBOL("range_var")
    list[1]: VARIABLE("i", type="up:integer[0,4]")
    list[2]: CONSTANT(0)
    list[3]: CONSTANT(4)    ← or PARAMETER("n") if hi is a dynamic bound
```

**`SET_CONSTANT` encoding** (`set_expression`, `proto_writer.py:161–174`) **[XTS]**:
```
SET_CONSTANT({e1, e2})
→ FUNCTION_APPLICATION
    list[0]: FUNCTION_SYMBOL("up:set_constant")
    list[1]: ObjectExp(e1)
    list[2]: ObjectExp(e2)
```

### 7.2 Type serialization **[XTS-MOD]**

`proto_writer.py:514–527` serializes array and set types:

```python
@handles(model.types._ArrayType)           # line 514
def _convert_array_type(self, t: model.types._ArrayType) -> proto.TypeDeclaration:
    return proto.TypeDeclaration(
        type_name=proto_type(t),           # "up:array[3,up:integer[0, 2]]"
        element_type=proto_type(t.elements_type),  # NEW field, proto line 106
        size=t.size,                               # NEW field, proto line 110
    )
```

`_convert_set_type` (line 523) is the same minus `size`, and emits `""` for
`element_type` when the set is untyped.

`proto_reader.py:372–379` **[XTS]** reads back with the new fields:
```python
# Use element_type and size fields from the TypeDeclaration.
elem_type = convert_type_str(msg.element_type, problem)
return problem.environment.type_manager.ArrayType(msg.size, elem_type)
```

### 7.3 Feature flags (`grpc/unified_planning.proto`) **[XTS-MOD]**

New `Feature` enum entries, one bit per XTS construct a problem uses (so the
C++ backend and other consumers can check `problem_kind.has_feature(...)`
without inspecting the expression tree):

| Flag              | Wire value | Line | Meaning                                |
|-------------------|------------|------|------------------------------------------|
| `SET_FLUENTS`     | 72         | 664  | Problem has set-typed fluents           |
| `MEMBERING`       | 73         | 666  | Uses `SET_MEMBER` (`member`)            |
| `ARRAY_FLUENTS`   | 74         | 663  | Problem has array-typed fluents         |
| `COUNTING`        | 75         | 643  | Uses `SET_CARDINALITY` (`cardinality`)  |

---

## 8. The Compilation Stages

**IPAR always runs**, for both the native Z3 path and the classical planner path.
The remaining stages — ArraysRemover, SetsRemover, CountRemover, IntegersRemover,
UserTypeFluentsRemover — are **optional and selected at execution time** by choosing
a named compilation pipeline. They only run on the classical planner path; a problem
going to the Z3 engine skips all of them.

---

### 8.1 IPAR — IntParameterActionsRemover (both paths)

**File**: `engines/compilers/int_parameter_actions_remover.py`

**Input**: actions with `IntType` parameters; `RangeVariable` quantifiers; fluents with `IntType` parameters.
**Output**: one grounded action per valid integer-parameter combination; no `IntType` action parameters; integer-parametered fluents replaced by parameterless variants; `RANGE_VARIABLES` unset in `ProblemKind`.

**Core state** (`ipar.py:57–60`, in `__init__`):
```python
self.domains           # fluent_name → [valid index tuples]  (pre-computed from array dimensions)
self._expression_cache # (id(node), instantiations) → FNode  (keyed on instantiations:
                       #   same node yields different results for different action copies)
self._int_param_fluents# base_name → (int_param_indices, {int_vals → grounded_fluent})
```

**`_transform_expression`** (`ipar.py:455`): manual recursive traversal carrying
`int_params: Dict[str,int]` and `instantiations: Tuple[int,...]`. Dispatch in order:

```
CONSTANT / TIMING_EXP                    →  returned unchanged                (line 480)
VARIABLE_EXP(RangeVariable) ∈ int_params →  Int(k)                           (line 484–490)
PARAMETER_EXP(?i) ∈ int_params           →  Int(instantiations[idx])         (line 493–502)
RANGE_VARIABLE_EXP ∈ int_params          →  Int(k)                           (line 504–511)
FLUENT_EXP                               →  _transform_fluent_exp            (line 513)
FORALL / EXISTS                          →  _transform_quantifier  [XTS]     (line 520)
ARRAY_READ / ARRAY_WRITE                 →  _transform_array_access [XTS]    (line 527)
everything else                          →  _transform_generic (recurse, simplify)
```

Note the `ARRAY_READ`/`ARRAY_WRITE` branch is the one case that can *fall through*:
if `_transform_array_access` returns `None` (index not statically evaluable), control
drops to `_transform_generic` at line 538 rather than returning.

Both `VARIABLE_EXP(RangeVariable)` and `RANGE_VARIABLE_EXP` must be handled: the
parser wraps `RangeVariable` in `VARIABLE_EXP` (see §6.2). Without the first rule, range
variable occurrences inside `forall` bodies are silently left unsubstituted.

**`_transform_quantifier`** (`ipar.py:222`) **[XTS]** — `forall (?i - range(0,n)) body`
with action parameter `?n=3` at instantiation:

```
before  FORALL [RangeVariable("i", 0, ?n)]  body

step 1  _update_range_vars:  ?n → 3   →  range(0, 3)
step 2  _get_range_instantiations:      →  [(0,), (1,), (2,), (3,)]
step 3  transform body[i←0], body[i←1], body[i←2], body[i←3]
step 4  FORALL  →  AND(body[0], body[1], body[2], body[3])
        EXISTS  →  OR (body[0], body[1], body[2], body[3])
step 5  re-wrap in Forall/Exists if regular (non-range) variables remain
```

Edge case (`ipar.py:270–273`): if the range is empty, every body copy is dropped and
the result is `TRUE()` for `forall` / `FALSE()` for `exists`, rather than an
empty `AND`/`OR`.

**`_transform_array_access`** (`ipar.py:369`) **[XTS]** — `board(?a)[?i][?j]` with `?i=2, ?j=1`:

```
before  ARRAY_WRITE(ARRAY_READ(FluentExp(board,?a), ?i), ?j)

unwind  layer 0: is_write=True,  idx=?j → Int(1)
        layer 1: is_write=False, idx=?i → Int(2)
        base: FluentExp(board, ?a)

check   (2, 1) ∈ self.domains["board"]?
          yes  → rebuild chain with concrete indices
          no   → return _OOB  (pruned by caller as infeasible)
          idx not evaluable (state fluent, nested read) → return None
                  caller falls through to _transform_generic (preserves node for C++ to report)

after   ARRAY_WRITE(ARRAY_READ(FluentExp(board,?a), Int(2)), Int(1))
```

The `_OOB` sentinel (`ipar.py:35`) is a module-level `object()` distinct from `None` — these
two cases need separate treatment: `_OOB` is a provably dead access; `None` is a
non-evaluable index that should be preserved as-is for the C++ `SemanticValidationPass`.

**Read/write-ness is preserved, not reconstructed** (`ipar.py:403–404`, `447–451`)
**[XTS]**: as the chain is unwound, each layer records its own `is_write` flag
alongside its index, and the rebuild loop replays that flag:

```python
while current.is_array_read() or current.is_array_write():
    is_write = current.is_array_write()        # line 404
    ...
    layers.append((is_write, idx))
...
for is_write, concrete_idx in reversed(layers):                    # line 449
    result = em.ArrayWrite(result, concrete_idx) if is_write \
        else em.ArrayRead(result, concrete_idx)
```

So an effect target comes out of `_transform_expression` already carrying
`ARRAY_WRITE` at the right position. `_add_instantiated_effect` (line 663) does no
node-kind fixup — it just calls `_transform_expression` on `effect.fluent`,
`effect.value`, and `effect.condition` and forwards the results.

**`_precondition_is_infeasible`** (`ipar.py:737`) **[XTS]** — boundary-action pattern.
After substituting `?i=0` into `(= (blank_row) (- ?i 1))`:

```
before  (= (blank_row) (- ?i 1))   blank_row ∈ [0,3]
        simplify with ?i=0
after   (= (blank_row) -1)          always false, but UP simplifier doesn't know type bounds

_precondition_is_infeasible: recurse AND → find EQUALS(fluent, -1) → -1 ∉ [0,3] → True
_create_instantiated_action: discard action
```

Applied **only to preconditions, never goals** — see "Goal transformation never
drops a goal" below for why the two cases are handled differently.

**`_transform_int_param_fluents`** (`ipar.py:546`) **[XTS]**: `_compile` (line 942)
clears fluents and initial values first (`clear_fluents()` at 954,
`initial_values.clear()` at 959), then calls this at line 967 to rebuild from scratch:

```
val[i: integer[0,4]] : int       →  val_0, val_1, val_2, val_3, val_4   (parameterless)
score[p: Player, i: int[0,4]]    →  score_0(Player), …, score_4(Player)

initial value: val[2] = 7        →  val_2 = 7
```

Populates `_int_param_fluents` for lookup in `_transform_fluent_exp` (`ipar.py:316`).

**Whole-array goal/precondition pass-through** (`ipar.py:310–313`, inside
`_transform_fluent_exp`) **[XTS]**: if the fluent's declared type is an array type, the
node is returned with its (already-transformed) arguments unchanged rather than
resolved to a single element — this is what prevents whole-array comparisons like
`(= (pancake_stack) (array.mk ...))` from being silently dropped. `ARRAYS_REMOVING`
expands the comparison element-wise later, on the classical planner path.

**Plan back-mapping** (`ipar.py:974–984`, the `_map_back` closure inside `_compile`)
**[XTS]**: grounded actions have integer params stripped, so the generic
`lift_action_instance` utility (imported from `compilers/utils.py`) cannot reconstruct
the original `ActionInstance`. The closure looks up `new_to_old[action_instance.action]`
to recover the original action and its `instantiation` tuple, then rebuilds the full
original parameter list (regular params from the plan, integer params from
`instantiation`) before returning `ActionInstance(old_action, full_params)`.

**`is_constant()` guard** (`ipar.py:650`, `657`, inside `_add_single_effect`)
**[XTS-MOD]**: `value.constant_value()` would crash on an unresolved `ARRAY_READ` node
(e.g. an out-of-bounds access that fell through to `_transform_generic` instead of
resolving to a constant); the bounds check only runs `if fluent.type.is_int_type() and
value.is_constant()`, so a non-constant value skips the check instead of crashing.

**No-op action preservation** (`ipar.py:734`, end of `_add_instantiated_effects`)
**[XTS-MOD]**: `return len(new_action.effects) > 0 or not old_action.effects` — keeps
deliberate effect-free actions (e.g. a sensing action) instead of pruning any action
whose effect list ended up empty.

**Goal transformation never drops a goal** (`_transform_goals`, `ipar.py:932–940`)
**[XTS-MOD]**: `_transform_expression` returns `None` for a goal that references a
provably impossible construct (e.g. an out-of-bounds constant array access). Rather
than skip that goal, `_transform_goals` substitutes `FALSE()` for it:

```python
transformed = self._transform_expression(problem, new_problem, goal)
if transformed is None:
    transformed = FALSE()
new_problem.add_goal(transformed)
```

Dropping the goal entirely would silently turn an unsolvable problem into one that
looks solvable (any plan would satisfy an empty goal set); adding `FALSE()` instead
keeps the compiled problem unsolvable, matching the original. This is also why
`_precondition_is_infeasible` (above) is applied **only to preconditions, never
goals** — an out-of-bounds precondition just prunes one grounded action, but an
out-of-bounds goal constant is a modeling error that must make the whole problem
unsolvable, not vanish.

**Axiom entries share the action tuple shape** (`_transform_axioms`, `ipar.py:859`)
**[XTS-MOD]**: `new_to_old` (built by `_transform_actions`, line 847; the assignment is
at line 854) maps every grounded action to `(original_action, instantiation_tuple)`.
`_transform_axioms` records its own entries the same way at line 886 —
`new_to_old[new_axiom] = (axiom, tuple())` — so that `_map_back` (line 974) can
destructure every value in `new_to_old` uniformly regardless of whether it came from
an action or an axiom.

---

### Classical planner path stages (optional — selected at execution time)

The following compilers only run when the classical planner path is chosen.
Each takes a `Problem` and returns a new `Problem`; they are unaware of each other
and must run in this order.

### 8.2 ArraysRemover

**File**: `engines/compilers/arrays_remover.py`

**Input**: `ARRAY_READ`/`ARRAY_WRITE` nodes with concrete integer indices; array fluents.
**Output**: parametric fluents with `Index` UserType; no array fluents or `ARRAY_READ`/`ARRAY_WRITE` nodes.

**`_transform_array_access`** (`arrays_remover.py:279`) **[XTS]**:
```
ARRAY_READ(ARRAY_READ(board(?a), Int(2)), Int(3))
  iteration 1: idx=3, indices=[3], current=ARRAY_READ(board(?a), Int(2))
  iteration 2: idx=2, indices=[2,3], current=FLUENT_EXP(board(?a))
  → board(i2, i3, ?a)    with Index UserType objects created at line 146
```

`_extract_array_indices` (`arrays_remover.py:155`) extracts indices from string-named
fluents (Python API style, e.g., `board[2][3]`) for backwards compatibility.
`_transform_fluent_exp` (`arrays_remover.py:176`) handles fluents, delegating to
`_transform_array_access` for `ARRAY_READ`/`ARRAY_WRITE` targets.

### 8.3 SetsRemover

**File**: `engines/compilers/sets_remover.py`

**Input**: set-typed fluents; `SET_ADD`, `SET_REMOVE`, `SET_MEMBER`, `SET_CARDINALITY` expressions.
**Output**: one boolean fluent per (set-fluent, element) pair; set operations become
conjunctions/disjunctions over those membership predicates.

Three XTS bugs were fixed in this compiler; see §10 for the full bug table.

### 8.4 CountRemover

**File**: `engines/compilers/count_remover.py`

**Input**: `Count(args)` expressions (numeric count aggregate, `OperatorKind.COUNT`).
**Output**: equivalent boolean formulas; no `COUNT` nodes remain.

Supported comparison patterns:
- `Count(args) op constant`
- `constant op Count(args)`
- `Count(args1) op Count(args2)`

### 8.5 IntegersRemover

**File**: `engines/compilers/integers_remover.py`

**Input**: fluents with `IntType` return types.
**Output**: fluents with `Number` UserType; objects `n0`, `n1`, ... per integer value.

`traffic-load: integer[0,9]` → `traffic-load: Number` + objects `n0..n9`.

Arithmetic effects blow up: `traffic-load := traffic-load + 1` becomes N conditional
effects (one per current value) — O(domain) per arithmetic effect, unavoidable in
this encoding. The native Z3 path handles this as `x + 1` with no blowup.

**Bug fixes** (`integers_remover.py:183, 668, 889`) **[XTS-MOD]** (upstream issues):

```python
# Line 183 and 668 — missing payload on create_node:
return em.create_node(node.node_type, tuple(new_args), payload=node._content.payload).simplify()
# Without this, FLUENT_EXP nodes lose their fluent reference.

# Line 889 — None-action skip (guarding add_action at line 892):
if not new_action:
    continue
# Without this, add_action(None) crashes.
```

### 8.6 UserTypeFluentsRemover (unchanged)

Converts non-bool fluents to bool by adding a value parameter:
`board(i1, i2, a): Number` → `board(i1, i2, a, v: Number): bool`.

After all classical path stages, the classical planner sees only boolean predicates
with object parameters. Each array cell × agent × numeric value = one proposition.

### 8.7 Pipeline trace

```
Fluent: board: array[3, array[3, integer[0,8]]]  params=[agent a]
Action: fill(?a: agent, ?i: integer[0,2], ?j: integer[0,2], ?v: integer[0,8])

After IPAR (shared):
  Still array[3,array[3,int[0,8]]]; actions grounded per (?i,?j,?v):
    fill_0_0_1(?a: agent), fill_0_0_2(?a: agent), ...
  Precond: ARRAY_READ(ARRAY_READ(FluentExp(board,a), Int(0)), Int(0)) == Int(0)
  Effect:  fluent=ARRAY_WRITE(ARRAY_READ(FluentExp(board,a), Int(0)), Int(0))  value=Int(1)

── Native Z3 path (ARRAY_READ/WRITE nodes serialized directly) ─────────────
  proto_writer encodes ARRAY_READ as FUNCTION_APPLICATION("up:array_read", ...)
  C++ GroundingPass instantiates ?a, encodes board as Z3 Array(IntSort, IntSort)
  Z3 handles board[0][0] = 0 as a first-class array constraint

── Classical planner path (optional compilers run in order) ────────────────

After ARRAYS_REMOVING:
  board(i_1: Index, i_2: Index, a: agent): integer[0,8]
  Precond: board(i0, i0, a) == Int(0)
  Effect:  board(i0, i0, a) := Int(1)

After SETS_REMOVING (if set fluents present — no-op for this example):
  unchanged

After COUNT_REMOVING (if Count expressions present — no-op for this example):
  unchanged

After INTEGERS_REMOVING:
  board(i_1: Index, i_2: Index, a: agent): Number
  New objects: n0, n1, ..., n8

After USERTYPE_FLUENTS_REMOVING:
  board(i_1: Index, i_2: Index, a: agent, v: Number): bool
  → classical planner proposition: board(i0, i0, agent1, n2)
```

---

## 9. Model-level Semantic Checks

These fire at **problem-construction time**, not at plan time. They are marked with
`# [XTS]` comments in the source; only one site still uses the older numbered form
(`# [XTS check #9]` in `initial_state.py`), so grep for `[XTS` rather than for a
number when locating them.

### 9.1 `model/transition.py` **[XTS-MOD]**

Called when effects are added. Guards:

| Check                                  | Line | What it rejects                                              |
|-----------------------------------------|------|--------------------------------------------------------------|
| `ARRAY_WRITE` as valid effect target    | 278  | Allows `is_array_write()` alongside `is_fluent_exp()`/`is_dot()` as a legal effect target |
| Type-narrowing assignment (check #7)    | 294  | Direct fluent-to-fluent assign where the source's bounded-int range is not a subrange of the destination's — e.g. assigning an `int[0,9]` fluent into an `int[0,4]` one |
| Set-element range bounds                | 311–320 | `SET_ADD`/`SET_REMOVE` whose element expression's provable interval falls outside the set's declared element-type bounds. This is the second caller of `_index_interval` (imported locally at line 316, called at 317) |

### 9.2 `model/problem.py` — `_effect_fluent` **[XTS]**

`problem.py:343–347` — helper to extract the base `Fluent` from an `ARRAY_WRITE` chain
(static-fluent analysis previously crashed because `ARRAY_WRITE` is not `FLUENT_EXP`):
```python
def _effect_fluent(f_node):
    current = f_node
    while current.is_array_write() or current.is_array_read():
        current = current.arg(0)
    return current.fluent()
```
Used at `problem.py:353–388` (six call sites) to update the static-fluent set correctly.

### 9.3 `model/mixins/initial_state.py` — XTS check #9 **[XTS]**

`initial_state.py:34–110` — validates array/set literal element values against declared
element-type bounds when initial values are set:
```python
# initial_state.py:110
# [XTS check #9] Literal element values must be within declared element type bounds.
```

### 9.4 `model/type_manager.py` — nested-set guard **[XTS]**

`type_manager.py:172–176`:
```python
# [XTS] Nested set types are not supported.
if elements_type is not None and elements_type.is_set_type():
    raise UPTypeError(
        f"Nested set type not supported: element type '{elements_type}' is itself "
        "a set; set element types must be bounded integers or user objects.")
```

---

## 10. Bug Fixes Found During This Work

### 10.1 SetsRemover (`engines/compilers/sets_remover.py`) **[XTS-MOD]**

Three bugs, all in code that only executes once a set fluent is actually
present in a problem:

| Method                          | Line     | Symptom                                                            | Current fix                                                      |
|----------------------------------|----------|---------------------------------------------------------------------|--------------------------------------------------------------------|
| `_add_set_as_boolean_fluent`     | 197–216  | Any `set{integer[...]}` fluent crashed on `assert elements_type.is_user_type()` — sets could only ever hold objects | `if/elif/else` dispatch: `UserType` builds an object parameter, `IntType` builds a bounded-int parameter via `_get_or_create_int_usertype` (line 174), anything else raises `NotImplementedError` |
| `_transform_cardinality`         | 492, 496 | For a zero-parameter cardinality helper (all of the set fluent's args are baked into the helper's name), the memoized-lookup branch must call the helper with no arguments; an earlier version instead did `str(*set_expr.args)`, which raises `TypeError` for any set fluent with 2+ parameters | Line 492 builds the name with `"_".join(str(a) for a in set_expr.args)`; line 496's memoized-return path calls the fluent with no arguments, matching how it is created at line 514. Note the *parameterised* branch above it (lines 464–488) is the ordinary case and does apply `(*set_expr.args)` |
| `_transform_equality`            | 603–676  | `(= ?a ?b)` between two set-typed expressions used to hit a restrictive assert expecting a fluent-vs-constant shape | Both sides are checked independently for `is_fluent_exp() and ... is_set_type()`, so fluent-vs-fluent and fluent-vs-constant are both handled |

Still outstanding in the same file: the set-**union** cardinality branch at line 559
builds its helper name with `str(*set1.args)`, which will raise `TypeError` for a set
fluent with 2+ parameters — the same defect that was fixed at line 492, in a sibling
branch that was not reached by the domains exercised here.

### 10.2 Other bugs fixed incidentally (not XTS-specific)

These are pre-existing UP bugs that this work happened to trigger and fix;
they affect any problem that reaches the code path, whether or not it uses
arrays/sets/bounded integers. Worth upstreaming independently of PDDL-XTS.

| File : line | Bug | Fix |
|---|---|---|
| `model/walkers/simplifier.py:436–445` | `walk_set_difference` returned `SetIntersection(*args)` instead of `SetDifference(*args)` — simplifying a set-difference expression silently turned it into an intersection | Returns `self.manager.SetDifference(*args)` (line 445) |
| `model/range_variable.py:59–71` | `RangeVariable.__eq__` compared each field to itself (`self._initial == self._initial`, always `True`) instead of to the other object's field — every `RangeVariable` with a matching name compared equal regardless of its bounds, corrupting the `ExpressionManager`'s node-interning cache | Compares `self._X == oth._X` for `_initial`, `_last`, `_type_int` (lines 64–67) |
| `grpc/proto_writer.py:659` (`_convert_interval`) | Serializing a durative condition's `Interval` wrote `upper=self.convert(interval.lower())` — a copy-paste bug that discarded the real upper bound and duplicated the lower one on the wire | `upper=self.convert(interval.upper())` |
| `engines/compilers/integers_remover.py:183, 668` | `em.create_node(node.node_type, tuple(new_args))` dropped the original node's `payload`, so a rebuilt `FLUENT_EXP` lost its `Fluent` reference | `payload=node._content.payload` passed through |
| `engines/compilers/integers_remover.py:889` | `new_problem.add_action(new_action)` (line 892) was called unconditionally, crashing when a transform returned `None` | `if not new_action: continue` |

---

## 11. Quick Reference: Code Locations

| What you want to find                          | File : line                                             |
|------------------------------------------------|---------------------------------------------------------|
| Type class definitions                         | `model/types.py:24–289` (`BOOL` singleton at 291)       |
| TypeManager factory (IntType / ArrayType / SetType) | `model/type_manager.py:102 / 150 / 167`            |
| Nested-set guard                               | `model/type_manager.py:172–176`                         |
| OperatorKind enum (incl. ARRAY_READ/WRITE)     | `model/operators.py:25–68` (ARRAY_READ 43, ARRAY_WRITE 44) |
| ExpressionManager factory methods              | `model/expression.py:287–892`                           |
| FNode predicates (is_array_read, etc.)         | `model/fnode.py:316–400`                                |
| FNode `__str__` lambda table for new kinds     | `model/fnode.py:68, 69, 87`                             |
| RangeVariable class                            | `model/range_variable.py:32`                            |
| Effect: ARRAY_WRITE allowed, RangeVariable forall | `model/effect.py:76, 80`                             |
| Walker base / dispatch table build             | `model/walkers/generic.py:71–119` (`nt_to_fun` at 29)   |
| DagWalker memoized traversal                   | `model/walkers/dag.py:19–144` (`walk` at 97)            |
| IdentityDagWalker new XTS handlers             | `model/walkers/identitydag.py:110, 113, 124`            |
| Simplifier new XTS handlers                    | `model/walkers/simplifier.py:337, 340`                  |
| TypeChecker: shared array-access check         | `model/walkers/type_checker.py:518–571` (`_check_array_access`) |
| TypeChecker: walk_array_read / walk_array_write | `model/walkers/type_checker.py:574 / 578`              |
| TypeChecker: walk_range_variable_exp            | `model/walkers/type_checker.py:235`                     |
| TypeChecker: walk_member (SET_MEMBER checks)    | `model/walkers/type_checker.py:582–604`                 |
| TypeChecker: walk_set_to_set (SET_ADD/REMOVE)   | `model/walkers/type_checker.py:647–669`                 |
| Index-interval arithmetic helper (new file)     | `model/walkers/index_interval.py` (whole file, 61 lines)|
| Parser: requirements tokens                    | `io/up_pddl_reader.py:125`                              |
| Parser: type constructors (grammar)            | `io/up_pddl_reader.py:132–137`                          |
| Parser: type resolver (ArrayType/SetType)      | `io/up_pddl_reader.py:1602–1669`                        |
| Parser: forall/exists variable + range parsing | `io/up_pddl_reader.py:442–504` (`_parse_quantifier_vars`)|
| Parser: nested `forall`-on-effects flattening  | `io/up_pddl_reader.py:1351–1355` (and 1139, 1172)       |
| Parser: expression stack machine (`_parse_exp`)| `io/up_pddl_reader.py:506–756`                          |
| Parser: `read` / `member` / `cardinality`      | `io/up_pddl_reader.py:554 / 573 / 585`                  |
| Parser: `write` (effect-only)                  | `io/up_pddl_reader.py:817–880`                          |
| Parser: `add` / `remove` (effect-only)         | `io/up_pddl_reader.py:880–895`                          |
| map_operator (ARRAY_READ/WRITE symbols)        | `grpc/proto_writer.py:43–106` (84–87)                   |
| proto_type() string encoding                   | `grpc/proto_writer.py:109–122`                          |
| SET_CONSTANT encoding (`set_expression`)       | `grpc/proto_writer.py:161–174`                          |
| RangeVariable → range_var(...) encoding        | `grpc/proto_writer.py:176–226`                          |
| FNode2Protobuf DagWalker                       | `grpc/proto_writer.py:239`                              |
| ARRAY_READ/WRITE → FUNCTION_APPLICATION        | `grpc/proto_writer.py:428–447` (`walk_operator`)        |
| TypeDeclaration array/set serialization        | `grpc/proto_writer.py:514–527`                          |
| Proto symbol → OperatorKind (`op_to_node_type`)| `grpc/proto_reader.py:82` (array kinds at 125–128)      |
| Proto type deserialization                     | `grpc/proto_reader.py:372–379`                          |
| New Feature enum values                        | `grpc/unified_planning.proto:643, 663, 664, 666`        |
| New TypeDeclaration fields (element_type/size) | `grpc/unified_planning.proto:106, 110`                  |
| IPAR: `_transform_expression` dispatch          | `engines/compilers/int_parameter_actions_remover.py:455`|
| IPAR: quantifier expansion                     | `engines/compilers/int_parameter_actions_remover.py:222`|
| IPAR: array access transform                   | `engines/compilers/int_parameter_actions_remover.py:369`|
| IPAR: whole-array goal/precondition pass-through| `engines/compilers/int_parameter_actions_remover.py:310–313`|
| IPAR: is_constant() guard                      | `engines/compilers/int_parameter_actions_remover.py:650, 657`|
| IPAR: no-op action preservation                | `engines/compilers/int_parameter_actions_remover.py:734`|
| IPAR: goal transformation preserves FALSE()    | `engines/compilers/int_parameter_actions_remover.py:932–940`|
| IPAR: axiom new_to_old tuple shape             | `engines/compilers/int_parameter_actions_remover.py:886`|
| IPAR: `_compile` / `_map_back`                 | `engines/compilers/int_parameter_actions_remover.py:942 / 974`|
| ArraysRemover: array access transform          | `engines/compilers/arrays_remover.py:279`               |
| IntegersRemover: payload bug fix               | `engines/compilers/integers_remover.py:183, 668`        |
| IntegersRemover: None-action skip              | `engines/compilers/integers_remover.py:889`             |
| SetsRemover: set-element-type dispatch         | `engines/compilers/sets_remover.py:197–216`             |
| SetsRemover: cardinality helper fixes          | `engines/compilers/sets_remover.py:492, 496`            |
| SetsRemover: equality between set expressions  | `engines/compilers/sets_remover.py:603–676`             |
| utils.py: _extract_var (RangeVariable forall)  | `engines/compilers/utils.py:486–501`                    |
| transition.py: XTS effect guards               | `model/transition.py:278, 294, 311`                     |
| problem.py: _effect_fluent / static fluents    | `model/problem.py:343–388`                              |
| initial_state.py: XTS check #9                 | `model/mixins/initial_state.py:34–110`                  |
| Simplifier: SetDifference bugfix               | `model/walkers/simplifier.py:436–445`                   |
| RangeVariable: __eq__/__hash__ bugfix          | `model/range_variable.py:59–74`                         |
| proto_writer: durative Interval `upper` bugfix | `grpc/proto_writer.py:659` (`_convert_interval`)        |

---

## 12. Relationship to the Existing Docs

The companion documents now live under `docs/extensions/archive/`. They are
**historical snapshots**: their line numbers were accurate when written and have
drifted since, so treat this guide as the current reference and the archive as
background rationale.

- **`archive/UP-changes.md`**: file-level table, layer-by-layer rationale,
  pipeline consequences, and the architectural contrast (old string-name encoding vs
  new expression nodes). Read this for the "why" behind each change and for the
  research argument (native Z3 encoding vs. classical-planner compilation).

- **`archive/CHANGES-full-per-file.md`**: exhaustive per-subsystem change log for the
  whole `pddl-extension` branch vs. `master` — grammar → parser → model → walkers
  → compilers → domains → tooling, each with before/after snippets and the
  consequence of omitting the change. Read this when you need the full detail
  behind one specific function, beyond what this guide's summaries give.

- **`archive/compilers_functional_spec.md`**: functional specification of the
  compiler chain.

- **`docs/extensions/UP-intro.md`**: the short introduction — what the five features
  are, which files implement each, and how to run the examples. Read it before this
  document if you are new to the extension.

- This document: the "how it all fits together" guide with code locations and
  worked traversal examples. Read it after `UP-intro.md` and before the archive.

---

## 13. Non-Library Files in This Change Set

Everything above documents changes under `unified_planning/`. The rest of the
currently uncommitted files fall into three groups:

**Documentation about this work** (not library code, no runtime effect):
`docs/extensions/UP-guide.md` (this file) plus the `docs/extensions/archive/`
directory described in §12. Two archived files need extra context:
`archive/UP-ASSESSMENT.md` is an external review of the diff — a file-by-file
summary, the four behavior-altering changes it flagged, and the resolution log that
this guide's §9–§10 corrections are drawn from. `archive/compilers_diff.md` is a
line-by-line comparison of `IntParameterActionsRemover` against an earlier backup
copy; the backup it references, `OG_int_parameter_actions_remover.py`, has since
been deleted as dead weight, so that document is a historical snapshot, not a live
diff against a file that still exists. `archive/CHANGES-labyrinth-debugging.md`
(formerly `CHANGES.md` at the repo root) is a narrower document: a debugging log for
the labyrinth domain specifically, pairing bug reports with the domain-side
workaround in place at the time. `docs/__init__.py` and
`docs/extensions/__init__.py` are empty Python package markers.

**Runner scripts** at the top of `docs/extensions/`: `solve.py` is the CLI entry
point (`--compilation` / `--solver`, plus `--format pddl|python` and `--compare`
modes); `tutorial.py` is the minimal didactic example of the extended syntax.

**Test/demonstration PDDL domains** under `docs/extensions/domains/`: the
15-puzzle, dump-trucks, and labyrinth (original and `labyrinth_v2`) directories
each hold a `pddl-extension/` (or `handcrafted/`) variant written in PDDL-XTS —
these are the domains used to exercise arrays, sets, and bounded integers end to
end and to produce the pipeline traces in §8.7 of this guide. The accompanying
`.py` files (`15Puzzle.py`, `Labyrinth.py`, `handcrafted_reader.py`,
`compilation_solving.py`) are the harnesses that parse a domain, run it through a
chosen `--compilation`/`--solving` pair, and report the result — modified/added
alongside the domains they drive, not part of the `unified_planning` library
itself.

`docs/extensions/domains/tests/pddl-extension/` is the newer, finer-grained suite:
~20 small domains each isolating one construct (`sets`, `sets_const`,
`sets_nested`, `forall_const_range`, `forall_param_range`, `multi_array`,
`multi_2d_array`, `scalar_from_array`, `read_as_member`, `write_setexpr`,
`setops_on_reads`, …), driven by `test_domains.py` and indexed in `tests.md`.
These are the best reference for the exact surface syntax of each feature —
prefer them over hand-written examples when in doubt.

**Housekeeping**: `.gitignore` now excludes `venv/` and `plan.txt*` (local
virtualenv and scratch output that shouldn't be tracked); `.idea/workspace.xml`
(a per-developer IDE state file that should never have been committed) is
removed from the index.