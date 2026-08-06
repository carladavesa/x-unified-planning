;; BREAK TARGET: computed array index (+ ?i 1) and (- ?i 1) without the
;; mandatory out-of-bounds guards.
;;
;; The spec (section 2.9) explicitly warns:
;;   "an index like (- ?i 1) when ?i = 0 reads an out-of-bounds cell that
;;    does not exist — and silently gets the value 0."
;;   "Always add explicit bounds guards as the FIRST precondition."
;;
;; `shift_right` reads cell (+ ?i 1) and writes to cell ?i.  When ?i = 3
;; (the last valid index of a size-4 array), it reads index 4 — OOB.
;; No guard `(<= ?i 2)` is present.
;;
;; `shift_left` reads cell (- ?i 1) and writes to cell ?i.  When ?i = 0
;; it reads index -1 — OOB.  No guard `(>= ?i 1)` is present.
;;
;; This should be detectable: the index type is (number 0 3), so at its
;; maximum value (+ 3 1) = 4 is a static overflow beyond array size 4.
;;
;; Expected: error or warning for each unguarded computed index that can
;; exceed array bounds.

(define (domain X-computed-index-no-guard)
    (:requirements :typing :arrays :bounded-integers)

    (:types
        slot  - (number 0 3)    ; max value 3 → (+ 3 1) = 4 is OOB
        val   - (number 0 9)
        store - (array 4 val)   ; valid indices 0..3
    )

    (:functions
        (cells) - store
    )

    ;; (+ ?i 1) when ?i = 3 → index 4, out of bounds
    (:action shift_right
        :parameters (?i - slot)
        :precondition ()
        :effect (write (cells) (?i) (read (cells) (+ ?i 1)))
    )

    ;; (- ?i 1) when ?i = 0 → index -1, out of bounds
    (:action shift_left
        :parameters (?i - slot)
        :precondition ()
        :effect (write (cells) (?i) (read (cells) (- ?i 1)))
    )
)
