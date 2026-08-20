# PDDL-XTS

A fork of [`unified-planning`](https://github.com/aiplan4eu/unified-planning) that adds
data types to PDDL (arrays, sets and bounded integers), plus compilers that translate
them back into plain PDDL for ordinary planners.

## Why

Standard PDDL has booleans, objects and unbounded numbers, and nothing else. Modelling a
4x4 puzzle board means writing a predicate for every cell by hand:

```lisp
(at-tile-0-0 ?t) (at-tile-0-1 ?t) (at-tile-0-2 ?t) ... 16 of them
```

The fact that the problem is a grid only exists in the modeller's head. Here you declare
it once:

```lisp
(:types
    range    - (number 0 15)
    puzzle15 - (array 4 4 range))
(:functions (puzzle) - puzzle15)
```

and the framework unrolls it for you.

The question the extension is meant to answer is what to do with that structure: compile
it away for a classical planner, or keep it and give it to a solver that already
understands it.

## Features

| Feature | Syntax | What it gives you |
|---|---|---|
| Bounded integers | `val - (number 0 9)` | A type whose values are `0..9`. Usable as a fluent type, an action parameter type or a quantifier range. |
| Arrays | `grid - (array 3 3 cell)` | Multi-dimensional fluents. Read with `(read (grid ?a) ?i ?j)`, write with `(write ((grid ?a) ?i ?j) val)`. |
| Sets | `bag - (set item)` | Set-valued fluents, with `member`, `add`, `remove`, `cardinality`, union, intersect, difference and subset. |
| Count | `(count (lit ?a) (lit ?b))` | How many of the given boolean expressions hold. Usable anywhere a number is, e.g. `(>= (count ...) 2)`. Needs no requirement flag. |
| Integer action parameters | `:parameters (?i - (number 0 3))` | An action parameterised over a numeric range instead of a list of objects. |
| Range variables | `(forall (?i - (number 0 3)) ...)` | Quantifying over a numeric range in preconditions and effects. The bound can be an action parameter: `(number 0 ?n)`. |

Requirements: `:arrays`, `:sets`, `:bounded-integers`.

Two things that trip people up:

- Element types must be declared names. Write `range - (number 0 15)` first, then
  `(array 4 4 range)`. An inline `(array 4 4 (number 0 15))` does not parse.
- `write` has no `:=`. The value is the last token: `(write ((board ?a) ?i ?j) 5)`.

A small complete domain:

```lisp
(define (domain counters)
    (:requirements :arrays :bounded-integers)
    (:types
        idx   - (number 0 3)
        val   - (number 0 5)
        cells - (array 4 val))
    (:functions (counter) - cells)

    (:action bump                          ; ?i is a numeric parameter
        :parameters (?i - idx)
        :precondition (< (read (counter) ?i) 5)
        :effect (write ((counter) ?i) (+ (read (counter) ?i) 1)))

    (:action reset_all                     ; range variable in an effect
        :parameters ()
        :effect (forall (?i - (number 0 3)) (write ((counter) ?i) 0))))
```

## Running something

```bash
pip install -e .                              # from the repo root

cd docs/extensions
python tutorial.py                            # smallest end-to-end example

python solve.py --format pddl \
                --domain  domains/15-puzzle/pddl-extension/domain.pddl \
                --problem domains/15-puzzle/pddl-extension/i0.pddl \
                --compilation uti --solver fast-downward
```

`solve.py` takes `--format pddl` (a domain/problem pair), `--format python` (a Python-API
problem via `--module`/`--instance`) or `--compare` (run both and diff them).

`--compilation` picks a pipeline by name (`up`, `int`, `uti`, `log`, `c`, `ci`, `cin`,
`sc`, `sci`, `scin`, `all`, `iasciu`, `ipar`), defined as `COMPILATION_PIPELINES` in
`domains/compilation_solving.py`. Leave it out to skip compilation and use the native
path.

## Examples

| Directory | What's in it |
|---|---|
| `tutorial.py` | One small problem built through the Python API, using every feature |
| `domains/tests/pddl-extension/` | ~38 domains, each isolating one construct (`sets`, `count`, `multi_2d_array`, `forall_param_range`, ...). The best reference for exact syntax. |
| `domains/tests/pddl-extension/X_*` | 29 negative tests: models that should be rejected |
| `domains/15-puzzle`, `sokoban`, `labyrinth`, ... | Full benchmarks, each with a PDDL-XTS model and a hand-written plain-PDDL model to compare against |

Where prose and a domain under `tests/pddl-extension/` disagree, trust the domain. Those
are executed by `test_domains.py`.