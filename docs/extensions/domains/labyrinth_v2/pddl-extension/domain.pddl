;; Labyrinth — third design (Option A).
;;
;; Key changes from domain2 v1:
;;
;;   1. GRID STORES SETS DIRECTLY: grid - (array 4 4 dir_set).
;;      Each cell holds its own open-directions set.  No card objects,
;;      no separate open-dirs function, no auxiliary card parameters.
;;
;;   2. ROBOT POSITION AS TWO idx FLUENTS: (robot-row) and (robot-col).
;;      No card-identity tracking; the robot's location is its 2D cell.
;;
;;   3. MEMBER ON READ: (member N (read (card_at) ?r ?c)) is a predicate
;;      applied to a term — same pattern as (connections (read ...) N)
;;      in v1, not nested function composition.
;;
;;   4. ROTATION PRECONDITION: single (not (= (robot-col) ?c)) check
;;      for column rotations; (not (= (robot-row) ?r)) for row rotations.
;;      Direction sets rotate with the cells automatically.

(define (domain labyrinth2)
    (:requirements :typing :arrays :bounded-integers :sets)

    (:types
        direction - object
        idx       - (number 0 3)
        dir_set   - (set direction)
        grid      - (array 4 4 dir_set)
    )

    (:constants N S E W - direction)

    (:functions
        (card_at)   - grid
        (robot-row) - idx
        (robot-col) - idx
    )

    ; ---------------------------------------------------------------
    ; Movement
    ; ---------------------------------------------------------------

    (:action move_north
        :parameters (?r ?c - idx)
        :precondition (and
            (>= ?r 1)
            (= (robot-row) ?r)
            (= (robot-col) ?c)
            (member N (read (card_at) ?r ?c))
            (member S (read (card_at) (- ?r 1) ?c))
        )
        :effect (decrease (robot-row) 1)
    )

    (:action move_south
        :parameters (?r ?c - idx)
        :precondition (and
            (<= ?r 2)
            (= (robot-row) ?r)
            (= (robot-col) ?c)
            (member S (read (card_at) ?r ?c))
            (member N (read (card_at) (+ ?r 1) ?c))
        )
        :effect (increase (robot-row) 1)
    )

    (:action move_east
        :parameters (?r ?c - idx)
        :precondition (and
            (<= ?c 2)
            (= (robot-row) ?r)
            (= (robot-col) ?c)
            (member E (read (card_at) ?r ?c))
            (member W (read (card_at) ?r (+ ?c 1)))
        )
        :effect (increase (robot-col) 1)
    )

    (:action move_west
        :parameters (?r ?c - idx)
        :precondition (and
            (>= ?c 1)
            (= (robot-row) ?r)
            (= (robot-col) ?c)
            (member W (read (card_at) ?r ?c))
            (member E (read (card_at) ?r (- ?c 1)))
        )
        :effect (decrease (robot-col) 1)
    )

    ; ---------------------------------------------------------------
    ; Rotation — direction sets live in the grid cells, so rotating
    ; a row/col automatically carries each cell's open-dirs with it.
    ; Precondition: one inequality check suffices (robot not in the
    ; moving row/col), replacing 4 explicit card-identity checks.
    ; ---------------------------------------------------------------

    (:action rotate_col_up
        :parameters (?c - idx)
        :precondition (not (= (robot-col) ?c))
        :effect (and
            (write ((card_at) 0 ?c) (read (card_at) 1 ?c))
            (write ((card_at) 1 ?c) (read (card_at) 2 ?c))
            (write ((card_at) 2 ?c) (read (card_at) 3 ?c))
            (write ((card_at) 3 ?c) (read (card_at) 0 ?c))
        )
    )

    (:action rotate_col_down
        :parameters (?c - idx)
        :precondition (not (= (robot-col) ?c))
        :effect (and
            (write ((card_at) 0 ?c) (read (card_at) 3 ?c))
            (write ((card_at) 1 ?c) (read (card_at) 0 ?c))
            (write ((card_at) 2 ?c) (read (card_at) 1 ?c))
            (write ((card_at) 3 ?c) (read (card_at) 2 ?c))
        )
    )

    (:action rotate_row_left
        :parameters (?r - idx)
        :precondition (not (= (robot-row) ?r))
        :effect (and
            (write ((card_at) ?r 0) (read (card_at) ?r 1))
            (write ((card_at) ?r 1) (read (card_at) ?r 2))
            (write ((card_at) ?r 2) (read (card_at) ?r 3))
            (write ((card_at) ?r 3) (read (card_at) ?r 0))
        )
    )

    (:action rotate_row_right
        :parameters (?r - idx)
        :precondition (not (= (robot-row) ?r))
        :effect (and
            (write ((card_at) ?r 0) (read (card_at) ?r 3))
            (write ((card_at) ?r 1) (read (card_at) ?r 0))
            (write ((card_at) ?r 2) (read (card_at) ?r 1))
            (write ((card_at) ?r 3) (read (card_at) ?r 2))
        )
    )
)
