(define (domain mysteryprimetyped)
(:predicates  (craves_angina_broccoli)
 (craves_intoxication_lamb)
 (craves_boils_muffin)
 (craves_intoxication_shrimp)
 (craves_grief_shrimp)
 (craves_angina_lamb)
 (craves_intoxication_muffin)
 (craves_intoxication_broccoli)
 (craves_grief_muffin)
 (fears_loneliness_intoxication)
 (craves_grief_broccoli)
 (craves_loneliness_shrimp)
 (fears_anxiety_intoxication)
 (craves_anxiety_wurst)
 (craves_loneliness_muffin)
 (fears_hangover_intoxication)
 (craves_hangover_wurst)
 (craves_loneliness_broccoli)
 (craves_hangover_shrimp)
 (craves_anxiety_muffin)
 (craves_anger_muffin)
 (fears_anger_intoxication)
 (craves_intoxication_wurst)
 (craves_anger_wurst)
 (craves_loneliness_lamb)
 (craves_anxiety_broccoli)
 (craves_boils_broccoli)
 (craves_hangover_muffin)
 (craves_anxiety_shrimp)
 (craves_grief_lamb)
 (craves_anger_shrimp)
 (fears_angina_intoxication)
 (craves_angina_wurst)
 (craves_angina_muffin)
 (craves_loneliness_wurst)
 (craves_anxiety_lamb)
 (craves_hangover_broccoli)
 (craves_anger_lamb)
 (craves_boils_lamb)
 (craves_angina_shrimp)
 (fears_boils_intoxication)
 (craves_boils_wurst)
 (craves_hangover_lamb)
 (craves_anger_broccoli)
 (craves_boils_shrimp)
 (fears_grief_intoxication)
 (craves_grief_wurst)
)
(:functions   (locale_shrimp)
  (locale_lamb)
  (locale_broccoli)
  (harmony_intoxication)
  (locale_wurst)
  (locale_muffin)
)
(:action drink__wurst__lamb
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(increase (locale_lamb) 1.0)
))
(:action drink__wurst__shrimp
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_shrimp) 1.0)			(decrease (locale_wurst) 1.0)
))
(:action drink__wurst__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_wurst) 1.0)			(decrease (locale_wurst) 1.0)
))
(:action overcome__loneliness__intoxication__wurst
	:parameters ()
	:precondition (and  (craves_intoxication_wurst) (craves_loneliness_wurst)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(fears_loneliness_intoxication)			(not (craves_loneliness_wurst))
))
(:action drink__wurst__broccoli
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_broccoli) 1.0)			(decrease (locale_wurst) 1.0)
))
(:action drink__wurst__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_muffin) 1.0)			(decrease (locale_wurst) 1.0)
))
(:action drink__shrimp__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_shrimp) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_shrimp) 1.0)			(increase (locale_muffin) 1.0)
))
(:action drink__shrimp__shrimp
	:parameters ()
	:precondition (and (>= (+ (*   (locale_shrimp) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_shrimp) 1.0)			(decrease (locale_shrimp) 1.0)
))
(:action drink__shrimp__lamb
	:parameters ()
	:precondition (and (>= (+ (*   (locale_shrimp) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_shrimp) 1.0)			(increase (locale_lamb) 1.0)
))
(:action drink__shrimp__broccoli
	:parameters ()
	:precondition (and (>= (+ (*   (locale_shrimp) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_broccoli) 1.0)			(decrease (locale_shrimp) 1.0)
))
(:action drink__shrimp__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_shrimp) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_shrimp) 1.0)			(increase (locale_wurst) 1.0)
))
(:action drink__muffin__broccoli
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(increase (locale_broccoli) 1.0)
))
(:action drink__muffin__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(increase (locale_muffin) 1.0)
))
(:action drink__muffin__lamb
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(increase (locale_lamb) 1.0)
))
(:action drink__muffin__shrimp
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_shrimp) 1.0)			(decrease (locale_muffin) 1.0)
))
(:action drink__muffin__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(increase (locale_wurst) 1.0)
))
(:action drink__broccoli__lamb
	:parameters ()
	:precondition (and (>= (+ (*   (locale_broccoli) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_broccoli) 1.0)			(increase (locale_lamb) 1.0)
))
(:action drink__broccoli__broccoli
	:parameters ()
	:precondition (and (>= (+ (*   (locale_broccoli) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_broccoli) 1.0)			(increase (locale_broccoli) 1.0)
))
(:action drink__broccoli__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_broccoli) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_broccoli) 1.0)			(increase (locale_wurst) 1.0)
))
(:action drink__broccoli__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_broccoli) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_broccoli) 1.0)			(increase (locale_muffin) 1.0)
))
(:action drink__broccoli__shrimp
	:parameters ()
	:precondition (and (>= (+ (*   (locale_broccoli) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_broccoli) 1.0)			(increase (locale_shrimp) 1.0)
))
(:action drink__lamb__lamb
	:parameters ()
	:precondition (and (>= (+ (*   (locale_lamb) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_lamb) 1.0)			(decrease (locale_lamb) 1.0)
))
(:action drink__lamb__shrimp
	:parameters ()
	:precondition (and (>= (+ (*   (locale_lamb) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_shrimp) 1.0)			(decrease (locale_lamb) 1.0)
))
(:action drink__lamb__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_lamb) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_wurst) 1.0)			(decrease (locale_lamb) 1.0)
))
(:action drink__lamb__broccoli
	:parameters ()
	:precondition (and (>= (+ (*   (locale_lamb) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_broccoli) 1.0)			(decrease (locale_lamb) 1.0)
))
(:action drink__lamb__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_lamb) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_muffin) 1.0)			(decrease (locale_lamb) 1.0)
))
(:action feast__intoxication__wurst__shrimp
	:parameters ()
	:precondition (and  (craves_intoxication_wurst)(>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(craves_intoxication_shrimp)			(not (craves_intoxication_wurst))
))
(:action feast__intoxication__wurst__lamb
	:parameters ()
	:precondition (and  (craves_intoxication_wurst)(>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(craves_intoxication_lamb)			(not (craves_intoxication_wurst))
))
(:action feast__intoxication__wurst__muffin
	:parameters ()
	:precondition (and  (craves_intoxication_wurst)(>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(not (craves_intoxication_wurst))			(craves_intoxication_muffin)
))
(:action overcome__angina__intoxication__muffin
	:parameters ()
	:precondition (and  (craves_intoxication_muffin) (craves_angina_muffin)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(fears_angina_intoxication)			(not (craves_angina_muffin))
))
(:action feast__intoxication__lamb__shrimp
	:parameters ()
	:precondition (and  (craves_intoxication_lamb)(>= (+ (*   (locale_lamb) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_lamb) 1.0)			(not (craves_intoxication_lamb))			(craves_intoxication_shrimp)
))
(:action feast__intoxication__lamb__wurst
	:parameters ()
	:precondition (and  (craves_intoxication_lamb)(>= (+ (*   (locale_lamb) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_lamb) 1.0)			(craves_intoxication_wurst)			(not (craves_intoxication_lamb))
))
(:action feast__intoxication__lamb__broccoli
	:parameters ()
	:precondition (and  (craves_intoxication_lamb)(>= (+ (*   (locale_lamb) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_lamb) 1.0)			(not (craves_intoxication_lamb))			(craves_intoxication_broccoli)
))
(:action overcome__anger__intoxication__muffin
	:parameters ()
	:precondition (and  (craves_intoxication_muffin) (craves_anger_muffin)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(not (craves_anger_muffin))			(fears_anger_intoxication)
))
(:action feast__intoxication__shrimp__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_shrimp) 1.0) 1.0 ) 0.0) (craves_intoxication_shrimp))
	:effect (and 
			(decrease (locale_shrimp) 1.0)			(craves_intoxication_wurst)			(not (craves_intoxication_shrimp))
))
(:action succumb__loneliness__intoxication__wurst
	:parameters ()
	:precondition (and  (craves_intoxication_wurst) (fears_loneliness_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_loneliness_intoxication))			(craves_loneliness_wurst)
))
(:action feast__intoxication__shrimp__lamb
	:parameters ()
	:precondition (and (>= (+ (*   (locale_shrimp) 1.0) 1.0 ) 0.0) (craves_intoxication_shrimp))
	:effect (and 
			(decrease (locale_shrimp) 1.0)			(craves_intoxication_lamb)			(not (craves_intoxication_shrimp))
))
(:action succumb__loneliness__intoxication__shrimp
	:parameters ()
	:precondition (and  (craves_intoxication_shrimp) (fears_loneliness_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_loneliness_intoxication))			(craves_loneliness_shrimp)
))
(:action succumb__loneliness__intoxication__muffin
	:parameters ()
	:precondition (and  (craves_intoxication_muffin) (fears_loneliness_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_loneliness_intoxication))			(craves_loneliness_muffin)
))
(:action succumb__loneliness__intoxication__lamb
	:parameters ()
	:precondition (and  (craves_intoxication_lamb) (fears_loneliness_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_loneliness_intoxication))			(craves_loneliness_lamb)
))
(:action overcome__grief__intoxication__lamb
	:parameters ()
	:precondition (and  (craves_intoxication_lamb) (craves_grief_lamb)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(not (craves_grief_lamb))			(fears_grief_intoxication)
))
(:action overcome__hangover__intoxication__shrimp
	:parameters ()
	:precondition (and  (craves_intoxication_shrimp) (craves_hangover_shrimp)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(fears_hangover_intoxication)			(not (craves_hangover_shrimp))
))
(:action overcome__anxiety__intoxication__shrimp
	:parameters ()
	:precondition (and  (craves_intoxication_shrimp) (craves_anxiety_shrimp)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(fears_anxiety_intoxication)			(not (craves_anxiety_shrimp))
))
(:action feast__intoxication__muffin__broccoli
	:parameters ()
	:precondition (and  (craves_intoxication_muffin)(>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(craves_intoxication_broccoli)			(not (craves_intoxication_muffin))
))
(:action feast__intoxication__muffin__wurst
	:parameters ()
	:precondition (and  (craves_intoxication_muffin)(>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(craves_intoxication_wurst)			(not (craves_intoxication_muffin))
))
(:action succumb__grief__intoxication__muffin
	:parameters ()
	:precondition (and  (craves_intoxication_muffin) (fears_grief_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_grief_intoxication))			(craves_grief_muffin)
))
(:action succumb__grief__intoxication__shrimp
	:parameters ()
	:precondition (and  (craves_intoxication_shrimp) (fears_grief_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(craves_grief_shrimp)			(not (fears_grief_intoxication))
))
(:action succumb__grief__intoxication__lamb
	:parameters ()
	:precondition (and  (craves_intoxication_lamb) (fears_grief_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_grief_intoxication))			(craves_grief_lamb)
))
(:action succumb__grief__intoxication__broccoli
	:parameters ()
	:precondition (and  (craves_intoxication_broccoli) (fears_grief_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_grief_intoxication))			(craves_grief_broccoli)
))
(:action succumb__hangover__intoxication__wurst
	:parameters ()
	:precondition (and  (craves_intoxication_wurst) (fears_hangover_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_hangover_intoxication))			(craves_hangover_wurst)
))
(:action succumb__hangover__intoxication__shrimp
	:parameters ()
	:precondition (and  (craves_intoxication_shrimp) (fears_hangover_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_hangover_intoxication))			(craves_hangover_shrimp)
))
(:action succumb__hangover__intoxication__muffin
	:parameters ()
	:precondition (and  (fears_hangover_intoxication) (craves_intoxication_muffin))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_hangover_intoxication))			(craves_hangover_muffin)
))
(:action succumb__hangover__intoxication__broccoli
	:parameters ()
	:precondition (and  (fears_hangover_intoxication) (craves_intoxication_broccoli))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_hangover_intoxication))			(craves_hangover_broccoli)
))
(:action succumb__grief__intoxication__wurst
	:parameters ()
	:precondition (and  (craves_intoxication_wurst) (fears_grief_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_grief_intoxication))			(craves_grief_wurst)
))
(:action succumb__hangover__intoxication__lamb
	:parameters ()
	:precondition (and  (craves_intoxication_lamb) (fears_hangover_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_hangover_intoxication))			(craves_hangover_lamb)
))
(:action overcome__loneliness__intoxication__shrimp
	:parameters ()
	:precondition (and  (craves_intoxication_shrimp)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0) (craves_loneliness_shrimp))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(not (craves_loneliness_shrimp))			(fears_loneliness_intoxication)
))
(:action overcome__loneliness__intoxication__muffin
	:parameters ()
	:precondition (and  (craves_loneliness_muffin) (craves_intoxication_muffin)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(not (craves_loneliness_muffin))			(fears_loneliness_intoxication)
))
(:action overcome__loneliness__intoxication__lamb
	:parameters ()
	:precondition (and  (craves_loneliness_lamb) (craves_intoxication_lamb)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(not (craves_loneliness_lamb))			(fears_loneliness_intoxication)
))
(:action succumb__anger__intoxication__lamb
	:parameters ()
	:precondition (and  (craves_intoxication_lamb) (fears_anger_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_anger_intoxication))			(craves_anger_lamb)
))
(:action succumb__anger__intoxication__wurst
	:parameters ()
	:precondition (and  (craves_intoxication_wurst) (fears_anger_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(craves_anger_wurst)			(not (fears_anger_intoxication))
))
(:action succumb__anger__intoxication__shrimp
	:parameters ()
	:precondition (and  (craves_intoxication_shrimp) (fears_anger_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_anger_intoxication))			(craves_anger_shrimp)
))
(:action succumb__anger__intoxication__muffin
	:parameters ()
	:precondition (and  (craves_intoxication_muffin) (fears_anger_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_anger_intoxication))			(craves_anger_muffin)
))
(:action succumb__anger__intoxication__broccoli
	:parameters ()
	:precondition (and  (craves_intoxication_broccoli) (fears_anger_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_anger_intoxication))			(craves_anger_broccoli)
))
(:action succumb__angina__intoxication__broccoli
	:parameters ()
	:precondition (and  (craves_intoxication_broccoli) (fears_angina_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(craves_angina_broccoli)			(not (fears_angina_intoxication))
))
(:action succumb__angina__intoxication__lamb
	:parameters ()
	:precondition (and  (craves_intoxication_lamb) (fears_angina_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_angina_intoxication))			(craves_angina_lamb)
))
(:action succumb__loneliness__intoxication__broccoli
	:parameters ()
	:precondition (and  (craves_intoxication_broccoli) (fears_loneliness_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_loneliness_intoxication))			(craves_loneliness_broccoli)
))
(:action succumb__angina__intoxication__wurst
	:parameters ()
	:precondition (and  (craves_intoxication_wurst) (fears_angina_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_angina_intoxication))			(craves_angina_wurst)
))
(:action succumb__angina__intoxication__shrimp
	:parameters ()
	:precondition (and  (craves_intoxication_shrimp) (fears_angina_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(craves_angina_shrimp)			(not (fears_angina_intoxication))
))
(:action succumb__angina__intoxication__muffin
	:parameters ()
	:precondition (and  (craves_intoxication_muffin) (fears_angina_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_angina_intoxication))			(craves_angina_muffin)
))
(:action feast__intoxication__broccoli__lamb
	:parameters ()
	:precondition (and (>= (+ (*   (locale_broccoli) 1.0) 1.0 ) 0.0) (craves_intoxication_broccoli))
	:effect (and 
			(decrease (locale_broccoli) 1.0)			(craves_intoxication_lamb)			(not (craves_intoxication_broccoli))
))
(:action feast__intoxication__broccoli__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_broccoli) 1.0) 1.0 ) 0.0) (craves_intoxication_broccoli))
	:effect (and 
			(decrease (locale_broccoli) 1.0)			(craves_intoxication_muffin)			(not (craves_intoxication_broccoli))
))
(:action succumb__anxiety__intoxication__wurst
	:parameters ()
	:precondition (and  (craves_intoxication_wurst) (fears_anxiety_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(craves_anxiety_wurst)			(not (fears_anxiety_intoxication))
))
(:action succumb__anxiety__intoxication__shrimp
	:parameters ()
	:precondition (and  (fears_anxiety_intoxication) (craves_intoxication_shrimp))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_anxiety_intoxication))			(craves_anxiety_shrimp)
))
(:action succumb__anxiety__intoxication__muffin
	:parameters ()
	:precondition (and  (fears_anxiety_intoxication) (craves_intoxication_muffin))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_anxiety_intoxication))			(craves_anxiety_muffin)
))
(:action succumb__anxiety__intoxication__broccoli
	:parameters ()
	:precondition (and  (fears_anxiety_intoxication) (craves_intoxication_broccoli))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_anxiety_intoxication))			(craves_anxiety_broccoli)
))
(:action succumb__anxiety__intoxication__lamb
	:parameters ()
	:precondition (and  (fears_anxiety_intoxication) (craves_intoxication_lamb))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_anxiety_intoxication))			(craves_anxiety_lamb)
))
(:action overcome__boils__intoxication__broccoli
	:parameters ()
	:precondition (and  (craves_boils_broccoli) (craves_intoxication_broccoli)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(fears_boils_intoxication)			(not (craves_boils_broccoli))
))
(:action overcome__angina__intoxication__broccoli
	:parameters ()
	:precondition (and  (craves_angina_broccoli) (craves_intoxication_broccoli)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(not (craves_angina_broccoli))			(fears_angina_intoxication)
))
(:action overcome__angina__intoxication__lamb
	:parameters ()
	:precondition (and  (craves_intoxication_lamb) (craves_angina_lamb)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(not (craves_angina_lamb))			(fears_angina_intoxication)
))
(:action overcome__loneliness__intoxication__broccoli
	:parameters ()
	:precondition (and  (craves_intoxication_broccoli) (craves_loneliness_broccoli)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(not (craves_loneliness_broccoli))			(fears_loneliness_intoxication)
))
(:action overcome__angina__intoxication__wurst
	:parameters ()
	:precondition (and  (craves_intoxication_wurst) (craves_angina_wurst)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(fears_angina_intoxication)			(not (craves_angina_wurst))
))
(:action overcome__angina__intoxication__shrimp
	:parameters ()
	:precondition (and  (craves_angina_shrimp) (craves_intoxication_shrimp)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(not (craves_angina_shrimp))			(fears_angina_intoxication)
))
(:action overcome__anger__intoxication__lamb
	:parameters ()
	:precondition (and  (craves_intoxication_lamb)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0) (craves_anger_lamb))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(not (craves_anger_lamb))			(fears_anger_intoxication)
))
(:action overcome__anger__intoxication__wurst
	:parameters ()
	:precondition (and  (craves_anger_wurst) (craves_intoxication_wurst)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(not (craves_anger_wurst))			(fears_anger_intoxication)
))
(:action overcome__anger__intoxication__shrimp
	:parameters ()
	:precondition (and  (craves_intoxication_shrimp) (craves_anger_shrimp)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(not (craves_anger_shrimp))			(fears_anger_intoxication)
))
(:action overcome__anger__intoxication__broccoli
	:parameters ()
	:precondition (and  (craves_anger_broccoli) (craves_intoxication_broccoli)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(not (craves_anger_broccoli))			(fears_anger_intoxication)
))
(:action overcome__grief__intoxication__shrimp
	:parameters ()
	:precondition (and  (craves_intoxication_shrimp) (craves_grief_shrimp)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(not (craves_grief_shrimp))			(fears_grief_intoxication)
))
(:action overcome__grief__intoxication__muffin
	:parameters ()
	:precondition (and  (craves_intoxication_muffin) (craves_grief_muffin)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(not (craves_grief_muffin))			(fears_grief_intoxication)
))
(:action overcome__grief__intoxication__broccoli
	:parameters ()
	:precondition (and  (craves_intoxication_broccoli) (craves_grief_broccoli)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(fears_grief_intoxication)			(not (craves_grief_broccoli))
))
(:action overcome__hangover__intoxication__wurst
	:parameters ()
	:precondition (and  (craves_intoxication_wurst) (craves_hangover_wurst)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(fears_hangover_intoxication)			(not (craves_hangover_wurst))
))
(:action overcome__hangover__intoxication__muffin
	:parameters ()
	:precondition (and  (craves_hangover_muffin) (craves_intoxication_muffin)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(fears_hangover_intoxication)			(not (craves_hangover_muffin))
))
(:action overcome__hangover__intoxication__broccoli
	:parameters ()
	:precondition (and  (craves_intoxication_broccoli)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0) (craves_hangover_broccoli))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(not (craves_hangover_broccoli))			(fears_hangover_intoxication)
))
(:action overcome__hangover__intoxication__lamb
	:parameters ()
	:precondition (and  (craves_intoxication_lamb) (craves_hangover_lamb)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(fears_hangover_intoxication)			(not (craves_hangover_lamb))
))
(:action overcome__grief__intoxication__wurst
	:parameters ()
	:precondition (and  (craves_intoxication_wurst)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0) (craves_grief_wurst))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(not (craves_grief_wurst))			(fears_grief_intoxication)
))
(:action succumb__boils__intoxication__broccoli
	:parameters ()
	:precondition (and  (fears_boils_intoxication) (craves_intoxication_broccoli))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(craves_boils_broccoli)			(not (fears_boils_intoxication))
))
(:action succumb__boils__intoxication__muffin
	:parameters ()
	:precondition (and  (fears_boils_intoxication) (craves_intoxication_muffin))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(craves_boils_muffin)			(not (fears_boils_intoxication))
))
(:action succumb__boils__intoxication__lamb
	:parameters ()
	:precondition (and  (craves_intoxication_lamb) (fears_boils_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(craves_boils_lamb)			(not (fears_boils_intoxication))
))
(:action succumb__boils__intoxication__shrimp
	:parameters ()
	:precondition (and  (fears_boils_intoxication) (craves_intoxication_shrimp))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(not (fears_boils_intoxication))			(craves_boils_shrimp)
))
(:action succumb__boils__intoxication__wurst
	:parameters ()
	:precondition (and  (craves_intoxication_wurst) (fears_boils_intoxication))
	:effect (and 
			(increase (harmony_intoxication) 1.0)			(craves_boils_wurst)			(not (fears_boils_intoxication))
))
(:action overcome__anxiety__intoxication__wurst
	:parameters ()
	:precondition (and  (craves_intoxication_wurst) (craves_anxiety_wurst)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(fears_anxiety_intoxication)			(not (craves_anxiety_wurst))
))
(:action overcome__anxiety__intoxication__muffin
	:parameters ()
	:precondition (and  (craves_intoxication_muffin) (craves_anxiety_muffin)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(fears_anxiety_intoxication)			(not (craves_anxiety_muffin))
))
(:action overcome__anxiety__intoxication__broccoli
	:parameters ()
	:precondition (and  (craves_anxiety_broccoli) (craves_intoxication_broccoli)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(fears_anxiety_intoxication)			(not (craves_anxiety_broccoli))
))
(:action overcome__anxiety__intoxication__lamb
	:parameters ()
	:precondition (and  (craves_intoxication_lamb) (craves_anxiety_lamb)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(fears_anxiety_intoxication)			(not (craves_anxiety_lamb))
))
(:action overcome__boils__intoxication__muffin
	:parameters ()
	:precondition (and  (craves_boils_muffin) (craves_intoxication_muffin)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(fears_boils_intoxication)			(not (craves_boils_muffin))
))
(:action overcome__boils__intoxication__lamb
	:parameters ()
	:precondition (and  (craves_boils_lamb) (craves_intoxication_lamb)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(fears_boils_intoxication)			(not (craves_boils_lamb))
))
(:action overcome__boils__intoxication__wurst
	:parameters ()
	:precondition (and  (craves_intoxication_wurst) (craves_boils_wurst)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(fears_boils_intoxication)			(not (craves_boils_wurst))
))
(:action overcome__boils__intoxication__shrimp
	:parameters ()
	:precondition (and  (craves_intoxication_shrimp) (craves_boils_shrimp)(>= (+ (*   (harmony_intoxication) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_intoxication) 1.0)			(fears_boils_intoxication)			(not (craves_boils_shrimp))
))


)