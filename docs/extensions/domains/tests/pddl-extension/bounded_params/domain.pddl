(define (domain counter)
    (:requirements :typing :numeric-fluents :bounded-integers)

    (:types
        ;; count-val is an integer in [0, 5]
        count-val - (number 0 5)
    )

    (:functions
        (counter) - count-val
    )

    ;; Set counter to any value strictly greater than the current value.
    (:action set-counter
        :parameters (?v - count-val)
        :precondition (< (counter) ?v)
        :effect (assign (counter) ?v)
    )
)
