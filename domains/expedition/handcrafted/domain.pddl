;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Expedition domain
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 
;;; Sleds need to follow a sequence of waypoints
;;; Sleds need supplies to move, and can retrieve and store supplies in waypoints
;;; Their objective is usually to arrive to the last waypoint
;;; There is possible interaction between sleds to cooperate.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (domain expedition)
;(:requirements :typing :fluents)
     (:types sled waypoint - object)

     (:predicates
          (at ?s - sled ?w - waypoint)
          (isnext ?x - waypoint ?y - waypoint)
     )

     (:functions
          (sledsupplies ?s - sled)
          (sledcapacity ?s - sled)
          (waypointsupplies ?w - waypoint)
     )
     ;; Move sled to the next waypoint
     (:action moveforwards
     :parameters (?s - sled ?w1 ?w2 - waypoint)
     :precondition (and (at ?s ?w1)
                    (>= (sledsupplies ?s) 1)
                    (isnext ?w1 ?w2))
     :effect (and (not (at ?s ?w1))
               (at ?s ?w2)
               (decrease (sledsupplies ?s) 1)))

     ;; Move sled to the previous waypoint
     (:action movebackwards
     :parameters (?s - sled ?w1 ?w2 - waypoint)
     :precondition (and (at ?s ?w1)
                    (>= (sledsupplies ?s) 1)
                    (isnext ?w2 ?w1))
     :effect (and (not (at ?s ?w1))
               (at ?s ?w2)
               (decrease (sledsupplies ?s) 1)))

     ;; Store sled supplies
     (:action storesupplies
     :parameters (?s - sled ?w - waypoint)
     :precondition (and (at ?s ?w)
                    (>= (sledsupplies ?s) 1))
     :effect (and (increase (waypointsupplies ?w) 1)
               (decrease (sledsupplies ?s) 1)))

     ;; Retrieve waypoint supplies
     (:action retrievesupplies
     :parameters (?s - sled ?w - waypoint)
     :precondition (and (at ?s ?w)
                    (>= (waypointsupplies ?w) 1)
                    (> (sledcapacity ?s) (sledsupplies ?s)))
     :effect (and (decrease (waypointsupplies ?w) 1)
               (increase (sledsupplies ?s) 1)))
)
