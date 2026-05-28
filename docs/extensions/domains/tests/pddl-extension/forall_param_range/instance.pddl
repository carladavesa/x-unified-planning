;; cells = [1, 0, 0, 5, 5].
;;
;; Goal: (prefix_done).
;;
;; Plan: zero(0), mark_prefix(2)  — 2 steps.
;;   After zero(0): cells = [0, 0, 0, 5, 5].
;;   mark_prefix(2): checks forall i in [0..2]: cells[i] = 0
;;                   → cells[0]=0, cells[1]=0, cells[2]=0  ✓
;;
;; mark_prefix(2) would fail before zero(0) because cells[0] = 1 ≠ 0.

(define (problem forall-param-array-01)
    (:domain forall-param-array)

    (:init
        (= (cells) (array.mk (1 0 0 5 5)))
    )

    (:goal (prefix_done))
)
