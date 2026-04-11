(define (domain mysteryprimetyped)
(:predicates  (craves_boils_scallop)
 (craves_depression_scallop)
 (craves_boils_pistachio)
 (craves_depression_pistachio)
 (craves_boils_snickers)
 (craves_depression_snickers)
 (craves_boils_hamburger)
 (craves_depression_hamburger)
 (craves_boils_rice)
 (craves_depression_rice)
 (fears_boils_satisfaction)
 (fears_depression_entertainment)
 (fears_depression_empathy)
 (fears_depression_satisfaction)
 (fears_jealousy_understanding)
 (craves_jealousy_pepper)
 (craves_jealousy_papaya)
 (craves_jealousy_flounder)
 (craves_jealousy_endive)
 (craves_entertainment_haroset)
 (craves_jealousy_marzipan)
 (craves_jealousy_haroset)
 (craves_jealousy_turkey)
 (craves_jealousy_scallop)
 (craves_jealousy_pistachio)
 (craves_jealousy_hamburger)
 (craves_jealousy_rice)
 (fears_jealousy_learning)
 (fears_jealousy_entertainment)
 (fears_hangover_understanding)
 (craves_hangover_pepper)
 (craves_satisfaction_snickers)
 (craves_hangover_papaya)
 (craves_hangover_flounder)
 (craves_depression_marzipan)
 (craves_hangover_endive)
 (craves_hangover_pistachio)
 (craves_hangover_marzipan)
 (craves_empathy_scallop)
 (craves_hangover_haroset)
 (craves_understanding_papaya)
 (craves_hangover_turkey)
 (craves_learning_marzipan)
 (craves_hangover_scallop)
 (craves_hangover_snickers)
 (craves_boils_haroset)
 (craves_hangover_hamburger)
 (craves_jealousy_snickers)
 (craves_hangover_rice)
 (fears_jealousy_empathy)
 (fears_hangover_learning)
 (craves_boils_papaya)
 (fears_jealousy_satisfaction)
 (fears_hangover_entertainment)
 (fears_boils_understanding)
 (fears_hangover_empathy)
 (fears_boils_learning)
 (fears_hangover_satisfaction)
 (fears_boils_entertainment)
 (fears_depression_understanding)
 (craves_entertainment_hamburger)
 (craves_empathy_haroset)
 (craves_empathy_hamburger)
 (craves_satisfaction_haroset)
 (craves_satisfaction_hamburger)
 (craves_understanding_haroset)
 (craves_understanding_hamburger)
 (craves_learning_haroset)
 (craves_learning_hamburger)
 (craves_understanding_flounder)
 (craves_learning_flounder)
 (craves_learning_papaya)
 (craves_entertainment_flounder)
 (craves_entertainment_papaya)
 (craves_empathy_flounder)
 (craves_empathy_papaya)
 (craves_satisfaction_flounder)
 (craves_satisfaction_papaya)
 (craves_understanding_rice)
 (craves_learning_rice)
 (craves_entertainment_rice)
 (craves_empathy_rice)
 (craves_satisfaction_rice)
 (craves_understanding_scallop)
 (craves_learning_scallop)
 (craves_entertainment_scallop)
 (craves_satisfaction_scallop)
 (craves_understanding_marzipan)
 (craves_entertainment_marzipan)
 (craves_empathy_marzipan)
 (craves_satisfaction_marzipan)
 (craves_understanding_endive)
 (craves_learning_endive)
 (craves_entertainment_endive)
 (craves_empathy_endive)
 (craves_satisfaction_endive)
 (craves_entertainment_pistachio)
 (craves_empathy_pistachio)
 (craves_satisfaction_pistachio)
 (craves_understanding_pistachio)
 (craves_learning_pistachio)
 (craves_understanding_pepper)
 (craves_understanding_snickers)
 (craves_learning_pepper)
 (craves_learning_snickers)
 (craves_entertainment_pepper)
 (craves_entertainment_snickers)
 (craves_empathy_pepper)
 (craves_empathy_snickers)
 (craves_satisfaction_pepper)
 (craves_understanding_turkey)
 (craves_learning_turkey)
 (craves_entertainment_turkey)
 (craves_empathy_turkey)
 (craves_satisfaction_turkey)
 (fears_boils_empathy)
 (craves_boils_pepper)
 (fears_depression_learning)
 (craves_depression_pepper)
 (craves_depression_papaya)
 (craves_boils_flounder)
 (craves_depression_flounder)
 (craves_boils_endive)
 (craves_depression_endive)
 (craves_boils_marzipan)
 (craves_depression_haroset)
 (craves_boils_turkey)
 (craves_depression_turkey)
)
(:functions   (locale_pepper)
  (harmony_learning)
  (locale_flounder)
  (harmony_satisfaction)
  (locale_hamburger)
  (locale_pistachio)
  (harmony_entertainment)
  (locale_haroset)
  (harmony_understanding)
  (locale_turkey)
  (locale_scallop)
  (locale_snickers)
  (locale_marzipan)
  (locale_rice)
  (locale_endive)
  (locale_papaya)
  (harmony_empathy)
)
(:action feast__empathy__scallop__hamburger
	:parameters ()
	:precondition (and  (craves_empathy_scallop)(>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(craves_empathy_hamburger)			(not (craves_empathy_scallop))
))
(:action feast__empathy__scallop__rice
	:parameters ()
	:precondition (and  (craves_empathy_scallop)(>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(craves_empathy_rice)			(not (craves_empathy_scallop))
))
(:action overcome__depression__learning__marzipan
	:parameters ()
	:precondition (and  (craves_learning_marzipan)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_depression_marzipan))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_depression_learning)			(not (craves_depression_marzipan))
))
(:action drink__papaya__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_papaya) 1.0)			(increase (locale_hamburger) 1.0)
))
(:action drink__papaya__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_papaya) 1.0)			(increase (locale_snickers) 1.0)
))
(:action feast__understanding__papaya__turkey
	:parameters ()
	:precondition (and  (craves_understanding_papaya)(>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_papaya) 1.0)			(craves_understanding_turkey)			(not (craves_understanding_papaya))
))
(:action feast__satisfaction__snickers__hamburger
	:parameters ()
	:precondition (and  (craves_satisfaction_snickers)(>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_snickers) 1.0)			(not (craves_satisfaction_snickers))			(craves_satisfaction_hamburger)
))
(:action drink__papaya__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_rice) 1.0)			(decrease (locale_papaya) 1.0)
))
(:action drink__papaya__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_turkey) 1.0)			(decrease (locale_papaya) 1.0)
))
(:action drink__papaya__haroset
	:parameters ()
	:precondition (and (>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_papaya) 1.0)			(increase (locale_haroset) 1.0)
))
(:action drink__papaya__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_papaya) 1.0)			(increase (locale_pistachio) 1.0)
))
(:action feast__entertainment__haroset__rice
	:parameters ()
	:precondition (and  (craves_entertainment_haroset)(>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_haroset) 1.0)			(not (craves_entertainment_haroset))			(craves_entertainment_rice)
))
(:action drink__papaya__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallop) 1.0)			(decrease (locale_papaya) 1.0)
))
(:action feast__entertainment__haroset__hamburger
	:parameters ()
	:precondition (and  (craves_entertainment_haroset)(>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_haroset) 1.0)			(not (craves_entertainment_haroset))			(craves_entertainment_hamburger)
))
(:action drink__papaya__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_flounder) 1.0)			(decrease (locale_papaya) 1.0)
))
(:action drink__papaya__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_papaya) 1.0)			(increase (locale_papaya) 1.0)
))
(:action drink__papaya__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_papaya) 1.0)			(increase (locale_marzipan) 1.0)
))
(:action drink__papaya__endive
	:parameters ()
	:precondition (and (>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_papaya) 1.0)			(increase (locale_endive) 1.0)
))
(:action drink__papaya__pepper
	:parameters ()
	:precondition (and (>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_papaya) 1.0)			(increase (locale_pepper) 1.0)
))
(:action drink__flounder__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_rice) 1.0)			(decrease (locale_flounder) 1.0)
))
(:action drink__flounder__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_flounder) 1.0)			(increase (locale_hamburger) 1.0)
))
(:action drink__flounder__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallop) 1.0)			(decrease (locale_flounder) 1.0)
))
(:action drink__flounder__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_turkey) 1.0)			(decrease (locale_flounder) 1.0)
))
(:action drink__flounder__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_flounder) 1.0)			(increase (locale_snickers) 1.0)
))
(:action drink__flounder__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_pistachio) 1.0)			(decrease (locale_flounder) 1.0)
))
(:action drink__flounder__endive
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_flounder) 1.0)			(increase (locale_endive) 1.0)
))
(:action drink__flounder__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_flounder) 1.0)			(decrease (locale_flounder) 1.0)
))
(:action drink__flounder__haroset
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_flounder) 1.0)			(increase (locale_haroset) 1.0)
))
(:action drink__flounder__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_marzipan) 1.0)			(decrease (locale_flounder) 1.0)
))
(:action drink__flounder__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_papaya) 1.0)			(decrease (locale_flounder) 1.0)
))
(:action drink__flounder__pepper
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_flounder) 1.0)			(increase (locale_pepper) 1.0)
))
(:action drink__endive__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_rice) 1.0)			(decrease (locale_endive) 1.0)
))
(:action drink__endive__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_pistachio) 1.0)			(decrease (locale_endive) 1.0)
))
(:action drink__endive__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallop) 1.0)			(decrease (locale_endive) 1.0)
))
(:action drink__endive__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_endive) 1.0)			(increase (locale_hamburger) 1.0)
))
(:action drink__endive__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_snickers) 1.0)			(decrease (locale_endive) 1.0)
))
(:action drink__endive__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_marzipan) 1.0)			(decrease (locale_endive) 1.0)
))
(:action drink__endive__endive
	:parameters ()
	:precondition (and (>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_endive) 1.0)			(decrease (locale_endive) 1.0)
))
(:action drink__endive__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_turkey) 1.0)			(decrease (locale_endive) 1.0)
))
(:action drink__endive__haroset
	:parameters ()
	:precondition (and (>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_endive) 1.0)			(increase (locale_haroset) 1.0)
))
(:action drink__endive__pepper
	:parameters ()
	:precondition (and (>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_pepper) 1.0)			(decrease (locale_endive) 1.0)
))
(:action drink__endive__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_flounder) 1.0)			(decrease (locale_endive) 1.0)
))
(:action drink__endive__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_papaya) 1.0)			(decrease (locale_endive) 1.0)
))
(:action drink__pistachio__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(increase (locale_papaya) 1.0)
))
(:action drink__pistachio__pepper
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(increase (locale_pepper) 1.0)
))
(:action drink__pistachio__endive
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(increase (locale_endive) 1.0)
))
(:action drink__pistachio__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(increase (locale_flounder) 1.0)
))
(:action drink__pistachio__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(increase (locale_snickers) 1.0)
))
(:action drink__pistachio__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(increase (locale_pistachio) 1.0)
))
(:action drink__pistachio__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_rice) 1.0)			(decrease (locale_pistachio) 1.0)
))
(:action drink__pistachio__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(increase (locale_hamburger) 1.0)
))
(:action drink__pistachio__haroset
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(increase (locale_haroset) 1.0)
))
(:action drink__pistachio__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(increase (locale_marzipan) 1.0)
))
(:action drink__pistachio__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(increase (locale_scallop) 1.0)
))
(:action drink__pistachio__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(increase (locale_turkey) 1.0)
))
(:action drink__snickers__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_flounder) 1.0)			(decrease (locale_snickers) 1.0)
))
(:action drink__snickers__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_snickers) 1.0)			(increase (locale_papaya) 1.0)
))
(:action drink__snickers__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_snickers) 1.0)			(increase (locale_marzipan) 1.0)
))
(:action drink__snickers__endive
	:parameters ()
	:precondition (and (>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_snickers) 1.0)			(increase (locale_endive) 1.0)
))
(:action drink__snickers__pepper
	:parameters ()
	:precondition (and (>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_snickers) 1.0)			(increase (locale_pepper) 1.0)
))
(:action overcome__jealousy__satisfaction__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_snickers) (craves_jealousy_snickers))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_jealousy_snickers))			(fears_jealousy_satisfaction)
))
(:action drink__snickers__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_snickers) 1.0)			(increase (locale_hamburger) 1.0)
))
(:action drink__snickers__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_snickers) 1.0)			(increase (locale_snickers) 1.0)
))
(:action drink__snickers__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_rice) 1.0)			(decrease (locale_snickers) 1.0)
))
(:action drink__snickers__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_snickers) 1.0)			(increase (locale_turkey) 1.0)
))
(:action drink__snickers__haroset
	:parameters ()
	:precondition (and (>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_snickers) 1.0)			(increase (locale_haroset) 1.0)
))
(:action drink__snickers__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_snickers) 1.0)			(increase (locale_pistachio) 1.0)
))
(:action drink__snickers__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallop) 1.0)			(decrease (locale_snickers) 1.0)
))
(:action drink__hamburger__endive
	:parameters ()
	:precondition (and (>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_endive) 1.0)			(decrease (locale_hamburger) 1.0)
))
(:action drink__hamburger__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_flounder) 1.0)			(decrease (locale_hamburger) 1.0)
))
(:action drink__hamburger__haroset
	:parameters ()
	:precondition (and (>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_haroset) 1.0)			(decrease (locale_hamburger) 1.0)
))
(:action drink__hamburger__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_marzipan) 1.0)			(decrease (locale_hamburger) 1.0)
))
(:action drink__hamburger__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_papaya) 1.0)			(decrease (locale_hamburger) 1.0)
))
(:action drink__hamburger__pepper
	:parameters ()
	:precondition (and (>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_pepper) 1.0)			(decrease (locale_hamburger) 1.0)
))
(:action drink__hamburger__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_rice) 1.0)			(decrease (locale_hamburger) 1.0)
))
(:action drink__hamburger__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_hamburger) 1.0)			(decrease (locale_hamburger) 1.0)
))
(:action drink__hamburger__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallop) 1.0)			(decrease (locale_hamburger) 1.0)
))
(:action drink__hamburger__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_turkey) 1.0)			(decrease (locale_hamburger) 1.0)
))
(:action drink__hamburger__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_snickers) 1.0)			(decrease (locale_hamburger) 1.0)
))
(:action drink__hamburger__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_pistachio) 1.0)			(decrease (locale_hamburger) 1.0)
))
(:action drink__rice__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_marzipan) 1.0)			(decrease (locale_rice) 1.0)
))
(:action drink__rice__endive
	:parameters ()
	:precondition (and (>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(increase (locale_endive) 1.0)
))
(:action drink__rice__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_turkey) 1.0)			(decrease (locale_rice) 1.0)
))
(:action drink__rice__haroset
	:parameters ()
	:precondition (and (>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(increase (locale_haroset) 1.0)
))
(:action drink__rice__pepper
	:parameters ()
	:precondition (and (>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(increase (locale_pepper) 1.0)
))
(:action drink__rice__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_flounder) 1.0)			(decrease (locale_rice) 1.0)
))
(:action drink__rice__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_papaya) 1.0)			(decrease (locale_rice) 1.0)
))
(:action overcome__boils__entertainment__haroset
	:parameters ()
	:precondition (and  (craves_entertainment_haroset)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_boils_haroset))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_boils_entertainment)			(not (craves_boils_haroset))
))
(:action drink__rice__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_rice) 1.0)			(decrease (locale_rice) 1.0)
))
(:action drink__rice__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_pistachio) 1.0)			(decrease (locale_rice) 1.0)
))
(:action drink__rice__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallop) 1.0)			(decrease (locale_rice) 1.0)
))
(:action drink__rice__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(increase (locale_hamburger) 1.0)
))
(:action drink__rice__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(increase (locale_snickers) 1.0)
))
(:action drink__haroset__pepper
	:parameters ()
	:precondition (and (>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_pepper) 1.0)			(decrease (locale_haroset) 1.0)
))
(:action drink__haroset__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_haroset) 1.0)			(increase (locale_hamburger) 1.0)
))
(:action drink__haroset__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_snickers) 1.0)			(decrease (locale_haroset) 1.0)
))
(:action drink__haroset__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_rice) 1.0)			(decrease (locale_haroset) 1.0)
))
(:action drink__haroset__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_turkey) 1.0)			(decrease (locale_haroset) 1.0)
))
(:action drink__haroset__haroset
	:parameters ()
	:precondition (and (>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_haroset) 1.0)			(decrease (locale_haroset) 1.0)
))
(:action drink__haroset__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_pistachio) 1.0)			(decrease (locale_haroset) 1.0)
))
(:action drink__haroset__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallop) 1.0)			(decrease (locale_haroset) 1.0)
))
(:action drink__haroset__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_flounder) 1.0)			(decrease (locale_haroset) 1.0)
))
(:action drink__haroset__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_papaya) 1.0)			(decrease (locale_haroset) 1.0)
))
(:action drink__haroset__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_marzipan) 1.0)			(decrease (locale_haroset) 1.0)
))
(:action drink__haroset__endive
	:parameters ()
	:precondition (and (>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_endive) 1.0)			(decrease (locale_haroset) 1.0)
))
(:action drink__turkey__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(increase (locale_papaya) 1.0)
))
(:action drink__turkey__pepper
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(increase (locale_pepper) 1.0)
))
(:action drink__turkey__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_rice) 1.0)			(decrease (locale_turkey) 1.0)
))
(:action drink__turkey__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(increase (locale_hamburger) 1.0)
))
(:action drink__turkey__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallop) 1.0)			(decrease (locale_turkey) 1.0)
))
(:action drink__turkey__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_turkey) 1.0)			(decrease (locale_turkey) 1.0)
))
(:action drink__turkey__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(increase (locale_snickers) 1.0)
))
(:action drink__turkey__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(increase (locale_pistachio) 1.0)
))
(:action drink__turkey__endive
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(increase (locale_endive) 1.0)
))
(:action drink__turkey__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_flounder) 1.0)			(decrease (locale_turkey) 1.0)
))
(:action drink__turkey__haroset
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(increase (locale_haroset) 1.0)
))
(:action drink__turkey__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(increase (locale_marzipan) 1.0)
))
(:action drink__scallop__pepper
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(increase (locale_pepper) 1.0)
))
(:action drink__scallop__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_flounder) 1.0)			(decrease (locale_scallop) 1.0)
))
(:action drink__scallop__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_papaya) 1.0)			(decrease (locale_scallop) 1.0)
))
(:action drink__scallop__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_rice) 1.0)			(decrease (locale_scallop) 1.0)
))
(:action drink__scallop__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_pistachio) 1.0)			(decrease (locale_scallop) 1.0)
))
(:action drink__scallop__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallop) 1.0)			(decrease (locale_scallop) 1.0)
))
(:action drink__scallop__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(increase (locale_hamburger) 1.0)
))
(:action drink__scallop__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(increase (locale_snickers) 1.0)
))
(:action drink__scallop__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_marzipan) 1.0)			(decrease (locale_scallop) 1.0)
))
(:action drink__scallop__endive
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(increase (locale_endive) 1.0)
))
(:action drink__scallop__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_turkey) 1.0)			(decrease (locale_scallop) 1.0)
))
(:action drink__scallop__haroset
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(increase (locale_haroset) 1.0)
))
(:action feast__satisfaction__snickers__pepper
	:parameters ()
	:precondition (and  (craves_satisfaction_snickers)(>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_snickers) 1.0)			(not (craves_satisfaction_snickers))			(craves_satisfaction_pepper)
))
(:action feast__entertainment__haroset__marzipan
	:parameters ()
	:precondition (and  (craves_entertainment_haroset)(>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_haroset) 1.0)			(not (craves_entertainment_haroset))			(craves_entertainment_marzipan)
))
(:action feast__understanding__papaya__flounder
	:parameters ()
	:precondition (and  (craves_understanding_papaya)(>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_papaya) 1.0)			(craves_understanding_flounder)			(not (craves_understanding_papaya))
))
(:action feast__entertainment__haroset__endive
	:parameters ()
	:precondition (and  (craves_entertainment_haroset)(>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_haroset) 1.0)			(not (craves_entertainment_haroset))			(craves_entertainment_endive)
))
(:action feast__learning__marzipan__turkey
	:parameters ()
	:precondition (and  (craves_learning_marzipan)(>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(not (craves_learning_marzipan))			(craves_learning_turkey)
))
(:action feast__learning__marzipan__hamburger
	:parameters ()
	:precondition (and  (craves_learning_marzipan)(>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(not (craves_learning_marzipan))			(craves_learning_hamburger)
))
(:action feast__learning__marzipan__haroset
	:parameters ()
	:precondition (and  (craves_learning_marzipan)(>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(not (craves_learning_marzipan))			(craves_learning_haroset)
))
(:action feast__empathy__rice__haroset
	:parameters ()
	:precondition (and  (craves_empathy_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(craves_empathy_haroset)			(not (craves_empathy_rice))
))
(:action feast__empathy__rice__endive
	:parameters ()
	:precondition (and  (craves_empathy_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(not (craves_empathy_rice))			(craves_empathy_endive)
))
(:action feast__empathy__rice__pistachio
	:parameters ()
	:precondition (and  (craves_empathy_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(craves_empathy_pistachio)			(not (craves_empathy_rice))
))
(:action feast__empathy__rice__scallop
	:parameters ()
	:precondition (and  (craves_empathy_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(craves_empathy_scallop)			(not (craves_empathy_rice))
))
(:action feast__empathy__hamburger__haroset
	:parameters ()
	:precondition (and  (craves_empathy_hamburger)(>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_hamburger) 1.0)			(craves_empathy_haroset)			(not (craves_empathy_hamburger))
))
(:action feast__empathy__hamburger__marzipan
	:parameters ()
	:precondition (and  (craves_empathy_hamburger)(>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_hamburger) 1.0)			(craves_empathy_marzipan)			(not (craves_empathy_hamburger))
))
(:action feast__empathy__hamburger__snickers
	:parameters ()
	:precondition (and  (craves_empathy_hamburger)(>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_hamburger) 1.0)			(craves_empathy_snickers)			(not (craves_empathy_hamburger))
))
(:action feast__empathy__hamburger__scallop
	:parameters ()
	:precondition (and  (craves_empathy_hamburger)(>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_hamburger) 1.0)			(craves_empathy_scallop)			(not (craves_empathy_hamburger))
))
(:action succumb__jealousy__satisfaction__snickers
	:parameters ()
	:precondition (and  (craves_satisfaction_snickers) (fears_jealousy_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_jealousy_satisfaction))			(craves_jealousy_snickers)
))
(:action succumb__jealousy__satisfaction__hamburger
	:parameters ()
	:precondition (and  (craves_satisfaction_hamburger) (fears_jealousy_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_jealousy_satisfaction))			(craves_jealousy_hamburger)
))
(:action succumb__jealousy__satisfaction__pepper
	:parameters ()
	:precondition (and  (craves_satisfaction_pepper) (fears_jealousy_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_jealousy_satisfaction))			(craves_jealousy_pepper)
))
(:action overcome__depression__entertainment__marzipan
	:parameters ()
	:precondition (and  (craves_entertainment_marzipan)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_depression_marzipan))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_depression_entertainment)			(not (craves_depression_marzipan))
))
(:action succumb__boils__entertainment__haroset
	:parameters ()
	:precondition (and  (craves_entertainment_haroset) (fears_boils_entertainment))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_boils_haroset)			(not (fears_boils_entertainment))
))
(:action succumb__boils__entertainment__marzipan
	:parameters ()
	:precondition (and  (craves_entertainment_marzipan) (fears_boils_entertainment))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_boils_marzipan)			(not (fears_boils_entertainment))
))
(:action succumb__boils__entertainment__rice
	:parameters ()
	:precondition (and  (fears_boils_entertainment) (craves_entertainment_rice))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_boils_rice)			(not (fears_boils_entertainment))
))
(:action succumb__boils__entertainment__hamburger
	:parameters ()
	:precondition (and  (craves_entertainment_hamburger) (fears_boils_entertainment))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(not (fears_boils_entertainment))			(craves_boils_hamburger)
))
(:action succumb__boils__entertainment__endive
	:parameters ()
	:precondition (and  (fears_boils_entertainment) (craves_entertainment_endive))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_boils_endive)			(not (fears_boils_entertainment))
))
(:action drink__pepper__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_snickers) 1.0)			(decrease (locale_pepper) 1.0)
))
(:action drink__pepper__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_pistachio) 1.0)			(decrease (locale_pepper) 1.0)
))
(:action drink__pepper__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_rice) 1.0)			(decrease (locale_pepper) 1.0)
))
(:action drink__pepper__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pepper) 1.0)			(increase (locale_hamburger) 1.0)
))
(:action feast__satisfaction__hamburger__snickers
	:parameters ()
	:precondition (and  (craves_satisfaction_hamburger)(>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_hamburger) 1.0)			(not (craves_satisfaction_hamburger))			(craves_satisfaction_snickers)
))
(:action drink__pepper__haroset
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pepper) 1.0)			(increase (locale_haroset) 1.0)
))
(:action drink__pepper__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_marzipan) 1.0)			(decrease (locale_pepper) 1.0)
))
(:action drink__pepper__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallop) 1.0)			(decrease (locale_pepper) 1.0)
))
(:action drink__pepper__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_turkey) 1.0)			(decrease (locale_pepper) 1.0)
))
(:action drink__pepper__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_papaya) 1.0)			(decrease (locale_pepper) 1.0)
))
(:action drink__pepper__pepper
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_pepper) 1.0)			(decrease (locale_pepper) 1.0)
))
(:action drink__pepper__endive
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pepper) 1.0)			(increase (locale_endive) 1.0)
))
(:action drink__pepper__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_flounder) 1.0)			(decrease (locale_pepper) 1.0)
))
(:action feast__satisfaction__hamburger__marzipan
	:parameters ()
	:precondition (and  (craves_satisfaction_hamburger)(>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_hamburger) 1.0)			(not (craves_satisfaction_hamburger))			(craves_satisfaction_marzipan)
))
(:action feast__understanding__flounder__pepper
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0) (craves_understanding_flounder))
	:effect (and 
			(decrease (locale_flounder) 1.0)			(craves_understanding_pepper)			(not (craves_understanding_flounder))
))
(:action feast__satisfaction__hamburger__scallop
	:parameters ()
	:precondition (and  (craves_satisfaction_hamburger)(>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_hamburger) 1.0)			(not (craves_satisfaction_hamburger))			(craves_satisfaction_scallop)
))
(:action feast__understanding__flounder__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0) (craves_understanding_flounder))
	:effect (and 
			(decrease (locale_flounder) 1.0)			(craves_understanding_papaya)			(not (craves_understanding_flounder))
))
(:action feast__satisfaction__hamburger__haroset
	:parameters ()
	:precondition (and  (craves_satisfaction_hamburger)(>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_hamburger) 1.0)			(not (craves_satisfaction_hamburger))			(craves_satisfaction_haroset)
))
(:action feast__entertainment__rice__endive
	:parameters ()
	:precondition (and  (craves_entertainment_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(not (craves_entertainment_rice))			(craves_entertainment_endive)
))
(:action feast__entertainment__rice__scallop
	:parameters ()
	:precondition (and  (craves_entertainment_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(not (craves_entertainment_rice))			(craves_entertainment_scallop)
))
(:action feast__entertainment__rice__haroset
	:parameters ()
	:precondition (and  (craves_entertainment_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(craves_entertainment_haroset)			(not (craves_entertainment_rice))
))
(:action feast__entertainment__rice__pistachio
	:parameters ()
	:precondition (and  (craves_entertainment_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(craves_entertainment_pistachio)			(not (craves_entertainment_rice))
))
(:action feast__understanding__turkey__marzipan
	:parameters ()
	:precondition (and  (craves_understanding_turkey)(>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(not (craves_understanding_turkey))			(craves_understanding_marzipan)
))
(:action feast__entertainment__hamburger__haroset
	:parameters ()
	:precondition (and  (craves_entertainment_hamburger)(>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_hamburger) 1.0)			(craves_entertainment_haroset)			(not (craves_entertainment_hamburger))
))
(:action feast__entertainment__hamburger__marzipan
	:parameters ()
	:precondition (and  (craves_entertainment_hamburger)(>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_hamburger) 1.0)			(craves_entertainment_marzipan)			(not (craves_entertainment_hamburger))
))
(:action feast__understanding__turkey__papaya
	:parameters ()
	:precondition (and  (craves_understanding_turkey)(>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(craves_understanding_papaya)			(not (craves_understanding_turkey))
))
(:action feast__understanding__turkey__pistachio
	:parameters ()
	:precondition (and  (craves_understanding_turkey)(>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(craves_understanding_pistachio)			(not (craves_understanding_turkey))
))
(:action feast__entertainment__hamburger__snickers
	:parameters ()
	:precondition (and  (craves_entertainment_hamburger)(>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_hamburger) 1.0)			(not (craves_entertainment_hamburger))			(craves_entertainment_snickers)
))
(:action feast__entertainment__hamburger__scallop
	:parameters ()
	:precondition (and  (craves_entertainment_hamburger)(>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_hamburger) 1.0)			(craves_entertainment_scallop)			(not (craves_entertainment_hamburger))
))
(:action drink__marzipan__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(increase (locale_snickers) 1.0)
))
(:action drink__marzipan__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(increase (locale_pistachio) 1.0)
))
(:action drink__marzipan__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_rice) 1.0)			(decrease (locale_marzipan) 1.0)
))
(:action drink__marzipan__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(increase (locale_hamburger) 1.0)
))
(:action drink__marzipan__haroset
	:parameters ()
	:precondition (and (>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(increase (locale_haroset) 1.0)
))
(:action drink__marzipan__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(increase (locale_marzipan) 1.0)
))
(:action drink__marzipan__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallop) 1.0)			(decrease (locale_marzipan) 1.0)
))
(:action drink__marzipan__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_turkey) 1.0)			(decrease (locale_marzipan) 1.0)
))
(:action drink__marzipan__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_papaya) 1.0)			(decrease (locale_marzipan) 1.0)
))
(:action drink__marzipan__pepper
	:parameters ()
	:precondition (and (>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(increase (locale_pepper) 1.0)
))
(:action drink__marzipan__endive
	:parameters ()
	:precondition (and (>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(increase (locale_endive) 1.0)
))
(:action drink__marzipan__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_flounder) 1.0)			(decrease (locale_marzipan) 1.0)
))
(:action feast__satisfaction__pepper__flounder
	:parameters ()
	:precondition (and  (craves_satisfaction_pepper)(>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pepper) 1.0)			(not (craves_satisfaction_pepper))			(craves_satisfaction_flounder)
))
(:action feast__satisfaction__pepper__snickers
	:parameters ()
	:precondition (and  (craves_satisfaction_pepper)(>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pepper) 1.0)			(not (craves_satisfaction_pepper))			(craves_satisfaction_snickers)
))
(:action succumb__depression__learning__marzipan
	:parameters ()
	:precondition (and  (craves_learning_marzipan) (fears_depression_learning))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_depression_learning))			(craves_depression_marzipan)
))
(:action feast__entertainment__marzipan__turkey
	:parameters ()
	:precondition (and  (craves_entertainment_marzipan)(>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(not (craves_entertainment_marzipan))			(craves_entertainment_turkey)
))
(:action feast__entertainment__marzipan__haroset
	:parameters ()
	:precondition (and  (craves_entertainment_marzipan)(>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(not (craves_entertainment_marzipan))			(craves_entertainment_haroset)
))
(:action feast__entertainment__marzipan__hamburger
	:parameters ()
	:precondition (and  (craves_entertainment_marzipan)(>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(craves_entertainment_hamburger)			(not (craves_entertainment_marzipan))
))
(:action feast__entertainment__endive__haroset
	:parameters ()
	:precondition (and  (craves_entertainment_endive)(>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_endive) 1.0)			(craves_entertainment_haroset)			(not (craves_entertainment_endive))
))
(:action feast__entertainment__endive__rice
	:parameters ()
	:precondition (and  (craves_entertainment_endive)(>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_endive) 1.0)			(craves_entertainment_rice)			(not (craves_entertainment_endive))
))
(:action feast__entertainment__endive__pistachio
	:parameters ()
	:precondition (and  (craves_entertainment_endive)(>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_endive) 1.0)			(craves_entertainment_pistachio)			(not (craves_entertainment_endive))
))
(:action feast__empathy__snickers__pepper
	:parameters ()
	:precondition (and  (craves_empathy_snickers)(>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_snickers) 1.0)			(craves_empathy_pepper)			(not (craves_empathy_snickers))
))
(:action feast__learning__haroset__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0) (craves_learning_haroset))
	:effect (and 
			(decrease (locale_haroset) 1.0)			(craves_learning_marzipan)			(not (craves_learning_haroset))
))
(:action feast__learning__haroset__endive
	:parameters ()
	:precondition (and (>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0) (craves_learning_haroset))
	:effect (and 
			(decrease (locale_haroset) 1.0)			(craves_learning_endive)			(not (craves_learning_haroset))
))
(:action feast__empathy__pistachio__rice
	:parameters ()
	:precondition (and  (craves_empathy_pistachio)(>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(craves_empathy_rice)			(not (craves_empathy_pistachio))
))
(:action feast__empathy__pistachio__endive
	:parameters ()
	:precondition (and  (craves_empathy_pistachio)(>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(not (craves_empathy_pistachio))			(craves_empathy_endive)
))
(:action feast__empathy__pistachio__turkey
	:parameters ()
	:precondition (and  (craves_empathy_pistachio)(>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(not (craves_empathy_pistachio))			(craves_empathy_turkey)
))
(:action feast__learning__turkey__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0) (craves_learning_turkey))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(craves_learning_pistachio)			(not (craves_learning_turkey))
))
(:action feast__learning__turkey__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0) (craves_learning_turkey))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(craves_learning_papaya)			(not (craves_learning_turkey))
))
(:action feast__learning__turkey__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0) (craves_learning_turkey))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(craves_learning_marzipan)			(not (craves_learning_turkey))
))
(:action feast__learning__haroset__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0) (craves_learning_haroset))
	:effect (and 
			(decrease (locale_haroset) 1.0)			(not (craves_learning_haroset))			(craves_learning_hamburger)
))
(:action feast__empathy__snickers__hamburger
	:parameters ()
	:precondition (and  (craves_empathy_snickers)(>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_snickers) 1.0)			(not (craves_empathy_snickers))			(craves_empathy_hamburger)
))
(:action feast__learning__haroset__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0) (craves_learning_haroset))
	:effect (and 
			(decrease (locale_haroset) 1.0)			(craves_learning_rice)			(not (craves_learning_haroset))
))
(:action overcome__depression__empathy__marzipan
	:parameters ()
	:precondition (and  (craves_empathy_marzipan)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_depression_marzipan))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_depression_empathy)			(not (craves_depression_marzipan))
))
(:action succumb__jealousy__satisfaction__haroset
	:parameters ()
	:precondition (and  (craves_satisfaction_haroset) (fears_jealousy_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_jealousy_satisfaction))			(craves_jealousy_haroset)
))
(:action succumb__jealousy__satisfaction__marzipan
	:parameters ()
	:precondition (and  (craves_satisfaction_marzipan) (fears_jealousy_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_jealousy_satisfaction))			(craves_jealousy_marzipan)
))
(:action succumb__jealousy__satisfaction__scallop
	:parameters ()
	:precondition (and  (craves_satisfaction_scallop) (fears_jealousy_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_jealousy_satisfaction))			(craves_jealousy_scallop)
))
(:action succumb__jealousy__satisfaction__flounder
	:parameters ()
	:precondition (and  (craves_satisfaction_flounder) (fears_jealousy_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_jealousy_flounder)			(not (fears_jealousy_satisfaction))
))
(:action feast__learning__hamburger__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0) (craves_learning_hamburger))
	:effect (and 
			(decrease (locale_hamburger) 1.0)			(craves_learning_scallop)			(not (craves_learning_hamburger))
))
(:action feast__learning__hamburger__haroset
	:parameters ()
	:precondition (and (>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0) (craves_learning_hamburger))
	:effect (and 
			(decrease (locale_hamburger) 1.0)			(craves_learning_haroset)			(not (craves_learning_hamburger))
))
(:action feast__learning__hamburger__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0) (craves_learning_hamburger))
	:effect (and 
			(decrease (locale_hamburger) 1.0)			(craves_learning_marzipan)			(not (craves_learning_hamburger))
))
(:action feast__learning__hamburger__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0) (craves_learning_hamburger))
	:effect (and 
			(decrease (locale_hamburger) 1.0)			(craves_learning_snickers)			(not (craves_learning_hamburger))
))
(:action overcome__depression__satisfaction__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_marzipan) (craves_depression_marzipan))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_depression_marzipan))			(fears_depression_satisfaction)
))
(:action overcome__hangover__empathy__pistachio
	:parameters ()
	:precondition (and  (craves_empathy_pistachio)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_hangover_pistachio))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_hangover_empathy)			(not (craves_hangover_pistachio))
))
(:action overcome__hangover__entertainment__pistachio
	:parameters ()
	:precondition (and  (craves_entertainment_pistachio)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_hangover_pistachio))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_hangover_entertainment)			(not (craves_hangover_pistachio))
))
(:action overcome__depression__understanding__marzipan
	:parameters ()
	:precondition (and  (craves_depression_marzipan)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0) (craves_understanding_marzipan))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_depression_understanding)			(not (craves_depression_marzipan))
))
(:action overcome__hangover__understanding__pistachio
	:parameters ()
	:precondition (and  (craves_understanding_pistachio) (craves_hangover_pistachio)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_hangover_understanding)			(not (craves_hangover_pistachio))
))
(:action succumb__boils__entertainment__scallop
	:parameters ()
	:precondition (and  (fears_boils_entertainment) (craves_entertainment_scallop))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_boils_scallop)			(not (fears_boils_entertainment))
))
(:action succumb__boils__entertainment__turkey
	:parameters ()
	:precondition (and  (fears_boils_entertainment) (craves_entertainment_turkey))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(not (fears_boils_entertainment))			(craves_boils_turkey)
))
(:action succumb__boils__entertainment__snickers
	:parameters ()
	:precondition (and  (fears_boils_entertainment) (craves_entertainment_snickers))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_boils_snickers)			(not (fears_boils_entertainment))
))
(:action succumb__boils__entertainment__pistachio
	:parameters ()
	:precondition (and  (craves_entertainment_pistachio) (fears_boils_entertainment))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_boils_pistachio)			(not (fears_boils_entertainment))
))
(:action feast__empathy__haroset__marzipan
	:parameters ()
	:precondition (and  (craves_empathy_haroset)(>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_haroset) 1.0)			(not (craves_empathy_haroset))			(craves_empathy_marzipan)
))
(:action feast__empathy__haroset__endive
	:parameters ()
	:precondition (and  (craves_empathy_haroset)(>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_haroset) 1.0)			(not (craves_empathy_haroset))			(craves_empathy_endive)
))
(:action feast__empathy__marzipan__turkey
	:parameters ()
	:precondition (and  (craves_empathy_marzipan)(>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(not (craves_empathy_marzipan))			(craves_empathy_turkey)
))
(:action feast__empathy__marzipan__haroset
	:parameters ()
	:precondition (and  (craves_empathy_marzipan)(>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(craves_empathy_haroset)			(not (craves_empathy_marzipan))
))
(:action feast__empathy__marzipan__hamburger
	:parameters ()
	:precondition (and  (craves_empathy_marzipan)(>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(craves_empathy_hamburger)			(not (craves_empathy_marzipan))
))
(:action feast__empathy__endive__haroset
	:parameters ()
	:precondition (and  (craves_empathy_endive)(>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_endive) 1.0)			(craves_empathy_haroset)			(not (craves_empathy_endive))
))
(:action feast__empathy__endive__pistachio
	:parameters ()
	:precondition (and  (craves_empathy_endive)(>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_endive) 1.0)			(craves_empathy_pistachio)			(not (craves_empathy_endive))
))
(:action feast__empathy__endive__rice
	:parameters ()
	:precondition (and  (craves_empathy_endive)(>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_endive) 1.0)			(craves_empathy_rice)			(not (craves_empathy_endive))
))
(:action feast__empathy__haroset__rice
	:parameters ()
	:precondition (and  (craves_empathy_haroset)(>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_haroset) 1.0)			(not (craves_empathy_haroset))			(craves_empathy_rice)
))
(:action feast__empathy__haroset__hamburger
	:parameters ()
	:precondition (and  (craves_empathy_haroset)(>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_haroset) 1.0)			(not (craves_empathy_haroset))			(craves_empathy_hamburger)
))
(:action feast__entertainment__turkey__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0) (craves_entertainment_turkey))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(craves_entertainment_pistachio)			(not (craves_entertainment_turkey))
))
(:action feast__entertainment__turkey__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0) (craves_entertainment_turkey))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(craves_entertainment_papaya)			(not (craves_entertainment_turkey))
))
(:action feast__entertainment__turkey__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0) (craves_entertainment_turkey))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(craves_entertainment_marzipan)			(not (craves_entertainment_turkey))
))
(:action feast__entertainment__snickers__pepper
	:parameters ()
	:precondition (and (>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0) (craves_entertainment_snickers))
	:effect (and 
			(decrease (locale_snickers) 1.0)			(not (craves_entertainment_snickers))			(craves_entertainment_pepper)
))
(:action feast__understanding__marzipan__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0) (craves_understanding_marzipan))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(not (craves_understanding_marzipan))			(craves_understanding_hamburger)
))
(:action feast__entertainment__pistachio__rice
	:parameters ()
	:precondition (and  (craves_entertainment_pistachio)(>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(craves_entertainment_rice)			(not (craves_entertainment_pistachio))
))
(:action feast__entertainment__pistachio__endive
	:parameters ()
	:precondition (and  (craves_entertainment_pistachio)(>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(not (craves_entertainment_pistachio))			(craves_entertainment_endive)
))
(:action feast__understanding__marzipan__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0) (craves_understanding_marzipan))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(not (craves_understanding_marzipan))			(craves_understanding_turkey)
))
(:action feast__understanding__marzipan__haroset
	:parameters ()
	:precondition (and (>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0) (craves_understanding_marzipan))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(not (craves_understanding_marzipan))			(craves_understanding_haroset)
))
(:action feast__entertainment__pistachio__turkey
	:parameters ()
	:precondition (and  (craves_entertainment_pistachio)(>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(not (craves_entertainment_pistachio))			(craves_entertainment_turkey)
))
(:action feast__entertainment__scallop__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0) (craves_entertainment_scallop))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(craves_entertainment_rice)			(not (craves_entertainment_scallop))
))
(:action feast__entertainment__scallop__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0) (craves_entertainment_scallop))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(craves_entertainment_hamburger)			(not (craves_entertainment_scallop))
))
(:action feast__entertainment__snickers__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0) (craves_entertainment_snickers))
	:effect (and 
			(decrease (locale_snickers) 1.0)			(not (craves_entertainment_snickers))			(craves_entertainment_hamburger)
))
(:action overcome__boils__satisfaction__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_hamburger) (craves_boils_hamburger))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_boils_satisfaction)			(not (craves_boils_hamburger))
))
(:action overcome__boils__satisfaction__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_boils_marzipan) (craves_satisfaction_marzipan))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_boils_satisfaction)			(not (craves_boils_marzipan))
))
(:action overcome__boils__satisfaction__haroset
	:parameters ()
	:precondition (and  (craves_satisfaction_haroset)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_boils_haroset))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_boils_satisfaction)			(not (craves_boils_haroset))
))
(:action feast__understanding__pistachio__rice
	:parameters ()
	:precondition (and  (craves_understanding_pistachio)(>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(craves_understanding_rice)			(not (craves_understanding_pistachio))
))
(:action feast__understanding__pistachio__turkey
	:parameters ()
	:precondition (and  (craves_understanding_pistachio)(>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(not (craves_understanding_pistachio))			(craves_understanding_turkey)
))
(:action feast__understanding__pistachio__endive
	:parameters ()
	:precondition (and  (craves_understanding_pistachio)(>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(not (craves_understanding_pistachio))			(craves_understanding_endive)
))
(:action overcome__boils__learning__marzipan
	:parameters ()
	:precondition (and  (craves_learning_marzipan) (craves_boils_marzipan)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_boils_learning)			(not (craves_boils_marzipan))
))
(:action overcome__boils__learning__haroset
	:parameters ()
	:precondition (and  (craves_boils_haroset)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_learning_haroset))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_boils_learning)			(not (craves_boils_haroset))
))
(:action overcome__boils__learning__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_boils_hamburger) (craves_learning_hamburger))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_boils_learning)			(not (craves_boils_hamburger))
))
(:action overcome__boils__understanding__marzipan
	:parameters ()
	:precondition (and  (craves_boils_marzipan)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0) (craves_understanding_marzipan))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_boils_understanding)			(not (craves_boils_marzipan))
))
(:action overcome__jealousy__satisfaction__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_hamburger) (craves_jealousy_hamburger))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_jealousy_hamburger))			(fears_jealousy_satisfaction)
))
(:action overcome__jealousy__satisfaction__pepper
	:parameters ()
	:precondition (and  (craves_satisfaction_pepper)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_jealousy_pepper))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_jealousy_pepper))			(fears_jealousy_satisfaction)
))
(:action overcome__boils__empathy__haroset
	:parameters ()
	:precondition (and  (craves_empathy_haroset)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_boils_haroset))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_boils_empathy)			(not (craves_boils_haroset))
))
(:action overcome__boils__empathy__hamburger
	:parameters ()
	:precondition (and  (craves_empathy_hamburger)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_boils_hamburger))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_boils_empathy)			(not (craves_boils_hamburger))
))
(:action overcome__boils__empathy__rice
	:parameters ()
	:precondition (and  (craves_boils_rice)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_empathy_rice))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(not (craves_boils_rice))			(fears_boils_empathy)
))
(:action overcome__boils__empathy__endive
	:parameters ()
	:precondition (and  (craves_boils_endive)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_empathy_endive))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_boils_empathy)			(not (craves_boils_endive))
))
(:action overcome__boils__empathy__marzipan
	:parameters ()
	:precondition (and  (craves_empathy_marzipan) (craves_boils_marzipan)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_boils_empathy)			(not (craves_boils_marzipan))
))
(:action overcome__boils__entertainment__marzipan
	:parameters ()
	:precondition (and  (craves_entertainment_marzipan) (craves_boils_marzipan)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_boils_entertainment)			(not (craves_boils_marzipan))
))
(:action overcome__boils__entertainment__hamburger
	:parameters ()
	:precondition (and  (craves_entertainment_hamburger)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_boils_hamburger))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_boils_entertainment)			(not (craves_boils_hamburger))
))
(:action overcome__boils__entertainment__rice
	:parameters ()
	:precondition (and  (craves_boils_rice) (craves_entertainment_rice)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(not (craves_boils_rice))			(fears_boils_entertainment)
))
(:action overcome__boils__entertainment__endive
	:parameters ()
	:precondition (and  (craves_boils_endive)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_entertainment_endive))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(not (craves_boils_endive))			(fears_boils_entertainment)
))
(:action overcome__jealousy__learning__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_learning_hamburger) (craves_jealousy_hamburger))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(not (craves_jealousy_hamburger))			(fears_jealousy_learning)
))
(:action overcome__jealousy__understanding__pepper
	:parameters ()
	:precondition (and  (craves_understanding_pepper) (craves_jealousy_pepper)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_jealousy_understanding)			(not (craves_jealousy_pepper))
))
(:action overcome__jealousy__empathy__snickers
	:parameters ()
	:precondition (and  (craves_empathy_snickers)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_jealousy_snickers))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_jealousy_empathy)			(not (craves_jealousy_snickers))
))
(:action overcome__jealousy__empathy__hamburger
	:parameters ()
	:precondition (and  (craves_empathy_hamburger)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_jealousy_hamburger))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(not (craves_jealousy_hamburger))			(fears_jealousy_empathy)
))
(:action overcome__jealousy__entertainment__hamburger
	:parameters ()
	:precondition (and  (craves_entertainment_hamburger)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_jealousy_hamburger))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(not (craves_jealousy_hamburger))			(fears_jealousy_entertainment)
))
(:action overcome__jealousy__entertainment__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_jealousy_snickers) (craves_entertainment_snickers))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_jealousy_entertainment)			(not (craves_jealousy_snickers))
))
(:action feast__satisfaction__flounder__papaya
	:parameters ()
	:precondition (and  (craves_satisfaction_flounder)(>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_flounder) 1.0)			(not (craves_satisfaction_flounder))			(craves_satisfaction_papaya)
))
(:action succumb__depression__entertainment__turkey
	:parameters ()
	:precondition (and  (fears_depression_entertainment) (craves_entertainment_turkey))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(not (fears_depression_entertainment))			(craves_depression_turkey)
))
(:action succumb__depression__entertainment__haroset
	:parameters ()
	:precondition (and  (craves_entertainment_haroset) (fears_depression_entertainment))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_depression_haroset)			(not (fears_depression_entertainment))
))
(:action succumb__depression__entertainment__pistachio
	:parameters ()
	:precondition (and  (craves_entertainment_pistachio) (fears_depression_entertainment))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_depression_pistachio)			(not (fears_depression_entertainment))
))
(:action succumb__depression__entertainment__scallop
	:parameters ()
	:precondition (and  (fears_depression_entertainment) (craves_entertainment_scallop))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_depression_scallop)			(not (fears_depression_entertainment))
))
(:action succumb__depression__entertainment__hamburger
	:parameters ()
	:precondition (and  (craves_entertainment_hamburger) (fears_depression_entertainment))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(not (fears_depression_entertainment))			(craves_depression_hamburger)
))
(:action succumb__depression__entertainment__snickers
	:parameters ()
	:precondition (and  (fears_depression_entertainment) (craves_entertainment_snickers))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_depression_snickers)			(not (fears_depression_entertainment))
))
(:action succumb__depression__entertainment__rice
	:parameters ()
	:precondition (and  (craves_entertainment_rice) (fears_depression_entertainment))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_depression_rice)			(not (fears_depression_entertainment))
))
(:action feast__satisfaction__flounder__pepper
	:parameters ()
	:precondition (and  (craves_satisfaction_flounder)(>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_flounder) 1.0)			(craves_satisfaction_pepper)			(not (craves_satisfaction_flounder))
))
(:action succumb__depression__entertainment__marzipan
	:parameters ()
	:precondition (and  (craves_entertainment_marzipan) (fears_depression_entertainment))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(not (fears_depression_entertainment))			(craves_depression_marzipan)
))
(:action succumb__depression__entertainment__endive
	:parameters ()
	:precondition (and  (fears_depression_entertainment) (craves_entertainment_endive))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_depression_endive)			(not (fears_depression_entertainment))
))
(:action succumb__depression__learning__haroset
	:parameters ()
	:precondition (and  (fears_depression_learning) (craves_learning_haroset))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_depression_learning))			(craves_depression_haroset)
))
(:action succumb__depression__learning__turkey
	:parameters ()
	:precondition (and  (fears_depression_learning) (craves_learning_turkey))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_depression_learning))			(craves_depression_turkey)
))
(:action succumb__depression__learning__hamburger
	:parameters ()
	:precondition (and  (fears_depression_learning) (craves_learning_hamburger))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_depression_learning))			(craves_depression_hamburger)
))
(:action feast__satisfaction__haroset__endive
	:parameters ()
	:precondition (and  (craves_satisfaction_haroset)(>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_haroset) 1.0)			(craves_satisfaction_endive)			(not (craves_satisfaction_haroset))
))
(:action feast__satisfaction__marzipan__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0) (craves_satisfaction_marzipan))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(not (craves_satisfaction_marzipan))			(craves_satisfaction_turkey)
))
(:action feast__satisfaction__marzipan__haroset
	:parameters ()
	:precondition (and (>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0) (craves_satisfaction_marzipan))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(craves_satisfaction_haroset)			(not (craves_satisfaction_marzipan))
))
(:action feast__satisfaction__marzipan__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_marzipan) 1.0) 1.0 ) 0.0) (craves_satisfaction_marzipan))
	:effect (and 
			(decrease (locale_marzipan) 1.0)			(not (craves_satisfaction_marzipan))			(craves_satisfaction_hamburger)
))
(:action feast__satisfaction__haroset__marzipan
	:parameters ()
	:precondition (and  (craves_satisfaction_haroset)(>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_haroset) 1.0)			(not (craves_satisfaction_haroset))			(craves_satisfaction_marzipan)
))
(:action feast__satisfaction__haroset__rice
	:parameters ()
	:precondition (and  (craves_satisfaction_haroset)(>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_haroset) 1.0)			(not (craves_satisfaction_haroset))			(craves_satisfaction_rice)
))
(:action feast__satisfaction__haroset__hamburger
	:parameters ()
	:precondition (and  (craves_satisfaction_haroset)(>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_haroset) 1.0)			(not (craves_satisfaction_haroset))			(craves_satisfaction_hamburger)
))
(:action feast__understanding__pepper__snickers
	:parameters ()
	:precondition (and  (craves_understanding_pepper)(>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pepper) 1.0)			(not (craves_understanding_pepper))			(craves_understanding_snickers)
))
(:action feast__understanding__pepper__flounder
	:parameters ()
	:precondition (and  (craves_understanding_pepper)(>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pepper) 1.0)			(not (craves_understanding_pepper))			(craves_understanding_flounder)
))
(:action feast__satisfaction__scallop__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0) (craves_satisfaction_scallop))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(not (craves_satisfaction_scallop))			(craves_satisfaction_rice)
))
(:action feast__satisfaction__scallop__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0) (craves_satisfaction_scallop))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(craves_satisfaction_hamburger)			(not (craves_satisfaction_scallop))
))
(:action succumb__jealousy__learning__papaya
	:parameters ()
	:precondition (and  (craves_learning_papaya) (fears_jealousy_learning))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_jealousy_papaya)			(not (fears_jealousy_learning))
))
(:action succumb__jealousy__learning__marzipan
	:parameters ()
	:precondition (and  (fears_jealousy_learning) (craves_learning_marzipan))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_jealousy_marzipan)			(not (fears_jealousy_learning))
))
(:action succumb__jealousy__learning__endive
	:parameters ()
	:precondition (and  (fears_jealousy_learning) (craves_learning_endive))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_jealousy_endive)			(not (fears_jealousy_learning))
))
(:action succumb__jealousy__learning__turkey
	:parameters ()
	:precondition (and  (fears_jealousy_learning) (craves_learning_turkey))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_jealousy_turkey)			(not (fears_jealousy_learning))
))
(:action succumb__jealousy__learning__haroset
	:parameters ()
	:precondition (and  (fears_jealousy_learning) (craves_learning_haroset))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_jealousy_haroset)			(not (fears_jealousy_learning))
))
(:action succumb__jealousy__learning__pistachio
	:parameters ()
	:precondition (and  (fears_jealousy_learning) (craves_learning_pistachio))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_jealousy_pistachio)			(not (fears_jealousy_learning))
))
(:action succumb__jealousy__learning__scallop
	:parameters ()
	:precondition (and  (fears_jealousy_learning) (craves_learning_scallop))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_jealousy_scallop)			(not (fears_jealousy_learning))
))
(:action succumb__jealousy__understanding__snickers
	:parameters ()
	:precondition (and  (craves_understanding_snickers) (fears_jealousy_understanding))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_jealousy_snickers)			(not (fears_jealousy_understanding))
))
(:action succumb__jealousy__understanding__pistachio
	:parameters ()
	:precondition (and  (craves_understanding_pistachio) (fears_jealousy_understanding))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_jealousy_pistachio)			(not (fears_jealousy_understanding))
))
(:action succumb__jealousy__understanding__rice
	:parameters ()
	:precondition (and  (craves_understanding_rice) (fears_jealousy_understanding))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_jealousy_rice)			(not (fears_jealousy_understanding))
))
(:action succumb__jealousy__understanding__hamburger
	:parameters ()
	:precondition (and  (fears_jealousy_understanding) (craves_understanding_hamburger))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_jealousy_understanding))			(craves_jealousy_hamburger)
))
(:action succumb__jealousy__understanding__papaya
	:parameters ()
	:precondition (and  (craves_understanding_papaya) (fears_jealousy_understanding))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_jealousy_understanding))			(craves_jealousy_papaya)
))
(:action succumb__jealousy__understanding__pepper
	:parameters ()
	:precondition (and  (craves_understanding_pepper) (fears_jealousy_understanding))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_jealousy_pepper)			(not (fears_jealousy_understanding))
))
(:action succumb__jealousy__understanding__endive
	:parameters ()
	:precondition (and  (craves_understanding_endive) (fears_jealousy_understanding))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_jealousy_endive)			(not (fears_jealousy_understanding))
))
(:action succumb__jealousy__understanding__flounder
	:parameters ()
	:precondition (and  (fears_jealousy_understanding) (craves_understanding_flounder))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_jealousy_flounder)			(not (fears_jealousy_understanding))
))
(:action succumb__jealousy__understanding__haroset
	:parameters ()
	:precondition (and  (craves_understanding_haroset) (fears_jealousy_understanding))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_jealousy_haroset)			(not (fears_jealousy_understanding))
))
(:action succumb__jealousy__understanding__marzipan
	:parameters ()
	:precondition (and  (fears_jealousy_understanding) (craves_understanding_marzipan))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_jealousy_marzipan)			(not (fears_jealousy_understanding))
))
(:action succumb__jealousy__understanding__turkey
	:parameters ()
	:precondition (and  (craves_understanding_turkey) (fears_jealousy_understanding))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_jealousy_turkey)			(not (fears_jealousy_understanding))
))
(:action feast__learning__endive__pistachio
	:parameters ()
	:precondition (and  (craves_learning_endive)(>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_endive) 1.0)			(craves_learning_pistachio)			(not (craves_learning_endive))
))
(:action feast__learning__endive__haroset
	:parameters ()
	:precondition (and  (craves_learning_endive)(>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_endive) 1.0)			(not (craves_learning_endive))			(craves_learning_haroset)
))
(:action feast__learning__endive__rice
	:parameters ()
	:precondition (and  (craves_learning_endive)(>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_endive) 1.0)			(craves_learning_rice)			(not (craves_learning_endive))
))
(:action succumb__boils__learning__marzipan
	:parameters ()
	:precondition (and  (fears_boils_learning) (craves_learning_marzipan))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_boils_marzipan)			(not (fears_boils_learning))
))
(:action succumb__boils__learning__endive
	:parameters ()
	:precondition (and  (fears_boils_learning) (craves_learning_endive))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_boils_endive)			(not (fears_boils_learning))
))
(:action succumb__boils__learning__turkey
	:parameters ()
	:precondition (and  (fears_boils_learning) (craves_learning_turkey))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_boils_learning))			(craves_boils_turkey)
))
(:action succumb__boils__learning__haroset
	:parameters ()
	:precondition (and  (fears_boils_learning) (craves_learning_haroset))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_boils_learning))			(craves_boils_haroset)
))
(:action succumb__boils__learning__pistachio
	:parameters ()
	:precondition (and  (fears_boils_learning) (craves_learning_pistachio))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_boils_pistachio)			(not (fears_boils_learning))
))
(:action succumb__boils__learning__scallop
	:parameters ()
	:precondition (and  (fears_boils_learning) (craves_learning_scallop))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_boils_scallop)			(not (fears_boils_learning))
))
(:action feast__learning__snickers__pepper
	:parameters ()
	:precondition (and (>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0) (craves_learning_snickers))
	:effect (and 
			(decrease (locale_snickers) 1.0)			(craves_learning_pepper)			(not (craves_learning_snickers))
))
(:action succumb__boils__learning__hamburger
	:parameters ()
	:precondition (and  (fears_boils_learning) (craves_learning_hamburger))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_boils_learning))			(craves_boils_hamburger)
))
(:action succumb__boils__learning__snickers
	:parameters ()
	:precondition (and  (fears_boils_learning) (craves_learning_snickers))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_boils_learning))			(craves_boils_snickers)
))
(:action feast__learning__snickers__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0) (craves_learning_snickers))
	:effect (and 
			(decrease (locale_snickers) 1.0)			(craves_learning_hamburger)			(not (craves_learning_snickers))
))
(:action succumb__boils__learning__papaya
	:parameters ()
	:precondition (and  (craves_learning_papaya) (fears_boils_learning))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_boils_learning))			(craves_boils_papaya)
))
(:action overcome__depression__empathy__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_empathy_turkey) (craves_depression_turkey))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_depression_empathy)			(not (craves_depression_turkey))
))
(:action overcome__depression__empathy__scallop
	:parameters ()
	:precondition (and  (craves_empathy_scallop) (craves_depression_scallop)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(not (craves_depression_scallop))			(fears_depression_empathy)
))
(:action feast__learning__pistachio__rice
	:parameters ()
	:precondition (and  (craves_learning_pistachio)(>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(craves_learning_rice)			(not (craves_learning_pistachio))
))
(:action overcome__depression__empathy__pistachio
	:parameters ()
	:precondition (and  (craves_empathy_pistachio) (craves_depression_pistachio)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(not (craves_depression_pistachio))			(fears_depression_empathy)
))
(:action overcome__depression__empathy__snickers
	:parameters ()
	:precondition (and  (craves_empathy_snickers)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_depression_snickers))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_depression_empathy)			(not (craves_depression_snickers))
))
(:action overcome__depression__empathy__hamburger
	:parameters ()
	:precondition (and  (craves_empathy_hamburger)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_depression_hamburger))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_depression_empathy)			(not (craves_depression_hamburger))
))
(:action overcome__depression__empathy__rice
	:parameters ()
	:precondition (and  (craves_depression_rice)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_empathy_rice))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(not (craves_depression_rice))			(fears_depression_empathy)
))
(:action succumb__boils__understanding__rice
	:parameters ()
	:precondition (and  (fears_boils_understanding) (craves_understanding_rice))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_boils_rice)			(not (fears_boils_understanding))
))
(:action succumb__boils__understanding__hamburger
	:parameters ()
	:precondition (and  (fears_boils_understanding) (craves_understanding_hamburger))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_boils_understanding))			(craves_boils_hamburger)
))
(:action overcome__depression__empathy__endive
	:parameters ()
	:precondition (and  (craves_depression_endive)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_empathy_endive))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(not (craves_depression_endive))			(fears_depression_empathy)
))
(:action overcome__depression__empathy__haroset
	:parameters ()
	:precondition (and  (craves_empathy_haroset)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_depression_haroset))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_depression_empathy)			(not (craves_depression_haroset))
))
(:action succumb__boils__understanding__endive
	:parameters ()
	:precondition (and  (fears_boils_understanding) (craves_understanding_endive))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_boils_endive)			(not (fears_boils_understanding))
))
(:action succumb__boils__understanding__flounder
	:parameters ()
	:precondition (and  (fears_boils_understanding) (craves_understanding_flounder))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_boils_understanding))			(craves_boils_flounder)
))
(:action succumb__boils__understanding__haroset
	:parameters ()
	:precondition (and  (fears_boils_understanding) (craves_understanding_haroset))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_boils_understanding))			(craves_boils_haroset)
))
(:action succumb__boils__understanding__marzipan
	:parameters ()
	:precondition (and  (fears_boils_understanding) (craves_understanding_marzipan))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_boils_understanding))			(craves_boils_marzipan)
))
(:action succumb__jealousy__satisfaction__turkey
	:parameters ()
	:precondition (and  (craves_satisfaction_turkey) (fears_jealousy_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_jealousy_satisfaction))			(craves_jealousy_turkey)
))
(:action succumb__boils__understanding__turkey
	:parameters ()
	:precondition (and  (fears_boils_understanding) (craves_understanding_turkey))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_boils_understanding))			(craves_boils_turkey)
))
(:action succumb__boils__understanding__snickers
	:parameters ()
	:precondition (and  (fears_boils_understanding) (craves_understanding_snickers))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_boils_understanding))			(craves_boils_snickers)
))
(:action succumb__jealousy__satisfaction__rice
	:parameters ()
	:precondition (and  (craves_satisfaction_rice) (fears_jealousy_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_jealousy_rice)			(not (fears_jealousy_satisfaction))
))
(:action succumb__boils__understanding__pistachio
	:parameters ()
	:precondition (and  (fears_boils_understanding) (craves_understanding_pistachio))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_boils_pistachio)			(not (fears_boils_understanding))
))
(:action feast__learning__pistachio__endive
	:parameters ()
	:precondition (and  (craves_learning_pistachio)(>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(not (craves_learning_pistachio))			(craves_learning_endive)
))
(:action succumb__jealousy__satisfaction__papaya
	:parameters ()
	:precondition (and  (craves_satisfaction_papaya) (fears_jealousy_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_jealousy_satisfaction))			(craves_jealousy_papaya)
))
(:action succumb__boils__understanding__papaya
	:parameters ()
	:precondition (and  (fears_boils_understanding) (craves_understanding_papaya))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_boils_understanding))			(craves_boils_papaya)
))
(:action succumb__jealousy__satisfaction__endive
	:parameters ()
	:precondition (and  (craves_satisfaction_endive) (fears_jealousy_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_jealousy_endive)			(not (fears_jealousy_satisfaction))
))
(:action feast__learning__pistachio__turkey
	:parameters ()
	:precondition (and  (craves_learning_pistachio)(>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(not (craves_learning_pistachio))			(craves_learning_turkey)
))
(:action succumb__boils__understanding__pepper
	:parameters ()
	:precondition (and  (fears_boils_understanding) (craves_understanding_pepper))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_boils_pepper)			(not (fears_boils_understanding))
))
(:action overcome__depression__entertainment__haroset
	:parameters ()
	:precondition (and  (craves_entertainment_haroset)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_depression_haroset))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_depression_entertainment)			(not (craves_depression_haroset))
))
(:action feast__learning__scallop__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0) (craves_learning_scallop))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(craves_learning_rice)			(not (craves_learning_scallop))
))
(:action overcome__depression__entertainment__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_entertainment_turkey) (craves_depression_turkey))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_depression_entertainment)			(not (craves_depression_turkey))
))
(:action feast__learning__scallop__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0) (craves_learning_scallop))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(not (craves_learning_scallop))			(craves_learning_hamburger)
))
(:action overcome__depression__entertainment__scallop
	:parameters ()
	:precondition (and  (craves_depression_scallop)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_entertainment_scallop))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(not (craves_depression_scallop))			(fears_depression_entertainment)
))
(:action overcome__depression__entertainment__pistachio
	:parameters ()
	:precondition (and  (craves_entertainment_pistachio) (craves_depression_pistachio)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_depression_entertainment)			(not (craves_depression_pistachio))
))
(:action overcome__depression__entertainment__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_depression_snickers) (craves_entertainment_snickers))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_depression_entertainment)			(not (craves_depression_snickers))
))
(:action overcome__depression__entertainment__hamburger
	:parameters ()
	:precondition (and  (craves_entertainment_hamburger)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_depression_hamburger))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_depression_entertainment)			(not (craves_depression_hamburger))
))
(:action overcome__depression__entertainment__rice
	:parameters ()
	:precondition (and  (craves_depression_rice) (craves_entertainment_rice)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(not (craves_depression_rice))			(fears_depression_entertainment)
))
(:action succumb__jealousy__empathy__rice
	:parameters ()
	:precondition (and  (craves_empathy_rice) (fears_jealousy_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(craves_jealousy_rice)			(not (fears_jealousy_empathy))
))
(:action overcome__depression__entertainment__endive
	:parameters ()
	:precondition (and  (craves_depression_endive)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_entertainment_endive))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(not (craves_depression_endive))			(fears_depression_entertainment)
))
(:action succumb__jealousy__empathy__marzipan
	:parameters ()
	:precondition (and  (craves_empathy_marzipan) (fears_jealousy_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_jealousy_empathy))			(craves_jealousy_marzipan)
))
(:action succumb__jealousy__empathy__endive
	:parameters ()
	:precondition (and  (fears_jealousy_empathy) (craves_empathy_endive))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_jealousy_empathy))			(craves_jealousy_endive)
))
(:action succumb__jealousy__empathy__turkey
	:parameters ()
	:precondition (and  (craves_empathy_turkey) (fears_jealousy_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_jealousy_empathy))			(craves_jealousy_turkey)
))
(:action succumb__jealousy__empathy__haroset
	:parameters ()
	:precondition (and  (craves_empathy_haroset) (fears_jealousy_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_jealousy_empathy))			(craves_jealousy_haroset)
))
(:action succumb__jealousy__empathy__pistachio
	:parameters ()
	:precondition (and  (craves_empathy_pistachio) (fears_jealousy_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_jealousy_empathy))			(craves_jealousy_pistachio)
))
(:action feast__learning__rice__endive
	:parameters ()
	:precondition (and  (craves_learning_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(not (craves_learning_rice))			(craves_learning_endive)
))
(:action succumb__jealousy__empathy__scallop
	:parameters ()
	:precondition (and  (craves_empathy_scallop) (fears_jealousy_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_jealousy_empathy))			(craves_jealousy_scallop)
))
(:action succumb__jealousy__empathy__hamburger
	:parameters ()
	:precondition (and  (craves_empathy_hamburger) (fears_jealousy_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_jealousy_empathy))			(craves_jealousy_hamburger)
))
(:action succumb__jealousy__empathy__snickers
	:parameters ()
	:precondition (and  (craves_empathy_snickers) (fears_jealousy_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_jealousy_empathy))			(craves_jealousy_snickers)
))
(:action feast__learning__rice__pistachio
	:parameters ()
	:precondition (and  (craves_learning_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(not (craves_learning_rice))			(craves_learning_pistachio)
))
(:action feast__learning__rice__scallop
	:parameters ()
	:precondition (and  (craves_learning_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(not (craves_learning_rice))			(craves_learning_scallop)
))
(:action feast__learning__rice__haroset
	:parameters ()
	:precondition (and  (craves_learning_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(not (craves_learning_rice))			(craves_learning_haroset)
))
(:action succumb__jealousy__empathy__pepper
	:parameters ()
	:precondition (and  (craves_empathy_pepper) (fears_jealousy_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_jealousy_empathy))			(craves_jealousy_pepper)
))
(:action succumb__jealousy__entertainment__rice
	:parameters ()
	:precondition (and  (fears_jealousy_entertainment) (craves_entertainment_rice))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_jealousy_rice)			(not (fears_jealousy_entertainment))
))
(:action succumb__jealousy__entertainment__hamburger
	:parameters ()
	:precondition (and  (craves_entertainment_hamburger) (fears_jealousy_entertainment))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_jealousy_hamburger)			(not (fears_jealousy_entertainment))
))
(:action succumb__jealousy__entertainment__endive
	:parameters ()
	:precondition (and  (fears_jealousy_entertainment) (craves_entertainment_endive))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_jealousy_endive)			(not (fears_jealousy_entertainment))
))
(:action succumb__jealousy__entertainment__haroset
	:parameters ()
	:precondition (and  (fears_jealousy_entertainment) (craves_entertainment_haroset))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_jealousy_haroset)			(not (fears_jealousy_entertainment))
))
(:action succumb__jealousy__entertainment__marzipan
	:parameters ()
	:precondition (and  (craves_entertainment_marzipan) (fears_jealousy_entertainment))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_jealousy_marzipan)			(not (fears_jealousy_entertainment))
))
(:action succumb__jealousy__entertainment__scallop
	:parameters ()
	:precondition (and  (fears_jealousy_entertainment) (craves_entertainment_scallop))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_jealousy_scallop)			(not (fears_jealousy_entertainment))
))
(:action succumb__jealousy__entertainment__turkey
	:parameters ()
	:precondition (and  (fears_jealousy_entertainment) (craves_entertainment_turkey))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_jealousy_turkey)			(not (fears_jealousy_entertainment))
))
(:action succumb__jealousy__entertainment__snickers
	:parameters ()
	:precondition (and  (fears_jealousy_entertainment) (craves_entertainment_snickers))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_jealousy_snickers)			(not (fears_jealousy_entertainment))
))
(:action succumb__jealousy__entertainment__pistachio
	:parameters ()
	:precondition (and  (craves_entertainment_pistachio) (fears_jealousy_entertainment))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_jealousy_pistachio)			(not (fears_jealousy_entertainment))
))
(:action succumb__jealousy__entertainment__papaya
	:parameters ()
	:precondition (and  (fears_jealousy_entertainment) (craves_entertainment_papaya))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_jealousy_papaya)			(not (fears_jealousy_entertainment))
))
(:action succumb__jealousy__entertainment__pepper
	:parameters ()
	:precondition (and  (fears_jealousy_entertainment) (craves_entertainment_pepper))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_jealousy_pepper)			(not (fears_jealousy_entertainment))
))
(:action overcome__depression__satisfaction__scallop
	:parameters ()
	:precondition (and  (craves_depression_scallop)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_scallop))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_depression_scallop))			(fears_depression_satisfaction)
))
(:action overcome__depression__satisfaction__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_snickers) (craves_depression_snickers))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_depression_satisfaction)			(not (craves_depression_snickers))
))
(:action overcome__depression__satisfaction__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_hamburger) (craves_depression_hamburger))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_depression_satisfaction)			(not (craves_depression_hamburger))
))
(:action overcome__depression__satisfaction__rice
	:parameters ()
	:precondition (and  (craves_depression_rice)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_rice))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_depression_rice))			(fears_depression_satisfaction)
))
(:action succumb__jealousy__learning__hamburger
	:parameters ()
	:precondition (and  (fears_jealousy_learning) (craves_learning_hamburger))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_jealousy_learning))			(craves_jealousy_hamburger)
))
(:action succumb__jealousy__learning__snickers
	:parameters ()
	:precondition (and  (fears_jealousy_learning) (craves_learning_snickers))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_jealousy_snickers)			(not (fears_jealousy_learning))
))
(:action succumb__jealousy__learning__rice
	:parameters ()
	:precondition (and  (fears_jealousy_learning) (craves_learning_rice))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_jealousy_rice)			(not (fears_jealousy_learning))
))
(:action overcome__depression__satisfaction__endive
	:parameters ()
	:precondition (and  (craves_satisfaction_endive) (craves_depression_endive)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_depression_endive))			(fears_depression_satisfaction)
))
(:action overcome__depression__satisfaction__haroset
	:parameters ()
	:precondition (and  (craves_satisfaction_haroset)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_depression_haroset))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_depression_satisfaction)			(not (craves_depression_haroset))
))
(:action overcome__depression__satisfaction__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_turkey) (craves_depression_turkey))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_depression_satisfaction)			(not (craves_depression_turkey))
))
(:action overcome__depression__learning__haroset
	:parameters ()
	:precondition (and  (craves_depression_haroset)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_learning_haroset))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_depression_learning)			(not (craves_depression_haroset))
))
(:action overcome__depression__learning__turkey
	:parameters ()
	:precondition (and  (craves_learning_turkey)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_depression_turkey))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_depression_learning)			(not (craves_depression_turkey))
))
(:action overcome__depression__learning__scallop
	:parameters ()
	:precondition (and  (craves_depression_scallop)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_learning_scallop))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(not (craves_depression_scallop))			(fears_depression_learning)
))
(:action overcome__depression__learning__pistachio
	:parameters ()
	:precondition (and  (craves_depression_pistachio) (craves_learning_pistachio)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_depression_learning)			(not (craves_depression_pistachio))
))
(:action overcome__depression__learning__snickers
	:parameters ()
	:precondition (and  (craves_depression_snickers)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_learning_snickers))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_depression_learning)			(not (craves_depression_snickers))
))
(:action overcome__depression__learning__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_learning_hamburger) (craves_depression_hamburger))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_depression_learning)			(not (craves_depression_hamburger))
))
(:action overcome__depression__learning__rice
	:parameters ()
	:precondition (and  (craves_depression_rice) (craves_learning_rice)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(not (craves_depression_rice))			(fears_depression_learning)
))
(:action overcome__depression__learning__endive
	:parameters ()
	:precondition (and  (craves_depression_endive) (craves_learning_endive)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(not (craves_depression_endive))			(fears_depression_learning)
))
(:action overcome__depression__understanding__rice
	:parameters ()
	:precondition (and  (craves_understanding_rice) (craves_depression_rice)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(not (craves_depression_rice))			(fears_depression_understanding)
))
(:action overcome__depression__understanding__endive
	:parameters ()
	:precondition (and  (craves_depression_endive) (craves_understanding_endive)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(not (craves_depression_endive))			(fears_depression_understanding)
))
(:action overcome__depression__understanding__haroset
	:parameters ()
	:precondition (and  (craves_understanding_haroset) (craves_depression_haroset)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_depression_understanding)			(not (craves_depression_haroset))
))
(:action overcome__depression__understanding__turkey
	:parameters ()
	:precondition (and  (craves_understanding_turkey)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0) (craves_depression_turkey))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_depression_understanding)			(not (craves_depression_turkey))
))
(:action overcome__depression__understanding__pistachio
	:parameters ()
	:precondition (and  (craves_understanding_pistachio) (craves_depression_pistachio)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_depression_understanding)			(not (craves_depression_pistachio))
))
(:action overcome__depression__understanding__snickers
	:parameters ()
	:precondition (and  (craves_understanding_snickers) (craves_depression_snickers)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_depression_understanding)			(not (craves_depression_snickers))
))
(:action overcome__depression__understanding__hamburger
	:parameters ()
	:precondition (and  (craves_understanding_hamburger)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0) (craves_depression_hamburger))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_depression_understanding)			(not (craves_depression_hamburger))
))
(:action overcome__hangover__learning__pistachio
	:parameters ()
	:precondition (and  (craves_learning_pistachio)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_hangover_pistachio))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(not (craves_hangover_pistachio))			(fears_hangover_learning)
))
(:action feast__empathy__pepper__flounder
	:parameters ()
	:precondition (and  (craves_empathy_pepper)(>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pepper) 1.0)			(not (craves_empathy_pepper))			(craves_empathy_flounder)
))
(:action feast__empathy__pepper__snickers
	:parameters ()
	:precondition (and  (craves_empathy_pepper)(>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pepper) 1.0)			(not (craves_empathy_pepper))			(craves_empathy_snickers)
))
(:action succumb__boils__satisfaction__scallop
	:parameters ()
	:precondition (and  (fears_boils_satisfaction) (craves_satisfaction_scallop))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_boils_scallop)			(not (fears_boils_satisfaction))
))
(:action succumb__boils__satisfaction__turkey
	:parameters ()
	:precondition (and  (fears_boils_satisfaction) (craves_satisfaction_turkey))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_boils_satisfaction))			(craves_boils_turkey)
))
(:action succumb__boils__satisfaction__snickers
	:parameters ()
	:precondition (and  (fears_boils_satisfaction) (craves_satisfaction_snickers))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_boils_snickers)			(not (fears_boils_satisfaction))
))
(:action succumb__boils__satisfaction__rice
	:parameters ()
	:precondition (and  (fears_boils_satisfaction) (craves_satisfaction_rice))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_boils_rice)			(not (fears_boils_satisfaction))
))
(:action succumb__boils__satisfaction__hamburger
	:parameters ()
	:precondition (and  (fears_boils_satisfaction) (craves_satisfaction_hamburger))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_boils_satisfaction))			(craves_boils_hamburger)
))
(:action succumb__boils__satisfaction__papaya
	:parameters ()
	:precondition (and  (fears_boils_satisfaction) (craves_satisfaction_papaya))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_boils_satisfaction))			(craves_boils_papaya)
))
(:action succumb__boils__satisfaction__pepper
	:parameters ()
	:precondition (and  (craves_satisfaction_pepper) (fears_boils_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_boils_pepper)			(not (fears_boils_satisfaction))
))
(:action succumb__boils__satisfaction__endive
	:parameters ()
	:precondition (and  (craves_satisfaction_endive) (fears_boils_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_boils_endive)			(not (fears_boils_satisfaction))
))
(:action succumb__boils__satisfaction__flounder
	:parameters ()
	:precondition (and  (fears_boils_satisfaction) (craves_satisfaction_flounder))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_boils_satisfaction))			(craves_boils_flounder)
))
(:action succumb__boils__satisfaction__haroset
	:parameters ()
	:precondition (and  (fears_boils_satisfaction) (craves_satisfaction_haroset))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_boils_haroset)			(not (fears_boils_satisfaction))
))
(:action succumb__boils__satisfaction__marzipan
	:parameters ()
	:precondition (and  (fears_boils_satisfaction) (craves_satisfaction_marzipan))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_boils_marzipan)			(not (fears_boils_satisfaction))
))
(:action succumb__boils__empathy__turkey
	:parameters ()
	:precondition (and  (fears_boils_empathy) (craves_empathy_turkey))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_boils_empathy))			(craves_boils_turkey)
))
(:action succumb__boils__empathy__haroset
	:parameters ()
	:precondition (and  (craves_empathy_haroset) (fears_boils_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_boils_empathy))			(craves_boils_haroset)
))
(:action succumb__boils__empathy__pistachio
	:parameters ()
	:precondition (and  (fears_boils_empathy) (craves_empathy_pistachio))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(craves_boils_pistachio)			(not (fears_boils_empathy))
))
(:action succumb__boils__empathy__scallop
	:parameters ()
	:precondition (and  (craves_empathy_scallop) (fears_boils_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(craves_boils_scallop)			(not (fears_boils_empathy))
))
(:action succumb__boils__empathy__hamburger
	:parameters ()
	:precondition (and  (fears_boils_empathy) (craves_empathy_hamburger))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_boils_empathy))			(craves_boils_hamburger)
))
(:action succumb__boils__empathy__snickers
	:parameters ()
	:precondition (and  (craves_empathy_snickers) (fears_boils_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_boils_empathy))			(craves_boils_snickers)
))
(:action succumb__boils__empathy__rice
	:parameters ()
	:precondition (and  (fears_boils_empathy) (craves_empathy_rice))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(craves_boils_rice)			(not (fears_boils_empathy))
))
(:action succumb__boils__empathy__pepper
	:parameters ()
	:precondition (and  (craves_empathy_pepper) (fears_boils_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(craves_boils_pepper)			(not (fears_boils_empathy))
))
(:action succumb__boils__empathy__marzipan
	:parameters ()
	:precondition (and  (fears_boils_empathy) (craves_empathy_marzipan))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(craves_boils_marzipan)			(not (fears_boils_empathy))
))
(:action succumb__boils__empathy__endive
	:parameters ()
	:precondition (and  (fears_boils_empathy) (craves_empathy_endive))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(craves_boils_endive)			(not (fears_boils_empathy))
))
(:action succumb__boils__entertainment__papaya
	:parameters ()
	:precondition (and  (fears_boils_entertainment) (craves_entertainment_papaya))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(not (fears_boils_entertainment))			(craves_boils_papaya)
))
(:action succumb__boils__entertainment__pepper
	:parameters ()
	:precondition (and  (fears_boils_entertainment) (craves_entertainment_pepper))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_boils_pepper)			(not (fears_boils_entertainment))
))
(:action succumb__boils__learning__rice
	:parameters ()
	:precondition (and  (fears_boils_learning) (craves_learning_rice))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_boils_rice)			(not (fears_boils_learning))
))
(:action feast__learning__papaya__flounder
	:parameters ()
	:precondition (and  (craves_learning_papaya)(>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_papaya) 1.0)			(not (craves_learning_papaya))			(craves_learning_flounder)
))
(:action feast__empathy__turkey__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0) (craves_empathy_turkey))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(craves_empathy_pistachio)			(not (craves_empathy_turkey))
))
(:action feast__empathy__turkey__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0) (craves_empathy_turkey))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(craves_empathy_papaya)			(not (craves_empathy_turkey))
))
(:action feast__empathy__turkey__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0) (craves_empathy_turkey))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(craves_empathy_marzipan)			(not (craves_empathy_turkey))
))
(:action feast__learning__papaya__turkey
	:parameters ()
	:precondition (and  (craves_learning_papaya)(>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_papaya) 1.0)			(not (craves_learning_papaya))			(craves_learning_turkey)
))
(:action feast__satisfaction__rice__haroset
	:parameters ()
	:precondition (and  (craves_satisfaction_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(craves_satisfaction_haroset)			(not (craves_satisfaction_rice))
))
(:action feast__satisfaction__rice__endive
	:parameters ()
	:precondition (and  (craves_satisfaction_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(craves_satisfaction_endive)			(not (craves_satisfaction_rice))
))
(:action feast__understanding__endive__haroset
	:parameters ()
	:precondition (and  (craves_understanding_endive)(>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_endive) 1.0)			(craves_understanding_haroset)			(not (craves_understanding_endive))
))
(:action feast__satisfaction__rice__pistachio
	:parameters ()
	:precondition (and  (craves_satisfaction_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(craves_satisfaction_pistachio)			(not (craves_satisfaction_rice))
))
(:action feast__satisfaction__rice__scallop
	:parameters ()
	:precondition (and  (craves_satisfaction_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(not (craves_satisfaction_rice))			(craves_satisfaction_scallop)
))
(:action feast__understanding__haroset__endive
	:parameters ()
	:precondition (and (>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0) (craves_understanding_haroset))
	:effect (and 
			(decrease (locale_haroset) 1.0)			(craves_understanding_endive)			(not (craves_understanding_haroset))
))
(:action feast__understanding__haroset__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0) (craves_understanding_haroset))
	:effect (and 
			(decrease (locale_haroset) 1.0)			(not (craves_understanding_haroset))			(craves_understanding_marzipan)
))
(:action feast__understanding__endive__pistachio
	:parameters ()
	:precondition (and  (craves_understanding_endive)(>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_endive) 1.0)			(craves_understanding_pistachio)			(not (craves_understanding_endive))
))
(:action feast__understanding__endive__rice
	:parameters ()
	:precondition (and  (craves_understanding_endive)(>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_endive) 1.0)			(craves_understanding_rice)			(not (craves_understanding_endive))
))
(:action succumb__hangover__empathy__haroset
	:parameters ()
	:precondition (and  (fears_hangover_empathy) (craves_empathy_haroset))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(craves_hangover_haroset)			(not (fears_hangover_empathy))
))
(:action succumb__hangover__empathy__marzipan
	:parameters ()
	:precondition (and  (fears_hangover_empathy) (craves_empathy_marzipan))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_hangover_empathy))			(craves_hangover_marzipan)
))
(:action succumb__hangover__empathy__scallop
	:parameters ()
	:precondition (and  (craves_empathy_scallop) (fears_hangover_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(craves_hangover_scallop)			(not (fears_hangover_empathy))
))
(:action succumb__hangover__empathy__turkey
	:parameters ()
	:precondition (and  (fears_hangover_empathy) (craves_empathy_turkey))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(craves_hangover_turkey)			(not (fears_hangover_empathy))
))
(:action succumb__hangover__empathy__snickers
	:parameters ()
	:precondition (and  (fears_hangover_empathy) (craves_empathy_snickers))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_hangover_empathy))			(craves_hangover_snickers)
))
(:action succumb__hangover__empathy__pistachio
	:parameters ()
	:precondition (and  (fears_hangover_empathy) (craves_empathy_pistachio))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_hangover_empathy))			(craves_hangover_pistachio)
))
(:action succumb__hangover__empathy__rice
	:parameters ()
	:precondition (and  (fears_hangover_empathy) (craves_empathy_rice))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_hangover_empathy))			(craves_hangover_rice)
))
(:action succumb__hangover__empathy__hamburger
	:parameters ()
	:precondition (and  (fears_hangover_empathy) (craves_empathy_hamburger))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_hangover_empathy))			(craves_hangover_hamburger)
))
(:action succumb__hangover__empathy__pepper
	:parameters ()
	:precondition (and  (craves_empathy_pepper) (fears_hangover_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(craves_hangover_pepper)			(not (fears_hangover_empathy))
))
(:action succumb__hangover__empathy__endive
	:parameters ()
	:precondition (and  (fears_hangover_empathy) (craves_empathy_endive))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_hangover_empathy))			(craves_hangover_endive)
))
(:action succumb__hangover__entertainment__rice
	:parameters ()
	:precondition (and  (fears_hangover_entertainment) (craves_entertainment_rice))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(not (fears_hangover_entertainment))			(craves_hangover_rice)
))
(:action succumb__hangover__entertainment__marzipan
	:parameters ()
	:precondition (and  (fears_hangover_entertainment) (craves_entertainment_marzipan))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(not (fears_hangover_entertainment))			(craves_hangover_marzipan)
))
(:action succumb__hangover__entertainment__endive
	:parameters ()
	:precondition (and  (fears_hangover_entertainment) (craves_entertainment_endive))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(not (fears_hangover_entertainment))			(craves_hangover_endive)
))
(:action succumb__hangover__entertainment__turkey
	:parameters ()
	:precondition (and  (fears_hangover_entertainment) (craves_entertainment_turkey))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_hangover_turkey)			(not (fears_hangover_entertainment))
))
(:action succumb__hangover__entertainment__haroset
	:parameters ()
	:precondition (and  (fears_hangover_entertainment) (craves_entertainment_haroset))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_hangover_haroset)			(not (fears_hangover_entertainment))
))
(:action succumb__hangover__entertainment__pistachio
	:parameters ()
	:precondition (and  (fears_hangover_entertainment) (craves_entertainment_pistachio))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(not (fears_hangover_entertainment))			(craves_hangover_pistachio)
))
(:action succumb__hangover__entertainment__scallop
	:parameters ()
	:precondition (and  (fears_hangover_entertainment) (craves_entertainment_scallop))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_hangover_scallop)			(not (fears_hangover_entertainment))
))
(:action succumb__hangover__entertainment__hamburger
	:parameters ()
	:precondition (and  (fears_hangover_entertainment) (craves_entertainment_hamburger))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(not (fears_hangover_entertainment))			(craves_hangover_hamburger)
))
(:action succumb__hangover__entertainment__snickers
	:parameters ()
	:precondition (and  (fears_hangover_entertainment) (craves_entertainment_snickers))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(not (fears_hangover_entertainment))			(craves_hangover_snickers)
))
(:action succumb__hangover__entertainment__pepper
	:parameters ()
	:precondition (and  (fears_hangover_entertainment) (craves_entertainment_pepper))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(not (fears_hangover_entertainment))			(craves_hangover_pepper)
))
(:action succumb__hangover__entertainment__papaya
	:parameters ()
	:precondition (and  (fears_hangover_entertainment) (craves_entertainment_papaya))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(not (fears_hangover_entertainment))			(craves_hangover_papaya)
))
(:action feast__understanding__haroset__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0) (craves_understanding_haroset))
	:effect (and 
			(decrease (locale_haroset) 1.0)			(craves_understanding_rice)			(not (craves_understanding_haroset))
))
(:action overcome__boils__satisfaction__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_boils_turkey) (craves_satisfaction_turkey))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_boils_satisfaction)			(not (craves_boils_turkey))
))
(:action feast__understanding__haroset__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_haroset) 1.0) 1.0 ) 0.0) (craves_understanding_haroset))
	:effect (and 
			(decrease (locale_haroset) 1.0)			(not (craves_understanding_haroset))			(craves_understanding_hamburger)
))
(:action overcome__boils__satisfaction__scallop
	:parameters ()
	:precondition (and  (craves_boils_scallop)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_scallop))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_boils_scallop))			(fears_boils_satisfaction)
))
(:action overcome__boils__satisfaction__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_boils_snickers) (craves_satisfaction_snickers))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_boils_satisfaction)			(not (craves_boils_snickers))
))
(:action overcome__boils__satisfaction__rice
	:parameters ()
	:precondition (and  (craves_boils_rice)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_rice))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_boils_rice))			(fears_boils_satisfaction)
))
(:action overcome__boils__satisfaction__endive
	:parameters ()
	:precondition (and  (craves_satisfaction_endive) (craves_boils_endive)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_boils_endive))			(fears_boils_satisfaction)
))
(:action feast__understanding__snickers__pepper
	:parameters ()
	:precondition (and  (craves_understanding_snickers)(>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_snickers) 1.0)			(craves_understanding_pepper)			(not (craves_understanding_snickers))
))
(:action feast__understanding__snickers__hamburger
	:parameters ()
	:precondition (and  (craves_understanding_snickers)(>= (+ (*   (locale_snickers) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_snickers) 1.0)			(craves_understanding_hamburger)			(not (craves_understanding_snickers))
))
(:action succumb__hangover__understanding__hamburger
	:parameters ()
	:precondition (and  (fears_hangover_understanding) (craves_understanding_hamburger))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_hangover_understanding))			(craves_hangover_hamburger)
))
(:action succumb__hangover__understanding__snickers
	:parameters ()
	:precondition (and  (fears_hangover_understanding) (craves_understanding_snickers))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_hangover_understanding))			(craves_hangover_snickers)
))
(:action succumb__hangover__understanding__rice
	:parameters ()
	:precondition (and  (craves_understanding_rice) (fears_hangover_understanding))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_hangover_understanding))			(craves_hangover_rice)
))
(:action succumb__hangover__understanding__flounder
	:parameters ()
	:precondition (and  (fears_hangover_understanding) (craves_understanding_flounder))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_hangover_understanding))			(craves_hangover_flounder)
))
(:action succumb__hangover__understanding__papaya
	:parameters ()
	:precondition (and  (craves_understanding_papaya) (fears_hangover_understanding))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_hangover_understanding))			(craves_hangover_papaya)
))
(:action succumb__hangover__understanding__marzipan
	:parameters ()
	:precondition (and  (fears_hangover_understanding) (craves_understanding_marzipan))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_hangover_understanding))			(craves_hangover_marzipan)
))
(:action succumb__hangover__understanding__endive
	:parameters ()
	:precondition (and  (fears_hangover_understanding) (craves_understanding_endive))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_hangover_understanding))			(craves_hangover_endive)
))
(:action succumb__hangover__understanding__turkey
	:parameters ()
	:precondition (and  (fears_hangover_understanding) (craves_understanding_turkey))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_hangover_understanding))			(craves_hangover_turkey)
))
(:action succumb__hangover__understanding__haroset
	:parameters ()
	:precondition (and  (fears_hangover_understanding) (craves_understanding_haroset))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_hangover_haroset)			(not (fears_hangover_understanding))
))
(:action succumb__hangover__understanding__pistachio
	:parameters ()
	:precondition (and  (fears_hangover_understanding) (craves_understanding_pistachio))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_hangover_understanding))			(craves_hangover_pistachio)
))
(:action succumb__hangover__understanding__pepper
	:parameters ()
	:precondition (and  (fears_hangover_understanding) (craves_understanding_pepper))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_hangover_understanding))			(craves_hangover_pepper)
))
(:action feast__understanding__rice__haroset
	:parameters ()
	:precondition (and  (craves_understanding_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(not (craves_understanding_rice))			(craves_understanding_haroset)
))
(:action feast__understanding__rice__endive
	:parameters ()
	:precondition (and  (craves_understanding_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(not (craves_understanding_rice))			(craves_understanding_endive)
))
(:action overcome__boils__learning__rice
	:parameters ()
	:precondition (and  (craves_boils_rice) (craves_learning_rice)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(not (craves_boils_rice))			(fears_boils_learning)
))
(:action feast__understanding__rice__pistachio
	:parameters ()
	:precondition (and  (craves_understanding_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(not (craves_understanding_rice))			(craves_understanding_pistachio)
))
(:action feast__understanding__rice__scallop
	:parameters ()
	:precondition (and  (craves_understanding_rice)(>= (+ (*   (locale_rice) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_rice) 1.0)			(not (craves_understanding_rice))			(craves_understanding_scallop)
))
(:action overcome__boils__learning__endive
	:parameters ()
	:precondition (and  (craves_boils_endive) (craves_learning_endive)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_boils_learning)			(not (craves_boils_endive))
))
(:action overcome__boils__learning__turkey
	:parameters ()
	:precondition (and  (craves_learning_turkey)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_boils_turkey))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_boils_learning)			(not (craves_boils_turkey))
))
(:action overcome__boils__learning__scallop
	:parameters ()
	:precondition (and  (craves_boils_scallop)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_learning_scallop))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(not (craves_boils_scallop))			(fears_boils_learning)
))
(:action overcome__boils__learning__pistachio
	:parameters ()
	:precondition (and  (craves_boils_pistachio) (craves_learning_pistachio)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_boils_learning)			(not (craves_boils_pistachio))
))
(:action overcome__boils__learning__snickers
	:parameters ()
	:precondition (and  (craves_boils_snickers)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_learning_snickers))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_boils_learning)			(not (craves_boils_snickers))
))
(:action feast__understanding__hamburger__marzipan
	:parameters ()
	:precondition (and  (craves_understanding_hamburger)(>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_hamburger) 1.0)			(not (craves_understanding_hamburger))			(craves_understanding_marzipan)
))
(:action overcome__boils__understanding__hamburger
	:parameters ()
	:precondition (and  (craves_understanding_hamburger) (craves_boils_hamburger)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_boils_understanding)			(not (craves_boils_hamburger))
))
(:action feast__understanding__hamburger__scallop
	:parameters ()
	:precondition (and  (craves_understanding_hamburger)(>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_hamburger) 1.0)			(craves_understanding_scallop)			(not (craves_understanding_hamburger))
))
(:action overcome__boils__understanding__rice
	:parameters ()
	:precondition (and  (craves_boils_rice) (craves_understanding_rice)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_boils_understanding)			(not (craves_boils_rice))
))
(:action feast__understanding__hamburger__haroset
	:parameters ()
	:precondition (and  (craves_understanding_hamburger)(>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_hamburger) 1.0)			(craves_understanding_haroset)			(not (craves_understanding_hamburger))
))
(:action feast__understanding__hamburger__snickers
	:parameters ()
	:precondition (and  (craves_understanding_hamburger)(>= (+ (*   (locale_hamburger) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_hamburger) 1.0)			(craves_understanding_snickers)			(not (craves_understanding_hamburger))
))
(:action overcome__jealousy__satisfaction__marzipan
	:parameters ()
	:precondition (and  (craves_jealousy_marzipan)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_marzipan))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_jealousy_marzipan))			(fears_jealousy_satisfaction)
))
(:action overcome__boils__understanding__endive
	:parameters ()
	:precondition (and  (craves_boils_endive) (craves_understanding_endive)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_boils_understanding)			(not (craves_boils_endive))
))
(:action overcome__jealousy__satisfaction__haroset
	:parameters ()
	:precondition (and  (craves_satisfaction_haroset)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_jealousy_haroset))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_jealousy_haroset))			(fears_jealousy_satisfaction)
))
(:action overcome__boils__understanding__haroset
	:parameters ()
	:precondition (and  (craves_boils_haroset) (craves_understanding_haroset)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_boils_understanding)			(not (craves_boils_haroset))
))
(:action overcome__jealousy__satisfaction__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_jealousy_scallop) (craves_satisfaction_scallop))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_jealousy_scallop))			(fears_jealousy_satisfaction)
))
(:action overcome__boils__understanding__turkey
	:parameters ()
	:precondition (and  (craves_understanding_turkey) (craves_boils_turkey)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_boils_understanding)			(not (craves_boils_turkey))
))
(:action overcome__boils__understanding__pistachio
	:parameters ()
	:precondition (and  (craves_boils_pistachio) (craves_understanding_pistachio)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_boils_understanding)			(not (craves_boils_pistachio))
))
(:action overcome__boils__understanding__snickers
	:parameters ()
	:precondition (and  (craves_boils_snickers) (craves_understanding_snickers)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_boils_understanding)			(not (craves_boils_snickers))
))
(:action overcome__jealousy__satisfaction__flounder
	:parameters ()
	:precondition (and  (craves_jealousy_flounder)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_flounder))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_jealousy_flounder))			(fears_jealousy_satisfaction)
))
(:action overcome__boils__empathy__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_empathy_turkey) (craves_boils_turkey))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_boils_empathy)			(not (craves_boils_turkey))
))
(:action overcome__boils__empathy__scallop
	:parameters ()
	:precondition (and  (craves_boils_scallop) (craves_empathy_scallop)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(not (craves_boils_scallop))			(fears_boils_empathy)
))
(:action overcome__boils__empathy__pistachio
	:parameters ()
	:precondition (and  (craves_empathy_pistachio) (craves_boils_pistachio)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_boils_empathy)			(not (craves_boils_pistachio))
))
(:action overcome__boils__empathy__snickers
	:parameters ()
	:precondition (and  (craves_empathy_snickers)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_boils_snickers))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_boils_empathy)			(not (craves_boils_snickers))
))
(:action overcome__boils__entertainment__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_entertainment_turkey) (craves_boils_turkey))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_boils_entertainment)			(not (craves_boils_turkey))
))
(:action overcome__boils__entertainment__scallop
	:parameters ()
	:precondition (and  (craves_boils_scallop)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_entertainment_scallop))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(not (craves_boils_scallop))			(fears_boils_entertainment)
))
(:action overcome__boils__entertainment__pistachio
	:parameters ()
	:precondition (and  (craves_entertainment_pistachio) (craves_boils_pistachio)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_boils_entertainment)			(not (craves_boils_pistachio))
))
(:action overcome__boils__entertainment__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_boils_snickers) (craves_entertainment_snickers))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_boils_entertainment)			(not (craves_boils_snickers))
))
(:action overcome__jealousy__learning__snickers
	:parameters ()
	:precondition (and  (craves_jealousy_snickers)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_learning_snickers))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_jealousy_learning)			(not (craves_jealousy_snickers))
))
(:action overcome__jealousy__learning__marzipan
	:parameters ()
	:precondition (and  (craves_learning_marzipan) (craves_jealousy_marzipan)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_jealousy_learning)			(not (craves_jealousy_marzipan))
))
(:action overcome__jealousy__learning__haroset
	:parameters ()
	:precondition (and  (craves_jealousy_haroset)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_learning_haroset))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_jealousy_learning)			(not (craves_jealousy_haroset))
))
(:action overcome__jealousy__learning__scallop
	:parameters ()
	:precondition (and  (craves_jealousy_scallop)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_learning_scallop))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_jealousy_learning)			(not (craves_jealousy_scallop))
))
(:action overcome__jealousy__understanding__snickers
	:parameters ()
	:precondition (and  (craves_jealousy_snickers) (craves_understanding_snickers)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_jealousy_understanding)			(not (craves_jealousy_snickers))
))
(:action overcome__jealousy__understanding__hamburger
	:parameters ()
	:precondition (and  (craves_understanding_hamburger)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0) (craves_jealousy_hamburger))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(not (craves_jealousy_hamburger))			(fears_jealousy_understanding)
))
(:action overcome__jealousy__understanding__flounder
	:parameters ()
	:precondition (and  (craves_jealousy_flounder)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0) (craves_understanding_flounder))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(not (craves_jealousy_flounder))			(fears_jealousy_understanding)
))
(:action overcome__jealousy__understanding__marzipan
	:parameters ()
	:precondition (and  (craves_jealousy_marzipan)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0) (craves_understanding_marzipan))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(not (craves_jealousy_marzipan))			(fears_jealousy_understanding)
))
(:action overcome__jealousy__understanding__haroset
	:parameters ()
	:precondition (and  (craves_jealousy_haroset) (craves_understanding_haroset)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(not (craves_jealousy_haroset))			(fears_jealousy_understanding)
))
(:action overcome__jealousy__empathy__marzipan
	:parameters ()
	:precondition (and  (craves_jealousy_marzipan) (craves_empathy_marzipan)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(not (craves_jealousy_marzipan))			(fears_jealousy_empathy)
))
(:action overcome__jealousy__empathy__haroset
	:parameters ()
	:precondition (and  (craves_empathy_haroset) (craves_jealousy_haroset)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(not (craves_jealousy_haroset))			(fears_jealousy_empathy)
))
(:action overcome__jealousy__empathy__scallop
	:parameters ()
	:precondition (and  (craves_empathy_scallop)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_jealousy_scallop))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(not (craves_jealousy_scallop))			(fears_jealousy_empathy)
))
(:action overcome__jealousy__empathy__pepper
	:parameters ()
	:precondition (and  (craves_empathy_pepper)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_jealousy_pepper))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(not (craves_jealousy_pepper))			(fears_jealousy_empathy)
))
(:action overcome__jealousy__entertainment__marzipan
	:parameters ()
	:precondition (and  (craves_entertainment_marzipan) (craves_jealousy_marzipan)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_jealousy_entertainment)			(not (craves_jealousy_marzipan))
))
(:action overcome__jealousy__entertainment__haroset
	:parameters ()
	:precondition (and  (craves_entertainment_haroset) (craves_jealousy_haroset)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_jealousy_entertainment)			(not (craves_jealousy_haroset))
))
(:action overcome__jealousy__entertainment__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_jealousy_scallop) (craves_entertainment_scallop))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_jealousy_entertainment)			(not (craves_jealousy_scallop))
))
(:action overcome__jealousy__entertainment__pepper
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_jealousy_pepper) (craves_entertainment_pepper))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_jealousy_entertainment)			(not (craves_jealousy_pepper))
))
(:action succumb__depression__empathy__scallop
	:parameters ()
	:precondition (and  (craves_empathy_scallop) (fears_depression_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(craves_depression_scallop)			(not (fears_depression_empathy))
))
(:action succumb__depression__empathy__turkey
	:parameters ()
	:precondition (and  (fears_depression_empathy) (craves_empathy_turkey))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_depression_empathy))			(craves_depression_turkey)
))
(:action succumb__depression__empathy__snickers
	:parameters ()
	:precondition (and  (craves_empathy_snickers) (fears_depression_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(craves_depression_snickers)			(not (fears_depression_empathy))
))
(:action succumb__depression__empathy__pistachio
	:parameters ()
	:precondition (and  (craves_empathy_pistachio) (fears_depression_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(craves_depression_pistachio)			(not (fears_depression_empathy))
))
(:action succumb__depression__empathy__rice
	:parameters ()
	:precondition (and  (craves_empathy_rice) (fears_depression_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(craves_depression_rice)			(not (fears_depression_empathy))
))
(:action succumb__depression__empathy__hamburger
	:parameters ()
	:precondition (and  (craves_empathy_hamburger) (fears_depression_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_depression_empathy))			(craves_depression_hamburger)
))
(:action succumb__depression__empathy__pepper
	:parameters ()
	:precondition (and  (craves_empathy_pepper) (fears_depression_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(craves_depression_pepper)			(not (fears_depression_empathy))
))
(:action succumb__depression__empathy__endive
	:parameters ()
	:precondition (and  (fears_depression_empathy) (craves_empathy_endive))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(craves_depression_endive)			(not (fears_depression_empathy))
))
(:action succumb__depression__empathy__haroset
	:parameters ()
	:precondition (and  (craves_empathy_haroset) (fears_depression_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(craves_depression_haroset)			(not (fears_depression_empathy))
))
(:action succumb__depression__empathy__marzipan
	:parameters ()
	:precondition (and  (craves_empathy_marzipan) (fears_depression_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_depression_empathy))			(craves_depression_marzipan)
))
(:action succumb__depression__entertainment__pepper
	:parameters ()
	:precondition (and  (fears_depression_entertainment) (craves_entertainment_pepper))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_depression_pepper)			(not (fears_depression_entertainment))
))
(:action succumb__depression__entertainment__papaya
	:parameters ()
	:precondition (and  (craves_entertainment_papaya) (fears_depression_entertainment))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(not (fears_depression_entertainment))			(craves_depression_papaya)
))
(:action feast__satisfaction__papaya__flounder
	:parameters ()
	:precondition (and  (craves_satisfaction_papaya)(>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_papaya) 1.0)			(not (craves_satisfaction_papaya))			(craves_satisfaction_flounder)
))
(:action feast__satisfaction__papaya__turkey
	:parameters ()
	:precondition (and  (craves_satisfaction_papaya)(>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_papaya) 1.0)			(not (craves_satisfaction_papaya))			(craves_satisfaction_turkey)
))
(:action succumb__depression__learning__scallop
	:parameters ()
	:precondition (and  (fears_depression_learning) (craves_learning_scallop))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_depression_scallop)			(not (fears_depression_learning))
))
(:action succumb__depression__learning__snickers
	:parameters ()
	:precondition (and  (fears_depression_learning) (craves_learning_snickers))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_depression_learning))			(craves_depression_snickers)
))
(:action succumb__depression__learning__pistachio
	:parameters ()
	:precondition (and  (craves_learning_pistachio) (fears_depression_learning))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_depression_pistachio)			(not (fears_depression_learning))
))
(:action succumb__depression__learning__rice
	:parameters ()
	:precondition (and  (craves_learning_rice) (fears_depression_learning))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_depression_rice)			(not (fears_depression_learning))
))
(:action succumb__depression__learning__papaya
	:parameters ()
	:precondition (and  (craves_learning_papaya) (fears_depression_learning))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_depression_learning))			(craves_depression_papaya)
))
(:action succumb__depression__learning__endive
	:parameters ()
	:precondition (and  (fears_depression_learning) (craves_learning_endive))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_depression_endive)			(not (fears_depression_learning))
))
(:action feast__entertainment__pepper__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0) (craves_entertainment_pepper))
	:effect (and 
			(decrease (locale_pepper) 1.0)			(craves_entertainment_flounder)			(not (craves_entertainment_pepper))
))
(:action succumb__depression__understanding__rice
	:parameters ()
	:precondition (and  (craves_understanding_rice) (fears_depression_understanding))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_depression_rice)			(not (fears_depression_understanding))
))
(:action feast__entertainment__pepper__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0) (craves_entertainment_pepper))
	:effect (and 
			(decrease (locale_pepper) 1.0)			(not (craves_entertainment_pepper))			(craves_entertainment_snickers)
))
(:action succumb__depression__understanding__marzipan
	:parameters ()
	:precondition (and  (fears_depression_understanding) (craves_understanding_marzipan))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_depression_understanding))			(craves_depression_marzipan)
))
(:action succumb__depression__understanding__endive
	:parameters ()
	:precondition (and  (fears_depression_understanding) (craves_understanding_endive))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_depression_endive)			(not (fears_depression_understanding))
))
(:action succumb__depression__understanding__turkey
	:parameters ()
	:precondition (and  (craves_understanding_turkey) (fears_depression_understanding))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_depression_understanding))			(craves_depression_turkey)
))
(:action succumb__depression__understanding__haroset
	:parameters ()
	:precondition (and  (fears_depression_understanding) (craves_understanding_haroset))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_depression_haroset)			(not (fears_depression_understanding))
))
(:action succumb__depression__understanding__pistachio
	:parameters ()
	:precondition (and  (craves_understanding_pistachio) (fears_depression_understanding))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_depression_pistachio)			(not (fears_depression_understanding))
))
(:action succumb__depression__understanding__hamburger
	:parameters ()
	:precondition (and  (fears_depression_understanding) (craves_understanding_hamburger))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_depression_understanding))			(craves_depression_hamburger)
))
(:action succumb__depression__understanding__snickers
	:parameters ()
	:precondition (and  (fears_depression_understanding) (craves_understanding_snickers))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_depression_snickers)			(not (fears_depression_understanding))
))
(:action succumb__depression__understanding__pepper
	:parameters ()
	:precondition (and  (fears_depression_understanding) (craves_understanding_pepper))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_depression_pepper)			(not (fears_depression_understanding))
))
(:action succumb__depression__understanding__flounder
	:parameters ()
	:precondition (and  (fears_depression_understanding) (craves_understanding_flounder))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_depression_flounder)			(not (fears_depression_understanding))
))
(:action succumb__depression__understanding__papaya
	:parameters ()
	:precondition (and  (craves_understanding_papaya) (fears_depression_understanding))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_depression_understanding))			(craves_depression_papaya)
))
(:action feast__satisfaction__endive__haroset
	:parameters ()
	:precondition (and  (craves_satisfaction_endive)(>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_endive) 1.0)			(not (craves_satisfaction_endive))			(craves_satisfaction_haroset)
))
(:action feast__satisfaction__endive__pistachio
	:parameters ()
	:precondition (and  (craves_satisfaction_endive)(>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_endive) 1.0)			(not (craves_satisfaction_endive))			(craves_satisfaction_pistachio)
))
(:action feast__satisfaction__endive__rice
	:parameters ()
	:precondition (and  (craves_satisfaction_endive)(>= (+ (*   (locale_endive) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_endive) 1.0)			(not (craves_satisfaction_endive))			(craves_satisfaction_rice)
))
(:action feast__satisfaction__turkey__pistachio
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0) (craves_satisfaction_turkey))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(craves_satisfaction_pistachio)			(not (craves_satisfaction_turkey))
))
(:action feast__satisfaction__turkey__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0) (craves_satisfaction_turkey))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(craves_satisfaction_marzipan)			(not (craves_satisfaction_turkey))
))
(:action feast__satisfaction__turkey__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (locale_turkey) 1.0) 1.0 ) 0.0) (craves_satisfaction_turkey))
	:effect (and 
			(decrease (locale_turkey) 1.0)			(craves_satisfaction_papaya)			(not (craves_satisfaction_turkey))
))
(:action feast__entertainment__papaya__flounder
	:parameters ()
	:precondition (and  (craves_entertainment_papaya)(>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_papaya) 1.0)			(not (craves_entertainment_papaya))			(craves_entertainment_flounder)
))
(:action feast__entertainment__papaya__turkey
	:parameters ()
	:precondition (and  (craves_entertainment_papaya)(>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_papaya) 1.0)			(not (craves_entertainment_papaya))			(craves_entertainment_turkey)
))
(:action succumb__depression__satisfaction__scallop
	:parameters ()
	:precondition (and  (fears_depression_satisfaction) (craves_satisfaction_scallop))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_depression_scallop)			(not (fears_depression_satisfaction))
))
(:action succumb__depression__satisfaction__hamburger
	:parameters ()
	:precondition (and  (craves_satisfaction_hamburger) (fears_depression_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_depression_satisfaction))			(craves_depression_hamburger)
))
(:action succumb__depression__satisfaction__snickers
	:parameters ()
	:precondition (and  (craves_satisfaction_snickers) (fears_depression_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_depression_snickers)			(not (fears_depression_satisfaction))
))
(:action succumb__depression__satisfaction__rice
	:parameters ()
	:precondition (and  (fears_depression_satisfaction) (craves_satisfaction_rice))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_depression_rice)			(not (fears_depression_satisfaction))
))
(:action succumb__depression__satisfaction__pepper
	:parameters ()
	:precondition (and  (craves_satisfaction_pepper) (fears_depression_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_depression_pepper)			(not (fears_depression_satisfaction))
))
(:action succumb__depression__satisfaction__flounder
	:parameters ()
	:precondition (and  (fears_depression_satisfaction) (craves_satisfaction_flounder))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_depression_flounder)			(not (fears_depression_satisfaction))
))
(:action succumb__depression__satisfaction__papaya
	:parameters ()
	:precondition (and  (fears_depression_satisfaction) (craves_satisfaction_papaya))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_depression_papaya)			(not (fears_depression_satisfaction))
))
(:action succumb__depression__satisfaction__marzipan
	:parameters ()
	:precondition (and  (craves_satisfaction_marzipan) (fears_depression_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_depression_marzipan)			(not (fears_depression_satisfaction))
))
(:action succumb__depression__satisfaction__endive
	:parameters ()
	:precondition (and  (craves_satisfaction_endive) (fears_depression_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_depression_endive)			(not (fears_depression_satisfaction))
))
(:action succumb__depression__satisfaction__turkey
	:parameters ()
	:precondition (and  (fears_depression_satisfaction) (craves_satisfaction_turkey))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_depression_satisfaction))			(craves_depression_turkey)
))
(:action succumb__depression__satisfaction__haroset
	:parameters ()
	:precondition (and  (craves_satisfaction_haroset) (fears_depression_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_depression_haroset)			(not (fears_depression_satisfaction))
))
(:action succumb__jealousy__learning__flounder
	:parameters ()
	:precondition (and  (craves_learning_flounder) (fears_jealousy_learning))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_jealousy_flounder)			(not (fears_jealousy_learning))
))
(:action succumb__jealousy__learning__pepper
	:parameters ()
	:precondition (and  (fears_jealousy_learning) (craves_learning_pepper))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_jealousy_pepper)			(not (fears_jealousy_learning))
))
(:action succumb__jealousy__understanding__scallop
	:parameters ()
	:precondition (and  (fears_jealousy_understanding) (craves_understanding_scallop))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_jealousy_scallop)			(not (fears_jealousy_understanding))
))
(:action succumb__boils__learning__pepper
	:parameters ()
	:precondition (and  (fears_boils_learning) (craves_learning_pepper))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_boils_pepper)			(not (fears_boils_learning))
))
(:action succumb__boils__learning__flounder
	:parameters ()
	:precondition (and  (craves_learning_flounder) (fears_boils_learning))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_boils_learning))			(craves_boils_flounder)
))
(:action overcome__depression__empathy__pepper
	:parameters ()
	:precondition (and  (craves_empathy_pepper)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_depression_pepper))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_depression_empathy)			(not (craves_depression_pepper))
))
(:action overcome__depression__empathy__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_empathy_papaya) (craves_depression_papaya))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_depression_empathy)			(not (craves_depression_papaya))
))
(:action overcome__depression__empathy__flounder
	:parameters ()
	:precondition (and  (craves_depression_flounder) (craves_empathy_flounder)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(not (craves_depression_flounder))			(fears_depression_empathy)
))
(:action succumb__boils__understanding__scallop
	:parameters ()
	:precondition (and  (fears_boils_understanding) (craves_understanding_scallop))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_boils_scallop)			(not (fears_boils_understanding))
))
(:action succumb__jealousy__satisfaction__pistachio
	:parameters ()
	:precondition (and  (craves_satisfaction_pistachio) (fears_jealousy_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_jealousy_satisfaction))			(craves_jealousy_pistachio)
))
(:action overcome__depression__entertainment__pepper
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_depression_pepper) (craves_entertainment_pepper))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_depression_entertainment)			(not (craves_depression_pepper))
))
(:action overcome__depression__entertainment__papaya
	:parameters ()
	:precondition (and  (craves_entertainment_papaya)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_depression_papaya))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_depression_entertainment)			(not (craves_depression_papaya))
))
(:action overcome__depression__entertainment__flounder
	:parameters ()
	:precondition (and  (craves_depression_flounder) (craves_entertainment_flounder)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(not (craves_depression_flounder))			(fears_depression_entertainment)
))
(:action succumb__jealousy__empathy__flounder
	:parameters ()
	:precondition (and  (craves_empathy_flounder) (fears_jealousy_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(craves_jealousy_flounder)			(not (fears_jealousy_empathy))
))
(:action succumb__jealousy__empathy__papaya
	:parameters ()
	:precondition (and  (craves_empathy_papaya) (fears_jealousy_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_jealousy_empathy))			(craves_jealousy_papaya)
))
(:action succumb__jealousy__entertainment__flounder
	:parameters ()
	:precondition (and  (craves_entertainment_flounder) (fears_jealousy_entertainment))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_jealousy_flounder)			(not (fears_jealousy_entertainment))
))
(:action overcome__depression__satisfaction__pistachio
	:parameters ()
	:precondition (and  (craves_satisfaction_pistachio)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_depression_pistachio))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_depression_pistachio))			(fears_depression_satisfaction)
))
(:action overcome__depression__satisfaction__pepper
	:parameters ()
	:precondition (and  (craves_satisfaction_pepper)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_depression_pepper))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_depression_satisfaction)			(not (craves_depression_pepper))
))
(:action overcome__depression__satisfaction__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_papaya) (craves_depression_papaya))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_depression_satisfaction)			(not (craves_depression_papaya))
))
(:action overcome__depression__satisfaction__flounder
	:parameters ()
	:precondition (and  (craves_depression_flounder)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_flounder))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_depression_flounder))			(fears_depression_satisfaction)
))
(:action overcome__hangover__empathy__marzipan
	:parameters ()
	:precondition (and  (craves_empathy_marzipan)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_hangover_marzipan))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_hangover_empathy)			(not (craves_hangover_marzipan))
))
(:action overcome__hangover__empathy__haroset
	:parameters ()
	:precondition (and  (craves_hangover_haroset) (craves_empathy_haroset)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(not (craves_hangover_haroset))			(fears_hangover_empathy)
))
(:action overcome__hangover__empathy__turkey
	:parameters ()
	:precondition (and  (craves_hangover_turkey)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_empathy_turkey))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_hangover_empathy)			(not (craves_hangover_turkey))
))
(:action overcome__hangover__empathy__scallop
	:parameters ()
	:precondition (and  (craves_empathy_scallop) (craves_hangover_scallop)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_hangover_empathy)			(not (craves_hangover_scallop))
))
(:action overcome__hangover__empathy__snickers
	:parameters ()
	:precondition (and  (craves_empathy_snickers)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_hangover_snickers))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_hangover_empathy)			(not (craves_hangover_snickers))
))
(:action overcome__hangover__empathy__hamburger
	:parameters ()
	:precondition (and  (craves_empathy_hamburger)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_hangover_hamburger))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_hangover_empathy)			(not (craves_hangover_hamburger))
))
(:action overcome__hangover__empathy__rice
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_empathy_rice) (craves_hangover_rice))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_hangover_empathy)			(not (craves_hangover_rice))
))
(:action overcome__hangover__empathy__pepper
	:parameters ()
	:precondition (and  (craves_empathy_pepper) (craves_hangover_pepper)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_hangover_empathy)			(not (craves_hangover_pepper))
))
(:action overcome__hangover__empathy__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_hangover_papaya) (craves_empathy_papaya))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_hangover_empathy)			(not (craves_hangover_papaya))
))
(:action overcome__hangover__empathy__flounder
	:parameters ()
	:precondition (and  (craves_empathy_flounder)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_hangover_flounder))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_hangover_empathy)			(not (craves_hangover_flounder))
))
(:action overcome__hangover__empathy__endive
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_hangover_endive) (craves_empathy_endive))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_hangover_empathy)			(not (craves_hangover_endive))
))
(:action overcome__hangover__entertainment__rice
	:parameters ()
	:precondition (and  (craves_entertainment_rice)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_hangover_rice))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_hangover_entertainment)			(not (craves_hangover_rice))
))
(:action overcome__hangover__entertainment__endive
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_hangover_endive) (craves_entertainment_endive))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_hangover_entertainment)			(not (craves_hangover_endive))
))
(:action overcome__hangover__entertainment__marzipan
	:parameters ()
	:precondition (and  (craves_entertainment_marzipan)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_hangover_marzipan))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_hangover_entertainment)			(not (craves_hangover_marzipan))
))
(:action overcome__hangover__entertainment__haroset
	:parameters ()
	:precondition (and  (craves_hangover_haroset) (craves_entertainment_haroset)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_hangover_entertainment)			(not (craves_hangover_haroset))
))
(:action overcome__hangover__entertainment__turkey
	:parameters ()
	:precondition (and  (craves_hangover_turkey)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_entertainment_turkey))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_hangover_entertainment)			(not (craves_hangover_turkey))
))
(:action overcome__hangover__entertainment__scallop
	:parameters ()
	:precondition (and  (craves_hangover_scallop)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_entertainment_scallop))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_hangover_entertainment)			(not (craves_hangover_scallop))
))
(:action overcome__hangover__entertainment__snickers
	:parameters ()
	:precondition (and  (craves_hangover_snickers)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_entertainment_snickers))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_hangover_entertainment)			(not (craves_hangover_snickers))
))
(:action overcome__hangover__entertainment__hamburger
	:parameters ()
	:precondition (and  (craves_entertainment_hamburger)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_hangover_hamburger))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_hangover_entertainment)			(not (craves_hangover_hamburger))
))
(:action overcome__hangover__entertainment__pepper
	:parameters ()
	:precondition (and  (craves_hangover_pepper)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_entertainment_pepper))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_hangover_entertainment)			(not (craves_hangover_pepper))
))
(:action overcome__hangover__entertainment__papaya
	:parameters ()
	:precondition (and  (craves_entertainment_papaya)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_hangover_papaya))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_hangover_entertainment)			(not (craves_hangover_papaya))
))
(:action overcome__hangover__entertainment__flounder
	:parameters ()
	:precondition (and  (craves_entertainment_flounder)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_hangover_flounder))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_hangover_entertainment)			(not (craves_hangover_flounder))
))
(:action overcome__depression__learning__pepper
	:parameters ()
	:precondition (and  (craves_depression_pepper) (craves_learning_pepper)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_depression_learning)			(not (craves_depression_pepper))
))
(:action overcome__depression__learning__papaya
	:parameters ()
	:precondition (and  (craves_learning_papaya)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_depression_papaya))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_depression_learning)			(not (craves_depression_papaya))
))
(:action overcome__depression__learning__flounder
	:parameters ()
	:precondition (and  (craves_depression_flounder) (craves_learning_flounder)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(not (craves_depression_flounder))			(fears_depression_learning)
))
(:action overcome__hangover__satisfaction__haroset
	:parameters ()
	:precondition (and  (craves_hangover_haroset) (craves_satisfaction_haroset)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_hangover_haroset))			(fears_hangover_satisfaction)
))
(:action overcome__hangover__satisfaction__turkey
	:parameters ()
	:precondition (and  (craves_hangover_turkey)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_turkey))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_hangover_turkey))			(fears_hangover_satisfaction)
))
(:action overcome__hangover__satisfaction__scallop
	:parameters ()
	:precondition (and  (craves_hangover_scallop)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_scallop))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_hangover_satisfaction)			(not (craves_hangover_scallop))
))
(:action overcome__hangover__satisfaction__pistachio
	:parameters ()
	:precondition (and  (craves_satisfaction_pistachio)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_hangover_pistachio))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_hangover_satisfaction)			(not (craves_hangover_pistachio))
))
(:action overcome__depression__understanding__scallop
	:parameters ()
	:precondition (and  (craves_depression_scallop) (craves_understanding_scallop)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(not (craves_depression_scallop))			(fears_depression_understanding)
))
(:action overcome__hangover__satisfaction__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_hangover_snickers) (craves_satisfaction_snickers))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_hangover_satisfaction)			(not (craves_hangover_snickers))
))
(:action overcome__hangover__satisfaction__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_hamburger) (craves_hangover_hamburger))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_hangover_satisfaction)			(not (craves_hangover_hamburger))
))
(:action overcome__hangover__satisfaction__rice
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_rice) (craves_hangover_rice))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_hangover_satisfaction)			(not (craves_hangover_rice))
))
(:action overcome__hangover__satisfaction__pepper
	:parameters ()
	:precondition (and  (craves_satisfaction_pepper)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_hangover_pepper))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_hangover_satisfaction)			(not (craves_hangover_pepper))
))
(:action overcome__hangover__satisfaction__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_hangover_papaya) (craves_satisfaction_papaya))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_hangover_satisfaction)			(not (craves_hangover_papaya))
))
(:action overcome__depression__understanding__pepper
	:parameters ()
	:precondition (and  (craves_understanding_pepper) (craves_depression_pepper)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_depression_understanding)			(not (craves_depression_pepper))
))
(:action overcome__hangover__satisfaction__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_flounder) (craves_hangover_flounder))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_hangover_satisfaction)			(not (craves_hangover_flounder))
))
(:action overcome__depression__understanding__papaya
	:parameters ()
	:precondition (and  (craves_understanding_papaya) (craves_depression_papaya)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_depression_understanding)			(not (craves_depression_papaya))
))
(:action overcome__hangover__satisfaction__endive
	:parameters ()
	:precondition (and  (craves_satisfaction_endive)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_hangover_endive))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_hangover_satisfaction)			(not (craves_hangover_endive))
))
(:action overcome__depression__understanding__flounder
	:parameters ()
	:precondition (and  (craves_depression_flounder)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0) (craves_understanding_flounder))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(not (craves_depression_flounder))			(fears_depression_understanding)
))
(:action overcome__hangover__satisfaction__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_marzipan) (craves_hangover_marzipan))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_hangover_satisfaction)			(not (craves_hangover_marzipan))
))
(:action overcome__hangover__learning__hamburger
	:parameters ()
	:precondition (and  (craves_hangover_hamburger)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_learning_hamburger))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(not (craves_hangover_hamburger))			(fears_hangover_learning)
))
(:action overcome__hangover__learning__rice
	:parameters ()
	:precondition (and  (craves_learning_rice)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_hangover_rice))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(not (craves_hangover_rice))			(fears_hangover_learning)
))
(:action overcome__hangover__learning__flounder
	:parameters ()
	:precondition (and  (craves_learning_flounder) (craves_hangover_flounder)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(not (craves_hangover_flounder))			(fears_hangover_learning)
))
(:action overcome__hangover__learning__endive
	:parameters ()
	:precondition (and  (craves_learning_endive)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_hangover_endive))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(not (craves_hangover_endive))			(fears_hangover_learning)
))
(:action overcome__hangover__learning__marzipan
	:parameters ()
	:precondition (and  (craves_learning_marzipan)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_hangover_marzipan))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_hangover_learning)			(not (craves_hangover_marzipan))
))
(:action overcome__hangover__learning__haroset
	:parameters ()
	:precondition (and  (craves_hangover_haroset)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_learning_haroset))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(not (craves_hangover_haroset))			(fears_hangover_learning)
))
(:action overcome__hangover__learning__turkey
	:parameters ()
	:precondition (and  (craves_hangover_turkey) (craves_learning_turkey)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(not (craves_hangover_turkey))			(fears_hangover_learning)
))
(:action overcome__hangover__learning__scallop
	:parameters ()
	:precondition (and  (craves_hangover_scallop)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_learning_scallop))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(not (craves_hangover_scallop))			(fears_hangover_learning)
))
(:action overcome__hangover__learning__snickers
	:parameters ()
	:precondition (and  (craves_hangover_snickers)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_learning_snickers))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(not (craves_hangover_snickers))			(fears_hangover_learning)
))
(:action overcome__hangover__learning__pepper
	:parameters ()
	:precondition (and  (craves_hangover_pepper) (craves_learning_pepper)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(not (craves_hangover_pepper))			(fears_hangover_learning)
))
(:action overcome__hangover__learning__papaya
	:parameters ()
	:precondition (and  (craves_learning_papaya) (craves_hangover_papaya)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(not (craves_hangover_papaya))			(fears_hangover_learning)
))
(:action overcome__hangover__understanding__snickers
	:parameters ()
	:precondition (and  (craves_hangover_snickers) (craves_understanding_snickers)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_hangover_understanding)			(not (craves_hangover_snickers))
))
(:action overcome__hangover__understanding__hamburger
	:parameters ()
	:precondition (and  (craves_hangover_hamburger) (craves_understanding_hamburger)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_hangover_understanding)			(not (craves_hangover_hamburger))
))
(:action overcome__hangover__understanding__rice
	:parameters ()
	:precondition (and  (craves_understanding_rice) (craves_hangover_rice)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_hangover_understanding)			(not (craves_hangover_rice))
))
(:action overcome__hangover__understanding__papaya
	:parameters ()
	:precondition (and  (craves_understanding_papaya) (craves_hangover_papaya)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_hangover_understanding)			(not (craves_hangover_papaya))
))
(:action overcome__hangover__understanding__flounder
	:parameters ()
	:precondition (and  (craves_hangover_flounder)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0) (craves_understanding_flounder))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_hangover_understanding)			(not (craves_hangover_flounder))
))
(:action overcome__hangover__understanding__endive
	:parameters ()
	:precondition (and  (craves_understanding_endive) (craves_hangover_endive)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_hangover_understanding)			(not (craves_hangover_endive))
))
(:action overcome__hangover__understanding__marzipan
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0) (craves_hangover_marzipan) (craves_understanding_marzipan))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_hangover_understanding)			(not (craves_hangover_marzipan))
))
(:action overcome__hangover__understanding__haroset
	:parameters ()
	:precondition (and  (craves_hangover_haroset) (craves_understanding_haroset)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(not (craves_hangover_haroset))			(fears_hangover_understanding)
))
(:action overcome__hangover__understanding__turkey
	:parameters ()
	:precondition (and  (craves_hangover_turkey) (craves_understanding_turkey)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(not (craves_hangover_turkey))			(fears_hangover_understanding)
))
(:action overcome__hangover__understanding__scallop
	:parameters ()
	:precondition (and  (craves_hangover_scallop) (craves_understanding_scallop)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_hangover_understanding)			(not (craves_hangover_scallop))
))
(:action overcome__hangover__understanding__pepper
	:parameters ()
	:precondition (and  (craves_hangover_pepper) (craves_understanding_pepper)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_hangover_understanding)			(not (craves_hangover_pepper))
))
(:action succumb__boils__satisfaction__pistachio
	:parameters ()
	:precondition (and  (fears_boils_satisfaction) (craves_satisfaction_pistachio))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_boils_pistachio)			(not (fears_boils_satisfaction))
))
(:action succumb__boils__empathy__flounder
	:parameters ()
	:precondition (and  (fears_boils_empathy) (craves_empathy_flounder))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_boils_empathy))			(craves_boils_flounder)
))
(:action succumb__boils__empathy__papaya
	:parameters ()
	:precondition (and  (fears_boils_empathy) (craves_empathy_papaya))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_boils_empathy))			(craves_boils_papaya)
))
(:action feast__empathy__flounder__papaya
	:parameters ()
	:precondition (and  (craves_empathy_flounder)(>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_flounder) 1.0)			(not (craves_empathy_flounder))			(craves_empathy_papaya)
))
(:action feast__empathy__flounder__pepper
	:parameters ()
	:precondition (and  (craves_empathy_flounder)(>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_flounder) 1.0)			(craves_empathy_pepper)			(not (craves_empathy_flounder))
))
(:action succumb__boils__entertainment__flounder
	:parameters ()
	:precondition (and  (craves_entertainment_flounder) (fears_boils_entertainment))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(not (fears_boils_entertainment))			(craves_boils_flounder)
))
(:action feast__empathy__papaya__flounder
	:parameters ()
	:precondition (and  (craves_empathy_papaya)(>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_papaya) 1.0)			(not (craves_empathy_papaya))			(craves_empathy_flounder)
))
(:action feast__empathy__papaya__turkey
	:parameters ()
	:precondition (and  (craves_empathy_papaya)(>= (+ (*   (locale_papaya) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_papaya) 1.0)			(not (craves_empathy_papaya))			(craves_empathy_turkey)
))
(:action feast__learning__pepper__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0) (craves_learning_pepper))
	:effect (and 
			(decrease (locale_pepper) 1.0)			(craves_learning_flounder)			(not (craves_learning_pepper))
))
(:action feast__learning__pepper__snickers
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pepper) 1.0) 1.0 ) 0.0) (craves_learning_pepper))
	:effect (and 
			(decrease (locale_pepper) 1.0)			(not (craves_learning_pepper))			(craves_learning_snickers)
))
(:action feast__learning__flounder__papaya
	:parameters ()
	:precondition (and  (craves_learning_flounder)(>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_flounder) 1.0)			(not (craves_learning_flounder))			(craves_learning_papaya)
))
(:action feast__learning__flounder__pepper
	:parameters ()
	:precondition (and  (craves_learning_flounder)(>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_flounder) 1.0)			(not (craves_learning_flounder))			(craves_learning_pepper)
))
(:action succumb__hangover__empathy__papaya
	:parameters ()
	:precondition (and  (fears_hangover_empathy) (craves_empathy_papaya))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_hangover_empathy))			(craves_hangover_papaya)
))
(:action succumb__hangover__empathy__flounder
	:parameters ()
	:precondition (and  (fears_hangover_empathy) (craves_empathy_flounder))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_hangover_empathy))			(craves_hangover_flounder)
))
(:action succumb__hangover__entertainment__flounder
	:parameters ()
	:precondition (and  (fears_hangover_entertainment) (craves_entertainment_flounder))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(not (fears_hangover_entertainment))			(craves_hangover_flounder)
))
(:action overcome__boils__satisfaction__pistachio
	:parameters ()
	:precondition (and  (craves_boils_pistachio) (craves_satisfaction_pistachio)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_boils_satisfaction)			(not (craves_boils_pistachio))
))
(:action succumb__hangover__learning__rice
	:parameters ()
	:precondition (and  (craves_learning_rice) (fears_hangover_learning))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_hangover_learning))			(craves_hangover_rice)
))
(:action succumb__hangover__learning__hamburger
	:parameters ()
	:precondition (and  (craves_learning_hamburger) (fears_hangover_learning))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_hangover_learning))			(craves_hangover_hamburger)
))
(:action overcome__boils__satisfaction__pepper
	:parameters ()
	:precondition (and  (craves_satisfaction_pepper) (craves_boils_pepper)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_boils_satisfaction)			(not (craves_boils_pepper))
))
(:action overcome__boils__satisfaction__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_papaya) (craves_boils_papaya))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_boils_satisfaction)			(not (craves_boils_papaya))
))
(:action overcome__boils__satisfaction__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_flounder) (craves_boils_flounder))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_boils_satisfaction)			(not (craves_boils_flounder))
))
(:action succumb__hangover__learning__endive
	:parameters ()
	:precondition (and  (craves_learning_endive) (fears_hangover_learning))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_hangover_learning))			(craves_hangover_endive)
))
(:action succumb__hangover__learning__flounder
	:parameters ()
	:precondition (and  (craves_learning_flounder) (fears_hangover_learning))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_hangover_learning))			(craves_hangover_flounder)
))
(:action succumb__hangover__learning__haroset
	:parameters ()
	:precondition (and  (craves_learning_haroset) (fears_hangover_learning))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_hangover_haroset)			(not (fears_hangover_learning))
))
(:action succumb__hangover__learning__marzipan
	:parameters ()
	:precondition (and  (craves_learning_marzipan) (fears_hangover_learning))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_hangover_learning))			(craves_hangover_marzipan)
))
(:action succumb__hangover__learning__scallop
	:parameters ()
	:precondition (and  (craves_learning_scallop) (fears_hangover_learning))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_hangover_learning))			(craves_hangover_scallop)
))
(:action succumb__hangover__learning__turkey
	:parameters ()
	:precondition (and  (craves_learning_turkey) (fears_hangover_learning))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_hangover_turkey)			(not (fears_hangover_learning))
))
(:action succumb__hangover__learning__snickers
	:parameters ()
	:precondition (and  (craves_learning_snickers) (fears_hangover_learning))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_hangover_learning))			(craves_hangover_snickers)
))
(:action succumb__hangover__learning__pistachio
	:parameters ()
	:precondition (and  (craves_learning_pistachio) (fears_hangover_learning))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_hangover_learning))			(craves_hangover_pistachio)
))
(:action succumb__hangover__learning__papaya
	:parameters ()
	:precondition (and  (craves_learning_papaya) (fears_hangover_learning))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_hangover_learning))			(craves_hangover_papaya)
))
(:action succumb__hangover__learning__pepper
	:parameters ()
	:precondition (and  (craves_learning_pepper) (fears_hangover_learning))
	:effect (and 
			(increase (harmony_learning) 1.0)			(not (fears_hangover_learning))			(craves_hangover_pepper)
))
(:action succumb__hangover__understanding__scallop
	:parameters ()
	:precondition (and  (fears_hangover_understanding) (craves_understanding_scallop))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(not (fears_hangover_understanding))			(craves_hangover_scallop)
))
(:action feast__understanding__scallop__rice
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0) (craves_understanding_scallop))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(craves_understanding_rice)			(not (craves_understanding_scallop))
))
(:action feast__understanding__scallop__hamburger
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0) (craves_understanding_scallop))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(not (craves_understanding_scallop))			(craves_understanding_hamburger)
))
(:action overcome__boils__learning__pepper
	:parameters ()
	:precondition (and  (craves_boils_pepper) (craves_learning_pepper)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_boils_learning)			(not (craves_boils_pepper))
))
(:action overcome__boils__learning__papaya
	:parameters ()
	:precondition (and  (craves_learning_papaya)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_boils_papaya))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_boils_learning)			(not (craves_boils_papaya))
))
(:action overcome__boils__learning__flounder
	:parameters ()
	:precondition (and  (craves_learning_flounder)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_boils_flounder))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_boils_learning)			(not (craves_boils_flounder))
))
(:action overcome__boils__understanding__flounder
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0) (craves_boils_flounder) (craves_understanding_flounder))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_boils_understanding)			(not (craves_boils_flounder))
))
(:action overcome__jealousy__satisfaction__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_jealousy_turkey) (craves_satisfaction_turkey))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_jealousy_turkey))			(fears_jealousy_satisfaction)
))
(:action overcome__jealousy__satisfaction__pistachio
	:parameters ()
	:precondition (and  (craves_satisfaction_pistachio)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_jealousy_pistachio))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_jealousy_pistachio))			(fears_jealousy_satisfaction)
))
(:action overcome__boils__understanding__scallop
	:parameters ()
	:precondition (and  (craves_boils_scallop) (craves_understanding_scallop)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_boils_understanding)			(not (craves_boils_scallop))
))
(:action overcome__jealousy__satisfaction__rice
	:parameters ()
	:precondition (and  (craves_jealousy_rice)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_rice))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_jealousy_rice))			(fears_jealousy_satisfaction)
))
(:action overcome__jealousy__satisfaction__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_papaya) (craves_jealousy_papaya))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_jealousy_satisfaction)			(not (craves_jealousy_papaya))
))
(:action overcome__boils__understanding__pepper
	:parameters ()
	:precondition (and  (craves_boils_pepper) (craves_understanding_pepper)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_boils_understanding)			(not (craves_boils_pepper))
))
(:action overcome__boils__understanding__papaya
	:parameters ()
	:precondition (and  (craves_understanding_papaya)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0) (craves_boils_papaya))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_boils_understanding)			(not (craves_boils_papaya))
))
(:action overcome__jealousy__satisfaction__endive
	:parameters ()
	:precondition (and  (craves_satisfaction_endive) (craves_jealousy_endive)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_jealousy_endive))			(fears_jealousy_satisfaction)
))
(:action overcome__boils__empathy__pepper
	:parameters ()
	:precondition (and  (craves_empathy_pepper) (craves_boils_pepper)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_boils_empathy)			(not (craves_boils_pepper))
))
(:action overcome__boils__empathy__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_empathy_papaya) (craves_boils_papaya))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_boils_empathy)			(not (craves_boils_papaya))
))
(:action overcome__boils__empathy__flounder
	:parameters ()
	:precondition (and  (craves_empathy_flounder)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_boils_flounder))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_boils_empathy)			(not (craves_boils_flounder))
))
(:action overcome__boils__entertainment__pepper
	:parameters ()
	:precondition (and  (craves_boils_pepper)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_entertainment_pepper))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_boils_entertainment)			(not (craves_boils_pepper))
))
(:action overcome__boils__entertainment__papaya
	:parameters ()
	:precondition (and  (craves_entertainment_papaya)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_boils_papaya))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_boils_entertainment)			(not (craves_boils_papaya))
))
(:action overcome__boils__entertainment__flounder
	:parameters ()
	:precondition (and  (craves_entertainment_flounder)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_boils_flounder))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_boils_entertainment)			(not (craves_boils_flounder))
))
(:action overcome__jealousy__learning__rice
	:parameters ()
	:precondition (and  (craves_jealousy_rice) (craves_learning_rice)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(not (craves_jealousy_rice))			(fears_jealousy_learning)
))
(:action overcome__jealousy__learning__papaya
	:parameters ()
	:precondition (and  (craves_learning_papaya)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_jealousy_papaya))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_jealousy_learning)			(not (craves_jealousy_papaya))
))
(:action overcome__jealousy__learning__flounder
	:parameters ()
	:precondition (and  (craves_jealousy_flounder) (craves_learning_flounder)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(not (craves_jealousy_flounder))			(fears_jealousy_learning)
))
(:action overcome__jealousy__learning__endive
	:parameters ()
	:precondition (and  (craves_jealousy_endive) (craves_learning_endive)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_jealousy_learning)			(not (craves_jealousy_endive))
))
(:action overcome__jealousy__learning__turkey
	:parameters ()
	:precondition (and  (craves_learning_turkey) (craves_jealousy_turkey)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_jealousy_learning)			(not (craves_jealousy_turkey))
))
(:action overcome__jealousy__learning__pistachio
	:parameters ()
	:precondition (and  (craves_learning_pistachio)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_jealousy_pistachio))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_jealousy_learning)			(not (craves_jealousy_pistachio))
))
(:action overcome__jealousy__learning__pepper
	:parameters ()
	:precondition (and  (craves_learning_pepper)(>= (+ (*   (harmony_learning) 1.0) 1.0 ) 0.0) (craves_jealousy_pepper))
	:effect (and 
			(decrease (harmony_learning) 1.0)			(fears_jealousy_learning)			(not (craves_jealousy_pepper))
))
(:action overcome__jealousy__understanding__pistachio
	:parameters ()
	:precondition (and  (craves_understanding_pistachio) (craves_jealousy_pistachio)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_jealousy_understanding)			(not (craves_jealousy_pistachio))
))
(:action overcome__jealousy__understanding__rice
	:parameters ()
	:precondition (and  (craves_jealousy_rice) (craves_understanding_rice)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(not (craves_jealousy_rice))			(fears_jealousy_understanding)
))
(:action overcome__jealousy__understanding__papaya
	:parameters ()
	:precondition (and  (craves_understanding_papaya)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0) (craves_jealousy_papaya))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_jealousy_understanding)			(not (craves_jealousy_papaya))
))
(:action overcome__jealousy__understanding__endive
	:parameters ()
	:precondition (and  (craves_jealousy_endive) (craves_understanding_endive)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(not (craves_jealousy_endive))			(fears_jealousy_understanding)
))
(:action overcome__jealousy__understanding__turkey
	:parameters ()
	:precondition (and  (craves_understanding_turkey) (craves_jealousy_turkey)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(not (craves_jealousy_turkey))			(fears_jealousy_understanding)
))
(:action overcome__jealousy__understanding__scallop
	:parameters ()
	:precondition (and  (craves_jealousy_scallop) (craves_understanding_scallop)(>= (+ (*   (harmony_understanding) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_understanding) 1.0)			(fears_jealousy_understanding)			(not (craves_jealousy_scallop))
))
(:action overcome__jealousy__empathy__rice
	:parameters ()
	:precondition (and  (craves_jealousy_rice)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_empathy_rice))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(not (craves_jealousy_rice))			(fears_jealousy_empathy)
))
(:action overcome__jealousy__empathy__endive
	:parameters ()
	:precondition (and  (craves_jealousy_endive)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_empathy_endive))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(not (craves_jealousy_endive))			(fears_jealousy_empathy)
))
(:action overcome__jealousy__empathy__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_jealousy_turkey) (craves_empathy_turkey))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(not (craves_jealousy_turkey))			(fears_jealousy_empathy)
))
(:action overcome__jealousy__empathy__pistachio
	:parameters ()
	:precondition (and  (craves_empathy_pistachio)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_jealousy_pistachio))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_jealousy_empathy)			(not (craves_jealousy_pistachio))
))
(:action overcome__jealousy__empathy__papaya
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0) (craves_empathy_papaya) (craves_jealousy_papaya))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(fears_jealousy_empathy)			(not (craves_jealousy_papaya))
))
(:action overcome__jealousy__empathy__flounder
	:parameters ()
	:precondition (and  (craves_jealousy_flounder) (craves_empathy_flounder)(>= (+ (*   (harmony_empathy) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_empathy) 1.0)			(not (craves_jealousy_flounder))			(fears_jealousy_empathy)
))
(:action overcome__jealousy__entertainment__rice
	:parameters ()
	:precondition (and  (craves_jealousy_rice) (craves_entertainment_rice)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(not (craves_jealousy_rice))			(fears_jealousy_entertainment)
))
(:action overcome__jealousy__entertainment__flounder
	:parameters ()
	:precondition (and  (craves_jealousy_flounder) (craves_entertainment_flounder)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(not (craves_jealousy_flounder))			(fears_jealousy_entertainment)
))
(:action overcome__jealousy__entertainment__endive
	:parameters ()
	:precondition (and  (craves_jealousy_endive)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_entertainment_endive))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(not (craves_jealousy_endive))			(fears_jealousy_entertainment)
))
(:action overcome__jealousy__entertainment__turkey
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_jealousy_turkey) (craves_entertainment_turkey))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_jealousy_entertainment)			(not (craves_jealousy_turkey))
))
(:action overcome__jealousy__entertainment__pistachio
	:parameters ()
	:precondition (and  (craves_entertainment_pistachio)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_jealousy_pistachio))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_jealousy_entertainment)			(not (craves_jealousy_pistachio))
))
(:action overcome__jealousy__entertainment__papaya
	:parameters ()
	:precondition (and  (craves_entertainment_papaya)(>= (+ (*   (harmony_entertainment) 1.0) 1.0 ) 0.0) (craves_jealousy_papaya))
	:effect (and 
			(decrease (harmony_entertainment) 1.0)			(fears_jealousy_entertainment)			(not (craves_jealousy_papaya))
))
(:action succumb__depression__empathy__papaya
	:parameters ()
	:precondition (and  (fears_depression_empathy) (craves_empathy_papaya))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(not (fears_depression_empathy))			(craves_depression_papaya)
))
(:action succumb__depression__empathy__flounder
	:parameters ()
	:precondition (and  (craves_empathy_flounder) (fears_depression_empathy))
	:effect (and 
			(increase (harmony_empathy) 1.0)			(craves_depression_flounder)			(not (fears_depression_empathy))
))
(:action succumb__depression__entertainment__flounder
	:parameters ()
	:precondition (and  (craves_entertainment_flounder) (fears_depression_entertainment))
	:effect (and 
			(increase (harmony_entertainment) 1.0)			(craves_depression_flounder)			(not (fears_depression_entertainment))
))
(:action succumb__depression__learning__pepper
	:parameters ()
	:precondition (and  (fears_depression_learning) (craves_learning_pepper))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_depression_pepper)			(not (fears_depression_learning))
))
(:action succumb__depression__learning__flounder
	:parameters ()
	:precondition (and  (craves_learning_flounder) (fears_depression_learning))
	:effect (and 
			(increase (harmony_learning) 1.0)			(craves_depression_flounder)			(not (fears_depression_learning))
))
(:action succumb__depression__understanding__scallop
	:parameters ()
	:precondition (and  (fears_depression_understanding) (craves_understanding_scallop))
	:effect (and 
			(increase (harmony_understanding) 1.0)			(craves_depression_scallop)			(not (fears_depression_understanding))
))
(:action feast__entertainment__flounder__papaya
	:parameters ()
	:precondition (and  (craves_entertainment_flounder)(>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_flounder) 1.0)			(not (craves_entertainment_flounder))			(craves_entertainment_papaya)
))
(:action feast__entertainment__flounder__pepper
	:parameters ()
	:precondition (and  (craves_entertainment_flounder)(>= (+ (*   (locale_flounder) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_flounder) 1.0)			(not (craves_entertainment_flounder))			(craves_entertainment_pepper)
))
(:action feast__satisfaction__pistachio__rice
	:parameters ()
	:precondition (and  (craves_satisfaction_pistachio)(>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(not (craves_satisfaction_pistachio))			(craves_satisfaction_rice)
))
(:action succumb__depression__satisfaction__pistachio
	:parameters ()
	:precondition (and  (craves_satisfaction_pistachio) (fears_depression_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_depression_pistachio)			(not (fears_depression_satisfaction))
))
(:action feast__satisfaction__pistachio__turkey
	:parameters ()
	:precondition (and  (craves_satisfaction_pistachio)(>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(not (craves_satisfaction_pistachio))			(craves_satisfaction_turkey)
))
(:action feast__satisfaction__pistachio__endive
	:parameters ()
	:precondition (and  (craves_satisfaction_pistachio)(>= (+ (*   (locale_pistachio) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pistachio) 1.0)			(craves_satisfaction_endive)			(not (craves_satisfaction_pistachio))
))
(:action succumb__hangover__satisfaction__turkey
	:parameters ()
	:precondition (and  (fears_hangover_satisfaction) (craves_satisfaction_turkey))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_hangover_turkey)			(not (fears_hangover_satisfaction))
))
(:action succumb__hangover__satisfaction__haroset
	:parameters ()
	:precondition (and  (fears_hangover_satisfaction) (craves_satisfaction_haroset))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_hangover_haroset)			(not (fears_hangover_satisfaction))
))
(:action succumb__hangover__satisfaction__pistachio
	:parameters ()
	:precondition (and  (fears_hangover_satisfaction) (craves_satisfaction_pistachio))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_hangover_satisfaction))			(craves_hangover_pistachio)
))
(:action succumb__hangover__satisfaction__scallop
	:parameters ()
	:precondition (and  (fears_hangover_satisfaction) (craves_satisfaction_scallop))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_hangover_scallop)			(not (fears_hangover_satisfaction))
))
(:action succumb__hangover__satisfaction__hamburger
	:parameters ()
	:precondition (and  (fears_hangover_satisfaction) (craves_satisfaction_hamburger))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_hangover_satisfaction))			(craves_hangover_hamburger)
))
(:action succumb__hangover__satisfaction__snickers
	:parameters ()
	:precondition (and  (fears_hangover_satisfaction) (craves_satisfaction_snickers))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_hangover_snickers)			(not (fears_hangover_satisfaction))
))
(:action succumb__hangover__satisfaction__rice
	:parameters ()
	:precondition (and  (fears_hangover_satisfaction) (craves_satisfaction_rice))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_hangover_satisfaction))			(craves_hangover_rice)
))
(:action succumb__hangover__satisfaction__pepper
	:parameters ()
	:precondition (and  (craves_satisfaction_pepper) (fears_hangover_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_hangover_pepper)			(not (fears_hangover_satisfaction))
))
(:action succumb__hangover__satisfaction__flounder
	:parameters ()
	:precondition (and  (fears_hangover_satisfaction) (craves_satisfaction_flounder))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_hangover_satisfaction))			(craves_hangover_flounder)
))
(:action succumb__hangover__satisfaction__papaya
	:parameters ()
	:precondition (and  (fears_hangover_satisfaction) (craves_satisfaction_papaya))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_hangover_papaya)			(not (fears_hangover_satisfaction))
))
(:action succumb__hangover__satisfaction__marzipan
	:parameters ()
	:precondition (and  (fears_hangover_satisfaction) (craves_satisfaction_marzipan))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_hangover_satisfaction))			(craves_hangover_marzipan)
))
(:action succumb__hangover__satisfaction__endive
	:parameters ()
	:precondition (and  (craves_satisfaction_endive) (fears_hangover_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_hangover_satisfaction))			(craves_hangover_endive)
))


)