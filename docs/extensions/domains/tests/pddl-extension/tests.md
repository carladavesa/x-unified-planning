Arithmetic range propagation — the operands look fine individually:
- X_bounded_arith_overflow — (assign (c) (+ (a) (b))) where a, b ∈ [0,5]. Their sum can be 10, and the product 25 — both outside [0,5]. Also tests (- 0 (a)) going negative. A naive checker sees "both
  operands are type score" and passes.
- X_write_value_exceeds_elem_bound — literal constant 99 written into an element type of (number 0 5). Bonus: precondition (= (read …) 99) is statically unsatisfiable, also a detectable error.

Array bounds — static vs. computed:
- X_array_const_index_oob — literal indices 4 and 7 on a size-4 array. Purely static, no range analysis needed — the literal is right there.
- X_forall_range_exceeds_array — (forall (?i - (number 0 7)) (write (cells) (?i) 0)) on a size-4 array. The mismatch is between the forall loop bound and the array size, not between the parameter
  type and the array.
- X_computed_index_no_guard — (+ ?i 1) and (- ?i 1) without guards. The spec explicitly warns about this but may not enforce it. At ?i = 3 (the type's max), (+ 3 1) = 4 is statically detectable as
  OOB.

Init value range violations:
- X_array_mk_elem_out_of_range — (array.mk (0 99 -2)) for a (number 0 5) element type. A validator that only checks element count misses this.
- X_set_mk_elem_out_of_range — (set.mk (1 3 15)) for a (number 0 9) element type.

Dimension arity mismatches:
- X_read_2d_one_index — (read (board) ?i) on a 2D array; (write (board) (?i) 9) with 1D syntax on a 2D array.
  Conflicting effects:
- X_double_write_same_cell — two writes to the same cell in one conjunction. The subtle variant: (write (cells) (1) (+ (read (cells) 1) 1)) followed by (write (cells) (1) (+ (read (cells) 1) 2)) —
  does the second read see the intermediate value (order-dependent bug) or the pre-action value (correct parallel semantics)?

Type check depth — element type not checked:
- X_set_ops_type_mismatch — (subset (obj_bag) (int_bag)) where one set holds objects and the other holds bounded integers. A checker that only verifies "both are set types" without comparing element
  types silently accepts this.

Parser/syntax violations:
- X_write_no_index_parens — 1D write with a bare ?i index instead of the required (?i). Spec §2.6 mandates parentheses.
- X_2d_write_on_1d_array — dimension arity mismatch: 2D double-paren write on a 1D array, and 1D single-paren write on a 2D array. Both in the same domain.

Explicitly documented unsupported features:
- X_set_mk_params_effect — (assign (basket) (set.mk (?a ?b))) — parameters inside set.mk in an effect (pitfalls table).
- X_set_mk_arithmetic_effect — (assign (chain) (set.mk ((+ ?n 1) ?n))) — arithmetic inside set.mk in an effect (pitfalls table).
- X_exists_in_effect — exists quantifier inside an :effect body (§4.5: "preconditions only").
- X_fluent_as_array_index — (read (cells) (head)) where (head) is a scalar state fluent, not a constant or parameter (pitfalls table).
- X_two_svs_in_pred — two nested state-variable reads as separate arguments to the same boolean predicate (§2.10 restrictions table).

Type system / semantic violations:
- X_set_of_set_type — declares powerset - (set tagset) where tagset is itself a (set tag). The nesting matrix (§6) marks this as not compilable.
- X_member_on_array — (member ?v (cells)) where (cells) is an array type, not a set. Type mismatch on the second argument of member.
- X_array_mk_overcount — array.mk in :init provides 5 values for a declared size-3 array. Should be caught as a size mismatch.
- X_bounded_init_overflow — initialises a (number 0 5) fluent with 99 and -3. Both are outside the declared range.

Dynamic/indirect composition:
- X_read_as_array_index — (read (data) (read (pointers) ?i)) — using one read result as the index into another array. A subtler variant of the fluent-as-index problem that could slip through a check
  that only looks for plain function names.

Arithmetic range propagation — the operands look fine individually:
- X_bounded_arith_overflow — (assign (c) (+ (a) (b))) where a, b ∈ [0,5]. Their sum can be 10, and the product 25 — both outside [0,5]. Also tests (- 0 (a)) going negative. A naive checker sees "both
  operands are type score" and passes.
- X_write_value_exceeds_elem_bound — literal constant 99 written into an element type of (number 0 5). Bonus: precondition (= (read …) 99) is statically unsatisfiable, also a detectable error.

Array bounds — static vs. computed:
- X_array_const_index_oob — literal indices 4 and 7 on a size-4 array. Purely static, no range analysis needed — the literal is right there.
- X_forall_range_exceeds_array — (forall (?i - (number 0 7)) (write (cells) (?i) 0)) on a size-4 array. The mismatch is between the forall loop bound and the array size, not between the parameter
  type and the array.
- X_computed_index_no_guard — (+ ?i 1) and (- ?i 1) without guards. The spec explicitly warns about this but may not enforce it. At ?i = 3 (the type's max), (+ 3 1) = 4 is statically detectable as
  OOB.

Init value range violations:
- X_array_mk_elem_out_of_range — (array.mk (0 99 -2)) for a (number 0 5) element type. A validator that only checks element count misses this.
- X_set_mk_elem_out_of_range — (set.mk (1 3 15)) for a (number 0 9) element type.

Dimension arity mismatches:
- X_read_2d_one_index — (read (board) ?i) on a 2D array; (write (board) (?i) 9) with 1D syntax on a 2D array.

Conflicting effects:
- X_double_write_same_cell — two writes to the same cell in one conjunction. The subtle variant: (write (cells) (1) (+ (read (cells) 1) 1)) followed by (write (cells) (1) (+ (read (cells) 1) 2)) —
  does the second read see the intermediate value (order-dependent bug) or the pre-action value (correct parallel semantics)?

Type check depth — element type not checked:
- X_set_ops_type_mismatch — (subset (obj_bag) (int_bag)) where one set holds objects and the other holds bounded integers. A checker that only verifies "both are set types" without comparing element
  types silently accepts this.

X_sem_increase_overflow — (increase (counter) 100) for counter: (number 0 5).
The delta 100 > hi - lo = 5, so lo + 100 > hi holds for every possible current value. This is statically guaranteed overflow — no runtime analysis needed. The interval evaluator in
numeric_bounds_index.cpp computes the post-increase interval as [0+100, 5+100] = [100, 105], which is entirely outside [0, 5]. The current code clamps it back to [0, 5] instead of rejecting. That
clamping changes what actions are "applicable" — it lies about what the action does.

X_sem_decrease_underflow — Two variants: delta=50 and delta=7 both guarantee underflow below lo=3 for level: (number 3 9). Same reasoning as above but for decrease. Even hi - delta < lo is statically
verifiable.

X_sem_assign_type_narrowing — (assign (target ?r) (current ?r)) where target: (number 18 23) and current: (number 15 25). The assignment is safe only when current ∈ [18, 23], but the source type
allows 15–17 and 24–25, which are out of the destination range. This is a subtype assignment direction error — you can always widen (setpoint → temp) but not always narrow (temp → setpoint). A
checker that sees "both sides are int-typed" without comparing the intervals misses this.

X_sem_cardinality_of_scalar — (cardinality (score)) where score: (number 0 9). Cardinality is defined only for set types. The type of (score) is statically known; no runtime needed. Additionally
tests that cardinality embedded inside arithmetic (assign (bonus) (+ (cardinality (score)) 1)) is caught too.

X_sem_add_wrong_elem_type — (add item_a (int_bag)) where int_bag: (set level) and item_a is an object. Also (add 5 (obj_bag)). The element's static type is known; a checker that only validates "set
fluent exists" without comparing element types lets this through.

X_sem_member_wrong_elem_type — Same mismatch in precondition context. Three variants: object in int-set, integer in object-set, and a parameter of object type checked against an int-set. The planner
might treat this as "always false" (silently killing the action) rather than rejecting it as a type error — both wrong behaviors.

X_sem_arith_elem_exceeds_type — (add (+ ?n 1) (chain)) where ?n: (number 8 9) and chain element type is (number 0 9). When ?n = 9, (+ 9 1) = 10 > hi = 9. Unlike the general arithmetic overflow case,
here the parameter type makes the overflow unconditional for a specific grounding — the guard (< ?n 9) can never be satisfied because the type forbids it. Static analysis of the parameter type alone
determines the overflow.

X_sem_write_wrong_elem_type — (write (int_arr) (?i) item_a) and (write (obj_arr) (?i) 5). Writing an object into a numeric array cell and an integer into an object-typed array cell. The array's
element type is statically known. Silently encoding item_a as its integer index (a common implementation shortcut for object fluents) would produce silent aliasing bugs — the stored "integer" would
be misinterpreted as a value rather than an object reference.