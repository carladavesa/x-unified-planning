;; goal=5 is unreachable: OOB reads return 0 (CWA), valid shifts can only
;; propagate the init values {1,2,3,4} — 5 is never produced by any path.
(define (problem X-computed-index-no-guard-01)
    (:domain X-computed-index-no-guard)
    (:init
        (= (cells) (array.mk (1 2 3 4)))
    )
    (:goal (= (read (cells) 3) 5))
)
