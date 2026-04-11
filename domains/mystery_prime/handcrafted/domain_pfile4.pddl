(define (domain mysteryprimetyped)
(:predicates  (craves_abrasion_guava)
 (craves_anxiety_muffin)
 (craves_abrasion_muffin)
 (craves_anxiety_pork)
 (craves_abrasion_pork)
 (craves_anxiety_onion)
 (fears_boils_satisfaction)
 (craves_boils_wurst)
 (craves_abrasion_onion)
 (craves_anxiety_popover)
 (fears_grief_triumph)
 (craves_grief_wurst)
 (craves_abrasion_popover)
 (craves_anxiety_scallion)
 (craves_boils_muffin)
 (craves_abrasion_wurst)
 (craves_abrasion_scallion)
 (craves_grief_muffin)
 (craves_anxiety_wurst)
 (craves_boils_pork)
 (craves_boils_scallion)
 (craves_grief_pork)
 (craves_boils_onion)
 (craves_grief_onion)
 (craves_triumph_onion)
 (craves_boils_popover)
 (craves_dread_wurst)
 (craves_grief_popover)
 (craves_satisfaction_scallion)
 (fears_abrasion_love)
 (fears_grief_love)
 (fears_abrasion_satisfaction)
 (fears_grief_satisfaction)
 (craves_love_popover)
 (fears_loneliness_triumph)
 (craves_loneliness_wurst)
 (craves_loneliness_scallion)
 (craves_grief_scallion)
 (craves_grief_guava)
 (craves_loneliness_guava)
 (craves_boils_guava)
 (craves_loneliness_muffin)
 (craves_loneliness_pork)
 (craves_loneliness_onion)
 (craves_loneliness_popover)
 (fears_loneliness_love)
 (fears_loneliness_satisfaction)
 (fears_dread_triumph)
 (craves_dread_guava)
 (craves_dread_muffin)
 (craves_dread_pork)
 (craves_dread_onion)
 (craves_dread_popover)
 (craves_triumph_wurst)
 (craves_dread_scallion)
 (craves_triumph_guava)
 (fears_dread_love)
 (craves_love_wurst)
 (fears_dread_satisfaction)
 (fears_anxiety_triumph)
 (craves_love_guava)
 (fears_boils_triumph)
 (fears_anxiety_love)
 (craves_satisfaction_wurst)
 (fears_boils_love)
 (craves_satisfaction_guava)
 (craves_triumph_pork)
 (craves_triumph_muffin)
 (craves_love_pork)
 (craves_love_muffin)
 (craves_satisfaction_pork)
 (craves_satisfaction_muffin)
 (craves_triumph_scallion)
 (craves_love_scallion)
 (craves_triumph_popover)
 (craves_satisfaction_popover)
 (craves_love_onion)
 (craves_satisfaction_onion)
 (fears_anxiety_satisfaction)
 (fears_abrasion_triumph)
 (craves_anxiety_guava)
)
(:functions   (locale_wurst)
  (locale_onion)
  (harmony_satisfaction)
  (locale_scallion)
  (harmony_love)
  (locale_popover)
  (harmony_triumph)
  (locale_guava)
  (locale_muffin)
  (locale_pork)
)
(:action drink__wurst__popover
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(increase (locale_popover) 1.0)
))
(:action drink__wurst__onion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(increase (locale_onion) 1.0)
))
(:action drink__wurst__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallion) 1.0)			(decrease (locale_wurst) 1.0)
))
(:action drink__wurst__guava
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_guava) 1.0)			(decrease (locale_wurst) 1.0)
))
(:action drink__wurst__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_wurst) 1.0)			(decrease (locale_wurst) 1.0)
))
(:action drink__wurst__pork
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_pork) 1.0)			(decrease (locale_wurst) 1.0)
))
(:action drink__wurst__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(increase (locale_muffin) 1.0)
))
(:action drink__guava__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_guava) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallion) 1.0)			(decrease (locale_guava) 1.0)
))
(:action drink__guava__popover
	:parameters ()
	:precondition (and (>= (+ (*   (locale_guava) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_guava) 1.0)			(increase (locale_popover) 1.0)
))
(:action drink__guava__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_guava) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_guava) 1.0)			(increase (locale_muffin) 1.0)
))
(:action drink__guava__guava
	:parameters ()
	:precondition (and (>= (+ (*   (locale_guava) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_guava) 1.0)			(decrease (locale_guava) 1.0)
))
(:action drink__guava__onion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_guava) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_guava) 1.0)			(increase (locale_onion) 1.0)
))
(:action drink__guava__pork
	:parameters ()
	:precondition (and (>= (+ (*   (locale_guava) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_pork) 1.0)			(decrease (locale_guava) 1.0)
))
(:action drink__guava__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_guava) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_wurst) 1.0)			(decrease (locale_guava) 1.0)
))
(:action drink__muffin__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(increase (locale_scallion) 1.0)
))
(:action drink__muffin__pork
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(increase (locale_pork) 1.0)
))
(:action drink__muffin__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(increase (locale_muffin) 1.0)
))
(:action drink__muffin__popover
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(increase (locale_popover) 1.0)
))
(:action drink__muffin__onion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(increase (locale_onion) 1.0)
))
(:action drink__muffin__guava
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_guava) 1.0)			(decrease (locale_muffin) 1.0)
))
(:action drink__muffin__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_wurst) 1.0)			(decrease (locale_muffin) 1.0)
))
(:action drink__pork__onion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pork) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pork) 1.0)			(increase (locale_onion) 1.0)
))
(:action drink__pork__pork
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pork) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pork) 1.0)			(increase (locale_pork) 1.0)
))
(:action drink__pork__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pork) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallion) 1.0)			(decrease (locale_pork) 1.0)
))
(:action drink__pork__popover
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pork) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pork) 1.0)			(increase (locale_popover) 1.0)
))
(:action drink__pork__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pork) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_wurst) 1.0)			(decrease (locale_pork) 1.0)
))
(:action drink__pork__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pork) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pork) 1.0)			(increase (locale_muffin) 1.0)
))
(:action drink__pork__guava
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pork) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_guava) 1.0)			(decrease (locale_pork) 1.0)
))
(:action overcome__grief__satisfaction__scallion
	:parameters ()
	:precondition (and  (craves_grief_scallion)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_scallion))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_grief_scallion))			(fears_grief_satisfaction)
))
(:action overcome__loneliness__satisfaction__scallion
	:parameters ()
	:precondition (and  (craves_loneliness_scallion)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_scallion))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_loneliness_scallion))			(fears_loneliness_satisfaction)
))
(:action feast__love__popover__scallion
	:parameters ()
	:precondition (and  (craves_love_popover)(>= (+ (*   (locale_popover) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_popover) 1.0)			(not (craves_love_popover))			(craves_love_scallion)
))
(:action feast__love__popover__onion
	:parameters ()
	:precondition (and  (craves_love_popover)(>= (+ (*   (locale_popover) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_popover) 1.0)			(not (craves_love_popover))			(craves_love_onion)
))
(:action overcome__boils__satisfaction__scallion
	:parameters ()
	:precondition (and  (craves_boils_scallion)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_scallion))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_boils_satisfaction)			(not (craves_boils_scallion))
))
(:action feast__satisfaction__scallion__muffin
	:parameters ()
	:precondition (and  (craves_satisfaction_scallion)(>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallion) 1.0)			(craves_satisfaction_muffin)			(not (craves_satisfaction_scallion))
))
(:action feast__satisfaction__scallion__guava
	:parameters ()
	:precondition (and  (craves_satisfaction_scallion)(>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallion) 1.0)			(not (craves_satisfaction_scallion))			(craves_satisfaction_guava)
))
(:action feast__satisfaction__scallion__popover
	:parameters ()
	:precondition (and  (craves_satisfaction_scallion)(>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallion) 1.0)			(not (craves_satisfaction_scallion))			(craves_satisfaction_popover)
))
(:action drink__onion__popover
	:parameters ()
	:precondition (and (>= (+ (*   (locale_onion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_popover) 1.0)			(decrease (locale_onion) 1.0)
))
(:action drink__onion__onion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_onion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_onion) 1.0)			(decrease (locale_onion) 1.0)
))
(:action drink__onion__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_onion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallion) 1.0)			(decrease (locale_onion) 1.0)
))
(:action drink__onion__guava
	:parameters ()
	:precondition (and (>= (+ (*   (locale_onion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_guava) 1.0)			(decrease (locale_onion) 1.0)
))
(:action drink__onion__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_onion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_wurst) 1.0)			(decrease (locale_onion) 1.0)
))
(:action drink__onion__pork
	:parameters ()
	:precondition (and (>= (+ (*   (locale_onion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_pork) 1.0)			(decrease (locale_onion) 1.0)
))
(:action drink__onion__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_onion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_muffin) 1.0)			(decrease (locale_onion) 1.0)
))
(:action drink__popover__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_popover) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_wurst) 1.0)			(decrease (locale_popover) 1.0)
))
(:action feast__triumph__onion__pork
	:parameters ()
	:precondition (and  (craves_triumph_onion)(>= (+ (*   (locale_onion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_onion) 1.0)			(craves_triumph_pork)			(not (craves_triumph_onion))
))
(:action feast__triumph__onion__muffin
	:parameters ()
	:precondition (and  (craves_triumph_onion)(>= (+ (*   (locale_onion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_onion) 1.0)			(craves_triumph_muffin)			(not (craves_triumph_onion))
))
(:action feast__triumph__onion__wurst
	:parameters ()
	:precondition (and  (craves_triumph_onion)(>= (+ (*   (locale_onion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_onion) 1.0)			(craves_triumph_wurst)			(not (craves_triumph_onion))
))
(:action feast__triumph__onion__popover
	:parameters ()
	:precondition (and  (craves_triumph_onion)(>= (+ (*   (locale_onion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_onion) 1.0)			(craves_triumph_popover)			(not (craves_triumph_onion))
))
(:action drink__popover__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_popover) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_popover) 1.0)			(increase (locale_scallion) 1.0)
))
(:action drink__popover__popover
	:parameters ()
	:precondition (and (>= (+ (*   (locale_popover) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_popover) 1.0)			(increase (locale_popover) 1.0)
))
(:action drink__popover__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_popover) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_popover) 1.0)			(increase (locale_muffin) 1.0)
))
(:action drink__popover__guava
	:parameters ()
	:precondition (and (>= (+ (*   (locale_popover) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_guava) 1.0)			(decrease (locale_popover) 1.0)
))
(:action drink__popover__onion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_popover) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_popover) 1.0)			(increase (locale_onion) 1.0)
))
(:action drink__popover__pork
	:parameters ()
	:precondition (and (>= (+ (*   (locale_popover) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_popover) 1.0)			(increase (locale_pork) 1.0)
))
(:action drink__scallion__guava
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_guava) 1.0)			(decrease (locale_scallion) 1.0)
))
(:action drink__scallion__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_wurst) 1.0)			(decrease (locale_scallion) 1.0)
))
(:action drink__scallion__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(increase (locale_scallion) 1.0)			(decrease (locale_scallion) 1.0)
))
(:action drink__scallion__pork
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallion) 1.0)			(increase (locale_pork) 1.0)
))
(:action drink__scallion__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallion) 1.0)			(increase (locale_muffin) 1.0)
))
(:action drink__scallion__popover
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallion) 1.0)			(increase (locale_popover) 1.0)
))
(:action drink__scallion__onion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallion) 1.0)			(increase (locale_onion) 1.0)
))
(:action overcome__anxiety__triumph__wurst
	:parameters ()
	:precondition (and  (craves_anxiety_wurst) (craves_triumph_wurst)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_anxiety_triumph)			(not (craves_anxiety_wurst))
))
(:action overcome__abrasion__triumph__wurst
	:parameters ()
	:precondition (and  (craves_triumph_wurst) (craves_abrasion_wurst)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_abrasion_triumph)			(not (craves_abrasion_wurst))
))
(:action feast__satisfaction__guava__wurst
	:parameters ()
	:precondition (and  (craves_satisfaction_guava)(>= (+ (*   (locale_guava) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_guava) 1.0)			(not (craves_satisfaction_guava))			(craves_satisfaction_wurst)
))
(:action feast__satisfaction__guava__scallion
	:parameters ()
	:precondition (and  (craves_satisfaction_guava)(>= (+ (*   (locale_guava) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_guava) 1.0)			(not (craves_satisfaction_guava))			(craves_satisfaction_scallion)
))
(:action overcome__grief__love__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_scallion) (craves_grief_scallion))
	:effect (and 
			(decrease (harmony_love) 1.0)			(not (craves_grief_scallion))			(fears_grief_love)
))
(:action overcome__dread__triumph__wurst
	:parameters ()
	:precondition (and  (craves_triumph_wurst) (craves_dread_wurst)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_dread_triumph)			(not (craves_dread_wurst))
))
(:action feast__satisfaction__muffin__pork
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0) (craves_satisfaction_muffin))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(craves_satisfaction_pork)			(not (craves_satisfaction_muffin))
))
(:action feast__satisfaction__muffin__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0) (craves_satisfaction_muffin))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(not (craves_satisfaction_muffin))			(craves_satisfaction_scallion)
))
(:action feast__satisfaction__muffin__onion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0) (craves_satisfaction_muffin))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(craves_satisfaction_onion)			(not (craves_satisfaction_muffin))
))
(:action overcome__loneliness__love__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_scallion) (craves_loneliness_scallion))
	:effect (and 
			(decrease (harmony_love) 1.0)			(not (craves_loneliness_scallion))			(fears_loneliness_love)
))
(:action succumb__grief__satisfaction__scallion
	:parameters ()
	:precondition (and  (fears_grief_satisfaction) (craves_satisfaction_scallion))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_grief_satisfaction))			(craves_grief_scallion)
))
(:action succumb__grief__satisfaction__popover
	:parameters ()
	:precondition (and  (fears_grief_satisfaction) (craves_satisfaction_popover))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_grief_satisfaction))			(craves_grief_popover)
))
(:action feast__satisfaction__popover__scallion
	:parameters ()
	:precondition (and  (craves_satisfaction_popover)(>= (+ (*   (locale_popover) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_popover) 1.0)			(not (craves_satisfaction_popover))			(craves_satisfaction_scallion)
))
(:action feast__satisfaction__popover__onion
	:parameters ()
	:precondition (and  (craves_satisfaction_popover)(>= (+ (*   (locale_popover) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_popover) 1.0)			(craves_satisfaction_onion)			(not (craves_satisfaction_popover))
))
(:action succumb__grief__satisfaction__muffin
	:parameters ()
	:precondition (and  (craves_satisfaction_muffin) (fears_grief_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_grief_muffin)			(not (fears_grief_satisfaction))
))
(:action succumb__grief__satisfaction__guava
	:parameters ()
	:precondition (and  (fears_grief_satisfaction) (craves_satisfaction_guava))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_grief_satisfaction))			(craves_grief_guava)
))
(:action feast__triumph__wurst__guava
	:parameters ()
	:precondition (and  (craves_triumph_wurst)(>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(not (craves_triumph_wurst))			(craves_triumph_guava)
))
(:action feast__triumph__wurst__onion
	:parameters ()
	:precondition (and  (craves_triumph_wurst)(>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(not (craves_triumph_wurst))			(craves_triumph_onion)
))
(:action succumb__boils__satisfaction__muffin
	:parameters ()
	:precondition (and  (craves_satisfaction_muffin) (fears_boils_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_boils_satisfaction))			(craves_boils_muffin)
))
(:action succumb__boils__satisfaction__popover
	:parameters ()
	:precondition (and  (craves_satisfaction_popover) (fears_boils_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_boils_popover)			(not (fears_boils_satisfaction))
))
(:action feast__triumph__pork__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pork) 1.0) 1.0 ) 0.0) (craves_triumph_pork))
	:effect (and 
			(decrease (locale_pork) 1.0)			(not (craves_triumph_pork))			(craves_triumph_muffin)
))
(:action succumb__boils__satisfaction__scallion
	:parameters ()
	:precondition (and  (fears_boils_satisfaction) (craves_satisfaction_scallion))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_boils_scallion)			(not (fears_boils_satisfaction))
))
(:action feast__triumph__pork__onion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pork) 1.0) 1.0 ) 0.0) (craves_triumph_pork))
	:effect (and 
			(decrease (locale_pork) 1.0)			(craves_triumph_onion)			(not (craves_triumph_pork))
))
(:action succumb__boils__satisfaction__guava
	:parameters ()
	:precondition (and  (craves_satisfaction_guava) (fears_boils_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_boils_guava)			(not (fears_boils_satisfaction))
))
(:action feast__love__onion__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_onion) 1.0) 1.0 ) 0.0) (craves_love_onion))
	:effect (and 
			(decrease (locale_onion) 1.0)			(not (craves_love_onion))			(craves_love_muffin)
))
(:action feast__love__onion__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (locale_onion) 1.0) 1.0 ) 0.0) (craves_love_onion))
	:effect (and 
			(decrease (locale_onion) 1.0)			(not (craves_love_onion))			(craves_love_wurst)
))
(:action feast__triumph__muffin__onion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0) (craves_triumph_muffin))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(craves_triumph_onion)			(not (craves_triumph_muffin))
))
(:action feast__love__onion__popover
	:parameters ()
	:precondition (and (>= (+ (*   (locale_onion) 1.0) 1.0 ) 0.0) (craves_love_onion))
	:effect (and 
			(decrease (locale_onion) 1.0)			(not (craves_love_onion))			(craves_love_popover)
))
(:action feast__triumph__muffin__pork
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0) (craves_triumph_muffin))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(not (craves_triumph_muffin))			(craves_triumph_pork)
))
(:action feast__love__onion__pork
	:parameters ()
	:precondition (and (>= (+ (*   (locale_onion) 1.0) 1.0 ) 0.0) (craves_love_onion))
	:effect (and 
			(decrease (locale_onion) 1.0)			(not (craves_love_onion))			(craves_love_pork)
))
(:action feast__triumph__muffin__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0) (craves_triumph_muffin))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(craves_triumph_scallion)			(not (craves_triumph_muffin))
))
(:action overcome__boils__love__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_boils_scallion) (craves_love_scallion))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_boils_love)			(not (craves_boils_scallion))
))
(:action feast__triumph__popover__onion
	:parameters ()
	:precondition (and  (craves_triumph_popover)(>= (+ (*   (locale_popover) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_popover) 1.0)			(not (craves_triumph_popover))			(craves_triumph_onion)
))
(:action feast__triumph__popover__scallion
	:parameters ()
	:precondition (and  (craves_triumph_popover)(>= (+ (*   (locale_popover) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_popover) 1.0)			(not (craves_triumph_popover))			(craves_triumph_scallion)
))
(:action feast__love__scallion__muffin
	:parameters ()
	:precondition (and  (craves_love_scallion)(>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallion) 1.0)			(craves_love_muffin)			(not (craves_love_scallion))
))
(:action feast__love__scallion__guava
	:parameters ()
	:precondition (and  (craves_love_scallion)(>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallion) 1.0)			(not (craves_love_scallion))			(craves_love_guava)
))
(:action feast__love__scallion__popover
	:parameters ()
	:precondition (and  (craves_love_scallion)(>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallion) 1.0)			(craves_love_popover)			(not (craves_love_scallion))
))
(:action succumb__loneliness__satisfaction__popover
	:parameters ()
	:precondition (and  (fears_loneliness_satisfaction) (craves_satisfaction_popover))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_loneliness_popover)			(not (fears_loneliness_satisfaction))
))
(:action succumb__loneliness__satisfaction__scallion
	:parameters ()
	:precondition (and  (fears_loneliness_satisfaction) (craves_satisfaction_scallion))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_loneliness_satisfaction))			(craves_loneliness_scallion)
))
(:action succumb__loneliness__satisfaction__guava
	:parameters ()
	:precondition (and  (fears_loneliness_satisfaction) (craves_satisfaction_guava))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_loneliness_satisfaction))			(craves_loneliness_guava)
))
(:action succumb__loneliness__satisfaction__muffin
	:parameters ()
	:precondition (and  (craves_satisfaction_muffin) (fears_loneliness_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_loneliness_satisfaction))			(craves_loneliness_muffin)
))
(:action overcome__dread__satisfaction__wurst
	:parameters ()
	:precondition (and  (craves_satisfaction_wurst) (craves_dread_wurst)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_dread_satisfaction)			(not (craves_dread_wurst))
))
(:action overcome__dread__love__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_wurst) (craves_dread_wurst))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_dread_love)			(not (craves_dread_wurst))
))
(:action succumb__abrasion__triumph__popover
	:parameters ()
	:precondition (and  (craves_triumph_popover) (fears_abrasion_triumph))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_abrasion_popover)			(not (fears_abrasion_triumph))
))
(:action succumb__abrasion__triumph__scallion
	:parameters ()
	:precondition (and  (craves_triumph_scallion) (fears_abrasion_triumph))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(not (fears_abrasion_triumph))			(craves_abrasion_scallion)
))
(:action succumb__abrasion__triumph__wurst
	:parameters ()
	:precondition (and  (craves_triumph_wurst) (fears_abrasion_triumph))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(not (fears_abrasion_triumph))			(craves_abrasion_wurst)
))
(:action succumb__abrasion__triumph__guava
	:parameters ()
	:precondition (and  (craves_triumph_guava) (fears_abrasion_triumph))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_abrasion_guava)			(not (fears_abrasion_triumph))
))
(:action succumb__abrasion__triumph__muffin
	:parameters ()
	:precondition (and  (fears_abrasion_triumph) (craves_triumph_muffin))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_abrasion_muffin)			(not (fears_abrasion_triumph))
))
(:action succumb__abrasion__triumph__pork
	:parameters ()
	:precondition (and  (craves_triumph_pork) (fears_abrasion_triumph))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_abrasion_pork)			(not (fears_abrasion_triumph))
))
(:action succumb__abrasion__triumph__onion
	:parameters ()
	:precondition (and  (craves_triumph_onion) (fears_abrasion_triumph))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_abrasion_onion)			(not (fears_abrasion_triumph))
))
(:action overcome__anxiety__satisfaction__wurst
	:parameters ()
	:precondition (and  (craves_anxiety_wurst) (craves_satisfaction_wurst)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_anxiety_satisfaction)			(not (craves_anxiety_wurst))
))
(:action overcome__anxiety__love__wurst
	:parameters ()
	:precondition (and  (craves_anxiety_wurst)(>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_wurst))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_anxiety_love)			(not (craves_anxiety_wurst))
))
(:action overcome__loneliness__triumph__muffin
	:parameters ()
	:precondition (and  (craves_loneliness_muffin) (craves_triumph_muffin)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_loneliness_triumph)			(not (craves_loneliness_muffin))
))
(:action overcome__grief__satisfaction__popover
	:parameters ()
	:precondition (and  (craves_satisfaction_popover)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_grief_popover))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_grief_satisfaction)			(not (craves_grief_popover))
))
(:action overcome__loneliness__triumph__popover
	:parameters ()
	:precondition (and  (craves_loneliness_popover) (craves_triumph_popover)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(not (craves_loneliness_popover))			(fears_loneliness_triumph)
))
(:action overcome__loneliness__triumph__scallion
	:parameters ()
	:precondition (and  (craves_triumph_scallion) (craves_loneliness_scallion)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(not (craves_loneliness_scallion))			(fears_loneliness_triumph)
))
(:action overcome__grief__satisfaction__guava
	:parameters ()
	:precondition (and  (craves_grief_guava) (craves_satisfaction_guava)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_grief_satisfaction)			(not (craves_grief_guava))
))
(:action overcome__loneliness__triumph__guava
	:parameters ()
	:precondition (and  (craves_triumph_guava) (craves_loneliness_guava)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_loneliness_triumph)			(not (craves_loneliness_guava))
))
(:action overcome__grief__satisfaction__muffin
	:parameters ()
	:precondition (and  (craves_grief_muffin) (craves_satisfaction_muffin)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_grief_muffin))			(fears_grief_satisfaction)
))
(:action feast__satisfaction__wurst__guava
	:parameters ()
	:precondition (and  (craves_satisfaction_wurst)(>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(not (craves_satisfaction_wurst))			(craves_satisfaction_guava)
))
(:action feast__satisfaction__wurst__onion
	:parameters ()
	:precondition (and  (craves_satisfaction_wurst)(>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(craves_satisfaction_onion)			(not (craves_satisfaction_wurst))
))
(:action overcome__grief__love__muffin
	:parameters ()
	:precondition (and  (craves_love_muffin) (craves_grief_muffin)(>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_love) 1.0)			(not (craves_grief_muffin))			(fears_grief_love)
))
(:action overcome__grief__love__popover
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_popover) (craves_grief_popover))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_grief_love)			(not (craves_grief_popover))
))
(:action overcome__grief__love__guava
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_guava) (craves_grief_guava))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_grief_love)			(not (craves_grief_guava))
))
(:action feast__satisfaction__pork__onion
	:parameters ()
	:precondition (and  (craves_satisfaction_pork)(>= (+ (*   (locale_pork) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pork) 1.0)			(craves_satisfaction_onion)			(not (craves_satisfaction_pork))
))
(:action feast__satisfaction__pork__muffin
	:parameters ()
	:precondition (and  (craves_satisfaction_pork)(>= (+ (*   (locale_pork) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_pork) 1.0)			(not (craves_satisfaction_pork))			(craves_satisfaction_muffin)
))
(:action feast__love__guava__wurst
	:parameters ()
	:precondition (and  (craves_love_guava)(>= (+ (*   (locale_guava) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_guava) 1.0)			(craves_love_wurst)			(not (craves_love_guava))
))
(:action feast__love__guava__scallion
	:parameters ()
	:precondition (and  (craves_love_guava)(>= (+ (*   (locale_guava) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_guava) 1.0)			(craves_love_scallion)			(not (craves_love_guava))
))
(:action overcome__loneliness__satisfaction__popover
	:parameters ()
	:precondition (and  (craves_loneliness_popover) (craves_satisfaction_popover)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_loneliness_popover))			(fears_loneliness_satisfaction)
))
(:action overcome__loneliness__satisfaction__guava
	:parameters ()
	:precondition (and  (craves_loneliness_guava) (craves_satisfaction_guava)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_loneliness_satisfaction)			(not (craves_loneliness_guava))
))
(:action overcome__loneliness__satisfaction__muffin
	:parameters ()
	:precondition (and  (craves_satisfaction_muffin) (craves_loneliness_muffin)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_loneliness_satisfaction)			(not (craves_loneliness_muffin))
))
(:action feast__love__wurst__guava
	:parameters ()
	:precondition (and  (craves_love_wurst)(>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(not (craves_love_wurst))			(craves_love_guava)
))
(:action feast__love__wurst__onion
	:parameters ()
	:precondition (and  (craves_love_wurst)(>= (+ (*   (locale_wurst) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_wurst) 1.0)			(not (craves_love_wurst))			(craves_love_onion)
))
(:action overcome__loneliness__love__popover
	:parameters ()
	:precondition (and  (craves_loneliness_popover)(>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_popover))
	:effect (and 
			(decrease (harmony_love) 1.0)			(not (craves_loneliness_popover))			(fears_loneliness_love)
))
(:action overcome__loneliness__love__guava
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_guava) (craves_loneliness_guava))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_loneliness_love)			(not (craves_loneliness_guava))
))
(:action overcome__loneliness__love__muffin
	:parameters ()
	:precondition (and  (craves_love_muffin)(>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_loneliness_muffin))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_loneliness_love)			(not (craves_loneliness_muffin))
))
(:action succumb__grief__satisfaction__onion
	:parameters ()
	:precondition (and  (craves_satisfaction_onion) (fears_grief_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_grief_satisfaction))			(craves_grief_onion)
))
(:action succumb__grief__satisfaction__pork
	:parameters ()
	:precondition (and  (craves_satisfaction_pork) (fears_grief_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_grief_satisfaction))			(craves_grief_pork)
))
(:action feast__triumph__guava__wurst
	:parameters ()
	:precondition (and  (craves_triumph_guava)(>= (+ (*   (locale_guava) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_guava) 1.0)			(craves_triumph_wurst)			(not (craves_triumph_guava))
))
(:action feast__love__pork__onion
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pork) 1.0) 1.0 ) 0.0) (craves_love_pork))
	:effect (and 
			(decrease (locale_pork) 1.0)			(not (craves_love_pork))			(craves_love_onion)
))
(:action feast__love__pork__muffin
	:parameters ()
	:precondition (and (>= (+ (*   (locale_pork) 1.0) 1.0 ) 0.0) (craves_love_pork))
	:effect (and 
			(decrease (locale_pork) 1.0)			(craves_love_muffin)			(not (craves_love_pork))
))
(:action succumb__grief__satisfaction__wurst
	:parameters ()
	:precondition (and  (fears_grief_satisfaction) (craves_satisfaction_wurst))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_grief_satisfaction))			(craves_grief_wurst)
))
(:action feast__triumph__guava__scallion
	:parameters ()
	:precondition (and  (craves_triumph_guava)(>= (+ (*   (locale_guava) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_guava) 1.0)			(craves_triumph_scallion)			(not (craves_triumph_guava))
))
(:action overcome__boils__triumph__guava
	:parameters ()
	:precondition (and  (craves_triumph_guava) (craves_boils_guava)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_boils_triumph)			(not (craves_boils_guava))
))
(:action overcome__boils__triumph__muffin
	:parameters ()
	:precondition (and  (craves_boils_muffin) (craves_triumph_muffin)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_boils_triumph)			(not (craves_boils_muffin))
))
(:action overcome__boils__triumph__popover
	:parameters ()
	:precondition (and  (craves_triumph_popover) (craves_boils_popover)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_boils_triumph)			(not (craves_boils_popover))
))
(:action overcome__boils__triumph__scallion
	:parameters ()
	:precondition (and  (craves_boils_scallion) (craves_triumph_scallion)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_boils_triumph)			(not (craves_boils_scallion))
))
(:action succumb__grief__love__pork
	:parameters ()
	:precondition (and  (fears_grief_love) (craves_love_pork))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_grief_pork)			(not (fears_grief_love))
))
(:action succumb__grief__love__muffin
	:parameters ()
	:precondition (and  (craves_love_muffin) (fears_grief_love))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_grief_muffin)			(not (fears_grief_love))
))
(:action succumb__grief__love__popover
	:parameters ()
	:precondition (and  (fears_grief_love) (craves_love_popover))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_grief_popover)			(not (fears_grief_love))
))
(:action succumb__grief__love__onion
	:parameters ()
	:precondition (and  (fears_grief_love) (craves_love_onion))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_grief_onion)			(not (fears_grief_love))
))
(:action feast__satisfaction__onion__wurst
	:parameters ()
	:precondition (and  (craves_satisfaction_onion)(>= (+ (*   (locale_onion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_onion) 1.0)			(not (craves_satisfaction_onion))			(craves_satisfaction_wurst)
))
(:action succumb__grief__love__scallion
	:parameters ()
	:precondition (and  (fears_grief_love) (craves_love_scallion))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_grief_scallion)			(not (fears_grief_love))
))
(:action feast__love__muffin__onion
	:parameters ()
	:precondition (and  (craves_love_muffin)(>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(not (craves_love_muffin))			(craves_love_onion)
))
(:action feast__satisfaction__onion__popover
	:parameters ()
	:precondition (and  (craves_satisfaction_onion)(>= (+ (*   (locale_onion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_onion) 1.0)			(not (craves_satisfaction_onion))			(craves_satisfaction_popover)
))
(:action feast__love__muffin__pork
	:parameters ()
	:precondition (and  (craves_love_muffin)(>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(not (craves_love_muffin))			(craves_love_pork)
))
(:action feast__satisfaction__onion__pork
	:parameters ()
	:precondition (and  (craves_satisfaction_onion)(>= (+ (*   (locale_onion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_onion) 1.0)			(craves_satisfaction_pork)			(not (craves_satisfaction_onion))
))
(:action feast__satisfaction__onion__muffin
	:parameters ()
	:precondition (and  (craves_satisfaction_onion)(>= (+ (*   (locale_onion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_onion) 1.0)			(not (craves_satisfaction_onion))			(craves_satisfaction_muffin)
))
(:action feast__love__muffin__scallion
	:parameters ()
	:precondition (and  (craves_love_muffin)(>= (+ (*   (locale_muffin) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_muffin) 1.0)			(craves_love_scallion)			(not (craves_love_muffin))
))
(:action succumb__grief__love__guava
	:parameters ()
	:precondition (and  (fears_grief_love) (craves_love_guava))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_grief_guava)			(not (fears_grief_love))
))
(:action succumb__grief__love__wurst
	:parameters ()
	:precondition (and  (fears_grief_love) (craves_love_wurst))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_grief_wurst)			(not (fears_grief_love))
))
(:action succumb__boils__satisfaction__pork
	:parameters ()
	:precondition (and  (craves_satisfaction_pork) (fears_boils_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_boils_pork)			(not (fears_boils_satisfaction))
))
(:action succumb__boils__satisfaction__onion
	:parameters ()
	:precondition (and  (craves_satisfaction_onion) (fears_boils_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_boils_onion)			(not (fears_boils_satisfaction))
))
(:action succumb__boils__satisfaction__wurst
	:parameters ()
	:precondition (and  (craves_satisfaction_wurst) (fears_boils_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_boils_satisfaction))			(craves_boils_wurst)
))
(:action overcome__grief__triumph__guava
	:parameters ()
	:precondition (and  (craves_triumph_guava) (craves_grief_guava)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_grief_triumph)			(not (craves_grief_guava))
))
(:action overcome__boils__satisfaction__muffin
	:parameters ()
	:precondition (and  (craves_satisfaction_muffin)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_boils_muffin))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_boils_satisfaction)			(not (craves_boils_muffin))
))
(:action overcome__grief__triumph__muffin
	:parameters ()
	:precondition (and  (craves_grief_muffin) (craves_triumph_muffin)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(not (craves_grief_muffin))			(fears_grief_triumph)
))
(:action overcome__boils__satisfaction__popover
	:parameters ()
	:precondition (and  (craves_satisfaction_popover) (craves_boils_popover)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_boils_popover))			(fears_boils_satisfaction)
))
(:action overcome__grief__triumph__popover
	:parameters ()
	:precondition (and  (craves_triumph_popover) (craves_grief_popover)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_grief_triumph)			(not (craves_grief_popover))
))
(:action overcome__grief__triumph__scallion
	:parameters ()
	:precondition (and  (craves_triumph_scallion) (craves_grief_scallion)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(not (craves_grief_scallion))			(fears_grief_triumph)
))
(:action overcome__boils__satisfaction__guava
	:parameters ()
	:precondition (and  (craves_boils_guava) (craves_satisfaction_guava)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_boils_guava))			(fears_boils_satisfaction)
))
(:action succumb__boils__love__muffin
	:parameters ()
	:precondition (and  (craves_love_muffin) (fears_boils_love))
	:effect (and 
			(increase (harmony_love) 1.0)			(not (fears_boils_love))			(craves_boils_muffin)
))
(:action succumb__boils__love__guava
	:parameters ()
	:precondition (and  (craves_love_guava) (fears_boils_love))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_boils_guava)			(not (fears_boils_love))
))
(:action succumb__boils__love__onion
	:parameters ()
	:precondition (and  (fears_boils_love) (craves_love_onion))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_boils_onion)			(not (fears_boils_love))
))
(:action succumb__boils__love__pork
	:parameters ()
	:precondition (and  (fears_boils_love) (craves_love_pork))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_boils_pork)			(not (fears_boils_love))
))
(:action succumb__boils__love__scallion
	:parameters ()
	:precondition (and  (craves_love_scallion) (fears_boils_love))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_boils_scallion)			(not (fears_boils_love))
))
(:action succumb__boils__love__popover
	:parameters ()
	:precondition (and  (craves_love_popover) (fears_boils_love))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_boils_popover)			(not (fears_boils_love))
))
(:action succumb__boils__love__wurst
	:parameters ()
	:precondition (and  (craves_love_wurst) (fears_boils_love))
	:effect (and 
			(increase (harmony_love) 1.0)			(not (fears_boils_love))			(craves_boils_wurst)
))
(:action overcome__boils__love__guava
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_guava) (craves_boils_guava))
	:effect (and 
			(decrease (harmony_love) 1.0)			(not (craves_boils_guava))			(fears_boils_love)
))
(:action overcome__boils__love__muffin
	:parameters ()
	:precondition (and  (craves_love_muffin)(>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_boils_muffin))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_boils_love)			(not (craves_boils_muffin))
))
(:action overcome__boils__love__popover
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_popover) (craves_boils_popover))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_boils_love)			(not (craves_boils_popover))
))
(:action succumb__anxiety__triumph__popover
	:parameters ()
	:precondition (and  (fears_anxiety_triumph) (craves_triumph_popover))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_anxiety_popover)			(not (fears_anxiety_triumph))
))
(:action succumb__anxiety__triumph__onion
	:parameters ()
	:precondition (and  (fears_anxiety_triumph) (craves_triumph_onion))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(not (fears_anxiety_triumph))			(craves_anxiety_onion)
))
(:action succumb__anxiety__triumph__scallion
	:parameters ()
	:precondition (and  (craves_triumph_scallion) (fears_anxiety_triumph))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(not (fears_anxiety_triumph))			(craves_anxiety_scallion)
))
(:action succumb__anxiety__triumph__guava
	:parameters ()
	:precondition (and  (craves_triumph_guava) (fears_anxiety_triumph))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(not (fears_anxiety_triumph))			(craves_anxiety_guava)
))
(:action succumb__anxiety__triumph__wurst
	:parameters ()
	:precondition (and  (craves_triumph_wurst) (fears_anxiety_triumph))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_anxiety_wurst)			(not (fears_anxiety_triumph))
))
(:action succumb__anxiety__triumph__pork
	:parameters ()
	:precondition (and  (fears_anxiety_triumph) (craves_triumph_pork))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_anxiety_pork)			(not (fears_anxiety_triumph))
))
(:action succumb__anxiety__triumph__muffin
	:parameters ()
	:precondition (and  (fears_anxiety_triumph) (craves_triumph_muffin))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_anxiety_muffin)			(not (fears_anxiety_triumph))
))
(:action overcome__abrasion__satisfaction__wurst
	:parameters ()
	:precondition (and  (craves_satisfaction_wurst)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_abrasion_wurst))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_abrasion_satisfaction)			(not (craves_abrasion_wurst))
))
(:action overcome__abrasion__love__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_wurst) (craves_abrasion_wurst))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_abrasion_love)			(not (craves_abrasion_wurst))
))
(:action succumb__dread__triumph__onion
	:parameters ()
	:precondition (and  (fears_dread_triumph) (craves_triumph_onion))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(not (fears_dread_triumph))			(craves_dread_onion)
))
(:action succumb__dread__triumph__pork
	:parameters ()
	:precondition (and  (fears_dread_triumph) (craves_triumph_pork))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(not (fears_dread_triumph))			(craves_dread_pork)
))
(:action succumb__loneliness__satisfaction__onion
	:parameters ()
	:precondition (and  (craves_satisfaction_onion) (fears_loneliness_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_loneliness_satisfaction))			(craves_loneliness_onion)
))
(:action succumb__dread__triumph__scallion
	:parameters ()
	:precondition (and  (craves_triumph_scallion) (fears_dread_triumph))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_dread_scallion)			(not (fears_dread_triumph))
))
(:action succumb__dread__triumph__popover
	:parameters ()
	:precondition (and  (fears_dread_triumph) (craves_triumph_popover))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_dread_popover)			(not (fears_dread_triumph))
))
(:action succumb__dread__triumph__wurst
	:parameters ()
	:precondition (and  (craves_triumph_wurst) (fears_dread_triumph))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(not (fears_dread_triumph))			(craves_dread_wurst)
))
(:action succumb__loneliness__satisfaction__wurst
	:parameters ()
	:precondition (and  (fears_loneliness_satisfaction) (craves_satisfaction_wurst))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_loneliness_satisfaction))			(craves_loneliness_wurst)
))
(:action succumb__dread__triumph__muffin
	:parameters ()
	:precondition (and  (fears_dread_triumph) (craves_triumph_muffin))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(not (fears_dread_triumph))			(craves_dread_muffin)
))
(:action succumb__loneliness__satisfaction__pork
	:parameters ()
	:precondition (and  (craves_satisfaction_pork) (fears_loneliness_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_loneliness_satisfaction))			(craves_loneliness_pork)
))
(:action succumb__dread__triumph__guava
	:parameters ()
	:precondition (and  (craves_triumph_guava) (fears_dread_triumph))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(not (fears_dread_triumph))			(craves_dread_guava)
))
(:action feast__triumph__scallion__guava
	:parameters ()
	:precondition (and  (craves_triumph_scallion)(>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallion) 1.0)			(craves_triumph_guava)			(not (craves_triumph_scallion))
))
(:action succumb__loneliness__love__onion
	:parameters ()
	:precondition (and  (fears_loneliness_love) (craves_love_onion))
	:effect (and 
			(increase (harmony_love) 1.0)			(not (fears_loneliness_love))			(craves_loneliness_onion)
))
(:action succumb__loneliness__love__pork
	:parameters ()
	:precondition (and  (fears_loneliness_love) (craves_love_pork))
	:effect (and 
			(increase (harmony_love) 1.0)			(not (fears_loneliness_love))			(craves_loneliness_pork)
))
(:action succumb__loneliness__love__scallion
	:parameters ()
	:precondition (and  (fears_loneliness_love) (craves_love_scallion))
	:effect (and 
			(increase (harmony_love) 1.0)			(not (fears_loneliness_love))			(craves_loneliness_scallion)
))
(:action succumb__loneliness__love__popover
	:parameters ()
	:precondition (and  (fears_loneliness_love) (craves_love_popover))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_loneliness_popover)			(not (fears_loneliness_love))
))
(:action feast__triumph__scallion__popover
	:parameters ()
	:precondition (and  (craves_triumph_scallion)(>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallion) 1.0)			(not (craves_triumph_scallion))			(craves_triumph_popover)
))
(:action feast__triumph__scallion__muffin
	:parameters ()
	:precondition (and  (craves_triumph_scallion)(>= (+ (*   (locale_scallion) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (locale_scallion) 1.0)			(not (craves_triumph_scallion))			(craves_triumph_muffin)
))
(:action succumb__loneliness__love__wurst
	:parameters ()
	:precondition (and  (fears_loneliness_love) (craves_love_wurst))
	:effect (and 
			(increase (harmony_love) 1.0)			(not (fears_loneliness_love))			(craves_loneliness_wurst)
))
(:action succumb__loneliness__love__muffin
	:parameters ()
	:precondition (and  (craves_love_muffin) (fears_loneliness_love))
	:effect (and 
			(increase (harmony_love) 1.0)			(not (fears_loneliness_love))			(craves_loneliness_muffin)
))
(:action succumb__loneliness__love__guava
	:parameters ()
	:precondition (and  (fears_loneliness_love) (craves_love_guava))
	:effect (and 
			(increase (harmony_love) 1.0)			(not (fears_loneliness_love))			(craves_loneliness_guava)
))
(:action succumb__abrasion__satisfaction__wurst
	:parameters ()
	:precondition (and  (fears_abrasion_satisfaction) (craves_satisfaction_wurst))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_abrasion_satisfaction))			(craves_abrasion_wurst)
))
(:action succumb__abrasion__satisfaction__guava
	:parameters ()
	:precondition (and  (fears_abrasion_satisfaction) (craves_satisfaction_guava))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_abrasion_satisfaction))			(craves_abrasion_guava)
))
(:action succumb__abrasion__satisfaction__muffin
	:parameters ()
	:precondition (and  (craves_satisfaction_muffin) (fears_abrasion_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_abrasion_satisfaction))			(craves_abrasion_muffin)
))
(:action succumb__abrasion__satisfaction__pork
	:parameters ()
	:precondition (and  (craves_satisfaction_pork) (fears_abrasion_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_abrasion_satisfaction))			(craves_abrasion_pork)
))
(:action succumb__abrasion__satisfaction__onion
	:parameters ()
	:precondition (and  (craves_satisfaction_onion) (fears_abrasion_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_abrasion_onion)			(not (fears_abrasion_satisfaction))
))
(:action succumb__abrasion__satisfaction__popover
	:parameters ()
	:precondition (and  (fears_abrasion_satisfaction) (craves_satisfaction_popover))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_abrasion_satisfaction))			(craves_abrasion_popover)
))
(:action succumb__abrasion__satisfaction__scallion
	:parameters ()
	:precondition (and  (fears_abrasion_satisfaction) (craves_satisfaction_scallion))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_abrasion_satisfaction))			(craves_abrasion_scallion)
))
(:action overcome__anxiety__triumph__onion
	:parameters ()
	:precondition (and  (craves_triumph_onion) (craves_anxiety_onion)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_anxiety_triumph)			(not (craves_anxiety_onion))
))
(:action overcome__dread__satisfaction__popover
	:parameters ()
	:precondition (and  (craves_dread_popover) (craves_satisfaction_popover)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_dread_popover))			(fears_dread_satisfaction)
))
(:action overcome__anxiety__triumph__popover
	:parameters ()
	:precondition (and  (craves_anxiety_popover) (craves_triumph_popover)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(not (craves_anxiety_popover))			(fears_anxiety_triumph)
))
(:action overcome__dread__satisfaction__scallion
	:parameters ()
	:precondition (and  (craves_dread_scallion)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_scallion))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_dread_scallion))			(fears_dread_satisfaction)
))
(:action overcome__anxiety__triumph__scallion
	:parameters ()
	:precondition (and  (craves_triumph_scallion) (craves_anxiety_scallion)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_anxiety_triumph)			(not (craves_anxiety_scallion))
))
(:action overcome__dread__satisfaction__guava
	:parameters ()
	:precondition (and  (craves_dread_guava) (craves_satisfaction_guava)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_dread_satisfaction)			(not (craves_dread_guava))
))
(:action overcome__anxiety__triumph__guava
	:parameters ()
	:precondition (and  (craves_triumph_guava)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0) (craves_anxiety_guava))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(not (craves_anxiety_guava))			(fears_anxiety_triumph)
))
(:action overcome__dread__satisfaction__muffin
	:parameters ()
	:precondition (and  (craves_satisfaction_muffin) (craves_dread_muffin)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_dread_satisfaction)			(not (craves_dread_muffin))
))
(:action overcome__anxiety__triumph__muffin
	:parameters ()
	:precondition (and  (craves_anxiety_muffin) (craves_triumph_muffin)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(not (craves_anxiety_muffin))			(fears_anxiety_triumph)
))
(:action overcome__dread__satisfaction__pork
	:parameters ()
	:precondition (and  (craves_satisfaction_pork)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_dread_pork))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_dread_satisfaction)			(not (craves_dread_pork))
))
(:action overcome__anxiety__triumph__pork
	:parameters ()
	:precondition (and  (craves_anxiety_pork) (craves_triumph_pork)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_anxiety_triumph)			(not (craves_anxiety_pork))
))
(:action overcome__dread__satisfaction__onion
	:parameters ()
	:precondition (and  (craves_satisfaction_onion)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_dread_onion))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_dread_satisfaction)			(not (craves_dread_onion))
))
(:action succumb__abrasion__love__scallion
	:parameters ()
	:precondition (and  (fears_abrasion_love) (craves_love_scallion))
	:effect (and 
			(increase (harmony_love) 1.0)			(not (fears_abrasion_love))			(craves_abrasion_scallion)
))
(:action succumb__abrasion__love__wurst
	:parameters ()
	:precondition (and  (fears_abrasion_love) (craves_love_wurst))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_abrasion_wurst)			(not (fears_abrasion_love))
))
(:action succumb__abrasion__love__guava
	:parameters ()
	:precondition (and  (fears_abrasion_love) (craves_love_guava))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_abrasion_guava)			(not (fears_abrasion_love))
))
(:action succumb__abrasion__love__muffin
	:parameters ()
	:precondition (and  (craves_love_muffin) (fears_abrasion_love))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_abrasion_muffin)			(not (fears_abrasion_love))
))
(:action succumb__abrasion__love__pork
	:parameters ()
	:precondition (and  (fears_abrasion_love) (craves_love_pork))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_abrasion_pork)			(not (fears_abrasion_love))
))
(:action succumb__abrasion__love__onion
	:parameters ()
	:precondition (and  (fears_abrasion_love) (craves_love_onion))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_abrasion_onion)			(not (fears_abrasion_love))
))
(:action succumb__abrasion__love__popover
	:parameters ()
	:precondition (and  (fears_abrasion_love) (craves_love_popover))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_abrasion_popover)			(not (fears_abrasion_love))
))
(:action overcome__dread__love__onion
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_dread_onion) (craves_love_onion))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_dread_love)			(not (craves_dread_onion))
))
(:action overcome__dread__love__popover
	:parameters ()
	:precondition (and  (craves_dread_popover)(>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_popover))
	:effect (and 
			(decrease (harmony_love) 1.0)			(not (craves_dread_popover))			(fears_dread_love)
))
(:action overcome__dread__love__scallion
	:parameters ()
	:precondition (and  (craves_dread_scallion)(>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_scallion))
	:effect (and 
			(decrease (harmony_love) 1.0)			(not (craves_dread_scallion))			(fears_dread_love)
))
(:action overcome__dread__love__guava
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_guava) (craves_dread_guava))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_dread_love)			(not (craves_dread_guava))
))
(:action overcome__dread__love__muffin
	:parameters ()
	:precondition (and  (craves_love_muffin)(>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_dread_muffin))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_dread_love)			(not (craves_dread_muffin))
))
(:action overcome__dread__love__pork
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_dread_pork) (craves_love_pork))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_dread_love)			(not (craves_dread_pork))
))
(:action succumb__anxiety__satisfaction__scallion
	:parameters ()
	:precondition (and  (fears_anxiety_satisfaction) (craves_satisfaction_scallion))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_anxiety_scallion)			(not (fears_anxiety_satisfaction))
))
(:action succumb__anxiety__satisfaction__guava
	:parameters ()
	:precondition (and  (fears_anxiety_satisfaction) (craves_satisfaction_guava))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_anxiety_satisfaction))			(craves_anxiety_guava)
))
(:action succumb__anxiety__satisfaction__wurst
	:parameters ()
	:precondition (and  (craves_satisfaction_wurst) (fears_anxiety_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_anxiety_wurst)			(not (fears_anxiety_satisfaction))
))
(:action succumb__anxiety__satisfaction__pork
	:parameters ()
	:precondition (and  (craves_satisfaction_pork) (fears_anxiety_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_anxiety_pork)			(not (fears_anxiety_satisfaction))
))
(:action succumb__anxiety__satisfaction__muffin
	:parameters ()
	:precondition (and  (craves_satisfaction_muffin) (fears_anxiety_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_anxiety_muffin)			(not (fears_anxiety_satisfaction))
))
(:action succumb__anxiety__satisfaction__popover
	:parameters ()
	:precondition (and  (fears_anxiety_satisfaction) (craves_satisfaction_popover))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_anxiety_popover)			(not (fears_anxiety_satisfaction))
))
(:action succumb__anxiety__satisfaction__onion
	:parameters ()
	:precondition (and  (craves_satisfaction_onion) (fears_anxiety_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_anxiety_satisfaction))			(craves_anxiety_onion)
))
(:action overcome__abrasion__triumph__popover
	:parameters ()
	:precondition (and  (craves_abrasion_popover) (craves_triumph_popover)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(not (craves_abrasion_popover))			(fears_abrasion_triumph)
))
(:action overcome__anxiety__satisfaction__scallion
	:parameters ()
	:precondition (and  (craves_anxiety_scallion)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_scallion))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_anxiety_satisfaction)			(not (craves_anxiety_scallion))
))
(:action overcome__abrasion__triumph__scallion
	:parameters ()
	:precondition (and  (craves_triumph_scallion)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0) (craves_abrasion_scallion))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(not (craves_abrasion_scallion))			(fears_abrasion_triumph)
))
(:action overcome__anxiety__satisfaction__guava
	:parameters ()
	:precondition (and  (craves_satisfaction_guava)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_anxiety_guava))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_anxiety_guava))			(fears_anxiety_satisfaction)
))
(:action overcome__abrasion__triumph__guava
	:parameters ()
	:precondition (and  (craves_abrasion_guava) (craves_triumph_guava)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(not (craves_abrasion_guava))			(fears_abrasion_triumph)
))
(:action overcome__anxiety__satisfaction__muffin
	:parameters ()
	:precondition (and  (craves_anxiety_muffin) (craves_satisfaction_muffin)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_anxiety_muffin))			(fears_anxiety_satisfaction)
))
(:action overcome__abrasion__triumph__muffin
	:parameters ()
	:precondition (and  (craves_abrasion_muffin) (craves_triumph_muffin)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(not (craves_abrasion_muffin))			(fears_abrasion_triumph)
))
(:action overcome__anxiety__satisfaction__pork
	:parameters ()
	:precondition (and  (craves_satisfaction_pork) (craves_anxiety_pork)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_anxiety_pork))			(fears_anxiety_satisfaction)
))
(:action overcome__abrasion__triumph__pork
	:parameters ()
	:precondition (and  (craves_abrasion_pork) (craves_triumph_pork)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(not (craves_abrasion_pork))			(fears_abrasion_triumph)
))
(:action overcome__anxiety__satisfaction__onion
	:parameters ()
	:precondition (and  (craves_satisfaction_onion) (craves_anxiety_onion)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_anxiety_satisfaction)			(not (craves_anxiety_onion))
))
(:action overcome__abrasion__triumph__onion
	:parameters ()
	:precondition (and  (craves_abrasion_onion) (craves_triumph_onion)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(not (craves_abrasion_onion))			(fears_abrasion_triumph)
))
(:action overcome__anxiety__satisfaction__popover
	:parameters ()
	:precondition (and  (craves_anxiety_popover) (craves_satisfaction_popover)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_anxiety_popover))			(fears_anxiety_satisfaction)
))
(:action succumb__anxiety__love__scallion
	:parameters ()
	:precondition (and  (craves_love_scallion) (fears_anxiety_love))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_anxiety_scallion)			(not (fears_anxiety_love))
))
(:action succumb__anxiety__love__popover
	:parameters ()
	:precondition (and  (craves_love_popover) (fears_anxiety_love))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_anxiety_popover)			(not (fears_anxiety_love))
))
(:action succumb__anxiety__love__wurst
	:parameters ()
	:precondition (and  (craves_love_wurst) (fears_anxiety_love))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_anxiety_wurst)			(not (fears_anxiety_love))
))
(:action succumb__anxiety__love__muffin
	:parameters ()
	:precondition (and  (craves_love_muffin) (fears_anxiety_love))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_anxiety_muffin)			(not (fears_anxiety_love))
))
(:action succumb__anxiety__love__guava
	:parameters ()
	:precondition (and  (craves_love_guava) (fears_anxiety_love))
	:effect (and 
			(increase (harmony_love) 1.0)			(not (fears_anxiety_love))			(craves_anxiety_guava)
))
(:action succumb__anxiety__love__onion
	:parameters ()
	:precondition (and  (fears_anxiety_love) (craves_love_onion))
	:effect (and 
			(increase (harmony_love) 1.0)			(not (fears_anxiety_love))			(craves_anxiety_onion)
))
(:action succumb__anxiety__love__pork
	:parameters ()
	:precondition (and  (fears_anxiety_love) (craves_love_pork))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_anxiety_pork)			(not (fears_anxiety_love))
))
(:action overcome__anxiety__love__popover
	:parameters ()
	:precondition (and  (craves_anxiety_popover)(>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_popover))
	:effect (and 
			(decrease (harmony_love) 1.0)			(not (craves_anxiety_popover))			(fears_anxiety_love)
))
(:action overcome__anxiety__love__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_scallion) (craves_anxiety_scallion))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_anxiety_love)			(not (craves_anxiety_scallion))
))
(:action overcome__anxiety__love__guava
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_guava) (craves_anxiety_guava))
	:effect (and 
			(decrease (harmony_love) 1.0)			(not (craves_anxiety_guava))			(fears_anxiety_love)
))
(:action overcome__anxiety__love__muffin
	:parameters ()
	:precondition (and  (craves_love_muffin)(>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_anxiety_muffin))
	:effect (and 
			(decrease (harmony_love) 1.0)			(not (craves_anxiety_muffin))			(fears_anxiety_love)
))
(:action overcome__anxiety__love__pork
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_anxiety_pork) (craves_love_pork))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_anxiety_love)			(not (craves_anxiety_pork))
))
(:action overcome__anxiety__love__onion
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_anxiety_onion) (craves_love_onion))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_anxiety_love)			(not (craves_anxiety_onion))
))
(:action succumb__boils__triumph__guava
	:parameters ()
	:precondition (and  (craves_triumph_guava) (fears_boils_triumph))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(not (fears_boils_triumph))			(craves_boils_guava)
))
(:action succumb__boils__triumph__wurst
	:parameters ()
	:precondition (and  (craves_triumph_wurst) (fears_boils_triumph))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(not (fears_boils_triumph))			(craves_boils_wurst)
))
(:action succumb__boils__triumph__pork
	:parameters ()
	:precondition (and  (fears_boils_triumph) (craves_triumph_pork))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_boils_pork)			(not (fears_boils_triumph))
))
(:action succumb__boils__triumph__muffin
	:parameters ()
	:precondition (and  (fears_boils_triumph) (craves_triumph_muffin))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(not (fears_boils_triumph))			(craves_boils_muffin)
))
(:action succumb__boils__triumph__popover
	:parameters ()
	:precondition (and  (fears_boils_triumph) (craves_triumph_popover))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(not (fears_boils_triumph))			(craves_boils_popover)
))
(:action succumb__boils__triumph__onion
	:parameters ()
	:precondition (and  (fears_boils_triumph) (craves_triumph_onion))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_boils_onion)			(not (fears_boils_triumph))
))
(:action succumb__boils__triumph__scallion
	:parameters ()
	:precondition (and  (craves_triumph_scallion) (fears_boils_triumph))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_boils_scallion)			(not (fears_boils_triumph))
))
(:action overcome__grief__satisfaction__pork
	:parameters ()
	:precondition (and  (craves_satisfaction_pork) (craves_grief_pork)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_grief_satisfaction)			(not (craves_grief_pork))
))
(:action overcome__loneliness__triumph__pork
	:parameters ()
	:precondition (and  (craves_triumph_pork) (craves_loneliness_pork)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_loneliness_triumph)			(not (craves_loneliness_pork))
))
(:action overcome__grief__satisfaction__onion
	:parameters ()
	:precondition (and  (craves_satisfaction_onion) (craves_grief_onion)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_grief_satisfaction)			(not (craves_grief_onion))
))
(:action overcome__loneliness__triumph__onion
	:parameters ()
	:precondition (and  (craves_triumph_onion)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0) (craves_loneliness_onion))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(not (craves_loneliness_onion))			(fears_loneliness_triumph)
))
(:action overcome__grief__satisfaction__wurst
	:parameters ()
	:precondition (and  (craves_grief_wurst) (craves_satisfaction_wurst)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_grief_satisfaction)			(not (craves_grief_wurst))
))
(:action overcome__loneliness__triumph__wurst
	:parameters ()
	:precondition (and  (craves_triumph_wurst) (craves_loneliness_wurst)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_loneliness_triumph)			(not (craves_loneliness_wurst))
))
(:action overcome__grief__love__pork
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_grief_pork) (craves_love_pork))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_grief_love)			(not (craves_grief_pork))
))
(:action overcome__grief__love__onion
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_grief_onion) (craves_love_onion))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_grief_love)			(not (craves_grief_onion))
))
(:action overcome__grief__love__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_grief_wurst) (craves_love_wurst))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_grief_love)			(not (craves_grief_wurst))
))
(:action overcome__dread__triumph__pork
	:parameters ()
	:precondition (and  (craves_triumph_pork) (craves_dread_pork)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_dread_triumph)			(not (craves_dread_pork))
))
(:action overcome__loneliness__satisfaction__onion
	:parameters ()
	:precondition (and  (craves_satisfaction_onion)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_loneliness_onion))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_loneliness_onion))			(fears_loneliness_satisfaction)
))
(:action overcome__dread__triumph__onion
	:parameters ()
	:precondition (and  (craves_triumph_onion) (craves_dread_onion)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_dread_triumph)			(not (craves_dread_onion))
))
(:action overcome__dread__triumph__popover
	:parameters ()
	:precondition (and  (craves_dread_popover) (craves_triumph_popover)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(not (craves_dread_popover))			(fears_dread_triumph)
))
(:action overcome__dread__triumph__scallion
	:parameters ()
	:precondition (and  (craves_dread_scallion) (craves_triumph_scallion)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(not (craves_dread_scallion))			(fears_dread_triumph)
))
(:action overcome__loneliness__satisfaction__wurst
	:parameters ()
	:precondition (and  (craves_loneliness_wurst) (craves_satisfaction_wurst)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_loneliness_satisfaction)			(not (craves_loneliness_wurst))
))
(:action overcome__dread__triumph__guava
	:parameters ()
	:precondition (and  (craves_triumph_guava) (craves_dread_guava)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_dread_triumph)			(not (craves_dread_guava))
))
(:action overcome__dread__triumph__muffin
	:parameters ()
	:precondition (and  (craves_dread_muffin) (craves_triumph_muffin)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_dread_triumph)			(not (craves_dread_muffin))
))
(:action overcome__loneliness__satisfaction__pork
	:parameters ()
	:precondition (and  (craves_satisfaction_pork)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_loneliness_pork))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_loneliness_satisfaction)			(not (craves_loneliness_pork))
))
(:action overcome__loneliness__love__pork
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_loneliness_pork) (craves_love_pork))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_loneliness_love)			(not (craves_loneliness_pork))
))
(:action overcome__loneliness__love__onion
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_loneliness_onion) (craves_love_onion))
	:effect (and 
			(decrease (harmony_love) 1.0)			(not (craves_loneliness_onion))			(fears_loneliness_love)
))
(:action overcome__loneliness__love__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_wurst) (craves_loneliness_wurst))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_loneliness_love)			(not (craves_loneliness_wurst))
))
(:action succumb__loneliness__triumph__pork
	:parameters ()
	:precondition (and  (fears_loneliness_triumph) (craves_triumph_pork))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(not (fears_loneliness_triumph))			(craves_loneliness_pork)
))
(:action succumb__loneliness__triumph__muffin
	:parameters ()
	:precondition (and  (fears_loneliness_triumph) (craves_triumph_muffin))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(not (fears_loneliness_triumph))			(craves_loneliness_muffin)
))
(:action succumb__loneliness__triumph__popover
	:parameters ()
	:precondition (and  (fears_loneliness_triumph) (craves_triumph_popover))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_loneliness_popover)			(not (fears_loneliness_triumph))
))
(:action succumb__loneliness__triumph__onion
	:parameters ()
	:precondition (and  (fears_loneliness_triumph) (craves_triumph_onion))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(not (fears_loneliness_triumph))			(craves_loneliness_onion)
))
(:action succumb__loneliness__triumph__scallion
	:parameters ()
	:precondition (and  (craves_triumph_scallion) (fears_loneliness_triumph))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(not (fears_loneliness_triumph))			(craves_loneliness_scallion)
))
(:action succumb__loneliness__triumph__guava
	:parameters ()
	:precondition (and  (craves_triumph_guava) (fears_loneliness_triumph))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(not (fears_loneliness_triumph))			(craves_loneliness_guava)
))
(:action succumb__loneliness__triumph__wurst
	:parameters ()
	:precondition (and  (craves_triumph_wurst) (fears_loneliness_triumph))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(not (fears_loneliness_triumph))			(craves_loneliness_wurst)
))
(:action overcome__boils__triumph__wurst
	:parameters ()
	:precondition (and  (craves_triumph_wurst) (craves_boils_wurst)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_boils_triumph)			(not (craves_boils_wurst))
))
(:action overcome__boils__triumph__pork
	:parameters ()
	:precondition (and  (craves_boils_pork) (craves_triumph_pork)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(not (craves_boils_pork))			(fears_boils_triumph)
))
(:action overcome__boils__triumph__onion
	:parameters ()
	:precondition (and  (craves_boils_onion) (craves_triumph_onion)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_boils_triumph)			(not (craves_boils_onion))
))
(:action succumb__grief__triumph__muffin
	:parameters ()
	:precondition (and  (fears_grief_triumph) (craves_triumph_muffin))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_grief_muffin)			(not (fears_grief_triumph))
))
(:action succumb__grief__triumph__guava
	:parameters ()
	:precondition (and  (fears_grief_triumph) (craves_triumph_guava))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_grief_guava)			(not (fears_grief_triumph))
))
(:action succumb__grief__triumph__onion
	:parameters ()
	:precondition (and  (fears_grief_triumph) (craves_triumph_onion))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_grief_onion)			(not (fears_grief_triumph))
))
(:action succumb__grief__triumph__pork
	:parameters ()
	:precondition (and  (fears_grief_triumph) (craves_triumph_pork))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_grief_pork)			(not (fears_grief_triumph))
))
(:action succumb__grief__triumph__scallion
	:parameters ()
	:precondition (and  (fears_grief_triumph) (craves_triumph_scallion))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_grief_scallion)			(not (fears_grief_triumph))
))
(:action succumb__grief__triumph__popover
	:parameters ()
	:precondition (and  (fears_grief_triumph) (craves_triumph_popover))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_grief_popover)			(not (fears_grief_triumph))
))
(:action succumb__grief__triumph__wurst
	:parameters ()
	:precondition (and  (craves_triumph_wurst) (fears_grief_triumph))
	:effect (and 
			(increase (harmony_triumph) 1.0)			(craves_grief_wurst)			(not (fears_grief_triumph))
))
(:action overcome__boils__satisfaction__pork
	:parameters ()
	:precondition (and  (craves_satisfaction_pork) (craves_boils_pork)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_boils_pork))			(fears_boils_satisfaction)
))
(:action overcome__grief__triumph__pork
	:parameters ()
	:precondition (and  (craves_grief_pork) (craves_triumph_pork)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_grief_triumph)			(not (craves_grief_pork))
))
(:action overcome__boils__satisfaction__onion
	:parameters ()
	:precondition (and  (craves_satisfaction_onion) (craves_boils_onion)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_boils_onion))			(fears_boils_satisfaction)
))
(:action overcome__grief__triumph__onion
	:parameters ()
	:precondition (and  (craves_grief_onion) (craves_triumph_onion)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_grief_triumph)			(not (craves_grief_onion))
))
(:action overcome__boils__satisfaction__wurst
	:parameters ()
	:precondition (and  (craves_satisfaction_wurst)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_boils_wurst))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_boils_satisfaction)			(not (craves_boils_wurst))
))
(:action overcome__grief__triumph__wurst
	:parameters ()
	:precondition (and  (craves_triumph_wurst) (craves_grief_wurst)(>= (+ (*   (harmony_triumph) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_triumph) 1.0)			(fears_grief_triumph)			(not (craves_grief_wurst))
))
(:action overcome__boils__love__pork
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_boils_pork) (craves_love_pork))
	:effect (and 
			(decrease (harmony_love) 1.0)			(not (craves_boils_pork))			(fears_boils_love)
))
(:action overcome__boils__love__onion
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_boils_onion) (craves_love_onion))
	:effect (and 
			(decrease (harmony_love) 1.0)			(not (craves_boils_onion))			(fears_boils_love)
))
(:action overcome__boils__love__wurst
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_wurst) (craves_boils_wurst))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_boils_love)			(not (craves_boils_wurst))
))
(:action succumb__dread__satisfaction__scallion
	:parameters ()
	:precondition (and  (fears_dread_satisfaction) (craves_satisfaction_scallion))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_dread_scallion)			(not (fears_dread_satisfaction))
))
(:action succumb__dread__satisfaction__popover
	:parameters ()
	:precondition (and  (fears_dread_satisfaction) (craves_satisfaction_popover))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(craves_dread_popover)			(not (fears_dread_satisfaction))
))
(:action succumb__dread__satisfaction__wurst
	:parameters ()
	:precondition (and  (fears_dread_satisfaction) (craves_satisfaction_wurst))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_dread_satisfaction))			(craves_dread_wurst)
))
(:action succumb__dread__satisfaction__muffin
	:parameters ()
	:precondition (and  (craves_satisfaction_muffin) (fears_dread_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_dread_satisfaction))			(craves_dread_muffin)
))
(:action succumb__dread__satisfaction__guava
	:parameters ()
	:precondition (and  (fears_dread_satisfaction) (craves_satisfaction_guava))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_dread_satisfaction))			(craves_dread_guava)
))
(:action succumb__dread__satisfaction__onion
	:parameters ()
	:precondition (and  (craves_satisfaction_onion) (fears_dread_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_dread_satisfaction))			(craves_dread_onion)
))
(:action succumb__dread__satisfaction__pork
	:parameters ()
	:precondition (and  (craves_satisfaction_pork) (fears_dread_satisfaction))
	:effect (and 
			(increase (harmony_satisfaction) 1.0)			(not (fears_dread_satisfaction))			(craves_dread_pork)
))
(:action overcome__abrasion__satisfaction__guava
	:parameters ()
	:precondition (and  (craves_abrasion_guava) (craves_satisfaction_guava)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_abrasion_guava))			(fears_abrasion_satisfaction)
))
(:action overcome__abrasion__satisfaction__muffin
	:parameters ()
	:precondition (and  (craves_satisfaction_muffin) (craves_abrasion_muffin)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_abrasion_satisfaction)			(not (craves_abrasion_muffin))
))
(:action overcome__abrasion__satisfaction__pork
	:parameters ()
	:precondition (and  (craves_satisfaction_pork) (craves_abrasion_pork)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_abrasion_satisfaction)			(not (craves_abrasion_pork))
))
(:action overcome__abrasion__satisfaction__onion
	:parameters ()
	:precondition (and  (craves_abrasion_onion) (craves_satisfaction_onion)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_abrasion_onion))			(fears_abrasion_satisfaction)
))
(:action overcome__abrasion__satisfaction__popover
	:parameters ()
	:precondition (and  (craves_abrasion_popover) (craves_satisfaction_popover)(>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(fears_abrasion_satisfaction)			(not (craves_abrasion_popover))
))
(:action overcome__abrasion__satisfaction__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_satisfaction) 1.0) 1.0 ) 0.0) (craves_satisfaction_scallion) (craves_abrasion_scallion))
	:effect (and 
			(decrease (harmony_satisfaction) 1.0)			(not (craves_abrasion_scallion))			(fears_abrasion_satisfaction)
))
(:action succumb__dread__love__popover
	:parameters ()
	:precondition (and  (fears_dread_love) (craves_love_popover))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_dread_popover)			(not (fears_dread_love))
))
(:action succumb__dread__love__onion
	:parameters ()
	:precondition (and  (fears_dread_love) (craves_love_onion))
	:effect (and 
			(increase (harmony_love) 1.0)			(not (fears_dread_love))			(craves_dread_onion)
))
(:action succumb__dread__love__scallion
	:parameters ()
	:precondition (and  (fears_dread_love) (craves_love_scallion))
	:effect (and 
			(increase (harmony_love) 1.0)			(craves_dread_scallion)			(not (fears_dread_love))
))
(:action succumb__dread__love__guava
	:parameters ()
	:precondition (and  (fears_dread_love) (craves_love_guava))
	:effect (and 
			(increase (harmony_love) 1.0)			(not (fears_dread_love))			(craves_dread_guava)
))
(:action succumb__dread__love__wurst
	:parameters ()
	:precondition (and  (fears_dread_love) (craves_love_wurst))
	:effect (and 
			(increase (harmony_love) 1.0)			(not (fears_dread_love))			(craves_dread_wurst)
))
(:action succumb__dread__love__pork
	:parameters ()
	:precondition (and  (fears_dread_love) (craves_love_pork))
	:effect (and 
			(increase (harmony_love) 1.0)			(not (fears_dread_love))			(craves_dread_pork)
))
(:action succumb__dread__love__muffin
	:parameters ()
	:precondition (and  (craves_love_muffin) (fears_dread_love))
	:effect (and 
			(increase (harmony_love) 1.0)			(not (fears_dread_love))			(craves_dread_muffin)
))
(:action overcome__abrasion__love__scallion
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_scallion) (craves_abrasion_scallion))
	:effect (and 
			(decrease (harmony_love) 1.0)			(not (craves_abrasion_scallion))			(fears_abrasion_love)
))
(:action overcome__abrasion__love__guava
	:parameters ()
	:precondition (and  (craves_abrasion_guava)(>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_guava))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_abrasion_love)			(not (craves_abrasion_guava))
))
(:action overcome__abrasion__love__muffin
	:parameters ()
	:precondition (and  (craves_love_muffin)(>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_abrasion_muffin))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_abrasion_love)			(not (craves_abrasion_muffin))
))
(:action overcome__abrasion__love__pork
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_abrasion_pork) (craves_love_pork))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_abrasion_love)			(not (craves_abrasion_pork))
))
(:action overcome__abrasion__love__onion
	:parameters ()
	:precondition (and  (craves_abrasion_onion)(>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_onion))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_abrasion_love)			(not (craves_abrasion_onion))
))
(:action overcome__abrasion__love__popover
	:parameters ()
	:precondition (and (>= (+ (*   (harmony_love) 1.0) 1.0 ) 0.0) (craves_love_popover) (craves_abrasion_popover))
	:effect (and 
			(decrease (harmony_love) 1.0)			(fears_abrasion_love)			(not (craves_abrasion_popover))
))


)