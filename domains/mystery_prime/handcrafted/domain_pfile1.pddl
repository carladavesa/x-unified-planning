(define (domain mysteryprimetyped)
(:predicates  (fears_depression_expectation)
 (craves_depression_chicken)
 (craves_depression_tuna)
 (fears_angina_rest)
 (craves_angina_wurst)
 (craves_depression_pistachio)
 (fears_angina_expectation)
 (craves_angina_tuna)
 (craves_angina_pistachio)
 (craves_expectation_pistachio)
 (craves_rest_tuna)
 (craves_expectation_wurst)
 (craves_rest_wurst)
 (craves_angina_chicken)
 (craves_expectation_chicken)
 (craves_rest_pistachio)
 (craves_rest_chicken)
 (craves_expectation_tuna)
 (craves_depression_wurst)
 (fears_depression_rest)
)
(:functions   (locale_tuna)
  (harmony_expectation)
  (locale_wurst)
  (harmony_rest)
  (locale_chicken)
  (locale_pistachio)
)
(:action drink__wurst__tuna
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(increase (locale_tuna) 1.0)
))
(:action drink__wurst__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(increase (locale_wurst) 1.0)
))
(:action drink__wurst__chicken
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(increase (locale_chicken) 1.0)
))
(:action drink__wurst__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(increase (locale_pistachio) 1.0)
))
(:action drink__tuna__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_tuna) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_tuna) 1.0)			(increase (locale_pistachio) 1.0)
))
(:action drink__tuna__tuna
	:parameters ()
	:precondition (and (>= (+ (*   (locale_tuna) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_tuna) 1.0)			(decrease (locale_tuna) 1.0)
))
(:action drink__tuna__chicken
	:parameters ()
	:precondition (and (>= (+ (*   (locale_tuna) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_tuna) 1.0)			(increase (locale_chicken) 1.0)
))
(:action drink__tuna__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_tuna) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_wurst) 1.0)			(decrease (locale_tuna) 1.0)
))
(:action feast__expectation__tuna__pistachio
	:parameters ()
	:precondition (and  (craves_expectation_tuna)(>= (+ (*   (locale_tuna) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_tuna) 1.0)			(craves_expectation_pistachio)			(not (craves_expectation_tuna))
))
(:action feast__expectation__tuna__wurst
	:parameters ()
	:precondition (and  (craves_expectation_tuna)(>= (+ (*   (locale_tuna) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_tuna) 1.0)			(craves_expectation_wurst)			(not (craves_expectation_tuna))
))
(:action drink__pistachio__chicken
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(increase (locale_chicken) 1.0)
))
(:action drink__pistachio__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(increase (locale_pistachio) 1.0)
))
(:action drink__pistachio__tuna
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_tuna) 1.0)			(decrease (locale_pistachio) 1.0)
))
(:action drink__pistachio__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(increase (locale_wurst) 1.0)
))
(:action feast__rest__pistachio__chicken
	:parameters ()
	:precondition (and  (craves_rest_pistachio)(>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(not (craves_rest_pistachio))			(craves_rest_chicken)
))
(:action feast__rest__pistachio__tuna
	:parameters ()
	:precondition (and  (craves_rest_pistachio)(>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(not (craves_rest_pistachio))			(craves_rest_tuna)
))
(:action feast__rest__pistachio__wurst
	:parameters ()
	:precondition (and  (craves_rest_pistachio)(>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(not (craves_rest_pistachio))			(craves_rest_wurst)
))
(:action drink__chicken__chicken
	:parameters ()
	:precondition (and (>= (+ (*   (locale_chicken) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_chicken) 1.0)			(decrease (locale_chicken) 1.0)
))
(:action drink__chicken__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_chicken) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_wurst) 1.0)			(decrease (locale_chicken) 1.0)
))
(:action drink__chicken__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_chicken) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_pistachio) 1.0)			(decrease (locale_chicken) 1.0)
))
(:action drink__chicken__tuna
	:parameters ()
	:precondition (and (>= (+ (*   (locale_chicken) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_tuna) 1.0)			(decrease (locale_chicken) 1.0)
))
(:action feast__rest__tuna__pistachio
	:parameters ()
	:precondition (and  (craves_rest_tuna)(>= (+ (*   (locale_tuna) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_tuna) 1.0)			(craves_rest_pistachio)			(not (craves_rest_tuna))
))
(:action feast__rest__tuna__wurst
	:parameters ()
	:precondition (and  (craves_rest_tuna)(>= (+ (*   (locale_tuna) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_tuna) 1.0)			(craves_rest_wurst)			(not (craves_rest_tuna))
))
(:action overcome__depression__rest__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_rest_wurst) (craves_depression_wurst))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(not (craves_depression_wurst))			(fears_depression_rest)
))
(:action feast__expectation__pistachio__wurst
	:parameters ()
	:precondition (and  (craves_expectation_pistachio)(>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(not (craves_expectation_pistachio))			(craves_expectation_wurst)
))
(:action feast__rest__wurst__tuna
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0) (craves_rest_wurst))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(craves_rest_tuna)			(not (craves_rest_wurst))
))
(:action feast__expectation__pistachio__chicken
	:parameters ()
	:precondition (and  (craves_expectation_pistachio)(>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(not (craves_expectation_pistachio))			(craves_expectation_chicken)
))
(:action feast__expectation__pistachio__tuna
	:parameters ()
	:precondition (and  (craves_expectation_pistachio)(>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(not (craves_expectation_pistachio))			(craves_expectation_tuna)
))
(:action feast__rest__wurst__chicken
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0) (craves_rest_wurst))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(not (craves_rest_wurst))			(craves_rest_chicken)
))
(:action feast__rest__wurst__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0) (craves_rest_wurst))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(not (craves_rest_wurst))			(craves_rest_pistachio)
))
(:action overcome__depression__expectation__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_expectation) 1.0) 1.0 ) 0.0) (craves_expectation_wurst) (craves_depression_wurst))
	:effect (and 
			(decrease (harmony_expectation) 1.0)			(not (craves_depression_wurst))			(fears_depression_expectation)
))
(:action feast__rest__chicken__wurst
	:parameters ()
	:precondition (and  (craves_rest_chicken)(>= (+ (*   (locale_chicken) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_chicken) 1.0)			(craves_rest_wurst)			(not (craves_rest_chicken))
))
(:action feast__rest__chicken__pistachio
	:parameters ()
	:precondition (and  (craves_rest_chicken)(>= (+ (*   (locale_chicken) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_chicken) 1.0)			(craves_rest_pistachio)			(not (craves_rest_chicken))
))
(:action overcome__angina__rest__chicken
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_angina_chicken) (craves_rest_chicken))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(not (craves_angina_chicken))			(fears_angina_rest)
))
(:action feast__expectation__wurst__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0) (craves_expectation_wurst))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(craves_expectation_pistachio)			(not (craves_expectation_wurst))
))
(:action feast__expectation__wurst__tuna
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0) (craves_expectation_wurst))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(not (craves_expectation_wurst))			(craves_expectation_tuna)
))
(:action feast__expectation__wurst__chicken
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0) (craves_expectation_wurst))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(not (craves_expectation_wurst))			(craves_expectation_chicken)
))
(:action feast__expectation__chicken__wurst
	:parameters ()
	:precondition (and  (craves_expectation_chicken)(>= (+ (*   (locale_chicken) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_chicken) 1.0)			(craves_expectation_wurst)			(not (craves_expectation_chicken))
))
(:action feast__expectation__chicken__pistachio
	:parameters ()
	:precondition (and  (craves_expectation_chicken)(>= (+ (*   (locale_chicken) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_chicken) 1.0)			(craves_expectation_pistachio)			(not (craves_expectation_chicken))
))
(:action succumb__depression__rest__wurst
	:parameters ()
	:precondition (and  (craves_rest_wurst) (fears_depression_rest))
	:effect (and 
			(increase (harmony_rest) 1.0)			(not (fears_depression_rest))			(craves_depression_wurst)
))
(:action succumb__depression__rest__tuna
	:parameters ()
	:precondition (and  (craves_rest_tuna) (fears_depression_rest))
	:effect (and 
			(increase (harmony_rest) 1.0)			(not (fears_depression_rest))			(craves_depression_tuna)
))
(:action succumb__depression__rest__pistachio
	:parameters ()
	:precondition (and  (craves_rest_pistachio) (fears_depression_rest))
	:effect (and 
			(increase (harmony_rest) 1.0)			(not (fears_depression_rest))			(craves_depression_pistachio)
))
(:action succumb__depression__rest__chicken
	:parameters ()
	:precondition (and  (craves_rest_chicken) (fears_depression_rest))
	:effect (and 
			(increase (harmony_rest) 1.0)			(not (fears_depression_rest))			(craves_depression_chicken)
))
(:action succumb__depression__expectation__wurst
	:parameters ()
	:precondition (and  (fears_depression_expectation) (craves_expectation_wurst))
	:effect (and 
			(increase (harmony_expectation) 1.0)			(not (fears_depression_expectation))			(craves_depression_wurst)
))
(:action succumb__depression__expectation__tuna
	:parameters ()
	:precondition (and  (fears_depression_expectation) (craves_expectation_tuna))
	:effect (and 
			(increase (harmony_expectation) 1.0)			(not (fears_depression_expectation))			(craves_depression_tuna)
))
(:action succumb__depression__expectation__pistachio
	:parameters ()
	:precondition (and  (craves_expectation_pistachio) (fears_depression_expectation))
	:effect (and 
			(increase (harmony_expectation) 1.0)			(not (fears_depression_expectation))			(craves_depression_pistachio)
))
(:action succumb__depression__expectation__chicken
	:parameters ()
	:precondition (and  (fears_depression_expectation) (craves_expectation_chicken))
	:effect (and 
			(increase (harmony_expectation) 1.0)			(not (fears_depression_expectation))			(craves_depression_chicken)
))
(:action succumb__angina__rest__wurst
	:parameters ()
	:precondition (and  (fears_angina_rest) (craves_rest_wurst))
	:effect (and 
			(increase (harmony_rest) 1.0)			(not (fears_angina_rest))			(craves_angina_wurst)
))
(:action succumb__angina__rest__tuna
	:parameters ()
	:precondition (and  (craves_rest_tuna) (fears_angina_rest))
	:effect (and 
			(increase (harmony_rest) 1.0)			(not (fears_angina_rest))			(craves_angina_tuna)
))
(:action succumb__angina__rest__pistachio
	:parameters ()
	:precondition (and  (fears_angina_rest) (craves_rest_pistachio))
	:effect (and 
			(increase (harmony_rest) 1.0)			(not (fears_angina_rest))			(craves_angina_pistachio)
))
(:action succumb__angina__rest__chicken
	:parameters ()
	:precondition (and  (fears_angina_rest) (craves_rest_chicken))
	:effect (and 
			(increase (harmony_rest) 1.0)			(not (fears_angina_rest))			(craves_angina_chicken)
))
(:action overcome__angina__expectation__chicken
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_expectation) 1.0) 1.0 ) 0.0) (craves_angina_chicken) (craves_expectation_chicken))
	:effect (and 
			(decrease (harmony_expectation) 1.0)			(not (craves_angina_chicken))			(fears_angina_expectation)
))
(:action overcome__depression__rest__tuna
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_depression_tuna) (craves_rest_tuna))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(not (craves_depression_tuna))			(fears_depression_rest)
))
(:action overcome__depression__rest__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_depression_pistachio) (craves_rest_pistachio))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(not (craves_depression_pistachio))			(fears_depression_rest)
))
(:action overcome__depression__rest__chicken
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_depression_chicken) (craves_rest_chicken))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(not (craves_depression_chicken))			(fears_depression_rest)
))
(:action overcome__depression__expectation__tuna
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_expectation) 1.0) 1.0 ) 0.0) (craves_depression_tuna) (craves_expectation_tuna))
	:effect (and 
			(decrease (harmony_expectation) 1.0)			(fears_depression_expectation)			(not (craves_depression_tuna))
))
(:action overcome__depression__expectation__pistachio
	:parameters ()
	:precondition (and  (craves_expectation_pistachio)(>= (+ (*   (harmony_expectation) 1.0) 1.0 ) 0.0) (craves_depression_pistachio))
	:effect (and 
			(decrease (harmony_expectation) 1.0)			(fears_depression_expectation)			(not (craves_depression_pistachio))
))
(:action overcome__depression__expectation__chicken
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_expectation) 1.0) 1.0 ) 0.0) (craves_depression_chicken) (craves_expectation_chicken))
	:effect (and 
			(decrease (harmony_expectation) 1.0)			(fears_depression_expectation)			(not (craves_depression_chicken))
))
(:action overcome__angina__rest__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_angina_wurst) (craves_rest_wurst))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(fears_angina_rest)			(not (craves_angina_wurst))
))
(:action overcome__angina__rest__tuna
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_rest_tuna) (craves_angina_tuna))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(fears_angina_rest)			(not (craves_angina_tuna))
))
(:action overcome__angina__rest__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_rest_pistachio) (craves_angina_pistachio))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(not (craves_angina_pistachio))			(fears_angina_rest)
))
(:action succumb__angina__expectation__wurst
	:parameters ()
	:precondition (and  (craves_expectation_wurst) (fears_angina_expectation))
	:effect (and 
			(increase (harmony_expectation) 1.0)			(not (fears_angina_expectation))			(craves_angina_wurst)
))
(:action succumb__angina__expectation__tuna
	:parameters ()
	:precondition (and  (fears_angina_expectation) (craves_expectation_tuna))
	:effect (and 
			(increase (harmony_expectation) 1.0)			(not (fears_angina_expectation))			(craves_angina_tuna)
))
(:action succumb__angina__expectation__pistachio
	:parameters ()
	:precondition (and  (craves_expectation_pistachio) (fears_angina_expectation))
	:effect (and 
			(increase (harmony_expectation) 1.0)			(not (fears_angina_expectation))			(craves_angina_pistachio)
))
(:action succumb__angina__expectation__chicken
	:parameters ()
	:precondition (and  (craves_expectation_chicken) (fears_angina_expectation))
	:effect (and 
			(increase (harmony_expectation) 1.0)			(not (fears_angina_expectation))			(craves_angina_chicken)
))
(:action overcome__angina__expectation__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_expectation) 1.0) 1.0 ) 0.0) (craves_expectation_wurst) (craves_angina_wurst))
	:effect (and 
			(decrease (harmony_expectation) 1.0)			(not (craves_angina_wurst))			(fears_angina_expectation)
))
(:action overcome__angina__expectation__tuna
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_expectation) 1.0) 1.0 ) 0.0) (craves_angina_tuna) (craves_expectation_tuna))
	:effect (and 
			(decrease (harmony_expectation) 1.0)			(fears_angina_expectation)			(not (craves_angina_tuna))
))
(:action overcome__angina__expectation__pistachio
	:parameters ()
	:precondition (and  (craves_expectation_pistachio)(>= (+ (*   (harmony_expectation) 1.0) 1.0 ) 0.0) (craves_angina_pistachio))
	:effect (and 
			(decrease (harmony_expectation) 1.0)			(not (craves_angina_pistachio))			(fears_angina_expectation)
))


)