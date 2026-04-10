(define (domain PathwaysMetric)
(:predicates  (chosen_pCAF)
 (chosen_p300)
 (chosen_p16)
 (chosen_p130E2F5p1DP12)
 (chosen_E2F13)
 (chosen_DMP1)
 (chosen_Chk1)
 (chosen_cdk7)
 (chosen_cdk46p3cycDp1)
 (chosen_cdk46p3cycD)
 (chosen_cdc25C)
 (chosen_AP2)
 (possible_SP1)
 (possible_Raf1)
 (possible_pRbp2)
 (possible_pRbE2F4p1DP12)
 (possible_pCAF)
 (possible_p300)
 (possible_p16)
 (possible_p130E2F5p1DP12)
 (possible_E2F13)
 (possible_DMP1)
 (possible_Chk1)
 (possible_cdk7)
 (possible_cdk46p3cycDp1)
 (possible_cdk46p3cycD)
 (possible_cdc25C)
 (chosen_SP1)
 (possible_AP2)
 (chosen_Raf1)
 (chosen_pRbp2)
 (chosen_pRbE2F4p1DP12)
)
(:functions   (available_SP1)
  (available_Raf1)
  (available_pRbp2)
  (available_pRbE2F4p1DP12)
  (available_pCAF)
  (available_p300)
  (available_p16)
  (available_p130E2F5p1DP12)
  (available_E2F13)
  (available_DMP1)
  (available_Chk1)
  (available_cdk7)
  (available_cdk46p3cycDp1)
  (available_cdk46p3cycD)
  (available_cdc25C)
  (available_AP2)
  (available_DMP1p1)
  (available_cdc25Cp2)
  (available_p16cdk7)
  (available_pCAFp300)
  (available_pRbp1p2AP2)
  (available_pRbp2AP2)
  (available_pRbp1p2)
  (available_Raf1p130E2F5p1DP12)
  (available_Raf1pRbE2F4p1DP12)
  (available_SP1E2F13)
  (needforcatalyzedassociation_cdc25C_Chk1_cdc25Cp2)
  (needforcatalyzedassociation_Chk1_cdc25C_cdc25Cp2)
  (prodbycatalyzedassociation_cdc25C_Chk1_cdc25Cp2)
  (needforcatalyzedassociation_DMP1_cdk46p3cycD_DMP1p1)
  (needforcatalyzedassociation_cdk46p3cycD_DMP1_DMP1p1)
  (prodbycatalyzedassociation_DMP1_cdk46p3cycD_DMP1p1)
  (needforcatalyzedassociation_DMP1_cdk46p3cycDp1_DMP1p1)
  (needforcatalyzedassociation_cdk46p3cycDp1_DMP1_DMP1p1)
  (prodbycatalyzedassociation_DMP1_cdk46p3cycDp1_DMP1p1)
  (needforassociation_p16_cdk7_p16cdk7)
  (needforassociation_cdk7_p16_p16cdk7)
  (prodbyassociation_p16_cdk7_p16cdk7)
  (needforassociation_pCAF_p300_pCAFp300)
  (needforassociation_p300_pCAF_pCAFp300)
  (prodbyassociation_pCAF_p300_pCAFp300)
  (needforassociation_pRbp1p2_AP2_pRbp1p2AP2)
  (needforassociation_AP2_pRbp1p2_pRbp1p2AP2)
  (prodbyassociation_pRbp1p2_AP2_pRbp1p2AP2)
  (needforassociation_pRbp2_AP2_pRbp2AP2)
  (needforassociation_AP2_pRbp2_pRbp2AP2)
  (prodbyassociation_pRbp2_AP2_pRbp2AP2)
  (needforcatalyzedassociation_pRbp2_cdk46p3cycDp1_pRbp1p2)
  (needforcatalyzedassociation_cdk46p3cycDp1_pRbp2_pRbp1p2)
  (prodbycatalyzedassociation_pRbp2_cdk46p3cycDp1_pRbp1p2)
  (needforcatalyzedassociation_pRbp2_cdk46p3cycD_pRbp1p2)
  (needforcatalyzedassociation_cdk46p3cycD_pRbp2_pRbp1p2)
  (prodbycatalyzedassociation_pRbp2_cdk46p3cycD_pRbp1p2)
  (needforassociation_Raf1_p130E2F5p1DP12_Raf1p130E2F5p1DP12)
  (needforassociation_p130E2F5p1DP12_Raf1_Raf1p130E2F5p1DP12)
  (prodbyassociation_Raf1_p130E2F5p1DP12_Raf1p130E2F5p1DP12)
  (needforassociation_Raf1_pRbE2F4p1DP12_Raf1pRbE2F4p1DP12)
  (needforassociation_pRbE2F4p1DP12_Raf1_Raf1pRbE2F4p1DP12)
  (prodbyassociation_Raf1_pRbE2F4p1DP12_Raf1pRbE2F4p1DP12)
  (needforassociation_SP1_E2F13_SP1E2F13)
  (needforassociation_E2F13_SP1_SP1E2F13)
  (prodbyassociation_SP1_E2F13_SP1E2F13)
  (numsubs)
)
(:action choose__SP1
	:parameters ()
	:precondition (and  (possible_SP1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_SP1)			(not (possible_SP1))
))
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
(:action choose__cdk46p3cycD
	:parameters ()
	:precondition (and  (possible_cdk46p3cycD))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cdk46p3cycD)			(not (possible_cdk46p3cycD))
))
(:action choose__cdk46p3cycDp1
	:parameters ()
	:precondition (and  (possible_cdk46p3cycDp1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cdk46p3cycDp1)			(not (possible_cdk46p3cycDp1))
))
(:action choose__cdk7
	:parameters ()
	:precondition (and  (possible_cdk7))
	:effect (and 
			(increase (numsubs) 1.0)			(not (possible_cdk7))			(chosen_cdk7)
))
(:action choose__Chk1
	:parameters ()
	:precondition (and  (possible_Chk1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_Chk1)			(not (possible_Chk1))
))
(:action choose__DMP1
	:parameters ()
	:precondition (and  (possible_DMP1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_DMP1)			(not (possible_DMP1))
))
(:action choose__E2F13
	:parameters ()
	:precondition (and  (possible_E2F13))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F13)			(not (possible_E2F13))
))
(:action choose__p130E2F5p1DP12
	:parameters ()
	:precondition (and  (possible_p130E2F5p1DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p130E2F5p1DP12)			(not (possible_p130E2F5p1DP12))
))
(:action choose__p16
	:parameters ()
	:precondition (and  (possible_p16))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p16)			(not (possible_p16))
))
(:action choose__p300
	:parameters ()
	:precondition (and  (possible_p300))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p300)			(not (possible_p300))
))
(:action choose__pCAF
	:parameters ()
	:precondition (and  (possible_pCAF))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_pCAF)			(not (possible_pCAF))
))
(:action choose__pRbE2F4p1DP12
	:parameters ()
	:precondition (and  (possible_pRbE2F4p1DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(not (possible_pRbE2F4p1DP12))			(chosen_pRbE2F4p1DP12)
))
(:action choose__pRbp2
	:parameters ()
	:precondition (and  (possible_pRbp2))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_pRbp2)			(not (possible_pRbp2))
))
(:action choose__Raf1
	:parameters ()
	:precondition (and  (possible_Raf1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_Raf1)			(not (possible_Raf1))
))
(:action initialize__SP1
	:parameters ()
	:precondition (and  (chosen_SP1))
	:effect (and 
			(increase (available_SP1) 1.0)
))
(:action initialize__Raf1
	:parameters ()
	:precondition (and  (chosen_Raf1))
	:effect (and 
			(increase (available_Raf1) 1.0)
))
(:action initialize__pRbp2
	:parameters ()
	:precondition (and  (chosen_pRbp2))
	:effect (and 
			(increase (available_pRbp2) 1.0)
))
(:action initialize__pRbE2F4p1DP12
	:parameters ()
	:precondition (and  (chosen_pRbE2F4p1DP12))
	:effect (and 
			(increase (available_pRbE2F4p1DP12) 1.0)
))
(:action initialize__pCAF
	:parameters ()
	:precondition (and  (chosen_pCAF))
	:effect (and 
			(increase (available_pCAF) 1.0)
))
(:action initialize__p300
	:parameters ()
	:precondition (and  (chosen_p300))
	:effect (and 
			(increase (available_p300) 1.0)
))
(:action initialize__p16
	:parameters ()
	:precondition (and  (chosen_p16))
	:effect (and 
			(increase (available_p16) 1.0)
))
(:action initialize__p130E2F5p1DP12
	:parameters ()
	:precondition (and  (chosen_p130E2F5p1DP12))
	:effect (and 
			(increase (available_p130E2F5p1DP12) 1.0)
))
(:action initialize__E2F13
	:parameters ()
	:precondition (and  (chosen_E2F13))
	:effect (and 
			(increase (available_E2F13) 1.0)
))
(:action initialize__DMP1
	:parameters ()
	:precondition (and  (chosen_DMP1))
	:effect (and 
			(increase (available_DMP1) 1.0)
))
(:action initialize__Chk1
	:parameters ()
	:precondition (and  (chosen_Chk1))
	:effect (and 
			(increase (available_Chk1) 1.0)
))
(:action initialize__cdk7
	:parameters ()
	:precondition (and  (chosen_cdk7))
	:effect (and 
			(increase (available_cdk7) 1.0)
))
(:action initialize__cdk46p3cycDp1
	:parameters ()
	:precondition (and  (chosen_cdk46p3cycDp1))
	:effect (and 
			(increase (available_cdk46p3cycDp1) 1.0)
))
(:action initialize__cdk46p3cycD
	:parameters ()
	:precondition (and  (chosen_cdk46p3cycD))
	:effect (and 
			(increase (available_cdk46p3cycD) 1.0)
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
(:action associate__p16__cdk7__p16cdk7
	:parameters ()
	:precondition (and (>= (+ (*   (available_p16) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk7) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk7) 3.0)			(decrease (available_p16) 4.0)			(increase (available_p16cdk7) 4.0)
))
(:action associate__Raf1__p130E2F5p1DP12__Raf1p130E2F5p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p130E2F5p1DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_Raf1) 2.0)			(decrease (available_p130E2F5p1DP12) 3.0)			(increase (available_Raf1p130E2F5p1DP12) 3.0)
))
(:action associate__pCAF__p300__pCAFp300
	:parameters ()
	:precondition (and (>= (+ (*   (available_pCAF) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_p300) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pCAFp300) 3.0)			(decrease (available_pCAF) 3.0)			(decrease (available_p300) 1.0)
))
(:action associate__Raf1__pRbE2F4p1DP12__Raf1pRbE2F4p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbE2F4p1DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbE2F4p1DP12) 2.0)			(increase (available_Raf1pRbE2F4p1DP12) 2.0)			(decrease (available_Raf1) 4.0)
))
(:action associatewithcatalyze__DMP1__cdk46p3cycD__DMP1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_DMP1) 2.0)			(increase (available_DMP1p1) 2.0)
))
(:action associatewithcatalyze__pRbp2__cdk46p3cycD__pRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1p2) 3.0)			(decrease (available_pRbp2) 3.0)
))
(:action associatewithcatalyze__cdc25C__Chk1__cdc25Cp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Chk1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25C) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25Cp2) 1.0)			(decrease (available_cdc25C) 4.0)
))
(:action associate__pRbp2__AP2__pRbp2AP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_AP2) 1.0)			(increase (available_pRbp2AP2) 2.0)			(decrease (available_pRbp2) 2.0)
))
(:action associate__SP1__E2F13__SP1E2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_SP1) 4.0)			(decrease (available_E2F13) 3.0)			(increase (available_SP1E2F13) 1.0)
))
(:action associatewithcatalyze__DMP1__cdk46p3cycDp1__DMP1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_DMP1) 4.0)			(increase (available_DMP1p1) 1.0)
))
(:action associatewithcatalyze__pRbp2__cdk46p3cycDp1__pRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp2) 3.0)			(increase (available_pRbp1p2) 1.0)
))
(:action associate__pRbp1p2__AP2__pRbp1p2AP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1p2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1p2) 4.0)			(increase (available_pRbp1p2AP2) 4.0)			(decrease (available_AP2) 4.0)
))


)