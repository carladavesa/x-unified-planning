(define (domain mysteryprimetyped)
(:predicates  (craves_rest_pear)
 (craves_rest_rice)
 (fears_hangover_rest)
 (craves_hangover_pear)
 (fears_depression_rest)
 (craves_depression_rice)
 (craves_hangover_flounder)
 (craves_depression_pear)
 (fears_abrasion_rest)
 (craves_hangover_okra)
 (craves_abrasion_pear)
 (craves_hangover_pork)
 (craves_depression_okra)
 (craves_depression_flounder)
 (craves_abrasion_flounder)
 (craves_hangover_lamb)
 (craves_depression_pork)
 (craves_abrasion_pork)
 (craves_rest_pork)
 (craves_abrasion_okra)
 (craves_hangover_rice)
 (craves_depression_lamb)
 (craves_abrasion_lamb)
 (craves_abrasion_rice)
 (craves_rest_lamb)
 (craves_rest_okra)
 (craves_rest_flounder)
)
(:functions   (locale_okra)
  (locale_pork)
  (harmony_rest)
  (locale_rice)
  (locale_pear)
  (locale_lamb)
  (locale_flounder)
)
(:action drink__rice__lamb
	:parameters ()
	:precondition (and (>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(increase (locale_lamb) 1.0)
))
(:action drink__rice__pork
	:parameters ()
	:precondition (and (>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(increase (locale_pork) 1.0)
))
(:action drink__rice__pear
	:parameters ()
	:precondition (and (>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(increase (locale_pear) 1.0)
))
(:action drink__pork__lamb
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pork) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_lamb) 1.0)			(decrease (locale_pork) 1.0)
))
(:action drink__rice__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_rice) 1.0)			(decrease (locale_rice) 1.0)
))
(:action drink__pork__pork
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pork) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_pork) 1.0)			(decrease (locale_pork) 1.0)
))
(:action drink__rice__okra
	:parameters ()
	:precondition (and (>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_okra) 1.0)			(decrease (locale_rice) 1.0)
))
(:action drink__rice__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_flounder) 1.0)			(decrease (locale_rice) 1.0)
))
(:action drink__pork__pear
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pork) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_pear) 1.0)			(decrease (locale_pork) 1.0)
))
(:action drink__pork__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pork) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_rice) 1.0)			(decrease (locale_pork) 1.0)
))
(:action drink__pork__okra
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pork) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_okra) 1.0)			(decrease (locale_pork) 1.0)
))
(:action drink__pork__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pork) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_flounder) 1.0)			(decrease (locale_pork) 1.0)
))
(:action drink__lamb__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_lamb) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_lamb) 1.0)			(increase (locale_rice) 1.0)
))
(:action drink__pear__lamb
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pear) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_lamb) 1.0)			(decrease (locale_pear) 1.0)
))
(:action drink__pear__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pear) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_flounder) 1.0)			(decrease (locale_pear) 1.0)
))
(:action drink__pear__pear
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pear) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_pear) 1.0)			(decrease (locale_pear) 1.0)
))
(:action drink__lamb__lamb
	:parameters ()
	:precondition (and (>= (+ (*   (locale_lamb) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_lamb) 1.0)			(increase (locale_lamb) 1.0)
))
(:action drink__pear__pork
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pear) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pear) 1.0)			(increase (locale_pork) 1.0)
))
(:action drink__pear__okra
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pear) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_okra) 1.0)			(decrease (locale_pear) 1.0)
))
(:action drink__lamb__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (locale_lamb) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_lamb) 1.0)			(increase (locale_flounder) 1.0)
))
(:action drink__lamb__pear
	:parameters ()
	:precondition (and (>= (+ (*   (locale_lamb) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_lamb) 1.0)			(increase (locale_pear) 1.0)
))
(:action drink__pear__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pear) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_rice) 1.0)			(decrease (locale_pear) 1.0)
))
(:action drink__lamb__pork
	:parameters ()
	:precondition (and (>= (+ (*   (locale_lamb) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_lamb) 1.0)			(increase (locale_pork) 1.0)
))
(:action drink__lamb__okra
	:parameters ()
	:precondition (and (>= (+ (*   (locale_lamb) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_okra) 1.0)			(decrease (locale_lamb) 1.0)
))
(:action overcome__abrasion__rest__pork
	:parameters ()
	:precondition (and  (craves_abrasion_pork) (craves_rest_pork)(>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(fears_abrasion_rest)			(not (craves_abrasion_pork))
))
(:action drink__flounder__okra
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_okra) 1.0)			(decrease (locale_flounder) 1.0)
))
(:action drink__flounder__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_flounder) 1.0)			(decrease (locale_flounder) 1.0)
))
(:action drink__flounder__lamb
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_flounder) 1.0)			(increase (locale_lamb) 1.0)
))
(:action drink__flounder__pork
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_flounder) 1.0)			(increase (locale_pork) 1.0)
))
(:action drink__flounder__pear
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_flounder) 1.0)			(increase (locale_pear) 1.0)
))
(:action drink__flounder__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_flounder) 1.0)			(increase (locale_rice) 1.0)
))
(:action feast__rest__pork__okra
	:parameters ()
	:precondition (and  (craves_rest_pork)(>= (+ (*   (locale_pork) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pork) 1.0)			(not (craves_rest_pork))			(craves_rest_okra)
))
(:action feast__rest__pork__lamb
	:parameters ()
	:precondition (and  (craves_rest_pork)(>= (+ (*   (locale_pork) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pork) 1.0)			(craves_rest_lamb)			(not (craves_rest_pork))
))
(:action drink__okra__pork
	:parameters ()
	:precondition (and (>= (+ (*   (locale_okra) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_okra) 1.0)			(increase (locale_pork) 1.0)
))
(:action drink__okra__okra
	:parameters ()
	:precondition (and (>= (+ (*   (locale_okra) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_okra) 1.0)			(decrease (locale_okra) 1.0)
))
(:action drink__okra__lamb
	:parameters ()
	:precondition (and (>= (+ (*   (locale_okra) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_okra) 1.0)			(increase (locale_lamb) 1.0)
))
(:action drink__okra__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_okra) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_rice) 1.0)			(decrease (locale_okra) 1.0)
))
(:action drink__okra__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (locale_okra) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_flounder) 1.0)			(decrease (locale_okra) 1.0)
))
(:action drink__okra__pear
	:parameters ()
	:precondition (and (>= (+ (*   (locale_okra) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_okra) 1.0)			(increase (locale_pear) 1.0)
))
(:action feast__rest__okra__pear
	:parameters ()
	:precondition (and (>= (+ (*   (locale_okra) 1.0) 1.0 ) 0.0) (craves_rest_okra))
	:effect (and 
			(decrease (locale_okra) 1.0)			(craves_rest_pear)			(not (craves_rest_okra))
))
(:action feast__rest__okra__pork
	:parameters ()
	:precondition (and (>= (+ (*   (locale_okra) 1.0) 1.0 ) 0.0) (craves_rest_okra))
	:effect (and 
			(decrease (locale_okra) 1.0)			(craves_rest_pork)			(not (craves_rest_okra))
))
(:action succumb__abrasion__rest__lamb
	:parameters ()
	:precondition (and  (fears_abrasion_rest) (craves_rest_lamb))
	:effect (and 
			(increase (harmony_rest) 1.0)			(craves_abrasion_lamb)			(not (fears_abrasion_rest))
))
(:action succumb__abrasion__rest__okra
	:parameters ()
	:precondition (and  (fears_abrasion_rest) (craves_rest_okra))
	:effect (and 
			(increase (harmony_rest) 1.0)			(craves_abrasion_okra)			(not (fears_abrasion_rest))
))
(:action succumb__abrasion__rest__pork
	:parameters ()
	:precondition (and  (fears_abrasion_rest) (craves_rest_pork))
	:effect (and 
			(increase (harmony_rest) 1.0)			(craves_abrasion_pork)			(not (fears_abrasion_rest))
))
(:action feast__rest__lamb__pork
	:parameters ()
	:precondition (and (>= (+ (*   (locale_lamb) 1.0) 1.0 ) 0.0) (craves_rest_lamb))
	:effect (and 
			(decrease (locale_lamb) 1.0)			(craves_rest_pork)			(not (craves_rest_lamb))
))
(:action feast__rest__lamb__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (locale_lamb) 1.0) 1.0 ) 0.0) (craves_rest_lamb))
	:effect (and 
			(decrease (locale_lamb) 1.0)			(not (craves_rest_lamb))			(craves_rest_flounder)
))
(:action feast__rest__flounder__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0) (craves_rest_flounder))
	:effect (and 
			(decrease (locale_flounder) 1.0)			(craves_rest_rice)			(not (craves_rest_flounder))
))
(:action feast__rest__flounder__lamb
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0) (craves_rest_flounder))
	:effect (and 
			(decrease (locale_flounder) 1.0)			(not (craves_rest_flounder))			(craves_rest_lamb)
))
(:action succumb__abrasion__rest__pear
	:parameters ()
	:precondition (and  (craves_rest_pear) (fears_abrasion_rest))
	:effect (and 
			(increase (harmony_rest) 1.0)			(craves_abrasion_pear)			(not (fears_abrasion_rest))
))
(:action succumb__abrasion__rest__flounder
	:parameters ()
	:precondition (and  (fears_abrasion_rest) (craves_rest_flounder))
	:effect (and 
			(increase (harmony_rest) 1.0)			(not (fears_abrasion_rest))			(craves_abrasion_flounder)
))
(:action overcome__abrasion__rest__lamb
	:parameters ()
	:precondition (and  (craves_abrasion_lamb)(>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_rest_lamb))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(fears_abrasion_rest)			(not (craves_abrasion_lamb))
))
(:action overcome__abrasion__rest__okra
	:parameters ()
	:precondition (and  (craves_abrasion_okra)(>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_rest_okra))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(fears_abrasion_rest)			(not (craves_abrasion_okra))
))
(:action feast__rest__pear__rice
	:parameters ()
	:precondition (and  (craves_rest_pear)(>= (+ (*   (locale_pear) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pear) 1.0)			(craves_rest_rice)			(not (craves_rest_pear))
))
(:action feast__rest__pear__okra
	:parameters ()
	:precondition (and  (craves_rest_pear)(>= (+ (*   (locale_pear) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pear) 1.0)			(not (craves_rest_pear))			(craves_rest_okra)
))
(:action overcome__depression__rest__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_depression_flounder) (craves_rest_flounder))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(not (craves_depression_flounder))			(fears_depression_rest)
))
(:action succumb__abrasion__rest__rice
	:parameters ()
	:precondition (and  (fears_abrasion_rest) (craves_rest_rice))
	:effect (and 
			(increase (harmony_rest) 1.0)			(craves_abrasion_rice)			(not (fears_abrasion_rest))
))
(:action overcome__hangover__rest__rice
	:parameters ()
	:precondition (and  (craves_rest_rice) (craves_hangover_rice)(>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(fears_hangover_rest)			(not (craves_hangover_rice))
))
(:action overcome__abrasion__rest__pear
	:parameters ()
	:precondition (and  (craves_rest_pear) (craves_abrasion_pear)(>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(fears_abrasion_rest)			(not (craves_abrasion_pear))
))
(:action overcome__abrasion__rest__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_abrasion_flounder) (craves_rest_flounder))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(fears_abrasion_rest)			(not (craves_abrasion_flounder))
))
(:action feast__rest__rice__rice
	:parameters ()
	:precondition (and  (craves_rest_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(craves_rest_rice)			(not (craves_rest_rice))
))
(:action feast__rest__rice__flounder
	:parameters ()
	:precondition (and  (craves_rest_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(not (craves_rest_rice))			(craves_rest_flounder)
))
(:action succumb__depression__rest__rice
	:parameters ()
	:precondition (and  (craves_rest_rice) (fears_depression_rest))
	:effect (and 
			(increase (harmony_rest) 1.0)			(not (fears_depression_rest))			(craves_depression_rice)
))
(:action feast__rest__rice__pear
	:parameters ()
	:precondition (and  (craves_rest_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(craves_rest_pear)			(not (craves_rest_rice))
))
(:action succumb__depression__rest__pear
	:parameters ()
	:precondition (and  (craves_rest_pear) (fears_depression_rest))
	:effect (and 
			(increase (harmony_rest) 1.0)			(not (fears_depression_rest))			(craves_depression_pear)
))
(:action succumb__depression__rest__flounder
	:parameters ()
	:precondition (and  (fears_depression_rest) (craves_rest_flounder))
	:effect (and 
			(increase (harmony_rest) 1.0)			(not (fears_depression_rest))			(craves_depression_flounder)
))
(:action succumb__depression__rest__okra
	:parameters ()
	:precondition (and  (fears_depression_rest) (craves_rest_okra))
	:effect (and 
			(increase (harmony_rest) 1.0)			(craves_depression_okra)			(not (fears_depression_rest))
))
(:action succumb__depression__rest__pork
	:parameters ()
	:precondition (and  (craves_rest_pork) (fears_depression_rest))
	:effect (and 
			(increase (harmony_rest) 1.0)			(craves_depression_pork)			(not (fears_depression_rest))
))
(:action succumb__depression__rest__lamb
	:parameters ()
	:precondition (and  (fears_depression_rest) (craves_rest_lamb))
	:effect (and 
			(increase (harmony_rest) 1.0)			(craves_depression_lamb)			(not (fears_depression_rest))
))
(:action succumb__hangover__rest__rice
	:parameters ()
	:precondition (and  (craves_rest_rice) (fears_hangover_rest))
	:effect (and 
			(increase (harmony_rest) 1.0)			(craves_hangover_rice)			(not (fears_hangover_rest))
))
(:action succumb__hangover__rest__pear
	:parameters ()
	:precondition (and  (craves_rest_pear) (fears_hangover_rest))
	:effect (and 
			(increase (harmony_rest) 1.0)			(craves_hangover_pear)			(not (fears_hangover_rest))
))
(:action succumb__hangover__rest__flounder
	:parameters ()
	:precondition (and  (fears_hangover_rest) (craves_rest_flounder))
	:effect (and 
			(increase (harmony_rest) 1.0)			(not (fears_hangover_rest))			(craves_hangover_flounder)
))
(:action succumb__hangover__rest__okra
	:parameters ()
	:precondition (and  (fears_hangover_rest) (craves_rest_okra))
	:effect (and 
			(increase (harmony_rest) 1.0)			(craves_hangover_okra)			(not (fears_hangover_rest))
))
(:action succumb__hangover__rest__pork
	:parameters ()
	:precondition (and  (craves_rest_pork) (fears_hangover_rest))
	:effect (and 
			(increase (harmony_rest) 1.0)			(craves_hangover_pork)			(not (fears_hangover_rest))
))
(:action succumb__hangover__rest__lamb
	:parameters ()
	:precondition (and  (fears_hangover_rest) (craves_rest_lamb))
	:effect (and 
			(increase (harmony_rest) 1.0)			(not (fears_hangover_rest))			(craves_hangover_lamb)
))
(:action overcome__abrasion__rest__rice
	:parameters ()
	:precondition (and  (craves_rest_rice)(>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_abrasion_rice))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(fears_abrasion_rest)			(not (craves_abrasion_rice))
))
(:action overcome__depression__rest__rice
	:parameters ()
	:precondition (and  (craves_rest_rice)(>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_depression_rice))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(fears_depression_rest)			(not (craves_depression_rice))
))
(:action overcome__depression__rest__pear
	:parameters ()
	:precondition (and  (craves_rest_pear)(>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_depression_pear))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(not (craves_depression_pear))			(fears_depression_rest)
))
(:action overcome__depression__rest__okra
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_depression_okra) (craves_rest_okra))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(fears_depression_rest)			(not (craves_depression_okra))
))
(:action overcome__depression__rest__pork
	:parameters ()
	:precondition (and  (craves_depression_pork) (craves_rest_pork)(>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(not (craves_depression_pork))			(fears_depression_rest)
))
(:action overcome__depression__rest__lamb
	:parameters ()
	:precondition (and  (craves_depression_lamb)(>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_rest_lamb))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(not (craves_depression_lamb))			(fears_depression_rest)
))
(:action overcome__hangover__rest__pear
	:parameters ()
	:precondition (and  (craves_rest_pear)(>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_hangover_pear))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(fears_hangover_rest)			(not (craves_hangover_pear))
))
(:action overcome__hangover__rest__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_hangover_flounder) (craves_rest_flounder))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(fears_hangover_rest)			(not (craves_hangover_flounder))
))
(:action overcome__hangover__rest__okra
	:parameters ()
	:precondition (and  (craves_hangover_okra)(>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_rest_okra))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(not (craves_hangover_okra))			(fears_hangover_rest)
))
(:action overcome__hangover__rest__pork
	:parameters ()
	:precondition (and  (craves_rest_pork)(>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_hangover_pork))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(fears_hangover_rest)			(not (craves_hangover_pork))
))
(:action overcome__hangover__rest__lamb
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_rest) 1.0) 1.0 ) 0.0) (craves_rest_lamb) (craves_hangover_lamb))
	:effect (and 
			(decrease (harmony_rest) 1.0)			(fears_hangover_rest)			(not (craves_hangover_lamb))
))


)