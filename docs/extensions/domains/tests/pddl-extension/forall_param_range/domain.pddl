;; Test: FORALL with a PARAMETER-BOUNDED INTEGER RANGE in a PRECONDITION,
;;       where the body contains ARRAY READS.
;;
;; KEY PATTERNS:
;;   precondition: (forall (?i - (number 0 ?n)) (= (read (cells) ?i) 0))
;;   — the upper bound ?n is an action parameter, not a literal
;;   — the body reads from a native array fluent
;;
;; Extends pancake_bounded in two ways:
;;   1. Forall is in a PRECONDITION (pancake only uses forall in effects).
;;   2. The body references an ARRAY READ (pancake uses scalar fluents).
;;
;; Domain: a 5-slot array; mark "prefix done" when a chosen prefix is all zero.

(define (domain forall-param-array)
    (:requirements :typing :adl :arrays :bounded-integers)

    (:types
        idx - (number 0 4)
        val - (number 0 9)
        arr - (array 5 val)
    )

    (:predicates
        (prefix_done)
    )

    (:functions
        (cells) - arr
    )

    ;; Zero out one cell.
    (:action zero
        :parameters (?i - idx)
        :precondition (> (read (cells) ?i) 0)
        :effect (write (cells) (?i) 0)
    )

    ;; Declare the prefix [0..?n] done — fires only if every cell in [0..?n] is 0.
    (:action mark_prefix
        :parameters (?n - idx)
        :precondition (forall (?i - (number 0 ?n)) (= (read (cells) ?i) 0))
        :effect (prefix_done)
    )
)
