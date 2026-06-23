(define (domain PathwaysMetric)
(:predicates  (chosen_pRbp1E2F4p1DP12)
 (chosen_pRbE2F4p1DP12)
 (chosen_PCNA)
 (chosen_m1433)
 (chosen_HDAC1p130E2F4p1DP12)
 (chosen_HDAC1)
 (chosen_gP)
 (chosen_gE2)
 (chosen_E2F6DP12p1)
 (possible_Wee1)
 (chosen_E2F4DP12p1)
 (possible_SP1)
 (possible_RPA)
 (chosen_E2F13)
 (possible_pRbp2)
 (possible_pRbp1E2F4p1DP12)
 (chosen_DMP1)
 (possible_pRbE2F4p1DP12)
 (possible_PCNA)
 (chosen_CTAK1)
 (possible_m1433)
 (possible_HDAC1p130E2F4p1DP12)
 (possible_HDAC1)
 (possible_gP)
 (possible_gE2)
 (possible_E2F6DP12p1)
 (possible_E2F4DP12p1)
 (possible_E2F13)
 (possible_DMP1)
 (possible_CTAK1)
 (possible_CEBP)
 (possible_cdk2p1)
 (possible_cdk2)
 (possible_cdc25C)
 (possible_cAbl)
 (chosen_CEBP)
 (chosen_cdk2p1)
 (chosen_cdk2)
 (chosen_cdc25C)
 (chosen_cAbl)
 (chosen_Wee1)
 (chosen_SP1)
 (chosen_RPA)
 (chosen_pRbp2)
)
(:functions   (numsubs)
  (available_Wee1)
  (available_SP1)
  (available_RPA)
  (available_pRbp2)
  (available_pRbp1E2F4p1DP12)
  (available_pRbE2F4p1DP12)
  (available_PCNA)
  (available_m1433)
  (available_HDAC1p130E2F4p1DP12)
  (available_HDAC1)
  (available_gP)
  (available_gE2)
  (available_E2F6DP12p1)
  (available_E2F4DP12p1)
  (available_E2F13)
  (available_DMP1)
  (available_CTAK1)
  (available_CEBP)
  (available_cdk2p1)
  (available_cdk2)
  (available_cdc25C)
  (available_cAbl)
  (available_cAblpRbp2)
  (available_cdk2cycAE2F13)
  (available_cdk2p1cycAE2F13)
  (available_CEBPgP)
  (available_CEBPpRbp2)
  (available_P)
  (available_CEBPpRbp2gP)
  (available_DMP1cycD)
  (available_DMP1cycDp1)
  (available_E2F6DP12p1gE2)
  (available_HDAC1p107E2F4DP12p1)
  (available_HDAC1p130E2F4p1DP12gE2)
  (available_HDAC1pRbE2F4p1DP12)
  (available_m1433cdc25Cp2)
  (available_cdc25Cp2)
  (available_p107E2F4DP12p1gE2)
  (available_p107E2F4DP12p1)
  (available_PCNAcycDp1)
  (available_PCNAcycD)
  (available_cdk2cycEp1)
  (available_cdk2cycE)
  (available_cdk2p1cycEp1)
  (available_cdk2p1cycE)
  (available_pRbE2F4p1DP12gE2)
  (available_pRbp1E2F4p1DP12gE2)
  (available_RPAcycA)
  (available_cdk2cycA)
  (available_cdk2p1cycA)
  (available_SP1E2F13gP)
  (available_SP1E2F13)
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
  (needforassociation_cAbl_pRbp2_cAblpRbp2)
  (needforassociation_pRbp2_cAbl_cAblpRbp2)
  (prodbyassociation_cAbl_pRbp2_cAblpRbp2)
  (needforcatalyzedassociation_cdc25C_CTAK1_cdc25Cp2)
  (needforcatalyzedassociation_CTAK1_cdc25C_cdc25Cp2)
  (prodbycatalyzedassociation_cdc25C_CTAK1_cdc25Cp2)
  (needforassociation_cdk2_cycA_cdk2cycA)
  (needforassociation_cycA_cdk2_cdk2cycA)
  (prodbyassociation_cdk2_cycA_cdk2cycA)
  (needforassociation_cdk2cycA_E2F13_cdk2cycAE2F13)
  (needforassociation_E2F13_cdk2cycA_cdk2cycAE2F13)
  (prodbyassociation_cdk2cycA_E2F13_cdk2cycAE2F13)
  (needforcatalyzedassociation_cdk2cycA_Wee1_cdk2p1cycA)
  (needforcatalyzedassociation_Wee1_cdk2cycA_cdk2p1cycA)
  (prodbycatalyzedassociation_cdk2cycA_Wee1_cdk2p1cycA)
  (needforassociation_cdk2_cycE_cdk2cycE)
  (needforassociation_cycE_cdk2_cdk2cycE)
  (prodbyassociation_cdk2_cycE_cdk2cycE)
  (needforassociation_cdk2_cycEp1_cdk2cycEp1)
  (needforassociation_cycEp1_cdk2_cdk2cycEp1)
  (prodbyassociation_cdk2_cycEp1_cdk2cycEp1)
  (needforassociation_cdk2p1_cycA_cdk2p1cycA)
  (needforassociation_cycA_cdk2p1_cdk2p1cycA)
  (prodbyassociation_cdk2p1_cycA_cdk2p1cycA)
  (needforassociation_cdk2p1cycA_E2F13_cdk2p1cycAE2F13)
  (needforassociation_E2F13_cdk2p1cycA_cdk2p1cycAE2F13)
  (prodbyassociation_cdk2p1cycA_E2F13_cdk2p1cycAE2F13)
  (needforassociation_cdk2p1_cycE_cdk2p1cycE)
  (needforassociation_cycE_cdk2p1_cdk2p1cycE)
  (prodbyassociation_cdk2p1_cycE_cdk2p1cycE)
  (needforassociation_cdk2p1_cycEp1_cdk2p1cycEp1)
  (needforassociation_cycEp1_cdk2p1_cdk2p1cycEp1)
  (prodbyassociation_cdk2p1_cycEp1_cdk2p1cycEp1)
  (needforassociation_CEBP_gP_CEBPgP)
  (needforassociation_gP_CEBP_CEBPgP)
  (prodbyassociation_CEBP_gP_CEBPgP)
  (needforsynthesis_CEBPgP_P)
  (prodbysynthesis_CEBPgP_P)
  (needforassociation_CEBP_pRbp2_CEBPpRbp2)
  (needforassociation_pRbp2_CEBP_CEBPpRbp2)
  (prodbyassociation_CEBP_pRbp2_CEBPpRbp2)
  (needforassociation_CEBPpRbp2_gP_CEBPpRbp2gP)
  (needforassociation_gP_CEBPpRbp2_CEBPpRbp2gP)
  (prodbyassociation_CEBPpRbp2_gP_CEBPpRbp2gP)
  (needforsynthesis_CEBPpRbp2gP_P)
  (prodbysynthesis_CEBPpRbp2gP_P)
  (needforassociation_DMP1_cycD_DMP1cycD)
  (needforassociation_cycD_DMP1_DMP1cycD)
  (prodbyassociation_DMP1_cycD_DMP1cycD)
  (needforassociation_DMP1_cycDp1_DMP1cycDp1)
  (needforassociation_cycDp1_DMP1_DMP1cycDp1)
  (prodbyassociation_DMP1_cycDp1_DMP1cycDp1)
  (needforassociation_E2F6DP12p1_gE2_E2F6DP12p1gE2)
  (needforassociation_gE2_E2F6DP12p1_E2F6DP12p1gE2)
  (prodbyassociation_E2F6DP12p1_gE2_E2F6DP12p1gE2)
  (needforassociation_HDAC1_p107E2F4DP12p1_HDAC1p107E2F4DP12p1)
  (needforassociation_p107E2F4DP12p1_HDAC1_HDAC1p107E2F4DP12p1)
  (prodbyassociation_HDAC1_p107E2F4DP12p1_HDAC1p107E2F4DP12p1)
  (needforassociation_HDAC1p130E2F4p1DP12_gE2_HDAC1p130E2F4p1DP12gE2)
  (needforassociation_gE2_HDAC1p130E2F4p1DP12_HDAC1p130E2F4p1DP12gE2)
  (prodbyassociation_HDAC1p130E2F4p1DP12_gE2_HDAC1p130E2F4p1DP12gE2)
  (needforassociation_HDAC1_pRbE2F4p1DP12_HDAC1pRbE2F4p1DP12)
  (needforassociation_pRbE2F4p1DP12_HDAC1_HDAC1pRbE2F4p1DP12)
  (prodbyassociation_HDAC1_pRbE2F4p1DP12_HDAC1pRbE2F4p1DP12)
  (needforassociation_m1433_cdc25Cp2_m1433cdc25Cp2)
  (needforassociation_cdc25Cp2_m1433_m1433cdc25Cp2)
  (prodbyassociation_m1433_cdc25Cp2_m1433cdc25Cp2)
  (needforassociation_p107E2F4DP12p1_gE2_p107E2F4DP12p1gE2)
  (needforassociation_gE2_p107E2F4DP12p1_p107E2F4DP12p1gE2)
  (prodbyassociation_p107E2F4DP12p1_gE2_p107E2F4DP12p1gE2)
  (needforassociation_p107_E2F4DP12p1_p107E2F4DP12p1)
  (needforassociation_E2F4DP12p1_p107_p107E2F4DP12p1)
  (prodbyassociation_p107_E2F4DP12p1_p107E2F4DP12p1)
  (needforassociation_PCNA_cycDp1_PCNAcycDp1)
  (needforassociation_cycDp1_PCNA_PCNAcycDp1)
  (prodbyassociation_PCNA_cycDp1_PCNAcycDp1)
  (needforassociation_PCNA_cycD_PCNAcycD)
  (needforassociation_cycD_PCNA_PCNAcycD)
  (prodbyassociation_PCNA_cycD_PCNAcycD)
  (needforassociation_pRbE2F4p1DP12_gE2_pRbE2F4p1DP12gE2)
  (needforassociation_gE2_pRbE2F4p1DP12_pRbE2F4p1DP12gE2)
  (prodbyassociation_pRbE2F4p1DP12_gE2_pRbE2F4p1DP12gE2)
  (needforassociation_pRbp1E2F4p1DP12_gE2_pRbp1E2F4p1DP12gE2)
  (needforassociation_gE2_pRbp1E2F4p1DP12_pRbp1E2F4p1DP12gE2)
  (prodbyassociation_pRbp1E2F4p1DP12_gE2_pRbp1E2F4p1DP12gE2)
  (needforassociation_RPA_cycA_RPAcycA)
  (needforassociation_cycA_RPA_RPAcycA)
  (prodbyassociation_RPA_cycA_RPAcycA)
  (needforsynthesis_SP1E2F13gP_cMyc)
  (prodbysynthesis_SP1E2F13gP_cMyc)
  (needforsynthesis_SP1E2F13gP_cycA)
  (prodbysynthesis_SP1E2F13gP_cycA)
  (needforsynthesis_SP1E2F13gP_cycD)
  (prodbysynthesis_SP1E2F13gP_cycD)
  (needforsynthesis_SP1E2F13gP_cycDp1)
  (prodbysynthesis_SP1E2F13gP_cycDp1)
  (needforsynthesis_SP1E2F13gP_cycE)
  (prodbysynthesis_SP1E2F13gP_cycE)
  (needforsynthesis_SP1E2F13gP_cycEp1)
  (prodbysynthesis_SP1E2F13gP_cycEp1)
  (needforsynthesis_SP1E2F13gP_p107)
  (prodbysynthesis_SP1E2F13gP_p107)
  (needforsynthesis_SP1E2F13gP_p107p1)
  (prodbysynthesis_SP1E2F13gP_p107p1)
  (needforsynthesis_SP1E2F13gP_p19ARF)
  (prodbysynthesis_SP1E2F13gP_p19ARF)
  (needforsynthesis_SP1E2F13gP_pol)
  (prodbysynthesis_SP1E2F13gP_pol)
  (needforassociation_SP1E2F13_gP_SP1E2F13gP)
  (needforassociation_gP_SP1E2F13_SP1E2F13gP)
  (prodbyassociation_SP1E2F13_gP_SP1E2F13gP)
  (needforassociation_SP1_E2F13_SP1E2F13)
  (needforassociation_E2F13_SP1_SP1E2F13)
  (prodbyassociation_SP1_E2F13_SP1E2F13)
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
)
(:action choose__cAbl
	:parameters ()
	:precondition (and  (possible_cAbl))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cAbl)			(not (possible_cAbl))
))
(:action choose__cdc25C
	:parameters ()
	:precondition (and  (possible_cdc25C))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cdc25C)			(not (possible_cdc25C))
))
(:action choose__cdk2
	:parameters ()
	:precondition (and  (possible_cdk2))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cdk2)			(not (possible_cdk2))
))
(:action choose__cdk2p1
	:parameters ()
	:precondition (and  (possible_cdk2p1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cdk2p1)			(not (possible_cdk2p1))
))
(:action choose__CEBP
	:parameters ()
	:precondition (and  (possible_CEBP))
	:effect (and 
			(increase (numsubs) 1.0)			(not (possible_CEBP))			(chosen_CEBP)
))
(:action choose__Wee1
	:parameters ()
	:precondition (and  (possible_Wee1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_Wee1)			(not (possible_Wee1))
))
(:action choose__CTAK1
	:parameters ()
	:precondition (and  (possible_CTAK1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_CTAK1)			(not (possible_CTAK1))
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
(:action choose__E2F4DP12p1
	:parameters ()
	:precondition (and  (possible_E2F4DP12p1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F4DP12p1)			(not (possible_E2F4DP12p1))
))
(:action choose__E2F6DP12p1
	:parameters ()
	:precondition (and  (possible_E2F6DP12p1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F6DP12p1)			(not (possible_E2F6DP12p1))
))
(:action choose__gE2
	:parameters ()
	:precondition (and  (possible_gE2))
	:effect (and 
			(increase (numsubs) 1.0)			(not (possible_gE2))			(chosen_gE2)
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
(:action choose__HDAC1p130E2F4p1DP12
	:parameters ()
	:precondition (and  (possible_HDAC1p130E2F4p1DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_HDAC1p130E2F4p1DP12)			(not (possible_HDAC1p130E2F4p1DP12))
))
(:action choose__m1433
	:parameters ()
	:precondition (and  (possible_m1433))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_m1433)			(not (possible_m1433))
))
(:action choose__PCNA
	:parameters ()
	:precondition (and  (possible_PCNA))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_PCNA)			(not (possible_PCNA))
))
(:action choose__pRbE2F4p1DP12
	:parameters ()
	:precondition (and  (possible_pRbE2F4p1DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_pRbE2F4p1DP12)			(not (possible_pRbE2F4p1DP12))
))
(:action choose__pRbp1E2F4p1DP12
	:parameters ()
	:precondition (and  (possible_pRbp1E2F4p1DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_pRbp1E2F4p1DP12)			(not (possible_pRbp1E2F4p1DP12))
))
(:action choose__pRbp2
	:parameters ()
	:precondition (and  (possible_pRbp2))
	:effect (and 
			(increase (numsubs) 1.0)			(not (possible_pRbp2))			(chosen_pRbp2)
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
(:action initialize__pRbp1E2F4p1DP12
	:parameters ()
	:precondition (and  (chosen_pRbp1E2F4p1DP12))
	:effect (and 
			(increase (available_pRbp1E2F4p1DP12) 1.0)
))
(:action initialize__pRbE2F4p1DP12
	:parameters ()
	:precondition (and  (chosen_pRbE2F4p1DP12))
	:effect (and 
			(increase (available_pRbE2F4p1DP12) 1.0)
))
(:action initialize__PCNA
	:parameters ()
	:precondition (and  (chosen_PCNA))
	:effect (and 
			(increase (available_PCNA) 1.0)
))
(:action initialize__m1433
	:parameters ()
	:precondition (and  (chosen_m1433))
	:effect (and 
			(increase (available_m1433) 1.0)
))
(:action initialize__HDAC1p130E2F4p1DP12
	:parameters ()
	:precondition (and  (chosen_HDAC1p130E2F4p1DP12))
	:effect (and 
			(increase (available_HDAC1p130E2F4p1DP12) 1.0)
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
(:action initialize__gE2
	:parameters ()
	:precondition (and  (chosen_gE2))
	:effect (and 
			(increase (available_gE2) 1.0)
))
(:action initialize__E2F6DP12p1
	:parameters ()
	:precondition (and  (chosen_E2F6DP12p1))
	:effect (and 
			(increase (available_E2F6DP12p1) 1.0)
))
(:action initialize__E2F4DP12p1
	:parameters ()
	:precondition (and  (chosen_E2F4DP12p1))
	:effect (and 
			(increase (available_E2F4DP12p1) 1.0)
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
(:action initialize__CTAK1
	:parameters ()
	:precondition (and  (chosen_CTAK1))
	:effect (and 
			(increase (available_CTAK1) 1.0)
))
(:action initialize__CEBP
	:parameters ()
	:precondition (and  (chosen_CEBP))
	:effect (and 
			(increase (available_CEBP) 1.0)
))
(:action initialize__cdk2p1
	:parameters ()
	:precondition (and  (chosen_cdk2p1))
	:effect (and 
			(increase (available_cdk2p1) 1.0)
))
(:action initialize__cdk2
	:parameters ()
	:precondition (and  (chosen_cdk2))
	:effect (and 
			(increase (available_cdk2) 1.0)
))
(:action initialize__cdc25C
	:parameters ()
	:precondition (and  (chosen_cdc25C))
	:effect (and 
			(increase (available_cdc25C) 1.0)
))
(:action initialize__cAbl
	:parameters ()
	:precondition (and  (chosen_cAbl))
	:effect (and 
			(increase (available_cAbl) 1.0)
))
(:action associate__pRbE2F4p1DP12__gE2__pRbE2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbE2F4p1DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pRbE2F4p1DP12gE2) 4.0)			(decrease (available_gE2) 1.0)			(decrease (available_pRbE2F4p1DP12) 1.0)
))
(:action associate__cAbl__pRbp2__cAblpRbp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cAbl) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRbp2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp2) 1.0)			(increase (available_cAblpRbp2) 1.0)			(decrease (available_cAbl) 2.0)
))
(:action associate__CEBP__pRbp2__CEBPpRbp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBP) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbp2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp2) 1.0)			(decrease (available_CEBP) 3.0)			(increase (available_CEBPpRbp2) 3.0)
))
(:action associate__SP1__gP__SP1gP
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_SP1) 3.0)			(increase (available_SP1gP) 3.0)			(decrease (available_gP) 2.0)
))
(:action associate__CEBP__gP__CEBPgP
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBP) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gP) 2.0)			(decrease (available_CEBP) 2.0)			(increase (available_CEBPgP) 4.0)
))
(:action associate__HDAC1p130E2F4p1DP12__gE2__HDAC1p130E2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1p130E2F4p1DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1p130E2F4p1DP12gE2) 1.0)			(decrease (available_gE2) 2.0)			(decrease (available_HDAC1p130E2F4p1DP12) 1.0)
))
(:action associate__E2F6DP12p1__gE2__E2F6DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F6DP12p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 3.0)			(increase (available_E2F6DP12p1gE2) 2.0)			(decrease (available_E2F6DP12p1) 2.0)
))
(:action associate__pRbp1E2F4p1DP12__gE2__pRbp1E2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1E2F4p1DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1E2F4p1DP12gE2) 2.0)			(decrease (available_pRbp1E2F4p1DP12) 4.0)			(decrease (available_gE2) 2.0)
))
(:action associate__HDAC1__pRbE2F4p1DP12__HDAC1pRbE2F4p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRbE2F4p1DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1) 2.0)			(decrease (available_pRbE2F4p1DP12) 1.0)			(increase (available_HDAC1pRbE2F4p1DP12) 2.0)
))
(:action associate__SP1__E2F13__SP1E2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_SP1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_SP1E2F13) 4.0)			(decrease (available_SP1) 4.0)			(decrease (available_E2F13) 4.0)
))
(:action associatewithcatalyze__cdc25C__CTAK1__cdc25Cp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25C) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_CTAK1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25Cp2) 2.0)			(decrease (available_cdc25C) 3.0)
))
(:action synthesize__SP1gP__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 1.0)
))
(:action synthesize__SP1gP__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 4.0)
))
(:action synthesize__SP1gP__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -2.0 ) 0.0))
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
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 4.0)
))
(:action synthesize__SP1gP__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 2.0)
))
(:action synthesize__SP1gP__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 3.0)
))
(:action synthesize__SP1gP__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 1.0)
))
(:action synthesize__SP1gP__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 2.0)
))
(:action synthesize__SP1gP__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 3.0)
))
(:action associate__m1433__cdc25Cp2__m1433cdc25Cp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_m1433) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_m1433cdc25Cp2) 2.0)			(decrease (available_m1433) 3.0)			(decrease (available_cdc25Cp2) 3.0)
))
(:action synthesize__CEBPgP__P
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBPgP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_P) 4.0)
))
(:action associate__CEBPpRbp2__gP__CEBPpRbp2gP
	:parameters ()
	:precondition (and (>= (+ (*   (available_gP) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_CEBPpRbp2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gP) 4.0)			(decrease (available_CEBPpRbp2) 1.0)			(increase (available_CEBPpRbp2gP) 2.0)
))
(:action associate__SP1E2F13__gP__SP1E2F13gP
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gP) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_SP1E2F13) 4.0)			(decrease (available_gP) 1.0)			(increase (available_SP1E2F13gP) 1.0)
))
(:action associate__cdk2__cycE__cdk2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycE) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2) 2.0)			(decrease (available_cycE) 4.0)			(increase (available_cdk2cycE) 3.0)
))
(:action associate__cdk2p1__cycA__cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1cycA) 3.0)			(decrease (available_cycA) 1.0)			(decrease (available_cdk2p1) 2.0)
))
(:action associate__PCNA__cycD__PCNAcycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_PCNA) 2.0)			(decrease (available_cycD) 1.0)			(increase (available_PCNAcycD) 3.0)
))
(:action associate__RPA__cycA__RPAcycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_RPA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_RPAcycA) 2.0)			(decrease (available_cycA) 1.0)			(decrease (available_RPA) 1.0)
))
(:action associate__DMP1__cycDp1__DMP1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cycDp1) 2.0)			(increase (available_DMP1cycDp1) 3.0)			(decrease (available_DMP1) 1.0)
))
(:action synthesize__CEBPpRbp2gP__P
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBPpRbp2gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_P) 2.0)
))
(:action associate__cdk2p1__cycE__cdk2p1cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycE) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1) 3.0)			(decrease (available_cycE) 2.0)			(increase (available_cdk2p1cycE) 2.0)
))
(:action associate__p107__E2F4DP12p1__p107E2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p107) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_E2F4DP12p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F4DP12p1) 4.0)			(increase (available_p107E2F4DP12p1) 1.0)			(decrease (available_p107) 2.0)
))
(:action associate__cdk2__cycEp1__cdk2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycEp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2) 2.0)			(decrease (available_cycEp1) 2.0)			(increase (available_cdk2cycEp1) 4.0)
))
(:action associate__PCNA__cycDp1__PCNAcycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_PCNA) 1.0)			(decrease (available_cycDp1) 2.0)			(increase (available_PCNAcycDp1) 2.0)
))
(:action synthesize__SP1E2F13gP__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13gP) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 1.0)
))
(:action synthesize__SP1E2F13gP__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 4.0)
))
(:action synthesize__SP1E2F13gP__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13gP) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 3.0)
))
(:action synthesize__SP1E2F13gP__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 1.0)
))
(:action associate__SP1__p107p1__SP1p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_p107p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p107p1) 2.0)			(decrease (available_SP1) 1.0)			(increase (available_SP1p107p1) 1.0)
))
(:action synthesize__SP1E2F13gP__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13gP) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 3.0)
))
(:action synthesize__SP1E2F13gP__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 1.0)
))
(:action synthesize__SP1E2F13gP__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 1.0)
))
(:action synthesize__SP1E2F13gP__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 4.0)
))
(:action synthesize__SP1E2F13gP__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 3.0)
))
(:action synthesize__SP1E2F13gP__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 2.0)
))
(:action associate__cdk2p1__cycEp1__cdk2p1cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycEp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1cycEp1) 2.0)			(decrease (available_cycEp1) 4.0)			(decrease (available_cdk2p1) 2.0)
))
(:action associate__SP1__p107__SP1p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p107) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_SP1p107) 2.0)			(decrease (available_SP1) 2.0)			(decrease (available_p107) 1.0)
))
(:action associate__cdk2__cycA__cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2) 2.0)			(increase (available_cdk2cycA) 3.0)			(decrease (available_cycA) 4.0)
))
(:action associate__DMP1__cycD__DMP1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cycD) 1.0)			(increase (available_DMP1cycD) 4.0)			(decrease (available_DMP1) 4.0)
))
(:action associatewithcatalyze__cdk2cycA__Wee1__cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Wee1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycA) 4.0)			(increase (available_cdk2p1cycA) 2.0)
))
(:action associate__p107E2F4DP12p1__gE2__p107E2F4DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p107E2F4DP12p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p107E2F4DP12p1) 1.0)			(decrease (available_gE2) 2.0)			(increase (available_p107E2F4DP12p1gE2) 4.0)
))
(:action associate__HDAC1__p107E2F4DP12p1__HDAC1p107E2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_p107E2F4DP12p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1p107E2F4DP12p1) 3.0)			(decrease (available_p107E2F4DP12p1) 1.0)			(decrease (available_HDAC1) 3.0)
))
(:action associate__SP1p107__gP__SP1p107gP
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1p107) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_SP1p107gP) 2.0)			(decrease (available_gP) 2.0)			(decrease (available_SP1p107) 1.0)
))
(:action associate__cdk2p1cycA__E2F13__cdk2p1cycAE2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_E2F13) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1cycAE2F13) 2.0)			(decrease (available_E2F13) 3.0)			(decrease (available_cdk2p1cycA) 2.0)
))
(:action associate__SP1p107p1__gP__SP1p107p1gP
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1p107p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_SP1p107p1gP) 1.0)			(decrease (available_gP) 2.0)			(decrease (available_SP1p107p1) 1.0)
))
(:action associate__cdk2cycA__E2F13__cdk2cycAE2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycA) 4.0)			(decrease (available_E2F13) 3.0)			(increase (available_cdk2cycAE2F13) 4.0)
))


)