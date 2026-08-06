;; chain = {0}.  Goal: 3 ∈ chain.
;;
;; Plan: step(0), step(1), step(2)  — 3 steps.

(define (problem chain-01)
    (:domain number-chain)

    (:init
        (= (chain) (set.mk (0)))
    )

    (:goal (member 3 (chain)))
)
