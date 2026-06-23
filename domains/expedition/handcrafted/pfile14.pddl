;; Ben Pathak (pathak.ban@gmail.com)
(define (problem instance2sled4)

	(:domain expedition)

	(:objects
		s0 s1 - sled
		wa0 wa1 wa2 wa3 wa4 wa5 wa6 wa7 wa8 wb0 wb1 wb2 wb3 wb4 wb5 wb6 wb7 wb8 - waypoint
	)

  (:init
		(at s0 wa0)
		(= (sledcapacity s0) 4)
		(= (sledsupplies s0) 1)
		(= (waypointsupplies wa0) 1000)
		(= (waypointsupplies wa1) 0)
		(= (waypointsupplies wa2) 0)
		(= (waypointsupplies wa3) 0)
		(= (waypointsupplies wa4) 0)
		(= (waypointsupplies wa5) 0)
		(= (waypointsupplies wa6) 0)
		(= (waypointsupplies wa7) 0)
		(= (waypointsupplies wa8) 0)
		(isnext wa0 wa1)
		(isnext wa1 wa2)
		(isnext wa2 wa3)
		(isnext wa3 wa4)
		(isnext wa4 wa5)
		(isnext wa5 wa6)
		(isnext wa6 wa7)
		(isnext wa7 wa8)
		(at s1 wb0)
		(= (sledcapacity s1) 4)
		(= (sledsupplies s1) 1)
		(= (waypointsupplies wb0) 1000)
		(= (waypointsupplies wb1) 0)
		(= (waypointsupplies wb2) 0)
		(= (waypointsupplies wb3) 0)
		(= (waypointsupplies wb4) 0)
		(= (waypointsupplies wb5) 0)
		(= (waypointsupplies wb6) 0)
		(= (waypointsupplies wb7) 0)
		(= (waypointsupplies wb8) 0)
		(isnext wb0 wb1)
		(isnext wb1 wb2)
		(isnext wb2 wb3)
		(isnext wb3 wb4)
		(isnext wb4 wb5)
		(isnext wb5 wb6)
		(isnext wb6 wb7)
		(isnext wb7 wb8)
	)

	(:goal
		(and
			(at s0 wa8)
			(at s1 wb8)
		)
	)
)


