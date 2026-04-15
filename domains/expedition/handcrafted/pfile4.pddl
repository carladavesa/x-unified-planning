;; Ben Pathak (pathak.ban@gmail.com)
(define (problem instance2sled4)

	(:domain expedition)

	(:objects
		s0 s1 - sled
		wa0 wa1 wa2 wa3 wa4 wa5 wa6 wa7 wa8 - waypoint
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
		(at s1 wa0)
		(= (sledcapacity s1) 4)
		(= (sledsupplies s1) 1)
	)

	(:goal
		(and
			(at s0 wa8)
			(at s1 wa8)
		)
	)
)


