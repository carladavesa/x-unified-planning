;; Ben Pathak (pathak.ban@gmail.com)
(define (problem instance2sled10)

	(:domain expedition)

	(:objects
		s0 s1 - sled
		wa0 wa1 wa2 wa3 wa4 wa5 wa6 wa7 wa8 wa9 wa10 wa11 wa12 wa13 wa14 - waypoint
	)

  (:init
		(at s0 wa0)
		(= (sledcapacity s0) 4)
		(= (sledsupplies s0) 1)
		(at s1 wa0)
		(= (sledcapacity s1) 4)
		(= (sledsupplies s1) 1)
		(= (waypointsupplies wa0) 1000)
		(= (waypointsupplies wa1) 0)
		(= (waypointsupplies wa2) 0)
		(= (waypointsupplies wa3) 0)
		(= (waypointsupplies wa4) 0)
		(= (waypointsupplies wa5) 0)
		(= (waypointsupplies wa6) 0)
		(= (waypointsupplies wa7) 0)
		(= (waypointsupplies wa8) 0)
		(= (waypointsupplies wa9) 0)
		(= (waypointsupplies wa10) 0)
		(= (waypointsupplies wa11) 0)
		(= (waypointsupplies wa12) 0)
		(= (waypointsupplies wa13) 0)
		(= (waypointsupplies wa14) 0)
		(isnext wa0 wa1)
		(isnext wa1 wa2)
		(isnext wa2 wa3)
		(isnext wa3 wa4)
		(isnext wa4 wa5)
		(isnext wa5 wa6)
		(isnext wa6 wa7)
		(isnext wa7 wa8)
		(isnext wa8 wa9)
		(isnext wa9 wa10)
		(isnext wa10 wa11)
		(isnext wa11 wa12)
		(isnext wa12 wa13)
		(isnext wa13 wa14)
	)

	(:goal
		(and
			(at s0 wa14)
			(at s1 wa14)
		)
	)
)


