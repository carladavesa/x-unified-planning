;; Test: add/remove effects and member preconditions with ARITHMETIC expressions
;; as the set element (not a plain parameter or constant).
;;
;; KEY PATTERNS:
;;   (member (+ ?n 1) (chain))   — membership test on computed value
;;   (add    (+ ?n 1) (chain))   — add computed value to set
;;
;; Domain: a chain of integers; each step adds the successor of a present number.

(define (domain number-chain)
    (:requirements :bounded-integers :sets)

    (:types
        val    - (number 0 5)
        valset - (set val)
    )

    (:functions
        (chain) - valset
    )

    ;; If n is in the chain and n+1 is not, add n+1.
    (:action step
        :parameters (?n - val)
        :precondition (and
            (< ?n 5)
            (member ?n (chain))
            (not (member (+ ?n 1) (chain)))
        )
        :effect (add (+ ?n 1) (chain))
    )
)
