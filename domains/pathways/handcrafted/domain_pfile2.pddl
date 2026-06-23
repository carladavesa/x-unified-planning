(define (domain PathwaysMetric)
(:predicates  (chosen_E2F4DP12p1)
 (chosen_CTAK1)
 (chosen_cks1)
 (possible_Wee1)
 (chosen_Chk1)
 (possible_SP1)
 (possible_RPA)
 (chosen_cdk46p3cycD)
 (possible_pRbp2)
 (possible_pRb)
 (chosen_cdk46p1)
 (possible_p16)
 (possible_p130)
 (chosen_cdk2p2cycB)
 (possible_HDAC1)
 (possible_gP)
 (chosen_cdk1p1p2)
 (possible_E2F4DP12p1)
 (possible_CTAK1)
 (possible_cks1)
 (possible_Chk1)
 (possible_cdk46p3cycD)
 (possible_cdk46p1)
 (possible_cdk2p2cycB)
 (possible_cdk1p1p2)
 (possible_cdc25C)
 (possible_AP2)
 (chosen_cdc25C)
 (chosen_AP2)
 (chosen_Wee1)
 (chosen_SP1)
 (chosen_RPA)
 (chosen_pRbp2)
 (chosen_pRb)
 (chosen_p16)
 (chosen_p130)
 (chosen_HDAC1)
 (chosen_gP)
)
(:functions   (available_Wee1)
  (available_SP1)
  (available_RPA)
  (available_pRbp2)
  (available_pRb)
  (available_p16)
  (available_p130)
  (available_HDAC1)
  (available_gP)
  (available_E2F4DP12p1)
  (available_CTAK1)
  (available_cks1)
  (available_Chk1)
  (available_cdk46p3cycD)
  (available_cdk46p1)
  (available_cdk2p2cycB)
  (available_cdk1p1p2)
  (available_cdc25C)
  (available_AP2)
  (available_cdk1p1p2cks1)
  (available_cdk2p1p2cycB)
  (available_cMycAP2)
  (available_HDAC1p107E2F4DP12p1)
  (available_HDAC1p130E2F4DP12p1)
  (available_cdc25Cp2)
  (available_p107E2F4DP12p1)
  (available_p130E2F4DP12p1)
  (available_p16cdk46p1)
  (available_cdk46p1cycDp1)
  (available_cdk46p1cycD)
  (available_pRbAP2)
  (available_pRbE2F4DP12p1)
  (available_pRbp1AP2)
  (available_pRbp1E2F4DP12p1)
  (available_pRbp1)
  (available_pRbp1p2AP2)
  (available_pRbp2AP2)
  (available_pRbp1p2)
  (available_RPAcycA)
  (available_cMyc)
  (available_cycA)
  (available_cycD)
  (available_cycDp1)
  (available_cycE)
  (available_cycEp1)
  (available_p19ARF)
  (available_pol)
  (available_SP1gP)
  (available_SP1p107gP)
  (available_SP1p107p1gP)
  (available_SP1p107p1)
  (available_p107p1)
  (available_SP1p107)
  (available_p107)
  (needforcatalyzedassociation_cdc25C_Chk1_cdc25Cp2)
  (needforcatalyzedassociation_Chk1_cdc25C_cdc25Cp2)
  (prodbycatalyzedassociation_cdc25C_Chk1_cdc25Cp2)
  (needforcatalyzedassociation_cdc25C_CTAK1_cdc25Cp2)
  (needforcatalyzedassociation_CTAK1_cdc25C_cdc25Cp2)
  (prodbycatalyzedassociation_cdc25C_CTAK1_cdc25Cp2)
  (needforassociation_cdk1p1p2_cks1_cdk1p1p2cks1)
  (needforassociation_cks1_cdk1p1p2_cdk1p1p2cks1)
  (prodbyassociation_cdk1p1p2_cks1_cdk1p1p2cks1)
  (needforcatalyzedassociation_cdk2p2cycB_Wee1_cdk2p1p2cycB)
  (needforcatalyzedassociation_Wee1_cdk2p2cycB_cdk2p1p2cycB)
  (prodbycatalyzedassociation_cdk2p2cycB_Wee1_cdk2p1p2cycB)
  (needforassociation_cdk46p1_cycD_cdk46p1cycD)
  (needforassociation_cycD_cdk46p1_cdk46p1cycD)
  (prodbyassociation_cdk46p1_cycD_cdk46p1cycD)
  (needforassociation_cdk46p1_cycDp1_cdk46p1cycDp1)
  (needforassociation_cycDp1_cdk46p1_cdk46p1cycDp1)
  (prodbyassociation_cdk46p1_cycDp1_cdk46p1cycDp1)
  (needforassociation_cMyc_AP2_cMycAP2)
  (needforassociation_AP2_cMyc_cMycAP2)
  (prodbyassociation_cMyc_AP2_cMycAP2)
  (needforassociation_HDAC1_p107E2F4DP12p1_HDAC1p107E2F4DP12p1)
  (needforassociation_p107E2F4DP12p1_HDAC1_HDAC1p107E2F4DP12p1)
  (prodbyassociation_HDAC1_p107E2F4DP12p1_HDAC1p107E2F4DP12p1)
  (needforassociation_HDAC1_p130E2F4DP12p1_HDAC1p130E2F4DP12p1)
  (needforassociation_p130E2F4DP12p1_HDAC1_HDAC1p130E2F4DP12p1)
  (prodbyassociation_HDAC1_p130E2F4DP12p1_HDAC1p130E2F4DP12p1)
  (needforassociation_p107_E2F4DP12p1_p107E2F4DP12p1)
  (needforassociation_E2F4DP12p1_p107_p107E2F4DP12p1)
  (prodbyassociation_p107_E2F4DP12p1_p107E2F4DP12p1)
  (needforassociation_p130_E2F4DP12p1_p130E2F4DP12p1)
  (needforassociation_E2F4DP12p1_p130_p130E2F4DP12p1)
  (prodbyassociation_p130_E2F4DP12p1_p130E2F4DP12p1)
  (needforassociation_p16_cdk46p1_p16cdk46p1)
  (needforassociation_cdk46p1_p16_p16cdk46p1)
  (prodbyassociation_p16_cdk46p1_p16cdk46p1)
  (needforassociation_pRb_AP2_pRbAP2)
  (needforassociation_AP2_pRb_pRbAP2)
  (prodbyassociation_pRb_AP2_pRbAP2)
  (needforcatalyzedassociation_pRb_cdk46p3cycD_pRbp1)
  (needforcatalyzedassociation_cdk46p3cycD_pRb_pRbp1)
  (prodbycatalyzedassociation_pRb_cdk46p3cycD_pRbp1)
  (needforassociation_pRb_E2F4DP12p1_pRbE2F4DP12p1)
  (needforassociation_E2F4DP12p1_pRb_pRbE2F4DP12p1)
  (prodbyassociation_pRb_E2F4DP12p1_pRbE2F4DP12p1)
  (needforassociation_pRbp1_AP2_pRbp1AP2)
  (needforassociation_AP2_pRbp1_pRbp1AP2)
  (prodbyassociation_pRbp1_AP2_pRbp1AP2)
  (needforassociation_pRbp1_E2F4DP12p1_pRbp1E2F4DP12p1)
  (needforassociation_E2F4DP12p1_pRbp1_pRbp1E2F4DP12p1)
  (prodbyassociation_pRbp1_E2F4DP12p1_pRbp1E2F4DP12p1)
  (needforassociation_pRbp1p2_AP2_pRbp1p2AP2)
  (needforassociation_AP2_pRbp1p2_pRbp1p2AP2)
  (prodbyassociation_pRbp1p2_AP2_pRbp1p2AP2)
  (needforassociation_pRbp2_AP2_pRbp2AP2)
  (needforassociation_AP2_pRbp2_pRbp2AP2)
  (prodbyassociation_pRbp2_AP2_pRbp2AP2)
  (needforcatalyzedassociation_pRbp2_cdk46p3cycD_pRbp1p2)
  (needforcatalyzedassociation_cdk46p3cycD_pRbp2_pRbp1p2)
  (prodbycatalyzedassociation_pRbp2_cdk46p3cycD_pRbp1p2)
  (needforassociation_RPA_cycA_RPAcycA)
  (needforassociation_cycA_RPA_RPAcycA)
  (prodbyassociation_RPA_cycA_RPAcycA)
  (needforsynthesis_SP1gP_cMyc)
  (prodbysynthesis_SP1gP_cMyc)
  (needforsynthesis_SP1gP_cycA)
  (prodbysynthesis_SP1gP_cycA)
  (needforsynthesis_SP1gP_cycD)
  (prodbysynthesis_SP1gP_cycD)
  (needforsynthesis_SP1gP_cycDp1)
  (prodbysynthesis_SP1gP_cycDp1)
  (needforsynthesis_SP1gP_cycE)
  (prodbysynthesis_SP1gP_cycE)
  (needforsynthesis_SP1gP_cycEp1)
  (prodbysynthesis_SP1gP_cycEp1)
  (needforsynthesis_SP1gP_p107)
  (prodbysynthesis_SP1gP_p107)
  (needforsynthesis_SP1gP_p107p1)
  (prodbysynthesis_SP1gP_p107p1)
  (needforsynthesis_SP1gP_p19ARF)
  (prodbysynthesis_SP1gP_p19ARF)
  (needforsynthesis_SP1gP_pol)
  (prodbysynthesis_SP1gP_pol)
  (needforassociation_SP1_gP_SP1gP)
  (needforassociation_gP_SP1_SP1gP)
  (prodbyassociation_SP1_gP_SP1gP)
  (needforassociation_SP1p107_gP_SP1p107gP)
  (needforassociation_gP_SP1p107_SP1p107gP)
  (prodbyassociation_SP1p107_gP_SP1p107gP)
  (needforassociation_SP1p107p1_gP_SP1p107p1gP)
  (needforassociation_gP_SP1p107p1_SP1p107p1gP)
  (prodbyassociation_SP1p107p1_gP_SP1p107p1gP)
  (needforassociation_SP1_p107p1_SP1p107p1)
  (needforassociation_p107p1_SP1_SP1p107p1)
  (prodbyassociation_SP1_p107p1_SP1p107p1)
  (needforassociation_SP1_p107_SP1p107)
  (needforassociation_p107_SP1_SP1p107)
  (prodbyassociation_SP1_p107_SP1p107)
  (numsubs)
)
(:action choose__AP2
	:parameters ()
	:precondition (and  (possible_AP2))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_AP2)			(not (possible_AP2))
))
(:action choose__cdc25C
	:parameters ()
	:precondition (and  (possible_cdc25C))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cdc25C)			(not (possible_cdc25C))
))
(:action choose__Wee1
	:parameters ()
	:precondition (and  (possible_Wee1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_Wee1)			(not (possible_Wee1))
))
(:action choose__cdk1p1p2
	:parameters ()
	:precondition (and  (possible_cdk1p1p2))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cdk1p1p2)			(not (possible_cdk1p1p2))
))
(:action choose__cdk2p2cycB
	:parameters ()
	:precondition (and  (possible_cdk2p2cycB))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cdk2p2cycB)			(not (possible_cdk2p2cycB))
))
(:action choose__cdk46p1
	:parameters ()
	:precondition (and  (possible_cdk46p1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cdk46p1)			(not (possible_cdk46p1))
))
(:action choose__cdk46p3cycD
	:parameters ()
	:precondition (and  (possible_cdk46p3cycD))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cdk46p3cycD)			(not (possible_cdk46p3cycD))
))
(:action choose__Chk1
	:parameters ()
	:precondition (and  (possible_Chk1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_Chk1)			(not (possible_Chk1))
))
(:action choose__cks1
	:parameters ()
	:precondition (and  (possible_cks1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cks1)			(not (possible_cks1))
))
(:action choose__CTAK1
	:parameters ()
	:precondition (and  (possible_CTAK1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_CTAK1)			(not (possible_CTAK1))
))
(:action choose__E2F4DP12p1
	:parameters ()
	:precondition (and  (possible_E2F4DP12p1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F4DP12p1)			(not (possible_E2F4DP12p1))
))
(:action choose__gP
	:parameters ()
	:precondition (and  (possible_gP))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_gP)			(not (possible_gP))
))
(:action choose__HDAC1
	:parameters ()
	:precondition (and  (possible_HDAC1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_HDAC1)			(not (possible_HDAC1))
))
(:action choose__p130
	:parameters ()
	:precondition (and  (possible_p130))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p130)			(not (possible_p130))
))
(:action choose__p16
	:parameters ()
	:precondition (and  (possible_p16))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p16)			(not (possible_p16))
))
(:action choose__pRb
	:parameters ()
	:precondition (and  (possible_pRb))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_pRb)			(not (possible_pRb))
))
(:action choose__pRbp2
	:parameters ()
	:precondition (and  (possible_pRbp2))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_pRbp2)			(not (possible_pRbp2))
))
(:action choose__RPA
	:parameters ()
	:precondition (and  (possible_RPA))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_RPA)			(not (possible_RPA))
))
(:action choose__SP1
	:parameters ()
	:precondition (and  (possible_SP1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_SP1)			(not (possible_SP1))
))
(:action initialize__Wee1
	:parameters ()
	:precondition (and  (chosen_Wee1))
	:effect (and 
			(increase (available_Wee1) 1.0)
))
(:action initialize__SP1
	:parameters ()
	:precondition (and  (chosen_SP1))
	:effect (and 
			(increase (available_SP1) 1.0)
))
(:action initialize__RPA
	:parameters ()
	:precondition (and  (chosen_RPA))
	:effect (and 
			(increase (available_RPA) 1.0)
))
(:action initialize__pRbp2
	:parameters ()
	:precondition (and  (chosen_pRbp2))
	:effect (and 
			(increase (available_pRbp2) 1.0)
))
(:action initialize__pRb
	:parameters ()
	:precondition (and  (chosen_pRb))
	:effect (and 
			(increase (available_pRb) 1.0)
))
(:action initialize__p16
	:parameters ()
	:precondition (and  (chosen_p16))
	:effect (and 
			(increase (available_p16) 1.0)
))
(:action initialize__p130
	:parameters ()
	:precondition (and  (chosen_p130))
	:effect (and 
			(increase (available_p130) 1.0)
))
(:action initialize__HDAC1
	:parameters ()
	:precondition (and  (chosen_HDAC1))
	:effect (and 
			(increase (available_HDAC1) 1.0)
))
(:action initialize__gP
	:parameters ()
	:precondition (and  (chosen_gP))
	:effect (and 
			(increase (available_gP) 1.0)
))
(:action initialize__E2F4DP12p1
	:parameters ()
	:precondition (and  (chosen_E2F4DP12p1))
	:effect (and 
			(increase (available_E2F4DP12p1) 1.0)
))
(:action initialize__CTAK1
	:parameters ()
	:precondition (and  (chosen_CTAK1))
	:effect (and 
			(increase (available_CTAK1) 1.0)
))
(:action initialize__cks1
	:parameters ()
	:precondition (and  (chosen_cks1))
	:effect (and 
			(increase (available_cks1) 1.0)
))
(:action initialize__Chk1
	:parameters ()
	:precondition (and  (chosen_Chk1))
	:effect (and 
			(increase (available_Chk1) 1.0)
))
(:action initialize__cdk46p3cycD
	:parameters ()
	:precondition (and  (chosen_cdk46p3cycD))
	:effect (and 
			(increase (available_cdk46p3cycD) 1.0)
))
(:action initialize__cdk46p1
	:parameters ()
	:precondition (and  (chosen_cdk46p1))
	:effect (and 
			(increase (available_cdk46p1) 1.0)
))
(:action initialize__cdk2p2cycB
	:parameters ()
	:precondition (and  (chosen_cdk2p2cycB))
	:effect (and 
			(increase (available_cdk2p2cycB) 1.0)
))
(:action initialize__cdk1p1p2
	:parameters ()
	:precondition (and  (chosen_cdk1p1p2))
	:effect (and 
			(increase (available_cdk1p1p2) 1.0)
))
(:action initialize__cdc25C
	:parameters ()
	:precondition (and  (chosen_cdc25C))
	:effect (and 
			(increase (available_cdc25C) 1.0)
))
(:action initialize__AP2
	:parameters ()
	:precondition (and  (chosen_AP2))
	:effect (and 
			(increase (available_AP2) 1.0)
))
(:action associatewithcatalyze__pRbp2__cdk46p3cycD__pRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp2) 1.0)			(increase (available_pRbp1p2) 1.0)
))
(:action associatewithcatalyze__cdk2p2cycB__Wee1__cdk2p1p2cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p2cycB) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Wee1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1p2cycB) 1.0)			(decrease (available_cdk2p2cycB) 1.0)
))
(:action associate__p130__E2F4DP12p1__p130E2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_E2F4DP12p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p130) 2.0)			(increase (available_p130E2F4DP12p1) 1.0)			(decrease (available_E2F4DP12p1) 3.0)
))
(:action associate__pRb__E2F4DP12p1__pRbE2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F4DP12p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pRbE2F4DP12p1) 3.0)			(decrease (available_pRb) 1.0)			(decrease (available_E2F4DP12p1) 3.0)
))
(:action associatewithcatalyze__cdc25C__CTAK1__cdc25Cp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25C) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_CTAK1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25C) 3.0)			(increase (available_cdc25Cp2) 3.0)
))
(:action associate__p16__cdk46p1__p16cdk46p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p16) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p16cdk46p1) 1.0)			(decrease (available_cdk46p1) 1.0)			(decrease (available_p16) 1.0)
))
(:action associate__pRbp2__AP2__pRbp2AP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp2) 2.0)			(increase (available_pRbp2AP2) 4.0)			(decrease (available_AP2) 2.0)
))
(:action associatewithcatalyze__pRb__cdk46p3cycD__pRbp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRb) 1.0)			(increase (available_pRbp1) 2.0)
))
(:action associate__cdk1p1p2__cks1__cdk1p1p2cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 3.0)			(increase (available_cdk1p1p2cks1) 2.0)			(decrease (available_cdk1p1p2) 3.0)
))
(:action associatewithcatalyze__cdc25C__Chk1__cdc25Cp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25C) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Chk1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25Cp2) 4.0)			(decrease (available_cdc25C) 2.0)
))
(:action associate__SP1__gP__SP1gP
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gP) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_SP1) 3.0)			(increase (available_SP1gP) 3.0)			(decrease (available_gP) 4.0)
))
(:action associate__pRb__AP2__pRbAP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRb) 4.0)			(increase (available_pRbAP2) 3.0)			(decrease (available_AP2) 4.0)
))
(:action associate__pRbp1p2__AP2__pRbp1p2AP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1p2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1p2AP2) 1.0)			(decrease (available_pRbp1p2) 4.0)			(decrease (available_AP2) 4.0)
))
(:action associate__HDAC1__p130E2F4DP12p1__HDAC1p130E2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_p130E2F4DP12p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1p130E2F4DP12p1) 4.0)			(decrease (available_p130E2F4DP12p1) 4.0)			(decrease (available_HDAC1) 3.0)
))
(:action associate__pRbp1__AP2__pRbp1AP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1AP2) 4.0)			(decrease (available_pRbp1) 2.0)			(decrease (available_AP2) 2.0)
))
(:action synthesize__SP1gP__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 2.0)
))
(:action synthesize__SP1gP__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 2.0)
))
(:action synthesize__SP1gP__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 3.0)
))
(:action synthesize__SP1gP__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 1.0)
))
(:action synthesize__SP1gP__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 1.0)
))
(:action synthesize__SP1gP__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 1.0)
))
(:action synthesize__SP1gP__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 3.0)
))
(:action synthesize__SP1gP__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 2.0)
))
(:action synthesize__SP1gP__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 2.0)
))
(:action associate__pRbp1__E2F4DP12p1__pRbp1E2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F4DP12p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F4DP12p1) 2.0)			(increase (available_pRbp1E2F4DP12p1) 3.0)			(decrease (available_pRbp1) 1.0)
))
(:action synthesize__SP1gP__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 3.0)
))
(:action associate__cdk46p1__cycDp1__cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1) 3.0)			(decrease (available_cycDp1) 2.0)			(increase (available_cdk46p1cycDp1) 4.0)
))
(:action associate__cdk46p1__cycD__cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cycD) 2.0)			(increase (available_cdk46p1cycD) 1.0)			(decrease (available_cdk46p1) 4.0)
))
(:action associate__SP1__p107p1__SP1p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_p107p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_SP1p107p1) 3.0)			(decrease (available_p107p1) 3.0)			(decrease (available_SP1) 4.0)
))
(:action associate__p107__E2F4DP12p1__p107E2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p107) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F4DP12p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F4DP12p1) 2.0)			(decrease (available_p107) 3.0)			(increase (available_p107E2F4DP12p1) 2.0)
))
(:action associate__cMyc__AP2__cMycAP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cMyc) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cMyc) 1.0)			(increase (available_cMycAP2) 3.0)			(decrease (available_AP2) 4.0)
))
(:action associate__RPA__cycA__RPAcycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_RPA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cycA) 1.0)			(increase (available_RPAcycA) 4.0)			(decrease (available_RPA) 2.0)
))
(:action associate__SP1__p107__SP1p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_p107) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_SP1p107) 4.0)			(decrease (available_SP1) 1.0)			(decrease (available_p107) 2.0)
))
(:action associate__SP1p107__gP__SP1p107gP
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1p107) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_gP) 3.0)			(decrease (available_SP1p107) 4.0)			(increase (available_SP1p107gP) 4.0)
))
(:action associate__HDAC1__p107E2F4DP12p1__HDAC1p107E2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_p107E2F4DP12p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1p107E2F4DP12p1) 3.0)			(decrease (available_p107E2F4DP12p1) 3.0)			(decrease (available_HDAC1) 3.0)
))
(:action associate__SP1p107p1__gP__SP1p107p1gP
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1p107p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gP) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_SP1p107p1gP) 1.0)			(decrease (available_gP) 4.0)			(decrease (available_SP1p107p1) 4.0)
))


)