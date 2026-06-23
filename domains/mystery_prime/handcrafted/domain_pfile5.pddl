(define (domain mysteryprimetyped)
(:predicates  (craves_sciatica_ham)
 (craves_hangover_cherry)
 (craves_sciatica_scallion)
 (fears_loneliness_aesthetics)
 (craves_loneliness_muffin)
 (craves_hangover_grapefruit)
 (craves_sciatica_shrimp)
 (craves_loneliness_ham)
 (craves_hangover_bacon)
 (craves_sciatica_cherry)
 (craves_loneliness_scallion)
 (fears_anger_aesthetics)
 (craves_anger_muffin)
 (craves_hangover_arugula)
 (craves_loneliness_shrimp)
 (craves_anger_ham)
 (craves_hangover_scallop)
 (craves_sciatica_bacon)
 (craves_dread_ham)
 (craves_loneliness_cherry)
 (craves_anger_scallion)
 (craves_sciatica_grapefruit)
 (craves_hangover_wurst)
 (craves_sciatica_arugula)
 (craves_loneliness_grapefruit)
 (craves_anger_wurst)
 (craves_anger_shrimp)
 (craves_sciatica_scallop)
 (craves_loneliness_arugula)
 (craves_loneliness_bacon)
 (craves_anger_cherry)
 (craves_hangover_muffin)
 (craves_anger_grapefruit)
 (craves_loneliness_scallop)
 (craves_abrasion_scallop)
 (craves_anger_bacon)
 (craves_loneliness_wurst)
 (craves_anger_arugula)
 (craves_aesthetics_shrimp)
 (craves_anger_scallop)
 (craves_jealousy_bacon)
 (fears_dread_aesthetics)
 (craves_sciatica_wurst)
 (craves_dread_muffin)
 (craves_dread_scallion)
 (fears_jealousy_aesthetics)
 (craves_jealousy_muffin)
 (craves_dread_shrimp)
 (craves_jealousy_ham)
 (craves_dread_cherry)
 (craves_jealousy_scallion)
 (fears_abrasion_aesthetics)
 (craves_abrasion_muffin)
 (craves_dread_grapefruit)
 (craves_jealousy_shrimp)
 (craves_abrasion_ham)
 (craves_dread_bacon)
 (craves_jealousy_cherry)
 (craves_aesthetics_ham)
 (craves_abrasion_scallion)
 (craves_aesthetics_muffin)
 (craves_aesthetics_cherry)
 (craves_dread_arugula)
 (craves_jealousy_grapefruit)
 (craves_aesthetics_grapefruit)
 (craves_abrasion_shrimp)
 (craves_aesthetics_scallop)
 (craves_aesthetics_wurst)
 (craves_dread_scallop)
 (craves_aesthetics_bacon)
 (craves_abrasion_cherry)
 (craves_aesthetics_arugula)
 (craves_dread_wurst)
 (craves_aesthetics_scallion)
 (craves_jealousy_arugula)
 (craves_abrasion_grapefruit)
 (fears_hangover_aesthetics)
 (craves_jealousy_scallop)
 (craves_abrasion_bacon)
 (craves_hangover_ham)
 (craves_jealousy_wurst)
 (craves_hangover_scallion)
 (craves_abrasion_arugula)
 (fears_sciatica_aesthetics)
 (craves_sciatica_muffin)
 (craves_abrasion_wurst)
 (craves_hangover_shrimp)
)
(:functions   (locale_cherry)
  (locale_scallion)
  (locale_arugula)
  (harmony_aesthetics)
  (locale_muffin)
  (locale_grapefruit)
  (locale_ham)
  (locale_bacon)
  (locale_wurst)
  (locale_scallop)
  (locale_shrimp)
)
(:action drink__muffin__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_wurst) 1.0)			(decrease (locale_muffin) 1.0)
))
(:action drink__muffin__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallop) 1.0)			(decrease (locale_muffin) 1.0)
))
(:action drink__muffin__grapefruit
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_grapefruit) 1.0)			(decrease (locale_muffin) 1.0)
))
(:action drink__muffin__cherry
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_cherry) 1.0)			(decrease (locale_muffin) 1.0)
))
(:action drink__muffin__arugula
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_arugula) 1.0)			(decrease (locale_muffin) 1.0)
))
(:action drink__muffin__bacon
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_bacon) 1.0)			(decrease (locale_muffin) 1.0)
))
(:action drink__muffin__ham
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_ham) 1.0)			(decrease (locale_muffin) 1.0)
))
(:action drink__muffin__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_muffin) 1.0)			(decrease (locale_muffin) 1.0)
))
(:action drink__muffin__shrimp
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_shrimp) 1.0)			(decrease (locale_muffin) 1.0)
))
(:action drink__muffin__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(increase (locale_scallion) 1.0)
))
(:action drink__ham__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_ham) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_ham) 1.0)			(increase (locale_wurst) 1.0)
))
(:action drink__ham__bacon
	:parameters ()
	:precondition (and (>= (+ (*   (locale_ham) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_bacon) 1.0)			(decrease (locale_ham) 1.0)
))
(:action drink__ham__grapefruit
	:parameters ()
	:precondition (and (>= (+ (*   (locale_ham) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_ham) 1.0)			(increase (locale_grapefruit) 1.0)
))
(:action drink__ham__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_ham) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_ham) 1.0)			(increase (locale_scallop) 1.0)
))
(:action drink__ham__arugula
	:parameters ()
	:precondition (and (>= (+ (*   (locale_ham) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_ham) 1.0)			(increase (locale_arugula) 1.0)
))
(:action drink__ham__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_ham) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_ham) 1.0)			(increase (locale_scallion) 1.0)
))
(:action drink__ham__ham
	:parameters ()
	:precondition (and (>= (+ (*   (locale_ham) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_ham) 1.0)			(decrease (locale_ham) 1.0)
))
(:action drink__ham__cherry
	:parameters ()
	:precondition (and (>= (+ (*   (locale_ham) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_cherry) 1.0)			(decrease (locale_ham) 1.0)
))
(:action drink__ham__shrimp
	:parameters ()
	:precondition (and (>= (+ (*   (locale_ham) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_shrimp) 1.0)			(decrease (locale_ham) 1.0)
))
(:action drink__ham__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_ham) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_ham) 1.0)			(increase (locale_muffin) 1.0)
))
(:action drink__scallion__arugula
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_arugula) 1.0)			(decrease (locale_scallion) 1.0)
))
(:action drink__scallion__bacon
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_bacon) 1.0)			(decrease (locale_scallion) 1.0)
))
(:action drink__scallion__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_wurst) 1.0)			(decrease (locale_scallion) 1.0)
))
(:action drink__scallion__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallop) 1.0)			(decrease (locale_scallion) 1.0)
))
(:action drink__scallion__shrimp
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_shrimp) 1.0)			(decrease (locale_scallion) 1.0)
))
(:action drink__scallion__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallion) 1.0)			(decrease (locale_scallion) 1.0)
))
(:action drink__scallion__grapefruit
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_grapefruit) 1.0)			(decrease (locale_scallion) 1.0)
))
(:action drink__scallion__cherry
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_cherry) 1.0)			(decrease (locale_scallion) 1.0)
))
(:action drink__scallion__ham
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_ham) 1.0)			(decrease (locale_scallion) 1.0)
))
(:action drink__scallion__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_muffin) 1.0)			(decrease (locale_scallion) 1.0)
))
(:action drink__shrimp__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_shrimp) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallop) 1.0)			(decrease (locale_shrimp) 1.0)
))
(:action drink__shrimp__arugula
	:parameters ()
	:precondition (and (>= (+ (*   (locale_shrimp) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_arugula) 1.0)			(decrease (locale_shrimp) 1.0)
))
(:action drink__shrimp__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_shrimp) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_shrimp) 1.0)			(increase (locale_wurst) 1.0)
))
(:action drink__shrimp__cherry
	:parameters ()
	:precondition (and (>= (+ (*   (locale_shrimp) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_cherry) 1.0)			(decrease (locale_shrimp) 1.0)
))
(:action drink__shrimp__shrimp
	:parameters ()
	:precondition (and (>= (+ (*   (locale_shrimp) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_shrimp) 1.0)			(decrease (locale_shrimp) 1.0)
))
(:action drink__shrimp__bacon
	:parameters ()
	:precondition (and (>= (+ (*   (locale_shrimp) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_bacon) 1.0)			(decrease (locale_shrimp) 1.0)
))
(:action drink__shrimp__grapefruit
	:parameters ()
	:precondition (and (>= (+ (*   (locale_shrimp) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_shrimp) 1.0)			(increase (locale_grapefruit) 1.0)
))
(:action drink__shrimp__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_shrimp) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_shrimp) 1.0)			(increase (locale_muffin) 1.0)
))
(:action drink__shrimp__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_shrimp) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_shrimp) 1.0)			(increase (locale_scallion) 1.0)
))
(:action drink__shrimp__ham
	:parameters ()
	:precondition (and (>= (+ (*   (locale_shrimp) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_ham) 1.0)			(decrease (locale_shrimp) 1.0)
))
(:action feast__aesthetics__shrimp__scallion
	:parameters ()
	:precondition (and  (craves_aesthetics_shrimp)(>= (+ (*   (locale_shrimp) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_shrimp) 1.0)			(craves_aesthetics_scallion)			(not (craves_aesthetics_shrimp))
))
(:action feast__aesthetics__shrimp__cherry
	:parameters ()
	:precondition (and  (craves_aesthetics_shrimp)(>= (+ (*   (locale_shrimp) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_shrimp) 1.0)			(not (craves_aesthetics_shrimp))			(craves_aesthetics_cherry)
))
(:action drink__scallop__ham
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_ham) 1.0)			(decrease (locale_scallop) 1.0)
))
(:action drink__scallop__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(increase (locale_muffin) 1.0)
))
(:action drink__scallop__shrimp
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_shrimp) 1.0)			(decrease (locale_scallop) 1.0)
))
(:action drink__scallop__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(increase (locale_scallion) 1.0)
))
(:action drink__scallop__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(increase (locale_wurst) 1.0)
))
(:action drink__scallop__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(increase (locale_scallop) 1.0)
))
(:action drink__scallop__grapefruit
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(increase (locale_grapefruit) 1.0)
))
(:action drink__scallop__cherry
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_cherry) 1.0)			(decrease (locale_scallop) 1.0)
))
(:action drink__scallop__arugula
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(increase (locale_arugula) 1.0)
))
(:action drink__scallop__bacon
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_bacon) 1.0)			(decrease (locale_scallop) 1.0)
))
(:action drink__cherry__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_cherry) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_cherry) 1.0)			(increase (locale_wurst) 1.0)
))
(:action drink__cherry__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_cherry) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallop) 1.0)			(decrease (locale_cherry) 1.0)
))
(:action drink__cherry__grapefruit
	:parameters ()
	:precondition (and (>= (+ (*   (locale_cherry) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_cherry) 1.0)			(increase (locale_grapefruit) 1.0)
))
(:action drink__cherry__cherry
	:parameters ()
	:precondition (and (>= (+ (*   (locale_cherry) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_cherry) 1.0)			(decrease (locale_cherry) 1.0)
))
(:action drink__cherry__arugula
	:parameters ()
	:precondition (and (>= (+ (*   (locale_cherry) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_arugula) 1.0)			(decrease (locale_cherry) 1.0)
))
(:action drink__cherry__bacon
	:parameters ()
	:precondition (and (>= (+ (*   (locale_cherry) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_bacon) 1.0)			(decrease (locale_cherry) 1.0)
))
(:action drink__cherry__ham
	:parameters ()
	:precondition (and (>= (+ (*   (locale_cherry) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_ham) 1.0)			(decrease (locale_cherry) 1.0)
))
(:action drink__cherry__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_cherry) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_cherry) 1.0)			(increase (locale_muffin) 1.0)
))
(:action drink__cherry__shrimp
	:parameters ()
	:precondition (and (>= (+ (*   (locale_cherry) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_shrimp) 1.0)			(decrease (locale_cherry) 1.0)
))
(:action drink__cherry__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_cherry) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_cherry) 1.0)			(increase (locale_scallion) 1.0)
))
(:action drink__bacon__ham
	:parameters ()
	:precondition (and (>= (+ (*   (locale_bacon) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_ham) 1.0)			(decrease (locale_bacon) 1.0)
))
(:action drink__bacon__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_bacon) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_bacon) 1.0)			(increase (locale_muffin) 1.0)
))
(:action drink__bacon__arugula
	:parameters ()
	:precondition (and (>= (+ (*   (locale_bacon) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_arugula) 1.0)			(decrease (locale_bacon) 1.0)
))
(:action drink__bacon__bacon
	:parameters ()
	:precondition (and (>= (+ (*   (locale_bacon) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_bacon) 1.0)			(decrease (locale_bacon) 1.0)
))
(:action drink__bacon__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_bacon) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_bacon) 1.0)			(increase (locale_wurst) 1.0)
))
(:action drink__bacon__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_bacon) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallop) 1.0)			(decrease (locale_bacon) 1.0)
))
(:action drink__bacon__shrimp
	:parameters ()
	:precondition (and (>= (+ (*   (locale_bacon) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_shrimp) 1.0)			(decrease (locale_bacon) 1.0)
))
(:action drink__bacon__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_bacon) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_bacon) 1.0)			(increase (locale_scallion) 1.0)
))
(:action drink__bacon__grapefruit
	:parameters ()
	:precondition (and (>= (+ (*   (locale_bacon) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_bacon) 1.0)			(increase (locale_grapefruit) 1.0)
))
(:action drink__bacon__cherry
	:parameters ()
	:precondition (and (>= (+ (*   (locale_bacon) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_cherry) 1.0)			(decrease (locale_bacon) 1.0)
))
(:action drink__arugula__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_arugula) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_arugula) 1.0)			(increase (locale_muffin) 1.0)
))
(:action drink__arugula__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_arugula) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_arugula) 1.0)			(increase (locale_scallion) 1.0)
))
(:action drink__arugula__ham
	:parameters ()
	:precondition (and (>= (+ (*   (locale_arugula) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_arugula) 1.0)			(increase (locale_ham) 1.0)
))
(:action drink__arugula__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_arugula) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_arugula) 1.0)			(increase (locale_scallop) 1.0)
))
(:action drink__arugula__arugula
	:parameters ()
	:precondition (and (>= (+ (*   (locale_arugula) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_arugula) 1.0)			(increase (locale_arugula) 1.0)
))
(:action drink__arugula__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_arugula) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_arugula) 1.0)			(increase (locale_wurst) 1.0)
))
(:action drink__arugula__cherry
	:parameters ()
	:precondition (and (>= (+ (*   (locale_arugula) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_arugula) 1.0)			(increase (locale_cherry) 1.0)
))
(:action drink__arugula__shrimp
	:parameters ()
	:precondition (and (>= (+ (*   (locale_arugula) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_shrimp) 1.0)			(decrease (locale_arugula) 1.0)
))
(:action drink__arugula__bacon
	:parameters ()
	:precondition (and (>= (+ (*   (locale_arugula) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_arugula) 1.0)			(increase (locale_bacon) 1.0)
))
(:action drink__arugula__grapefruit
	:parameters ()
	:precondition (and (>= (+ (*   (locale_arugula) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_arugula) 1.0)			(increase (locale_grapefruit) 1.0)
))
(:action feast__aesthetics__scallion__muffin
	:parameters ()
	:precondition (and  (craves_aesthetics_scallion)(>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallion) 1.0)			(not (craves_aesthetics_scallion))			(craves_aesthetics_muffin)
))
(:action feast__aesthetics__scallion__shrimp
	:parameters ()
	:precondition (and  (craves_aesthetics_scallion)(>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallion) 1.0)			(craves_aesthetics_shrimp)			(not (craves_aesthetics_scallion))
))
(:action feast__aesthetics__cherry__muffin
	:parameters ()
	:precondition (and  (craves_aesthetics_cherry)(>= (+ (*   (locale_cherry) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_cherry) 1.0)			(craves_aesthetics_muffin)			(not (craves_aesthetics_cherry))
))
(:action feast__aesthetics__cherry__shrimp
	:parameters ()
	:precondition (and  (craves_aesthetics_cherry)(>= (+ (*   (locale_cherry) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_cherry) 1.0)			(craves_aesthetics_shrimp)			(not (craves_aesthetics_cherry))
))
(:action feast__aesthetics__cherry__ham
	:parameters ()
	:precondition (and  (craves_aesthetics_cherry)(>= (+ (*   (locale_cherry) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_cherry) 1.0)			(craves_aesthetics_ham)			(not (craves_aesthetics_cherry))
))
(:action feast__aesthetics__cherry__arugula
	:parameters ()
	:precondition (and  (craves_aesthetics_cherry)(>= (+ (*   (locale_cherry) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_cherry) 1.0)			(not (craves_aesthetics_cherry))			(craves_aesthetics_arugula)
))
(:action drink__wurst__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(increase (locale_scallion) 1.0)
))
(:action drink__wurst__ham
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(increase (locale_ham) 1.0)
))
(:action drink__wurst__cherry
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_cherry) 1.0)			(decrease (locale_wurst) 1.0)
))
(:action drink__wurst__shrimp
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_shrimp) 1.0)			(decrease (locale_wurst) 1.0)
))
(:action drink__wurst__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(increase (locale_muffin) 1.0)
))
(:action drink__wurst__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(increase (locale_wurst) 1.0)
))
(:action drink__wurst__bacon
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_bacon) 1.0)			(decrease (locale_wurst) 1.0)
))
(:action drink__wurst__grapefruit
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(increase (locale_grapefruit) 1.0)
))
(:action drink__wurst__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(increase (locale_scallop) 1.0)
))
(:action drink__wurst__arugula
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(increase (locale_arugula) 1.0)
))
(:action drink__grapefruit__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_grapefruit) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_grapefruit) 1.0)			(increase (locale_muffin) 1.0)
))
(:action drink__grapefruit__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_grapefruit) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_grapefruit) 1.0)			(increase (locale_wurst) 1.0)
))
(:action drink__grapefruit__bacon
	:parameters ()
	:precondition (and (>= (+ (*   (locale_grapefruit) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_bacon) 1.0)			(decrease (locale_grapefruit) 1.0)
))
(:action drink__grapefruit__grapefruit
	:parameters ()
	:precondition (and (>= (+ (*   (locale_grapefruit) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_grapefruit) 1.0)			(increase (locale_grapefruit) 1.0)
))
(:action drink__grapefruit__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_grapefruit) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_grapefruit) 1.0)			(increase (locale_scallop) 1.0)
))
(:action drink__grapefruit__arugula
	:parameters ()
	:precondition (and (>= (+ (*   (locale_grapefruit) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_grapefruit) 1.0)			(increase (locale_arugula) 1.0)
))
(:action drink__grapefruit__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_grapefruit) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_grapefruit) 1.0)			(increase (locale_scallion) 1.0)
))
(:action drink__grapefruit__ham
	:parameters ()
	:precondition (and (>= (+ (*   (locale_grapefruit) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_grapefruit) 1.0)			(increase (locale_ham) 1.0)
))
(:action drink__grapefruit__cherry
	:parameters ()
	:precondition (and (>= (+ (*   (locale_grapefruit) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_cherry) 1.0)			(decrease (locale_grapefruit) 1.0)
))
(:action drink__grapefruit__shrimp
	:parameters ()
	:precondition (and (>= (+ (*   (locale_grapefruit) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_shrimp) 1.0)			(decrease (locale_grapefruit) 1.0)
))
(:action feast__aesthetics__ham__muffin
	:parameters ()
	:precondition (and  (craves_aesthetics_ham)(>= (+ (*   (locale_ham) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_ham) 1.0)			(not (craves_aesthetics_ham))			(craves_aesthetics_muffin)
))
(:action feast__aesthetics__ham__cherry
	:parameters ()
	:precondition (and  (craves_aesthetics_ham)(>= (+ (*   (locale_ham) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_ham) 1.0)			(not (craves_aesthetics_ham))			(craves_aesthetics_cherry)
))
(:action feast__aesthetics__muffin__arugula
	:parameters ()
	:precondition (and  (craves_aesthetics_muffin)(>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(not (craves_aesthetics_muffin))			(craves_aesthetics_arugula)
))
(:action feast__aesthetics__muffin__cherry
	:parameters ()
	:precondition (and  (craves_aesthetics_muffin)(>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(craves_aesthetics_cherry)			(not (craves_aesthetics_muffin))
))
(:action feast__aesthetics__muffin__scallion
	:parameters ()
	:precondition (and  (craves_aesthetics_muffin)(>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(craves_aesthetics_scallion)			(not (craves_aesthetics_muffin))
))
(:action feast__aesthetics__muffin__ham
	:parameters ()
	:precondition (and  (craves_aesthetics_muffin)(>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(craves_aesthetics_ham)			(not (craves_aesthetics_muffin))
))
(:action overcome__dread__aesthetics__ham
	:parameters ()
	:precondition (and  (craves_aesthetics_ham) (craves_dread_ham)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_dread_aesthetics)			(not (craves_dread_ham))
))
(:action overcome__loneliness__aesthetics__arugula
	:parameters ()
	:precondition (and  (craves_loneliness_arugula)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_aesthetics_arugula))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_loneliness_aesthetics)			(not (craves_loneliness_arugula))
))
(:action feast__aesthetics__arugula__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_arugula) 1.0) 1.0 ) 0.0) (craves_aesthetics_arugula))
	:effect (and 
			(decrease (locale_arugula) 1.0)			(craves_aesthetics_muffin)			(not (craves_aesthetics_arugula))
))
(:action feast__aesthetics__arugula__bacon
	:parameters ()
	:precondition (and (>= (+ (*   (locale_arugula) 1.0) 1.0 ) 0.0) (craves_aesthetics_arugula))
	:effect (and 
			(decrease (locale_arugula) 1.0)			(craves_aesthetics_bacon)			(not (craves_aesthetics_arugula))
))
(:action feast__aesthetics__arugula__cherry
	:parameters ()
	:precondition (and (>= (+ (*   (locale_arugula) 1.0) 1.0 ) 0.0) (craves_aesthetics_arugula))
	:effect (and 
			(decrease (locale_arugula) 1.0)			(craves_aesthetics_cherry)			(not (craves_aesthetics_arugula))
))
(:action feast__aesthetics__arugula__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_arugula) 1.0) 1.0 ) 0.0) (craves_aesthetics_arugula))
	:effect (and 
			(decrease (locale_arugula) 1.0)			(craves_aesthetics_wurst)			(not (craves_aesthetics_arugula))
))
(:action feast__aesthetics__arugula__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (locale_arugula) 1.0) 1.0 ) 0.0) (craves_aesthetics_arugula))
	:effect (and 
			(decrease (locale_arugula) 1.0)			(craves_aesthetics_scallop)			(not (craves_aesthetics_arugula))
))
(:action overcome__hangover__aesthetics__muffin
	:parameters ()
	:precondition (and  (craves_hangover_muffin) (craves_aesthetics_muffin)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_hangover_aesthetics)			(not (craves_hangover_muffin))
))
(:action succumb__hangover__aesthetics__scallop
	:parameters ()
	:precondition (and  (fears_hangover_aesthetics) (craves_aesthetics_scallop))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_hangover_aesthetics))			(craves_hangover_scallop)
))
(:action succumb__hangover__aesthetics__arugula
	:parameters ()
	:precondition (and  (fears_hangover_aesthetics) (craves_aesthetics_arugula))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_hangover_aesthetics))			(craves_hangover_arugula)
))
(:action succumb__hangover__aesthetics__wurst
	:parameters ()
	:precondition (and  (fears_hangover_aesthetics) (craves_aesthetics_wurst))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_hangover_aesthetics))			(craves_hangover_wurst)
))
(:action succumb__hangover__aesthetics__muffin
	:parameters ()
	:precondition (and  (craves_aesthetics_muffin) (fears_hangover_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_hangover_aesthetics))			(craves_hangover_muffin)
))
(:action succumb__hangover__aesthetics__scallion
	:parameters ()
	:precondition (and  (craves_aesthetics_scallion) (fears_hangover_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_hangover_aesthetics))			(craves_hangover_scallion)
))
(:action succumb__hangover__aesthetics__ham
	:parameters ()
	:precondition (and  (craves_aesthetics_ham) (fears_hangover_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_hangover_aesthetics))			(craves_hangover_ham)
))
(:action succumb__hangover__aesthetics__cherry
	:parameters ()
	:precondition (and  (fears_hangover_aesthetics) (craves_aesthetics_cherry))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_hangover_aesthetics))			(craves_hangover_cherry)
))
(:action succumb__hangover__aesthetics__shrimp
	:parameters ()
	:precondition (and  (craves_aesthetics_shrimp) (fears_hangover_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_hangover_aesthetics))			(craves_hangover_shrimp)
))
(:action succumb__hangover__aesthetics__bacon
	:parameters ()
	:precondition (and  (fears_hangover_aesthetics) (craves_aesthetics_bacon))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_hangover_aesthetics))			(craves_hangover_bacon)
))
(:action succumb__dread__aesthetics__arugula
	:parameters ()
	:precondition (and  (fears_dread_aesthetics) (craves_aesthetics_arugula))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(craves_dread_arugula)			(not (fears_dread_aesthetics))
))
(:action succumb__dread__aesthetics__bacon
	:parameters ()
	:precondition (and  (fears_dread_aesthetics) (craves_aesthetics_bacon))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_dread_aesthetics))			(craves_dread_bacon)
))
(:action succumb__dread__aesthetics__wurst
	:parameters ()
	:precondition (and  (fears_dread_aesthetics) (craves_aesthetics_wurst))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_dread_aesthetics))			(craves_dread_wurst)
))
(:action succumb__dread__aesthetics__scallop
	:parameters ()
	:precondition (and  (fears_dread_aesthetics) (craves_aesthetics_scallop))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_dread_aesthetics))			(craves_dread_scallop)
))
(:action succumb__dread__aesthetics__ham
	:parameters ()
	:precondition (and  (craves_aesthetics_ham) (fears_dread_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(craves_dread_ham)			(not (fears_dread_aesthetics))
))
(:action succumb__dread__aesthetics__muffin
	:parameters ()
	:precondition (and  (craves_aesthetics_muffin) (fears_dread_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_dread_aesthetics))			(craves_dread_muffin)
))
(:action succumb__dread__aesthetics__shrimp
	:parameters ()
	:precondition (and  (craves_aesthetics_shrimp) (fears_dread_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_dread_aesthetics))			(craves_dread_shrimp)
))
(:action succumb__dread__aesthetics__scallion
	:parameters ()
	:precondition (and  (craves_aesthetics_scallion) (fears_dread_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_dread_aesthetics))			(craves_dread_scallion)
))
(:action succumb__dread__aesthetics__cherry
	:parameters ()
	:precondition (and  (fears_dread_aesthetics) (craves_aesthetics_cherry))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(craves_dread_cherry)			(not (fears_dread_aesthetics))
))
(:action overcome__jealousy__aesthetics__bacon
	:parameters ()
	:precondition (and  (craves_jealousy_bacon)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_aesthetics_bacon))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_jealousy_aesthetics)			(not (craves_jealousy_bacon))
))
(:action succumb__loneliness__aesthetics__cherry
	:parameters ()
	:precondition (and  (craves_aesthetics_cherry) (fears_loneliness_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_loneliness_aesthetics))			(craves_loneliness_cherry)
))
(:action succumb__loneliness__aesthetics__shrimp
	:parameters ()
	:precondition (and  (craves_aesthetics_shrimp) (fears_loneliness_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_loneliness_aesthetics))			(craves_loneliness_shrimp)
))
(:action succumb__loneliness__aesthetics__bacon
	:parameters ()
	:precondition (and  (fears_loneliness_aesthetics) (craves_aesthetics_bacon))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(craves_loneliness_bacon)			(not (fears_loneliness_aesthetics))
))
(:action succumb__loneliness__aesthetics__scallop
	:parameters ()
	:precondition (and  (fears_loneliness_aesthetics) (craves_aesthetics_scallop))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_loneliness_aesthetics))			(craves_loneliness_scallop)
))
(:action succumb__loneliness__aesthetics__arugula
	:parameters ()
	:precondition (and  (fears_loneliness_aesthetics) (craves_aesthetics_arugula))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(craves_loneliness_arugula)			(not (fears_loneliness_aesthetics))
))
(:action succumb__loneliness__aesthetics__wurst
	:parameters ()
	:precondition (and  (fears_loneliness_aesthetics) (craves_aesthetics_wurst))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_loneliness_aesthetics))			(craves_loneliness_wurst)
))
(:action overcome__anger__aesthetics__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_aesthetics_wurst) (craves_anger_wurst))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_anger_wurst))			(fears_anger_aesthetics)
))
(:action succumb__loneliness__aesthetics__muffin
	:parameters ()
	:precondition (and  (craves_aesthetics_muffin) (fears_loneliness_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_loneliness_aesthetics))			(craves_loneliness_muffin)
))
(:action feast__aesthetics__bacon__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_bacon) 1.0) 1.0 ) 0.0) (craves_aesthetics_bacon))
	:effect (and 
			(decrease (locale_bacon) 1.0)			(craves_aesthetics_wurst)			(not (craves_aesthetics_bacon))
))
(:action succumb__loneliness__aesthetics__scallion
	:parameters ()
	:precondition (and  (craves_aesthetics_scallion) (fears_loneliness_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_loneliness_aesthetics))			(craves_loneliness_scallion)
))
(:action feast__aesthetics__bacon__arugula
	:parameters ()
	:precondition (and (>= (+ (*   (locale_bacon) 1.0) 1.0 ) 0.0) (craves_aesthetics_bacon))
	:effect (and 
			(decrease (locale_bacon) 1.0)			(craves_aesthetics_arugula)			(not (craves_aesthetics_bacon))
))
(:action succumb__loneliness__aesthetics__ham
	:parameters ()
	:precondition (and  (craves_aesthetics_ham) (fears_loneliness_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_loneliness_aesthetics))			(craves_loneliness_ham)
))
(:action feast__aesthetics__wurst__grapefruit
	:parameters ()
	:precondition (and  (craves_aesthetics_wurst)(>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(craves_aesthetics_grapefruit)			(not (craves_aesthetics_wurst))
))
(:action feast__aesthetics__wurst__arugula
	:parameters ()
	:precondition (and  (craves_aesthetics_wurst)(>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(not (craves_aesthetics_wurst))			(craves_aesthetics_arugula)
))
(:action feast__aesthetics__wurst__bacon
	:parameters ()
	:precondition (and  (craves_aesthetics_wurst)(>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(not (craves_aesthetics_wurst))			(craves_aesthetics_bacon)
))
(:action feast__aesthetics__scallop__arugula
	:parameters ()
	:precondition (and  (craves_aesthetics_scallop)(>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(not (craves_aesthetics_scallop))			(craves_aesthetics_arugula)
))
(:action feast__aesthetics__scallop__grapefruit
	:parameters ()
	:precondition (and  (craves_aesthetics_scallop)(>= (+ (*   (locale_scallop) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallop) 1.0)			(not (craves_aesthetics_scallop))			(craves_aesthetics_grapefruit)
))
(:action overcome__abrasion__aesthetics__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_aesthetics_scallop) (craves_abrasion_scallop))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_abrasion_aesthetics)			(not (craves_abrasion_scallop))
))
(:action succumb__hangover__aesthetics__grapefruit
	:parameters ()
	:precondition (and  (fears_hangover_aesthetics) (craves_aesthetics_grapefruit))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_hangover_aesthetics))			(craves_hangover_grapefruit)
))
(:action overcome__sciatica__aesthetics__grapefruit
	:parameters ()
	:precondition (and  (craves_sciatica_grapefruit) (craves_aesthetics_grapefruit)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_sciatica_grapefruit))			(fears_sciatica_aesthetics)
))
(:action succumb__dread__aesthetics__grapefruit
	:parameters ()
	:precondition (and  (fears_dread_aesthetics) (craves_aesthetics_grapefruit))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_dread_aesthetics))			(craves_dread_grapefruit)
))
(:action overcome__dread__aesthetics__bacon
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_aesthetics_bacon) (craves_dread_bacon))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_dread_aesthetics)			(not (craves_dread_bacon))
))
(:action overcome__dread__aesthetics__arugula
	:parameters ()
	:precondition (and  (craves_dread_arugula)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_aesthetics_arugula))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_dread_aesthetics)			(not (craves_dread_arugula))
))
(:action overcome__dread__aesthetics__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_aesthetics_scallop) (craves_dread_scallop))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_dread_aesthetics)			(not (craves_dread_scallop))
))
(:action overcome__dread__aesthetics__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_aesthetics_wurst) (craves_dread_wurst))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_dread_wurst))			(fears_dread_aesthetics)
))
(:action overcome__dread__aesthetics__muffin
	:parameters ()
	:precondition (and  (craves_aesthetics_muffin) (craves_dread_muffin)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_dread_aesthetics)			(not (craves_dread_muffin))
))
(:action overcome__dread__aesthetics__scallion
	:parameters ()
	:precondition (and  (craves_aesthetics_scallion)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_dread_scallion))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_dread_aesthetics)			(not (craves_dread_scallion))
))
(:action overcome__dread__aesthetics__shrimp
	:parameters ()
	:precondition (and  (craves_aesthetics_shrimp)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_dread_shrimp))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_dread_aesthetics)			(not (craves_dread_shrimp))
))
(:action overcome__dread__aesthetics__cherry
	:parameters ()
	:precondition (and  (craves_dread_cherry) (craves_aesthetics_cherry)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_dread_cherry))			(fears_dread_aesthetics)
))
(:action succumb__anger__aesthetics__wurst
	:parameters ()
	:precondition (and  (fears_anger_aesthetics) (craves_aesthetics_wurst))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_anger_aesthetics))			(craves_anger_wurst)
))
(:action succumb__anger__aesthetics__scallion
	:parameters ()
	:precondition (and  (craves_aesthetics_scallion) (fears_anger_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_anger_aesthetics))			(craves_anger_scallion)
))
(:action succumb__anger__aesthetics__ham
	:parameters ()
	:precondition (and  (craves_aesthetics_ham) (fears_anger_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_anger_aesthetics))			(craves_anger_ham)
))
(:action succumb__anger__aesthetics__cherry
	:parameters ()
	:precondition (and  (craves_aesthetics_cherry) (fears_anger_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(craves_anger_cherry)			(not (fears_anger_aesthetics))
))
(:action succumb__anger__aesthetics__shrimp
	:parameters ()
	:precondition (and  (craves_aesthetics_shrimp) (fears_anger_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_anger_aesthetics))			(craves_anger_shrimp)
))
(:action succumb__anger__aesthetics__bacon
	:parameters ()
	:precondition (and  (fears_anger_aesthetics) (craves_aesthetics_bacon))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_anger_aesthetics))			(craves_anger_bacon)
))
(:action succumb__anger__aesthetics__grapefruit
	:parameters ()
	:precondition (and  (fears_anger_aesthetics) (craves_aesthetics_grapefruit))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_anger_aesthetics))			(craves_anger_grapefruit)
))
(:action succumb__anger__aesthetics__scallop
	:parameters ()
	:precondition (and  (fears_anger_aesthetics) (craves_aesthetics_scallop))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(craves_anger_scallop)			(not (fears_anger_aesthetics))
))
(:action succumb__anger__aesthetics__arugula
	:parameters ()
	:precondition (and  (fears_anger_aesthetics) (craves_aesthetics_arugula))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_anger_aesthetics))			(craves_anger_arugula)
))
(:action succumb__anger__aesthetics__muffin
	:parameters ()
	:precondition (and  (craves_aesthetics_muffin) (fears_anger_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_anger_aesthetics))			(craves_anger_muffin)
))
(:action overcome__loneliness__aesthetics__shrimp
	:parameters ()
	:precondition (and  (craves_aesthetics_shrimp)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_loneliness_shrimp))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_loneliness_aesthetics)			(not (craves_loneliness_shrimp))
))
(:action overcome__loneliness__aesthetics__cherry
	:parameters ()
	:precondition (and  (craves_loneliness_cherry) (craves_aesthetics_cherry)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_loneliness_cherry))			(fears_loneliness_aesthetics)
))
(:action overcome__loneliness__aesthetics__bacon
	:parameters ()
	:precondition (and  (craves_loneliness_bacon)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_aesthetics_bacon))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_loneliness_bacon))			(fears_loneliness_aesthetics)
))
(:action overcome__loneliness__aesthetics__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_aesthetics_scallop) (craves_loneliness_scallop))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_loneliness_aesthetics)			(not (craves_loneliness_scallop))
))
(:action overcome__loneliness__aesthetics__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_aesthetics_wurst) (craves_loneliness_wurst))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_loneliness_aesthetics)			(not (craves_loneliness_wurst))
))
(:action overcome__loneliness__aesthetics__muffin
	:parameters ()
	:precondition (and  (craves_aesthetics_muffin)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_loneliness_muffin))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_loneliness_aesthetics)			(not (craves_loneliness_muffin))
))
(:action overcome__loneliness__aesthetics__ham
	:parameters ()
	:precondition (and  (craves_aesthetics_ham)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_loneliness_ham))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_loneliness_aesthetics)			(not (craves_loneliness_ham))
))
(:action overcome__loneliness__aesthetics__scallion
	:parameters ()
	:precondition (and  (craves_aesthetics_scallion) (craves_loneliness_scallion)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_loneliness_scallion))			(fears_loneliness_aesthetics)
))
(:action feast__aesthetics__grapefruit__wurst
	:parameters ()
	:precondition (and  (craves_aesthetics_grapefruit)(>= (+ (*   (locale_grapefruit) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_grapefruit) 1.0)			(not (craves_aesthetics_grapefruit))			(craves_aesthetics_wurst)
))
(:action feast__aesthetics__grapefruit__scallop
	:parameters ()
	:precondition (and  (craves_aesthetics_grapefruit)(>= (+ (*   (locale_grapefruit) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_grapefruit) 1.0)			(not (craves_aesthetics_grapefruit))			(craves_aesthetics_scallop)
))
(:action succumb__loneliness__aesthetics__grapefruit
	:parameters ()
	:precondition (and  (fears_loneliness_aesthetics) (craves_aesthetics_grapefruit))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_loneliness_aesthetics))			(craves_loneliness_grapefruit)
))
(:action succumb__abrasion__aesthetics__shrimp
	:parameters ()
	:precondition (and  (craves_aesthetics_shrimp) (fears_abrasion_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_abrasion_aesthetics))			(craves_abrasion_shrimp)
))
(:action succumb__abrasion__aesthetics__scallion
	:parameters ()
	:precondition (and  (craves_aesthetics_scallion) (fears_abrasion_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(craves_abrasion_scallion)			(not (fears_abrasion_aesthetics))
))
(:action succumb__abrasion__aesthetics__grapefruit
	:parameters ()
	:precondition (and  (fears_abrasion_aesthetics) (craves_aesthetics_grapefruit))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(craves_abrasion_grapefruit)			(not (fears_abrasion_aesthetics))
))
(:action succumb__abrasion__aesthetics__cherry
	:parameters ()
	:precondition (and  (craves_aesthetics_cherry) (fears_abrasion_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_abrasion_aesthetics))			(craves_abrasion_cherry)
))
(:action succumb__abrasion__aesthetics__arugula
	:parameters ()
	:precondition (and  (fears_abrasion_aesthetics) (craves_aesthetics_arugula))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_abrasion_aesthetics))			(craves_abrasion_arugula)
))
(:action succumb__abrasion__aesthetics__bacon
	:parameters ()
	:precondition (and  (fears_abrasion_aesthetics) (craves_aesthetics_bacon))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_abrasion_aesthetics))			(craves_abrasion_bacon)
))
(:action succumb__abrasion__aesthetics__wurst
	:parameters ()
	:precondition (and  (fears_abrasion_aesthetics) (craves_aesthetics_wurst))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_abrasion_aesthetics))			(craves_abrasion_wurst)
))
(:action succumb__abrasion__aesthetics__scallop
	:parameters ()
	:precondition (and  (fears_abrasion_aesthetics) (craves_aesthetics_scallop))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_abrasion_aesthetics))			(craves_abrasion_scallop)
))
(:action succumb__abrasion__aesthetics__ham
	:parameters ()
	:precondition (and  (craves_aesthetics_ham) (fears_abrasion_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_abrasion_aesthetics))			(craves_abrasion_ham)
))
(:action succumb__abrasion__aesthetics__muffin
	:parameters ()
	:precondition (and  (craves_aesthetics_muffin) (fears_abrasion_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(craves_abrasion_muffin)			(not (fears_abrasion_aesthetics))
))
(:action overcome__hangover__aesthetics__arugula
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_hangover_arugula) (craves_aesthetics_arugula))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_hangover_aesthetics)			(not (craves_hangover_arugula))
))
(:action overcome__hangover__aesthetics__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_aesthetics_scallop) (craves_hangover_scallop))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_hangover_scallop))			(fears_hangover_aesthetics)
))
(:action overcome__hangover__aesthetics__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_hangover_wurst) (craves_aesthetics_wurst))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_hangover_aesthetics)			(not (craves_hangover_wurst))
))
(:action overcome__hangover__aesthetics__ham
	:parameters ()
	:precondition (and  (craves_aesthetics_ham)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_hangover_ham))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_hangover_aesthetics)			(not (craves_hangover_ham))
))
(:action overcome__hangover__aesthetics__scallion
	:parameters ()
	:precondition (and  (craves_aesthetics_scallion)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_hangover_scallion))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_hangover_aesthetics)			(not (craves_hangover_scallion))
))
(:action overcome__hangover__aesthetics__shrimp
	:parameters ()
	:precondition (and  (craves_aesthetics_shrimp)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_hangover_shrimp))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_hangover_aesthetics)			(not (craves_hangover_shrimp))
))
(:action overcome__hangover__aesthetics__cherry
	:parameters ()
	:precondition (and  (craves_hangover_cherry) (craves_aesthetics_cherry)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_hangover_cherry))			(fears_hangover_aesthetics)
))
(:action overcome__hangover__aesthetics__bacon
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_aesthetics_bacon) (craves_hangover_bacon))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_hangover_bacon))			(fears_hangover_aesthetics)
))
(:action succumb__jealousy__aesthetics__grapefruit
	:parameters ()
	:precondition (and  (craves_aesthetics_grapefruit) (fears_jealousy_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_jealousy_aesthetics))			(craves_jealousy_grapefruit)
))
(:action succumb__jealousy__aesthetics__cherry
	:parameters ()
	:precondition (and  (craves_aesthetics_cherry) (fears_jealousy_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(craves_jealousy_cherry)			(not (fears_jealousy_aesthetics))
))
(:action succumb__jealousy__aesthetics__arugula
	:parameters ()
	:precondition (and  (fears_jealousy_aesthetics) (craves_aesthetics_arugula))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(craves_jealousy_arugula)			(not (fears_jealousy_aesthetics))
))
(:action succumb__jealousy__aesthetics__bacon
	:parameters ()
	:precondition (and  (fears_jealousy_aesthetics) (craves_aesthetics_bacon))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(craves_jealousy_bacon)			(not (fears_jealousy_aesthetics))
))
(:action succumb__jealousy__aesthetics__wurst
	:parameters ()
	:precondition (and  (craves_aesthetics_wurst) (fears_jealousy_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_jealousy_aesthetics))			(craves_jealousy_wurst)
))
(:action succumb__jealousy__aesthetics__scallop
	:parameters ()
	:precondition (and  (craves_aesthetics_scallop) (fears_jealousy_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(craves_jealousy_scallop)			(not (fears_jealousy_aesthetics))
))
(:action succumb__jealousy__aesthetics__ham
	:parameters ()
	:precondition (and  (craves_aesthetics_ham) (fears_jealousy_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_jealousy_aesthetics))			(craves_jealousy_ham)
))
(:action succumb__jealousy__aesthetics__muffin
	:parameters ()
	:precondition (and  (craves_aesthetics_muffin) (fears_jealousy_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_jealousy_aesthetics))			(craves_jealousy_muffin)
))
(:action succumb__jealousy__aesthetics__shrimp
	:parameters ()
	:precondition (and  (craves_aesthetics_shrimp) (fears_jealousy_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_jealousy_aesthetics))			(craves_jealousy_shrimp)
))
(:action succumb__jealousy__aesthetics__scallion
	:parameters ()
	:precondition (and  (craves_aesthetics_scallion) (fears_jealousy_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(craves_jealousy_scallion)			(not (fears_jealousy_aesthetics))
))
(:action overcome__dread__aesthetics__grapefruit
	:parameters ()
	:precondition (and  (craves_aesthetics_grapefruit)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_dread_grapefruit))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_dread_aesthetics)			(not (craves_dread_grapefruit))
))
(:action overcome__loneliness__aesthetics__grapefruit
	:parameters ()
	:precondition (and  (craves_aesthetics_grapefruit)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_loneliness_grapefruit))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_loneliness_aesthetics)			(not (craves_loneliness_grapefruit))
))
(:action overcome__jealousy__aesthetics__cherry
	:parameters ()
	:precondition (and  (craves_jealousy_cherry) (craves_aesthetics_cherry)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_jealousy_cherry))			(fears_jealousy_aesthetics)
))
(:action overcome__jealousy__aesthetics__grapefruit
	:parameters ()
	:precondition (and  (craves_jealousy_grapefruit) (craves_aesthetics_grapefruit)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_jealousy_grapefruit))			(fears_jealousy_aesthetics)
))
(:action overcome__jealousy__aesthetics__arugula
	:parameters ()
	:precondition (and  (craves_jealousy_arugula)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_aesthetics_arugula))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_jealousy_arugula))			(fears_jealousy_aesthetics)
))
(:action overcome__jealousy__aesthetics__scallop
	:parameters ()
	:precondition (and  (craves_jealousy_scallop)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_aesthetics_scallop))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_jealousy_scallop))			(fears_jealousy_aesthetics)
))
(:action overcome__jealousy__aesthetics__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_jealousy_wurst) (craves_aesthetics_wurst))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_jealousy_aesthetics)			(not (craves_jealousy_wurst))
))
(:action overcome__jealousy__aesthetics__muffin
	:parameters ()
	:precondition (and  (craves_aesthetics_muffin)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_jealousy_muffin))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_jealousy_aesthetics)			(not (craves_jealousy_muffin))
))
(:action overcome__jealousy__aesthetics__ham
	:parameters ()
	:precondition (and  (craves_aesthetics_ham)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_jealousy_ham))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_jealousy_ham))			(fears_jealousy_aesthetics)
))
(:action overcome__jealousy__aesthetics__scallion
	:parameters ()
	:precondition (and  (craves_aesthetics_scallion) (craves_jealousy_scallion)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_jealousy_scallion))			(fears_jealousy_aesthetics)
))
(:action overcome__jealousy__aesthetics__shrimp
	:parameters ()
	:precondition (and  (craves_aesthetics_shrimp)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_jealousy_shrimp))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_jealousy_aesthetics)			(not (craves_jealousy_shrimp))
))
(:action overcome__anger__aesthetics__ham
	:parameters ()
	:precondition (and  (craves_aesthetics_ham)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_anger_ham))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_anger_aesthetics)			(not (craves_anger_ham))
))
(:action overcome__anger__aesthetics__scallion
	:parameters ()
	:precondition (and  (craves_aesthetics_scallion) (craves_anger_scallion)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_anger_aesthetics)			(not (craves_anger_scallion))
))
(:action overcome__anger__aesthetics__shrimp
	:parameters ()
	:precondition (and  (craves_aesthetics_shrimp)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_anger_shrimp))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_anger_aesthetics)			(not (craves_anger_shrimp))
))
(:action overcome__anger__aesthetics__cherry
	:parameters ()
	:precondition (and  (craves_anger_cherry) (craves_aesthetics_cherry)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_anger_cherry))			(fears_anger_aesthetics)
))
(:action overcome__anger__aesthetics__grapefruit
	:parameters ()
	:precondition (and  (craves_aesthetics_grapefruit)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_anger_grapefruit))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_anger_aesthetics)			(not (craves_anger_grapefruit))
))
(:action overcome__anger__aesthetics__bacon
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_anger_bacon) (craves_aesthetics_bacon))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_anger_aesthetics)			(not (craves_anger_bacon))
))
(:action overcome__anger__aesthetics__arugula
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_aesthetics_arugula) (craves_anger_arugula))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_anger_arugula))			(fears_anger_aesthetics)
))
(:action overcome__anger__aesthetics__scallop
	:parameters ()
	:precondition (and  (craves_anger_scallop)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_aesthetics_scallop))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_anger_scallop))			(fears_anger_aesthetics)
))
(:action overcome__anger__aesthetics__muffin
	:parameters ()
	:precondition (and  (craves_aesthetics_muffin) (craves_anger_muffin)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_anger_aesthetics)			(not (craves_anger_muffin))
))
(:action overcome__abrasion__aesthetics__scallion
	:parameters ()
	:precondition (and  (craves_aesthetics_scallion) (craves_abrasion_scallion)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_abrasion_scallion))			(fears_abrasion_aesthetics)
))
(:action overcome__abrasion__aesthetics__shrimp
	:parameters ()
	:precondition (and  (craves_aesthetics_shrimp)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_abrasion_shrimp))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_abrasion_aesthetics)			(not (craves_abrasion_shrimp))
))
(:action overcome__abrasion__aesthetics__cherry
	:parameters ()
	:precondition (and  (craves_aesthetics_cherry)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_abrasion_cherry))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_abrasion_aesthetics)			(not (craves_abrasion_cherry))
))
(:action overcome__abrasion__aesthetics__grapefruit
	:parameters ()
	:precondition (and  (craves_abrasion_grapefruit) (craves_aesthetics_grapefruit)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_abrasion_grapefruit))			(fears_abrasion_aesthetics)
))
(:action overcome__abrasion__aesthetics__bacon
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_abrasion_bacon) (craves_aesthetics_bacon))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_abrasion_aesthetics)			(not (craves_abrasion_bacon))
))
(:action overcome__abrasion__aesthetics__arugula
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_abrasion_arugula) (craves_aesthetics_arugula))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_abrasion_aesthetics)			(not (craves_abrasion_arugula))
))
(:action overcome__abrasion__aesthetics__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_aesthetics_wurst) (craves_abrasion_wurst))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_abrasion_aesthetics)			(not (craves_abrasion_wurst))
))
(:action overcome__abrasion__aesthetics__muffin
	:parameters ()
	:precondition (and  (craves_aesthetics_muffin) (craves_abrasion_muffin)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_abrasion_aesthetics)			(not (craves_abrasion_muffin))
))
(:action overcome__abrasion__aesthetics__ham
	:parameters ()
	:precondition (and  (craves_aesthetics_ham)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_abrasion_ham))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_abrasion_aesthetics)			(not (craves_abrasion_ham))
))
(:action succumb__sciatica__aesthetics__bacon
	:parameters ()
	:precondition (and  (fears_sciatica_aesthetics) (craves_aesthetics_bacon))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(craves_sciatica_bacon)			(not (fears_sciatica_aesthetics))
))
(:action succumb__sciatica__aesthetics__grapefruit
	:parameters ()
	:precondition (and  (craves_aesthetics_grapefruit) (fears_sciatica_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_sciatica_aesthetics))			(craves_sciatica_grapefruit)
))
(:action succumb__sciatica__aesthetics__scallop
	:parameters ()
	:precondition (and  (craves_aesthetics_scallop) (fears_sciatica_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_sciatica_aesthetics))			(craves_sciatica_scallop)
))
(:action succumb__sciatica__aesthetics__arugula
	:parameters ()
	:precondition (and  (fears_sciatica_aesthetics) (craves_aesthetics_arugula))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_sciatica_aesthetics))			(craves_sciatica_arugula)
))
(:action succumb__sciatica__aesthetics__wurst
	:parameters ()
	:precondition (and  (craves_aesthetics_wurst) (fears_sciatica_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_sciatica_aesthetics))			(craves_sciatica_wurst)
))
(:action succumb__sciatica__aesthetics__muffin
	:parameters ()
	:precondition (and  (craves_aesthetics_muffin) (fears_sciatica_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_sciatica_aesthetics))			(craves_sciatica_muffin)
))
(:action succumb__sciatica__aesthetics__scallion
	:parameters ()
	:precondition (and  (craves_aesthetics_scallion) (fears_sciatica_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_sciatica_aesthetics))			(craves_sciatica_scallion)
))
(:action succumb__sciatica__aesthetics__ham
	:parameters ()
	:precondition (and  (craves_aesthetics_ham) (fears_sciatica_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(craves_sciatica_ham)			(not (fears_sciatica_aesthetics))
))
(:action succumb__sciatica__aesthetics__cherry
	:parameters ()
	:precondition (and  (craves_aesthetics_cherry) (fears_sciatica_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(craves_sciatica_cherry)			(not (fears_sciatica_aesthetics))
))
(:action succumb__sciatica__aesthetics__shrimp
	:parameters ()
	:precondition (and  (craves_aesthetics_shrimp) (fears_sciatica_aesthetics))
	:effect (and 
			(increase (harmony_aesthetics) 1.0)			(not (fears_sciatica_aesthetics))			(craves_sciatica_shrimp)
))
(:action overcome__hangover__aesthetics__grapefruit
	:parameters ()
	:precondition (and  (craves_aesthetics_grapefruit)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_hangover_grapefruit))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_hangover_aesthetics)			(not (craves_hangover_grapefruit))
))
(:action overcome__sciatica__aesthetics__bacon
	:parameters ()
	:precondition (and  (craves_sciatica_bacon)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_aesthetics_bacon))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_sciatica_bacon))			(fears_sciatica_aesthetics)
))
(:action overcome__sciatica__aesthetics__arugula
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_sciatica_arugula) (craves_aesthetics_arugula))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_sciatica_arugula))			(fears_sciatica_aesthetics)
))
(:action overcome__sciatica__aesthetics__scallop
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_aesthetics_scallop) (craves_sciatica_scallop))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_sciatica_scallop))			(fears_sciatica_aesthetics)
))
(:action overcome__sciatica__aesthetics__wurst
	:parameters ()
	:precondition (and  (craves_sciatica_wurst)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_aesthetics_wurst))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_sciatica_wurst))			(fears_sciatica_aesthetics)
))
(:action overcome__sciatica__aesthetics__muffin
	:parameters ()
	:precondition (and  (craves_aesthetics_muffin)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_sciatica_muffin))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_sciatica_aesthetics)			(not (craves_sciatica_muffin))
))
(:action overcome__sciatica__aesthetics__ham
	:parameters ()
	:precondition (and  (craves_sciatica_ham) (craves_aesthetics_ham)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_sciatica_ham))			(fears_sciatica_aesthetics)
))
(:action overcome__sciatica__aesthetics__scallion
	:parameters ()
	:precondition (and  (craves_aesthetics_scallion) (craves_sciatica_scallion)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_sciatica_scallion))			(fears_sciatica_aesthetics)
))
(:action overcome__sciatica__aesthetics__shrimp
	:parameters ()
	:precondition (and  (craves_aesthetics_shrimp)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0) (craves_sciatica_shrimp))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(fears_sciatica_aesthetics)			(not (craves_sciatica_shrimp))
))
(:action overcome__sciatica__aesthetics__cherry
	:parameters ()
	:precondition (and  (craves_sciatica_cherry) (craves_aesthetics_cherry)(>= (+ (*   (harmony_aesthetics) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_aesthetics) 1.0)			(not (craves_sciatica_cherry))			(fears_sciatica_aesthetics)
))


)