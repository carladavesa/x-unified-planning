(define (domain PathwaysMetric)
(:predicates  (chosen_Wee1)
 (chosen_SP1)
 (chosen_Skp2)
 (chosen_Skp1)
 (chosen_Raf1)
 (chosen_pRbp2)
 (chosen_pRbp1E2F4p1DP12)
 (chosen_pRbE2F4p1DP12)
 (chosen_pRb)
 (chosen_PCNA)
 (chosen_pCAF)
 (chosen_p57p1)
 (chosen_p57)
 (chosen_p53p1)
 (chosen_p53)
 (chosen_p300)
 (chosen_p27)
 (chosen_p16)
 (chosen_p130E2F5p1DP12)
 (chosen_p130E2F4p1DP12)
 (chosen_Max)
 (chosen_Jun)
 (chosen_HDAC1pRbp1E2F4DP12)
 (chosen_HDAC1pRbp1E2F13p1DP12)
 (chosen_HDAC1pRbp1E2F13DP12)
 (chosen_HDAC1p130E2F5p1DP12)
 (chosen_HDAC1p130E2F4p1DP12)
 (chosen_HDAC1p107E2F4p1DP12)
 (chosen_HDAC1)
 (chosen_gEc)
 (chosen_gE2)
 (chosen_gcdc25A)
 (chosen_E2F6DP12p1)
 (chosen_E2F6)
 (chosen_E2F5)
 (chosen_E2F4DP12p1)
 (chosen_E2F4)
 (chosen_E2F3)
 (chosen_E2F2)
 (chosen_E2F13p1DP12p1)
 (chosen_E2F13p1DP12)
 (chosen_E2F13)
 (chosen_DP12)
 (chosen_DMP1)
 (possible_Wee1)
 (chosen_cycH)
 (possible_SP1)
 (possible_Skp2)
 (chosen_CEBP)
 (possible_Skp1)
 (possible_Raf1)
 (chosen_cdk7)
 (possible_pRbp2)
 (possible_pRbp1E2F4p1DP12)
 (chosen_cdk46p3cycDp1)
 (possible_pRbE2F4p1DP12)
 (possible_pRb)
 (chosen_cdk46p3cycD)
 (possible_PCNA)
 (possible_pCAF)
 (chosen_cdk46p1)
 (possible_p57p1)
 (possible_p57)
 (chosen_cdk2p2cycB)
 (possible_p53p1)
 (possible_p53)
 (chosen_cdk2cycB)
 (possible_p300)
 (possible_p27)
 (chosen_cdk2)
 (possible_p16)
 (possible_p130E2F5p1DP12)
 (chosen_cAbl)
 (possible_p130E2F4p1DP12)
 (possible_Max)
 (chosen_AP2)
 (possible_Jun)
 (possible_HDAC1pRbp1E2F4DP12)
 (possible_HDAC1pRbp1E2F13p1DP12)
 (possible_HDAC1pRbp1E2F13DP12)
 (possible_HDAC1p130E2F5p1DP12)
 (possible_HDAC1p130E2F4p1DP12)
 (possible_HDAC1p107E2F4p1DP12)
 (possible_HDAC1)
 (possible_gEc)
 (possible_gE2)
 (possible_gcdc25A)
 (possible_E2F6DP12p1)
 (possible_E2F6)
 (possible_E2F5)
 (possible_E2F4DP12p1)
 (possible_E2F4)
 (possible_E2F3)
 (possible_E2F2)
 (possible_E2F13p1DP12p1)
 (possible_E2F13p1DP12)
 (possible_E2F13)
 (possible_DP12)
 (possible_DMP1)
 (possible_cycH)
 (possible_CEBP)
 (possible_cdk7)
 (possible_cdk46p3cycDp1)
 (possible_cdk46p3cycD)
 (possible_cdk46p1)
 (possible_cdk2p2cycB)
 (possible_cdk2cycB)
 (possible_cdk2)
 (possible_cAbl)
 (possible_AP2)
)
(:functions   (numsubs)
  (available_Wee1)
  (available_SP1)
  (available_Skp2)
  (available_Skp1)
  (available_Raf1)
  (available_pRbp2)
  (available_pRbp1E2F4p1DP12)
  (available_pRbE2F4p1DP12)
  (available_pRb)
  (available_PCNA)
  (available_pCAF)
  (available_p57p1)
  (available_p57)
  (available_p53p1)
  (available_p53)
  (available_p300)
  (available_p27)
  (available_p16)
  (available_p130E2F5p1DP12)
  (available_p130E2F4p1DP12)
  (available_Max)
  (available_Jun)
  (available_HDAC1pRbp1E2F4DP12)
  (available_HDAC1pRbp1E2F13p1DP12)
  (available_HDAC1pRbp1E2F13DP12)
  (available_HDAC1p130E2F5p1DP12)
  (available_HDAC1p130E2F4p1DP12)
  (available_HDAC1p107E2F4p1DP12)
  (available_HDAC1)
  (available_gEc)
  (available_gE2)
  (available_gcdc25A)
  (available_E2F6DP12p1)
  (available_E2F6)
  (available_E2F5)
  (available_E2F4DP12p1)
  (available_E2F4)
  (available_E2F3)
  (available_E2F2)
  (available_E2F13p1DP12p1)
  (available_E2F13p1DP12)
  (available_E2F13)
  (available_DP12)
  (available_DMP1)
  (available_cycH)
  (available_CEBP)
  (available_cdk7)
  (available_cdk46p3cycDp1)
  (available_cdk46p3cycD)
  (available_cdk46p1)
  (available_cdk2p2cycB)
  (available_cdk2cycB)
  (available_cdk2)
  (available_cAbl)
  (available_AP2)
  (available_AP2gEc)
  (available_cAblpRb)
  (available_cAblpRbp1)
  (available_cAblpRbp1p2)
  (available_cAblpRbp2)
  (available_cdk2cycAE2F13)
  (available_cdk2cycAE2F13p1)
  (available_cdk2p1cycB)
  (available_cdk2p1cycAE2F13)
  (available_cdk2p1cycAE2F13p1)
  (available_cdk2p1p2cycAE2F13)
  (available_cdk2p1p2cycAE2F13p1)
  (available_cdk2p2cycAE2F13)
  (available_cdk2p2cycAE2F13p1)
  (available_cdk2p1p2cycB)
  (available_cdk2p2)
  (available_cdk7cycH)
  (available_cdk7p1cycH)
  (available_CEBPpRb)
  (available_CEBPpRbp1)
  (available_CEBPpRbp1p2)
  (available_CEBPpRbp2)
  (available_cMycAP2)
  (available_cMycMaxgcdc25A)
  (available_cMycMax)
  (available_DMP1cycD)
  (available_DMP1cycDp1)
  (available_DMP1p1cycD)
  (available_DMP1p1cycDp1)
  (available_DMP1p1)
  (available_E2F13p1DP12gE2)
  (available_E2F2DP12)
  (available_E2F3DP12)
  (available_E2F4DP12gE2)
  (available_E2F5DP12gE2)
  (available_E2F6DP12gE2)
  (available_E2F6DP12)
  (available_E2F6DP12p1gE2)
  (available_HDAC1p107E2F4DP12gE2)
  (available_HDAC1p107E2F4DP12)
  (available_HDAC1p107E2F4DP12p1)
  (available_HDAC1p107E2F4p1DP12gE2)
  (available_HDAC1p130E2F4p1DP12gE2)
  (available_HDAC1p130E2F5p1DP12gE2)
  (available_HDAC1pRbE2F13p1DP12gE2)
  (available_HDAC1pRbE2F13p1DP12)
  (available_HDAC1pRbE2F13p1DP12p1)
  (available_HDAC1pRbE2F4DP12gE2)
  (available_HDAC1pRbE2F4DP12)
  (available_HDAC1pRbE2F4p1DP12)
  (available_HDAC1pRbp1E2F13DP12gE2)
  (available_HDAC1pRbp1E2F13p1DP12gE2)
  (available_HDAC1pRbp1E2F4DP12gE2)
  (available_JuncFos)
  (available_Mdm2E2F13p1DP12)
  (available_Mdm2E2F13p1DP12p1)
  (available_Mdm2pRb)
  (available_Mdm2pRbp1)
  (available_Mdm2pRbp1p2)
  (available_Mdm2pRbp2)
  (available_p107E2F4DP12gE2)
  (available_p107E2F4DP12)
  (available_p107E2F4DP12p1gE2)
  (available_p107E2F4DP12p1)
  (available_E2F5DP12)
  (available_p16cdk46)
  (available_cdk46)
  (available_p16cdk46p1)
  (available_p16cdk46p1p2)
  (available_cdk46p1p2)
  (available_p16cdk46p2)
  (available_cdk46p2)
  (available_p16cdk7)
  (available_p16cdk7p1)
  (available_cdk7p1)
  (available_p21cdk2cycA)
  (available_p21cdk2cycEp1)
  (available_p21cdk2cycE)
  (available_p21cdk2p1cycA)
  (available_p21cdk2p1p2cycA)
  (available_p21cdk2p2cycA)
  (available_p21cdk2p2cycEp1)
  (available_p21cdk2p2cycE)
  (available_p21cdk46cycDp1)
  (available_p21cdk46cycD)
  (available_p21cdk46p1cycDp1)
  (available_p21cdk46p1cycD)
  (available_p21cdk46p1p2cycDp1)
  (available_p21cdk46p1p2cycD)
  (available_p21cdk46p2cycDp1)
  (available_p21cdk46p2cycD)
  (available_p21Gadd45)
  (available_p27cdk2cycA)
  (available_p27cdk2cycEp1)
  (available_p27cdk2cycE)
  (available_p27cdk2p1cycA)
  (available_p27cdk2p1p2cycA)
  (available_p27cdk2p2cycA)
  (available_p27cdk2p2cycEp1)
  (available_p27cdk2p2cycE)
  (available_p27cdk46cycDp1)
  (available_p27cdk46cycD)
  (available_p27cdk46p1cycDp1)
  (available_p27cdk46p1cycD)
  (available_p27cdk46p1p2cycDp1)
  (available_p27cdk46p1p2cycD)
  (available_p27cdk46p2cycDp1)
  (available_p27cdk46p2cycD)
  (available_p27p1cdk2cycA)
  (available_p27p1cdk2cycEp1)
  (available_p27p1cdk2cycE)
  (available_p27p1cdk2p1cycA)
  (available_p27p1cdk2p1p2cycA)
  (available_p27p1cdk2p2cycA)
  (available_p27p1cdk2p2cycEp1)
  (available_p27p1cdk2p2cycE)
  (available_p27p1cdk46cycDp1)
  (available_p27p1cdk46cycD)
  (available_p27p1cdk46p1cycDp1)
  (available_p27p1cdk46p1cycD)
  (available_p27p1cdk46p1p2cycDp1)
  (available_p27p1cdk46p1p2cycD)
  (available_p27p1cdk46p2cycDp1)
  (available_p27p1cdk46p2cycD)
  (available_p27p1)
  (available_p53DP12p1)
  (available_p53DP12)
  (available_p53p1DP12p1)
  (available_DP12p1)
  (available_p53p1DP12)
  (available_Mdm2)
  (available_p57cdk2cycA)
  (available_p57cdk2cycEp1)
  (available_p57cdk2cycE)
  (available_p57cdk2p1cycA)
  (available_p57cdk2p1p2cycA)
  (available_p57cdk2p2cycA)
  (available_p57cdk2p2cycEp1)
  (available_p57cdk2p2cycE)
  (available_p57cdk46cycDp1)
  (available_p57cdk46cycD)
  (available_p57cdk46p1cycDp1)
  (available_p57cdk46p1cycD)
  (available_p57cdk46p1p2cycDp1)
  (available_p57cdk46p1p2cycD)
  (available_p57cdk46p2cycDp1)
  (available_p57cdk46p2cycD)
  (available_p57p1cdk46cycDp1)
  (available_p57p1cdk46cycD)
  (available_p57p1cdk46p1cycDp1)
  (available_p57p1cdk46p1cycD)
  (available_p57p1cdk46p1p2cycDp1)
  (available_p57p1cdk46p1p2cycD)
  (available_p57p1cdk46p2cycDp1)
  (available_p57p1cdk46p2cycD)
  (available_pCAFp300)
  (available_PCNAcycDp1)
  (available_PCNAcycD)
  (available_PCNAGadd45)
  (available_Gadd45)
  (available_PCNAp21cdk2cycA)
  (available_PCNAp21cdk2cycEp1)
  (available_cdk2cycEp1)
  (available_PCNAp21cdk2cycE)
  (available_cdk2cycE)
  (available_PCNAp21cdk2p1cycA)
  (available_PCNAp21cdk2p1p2cycA)
  (available_PCNAp21cdk2p2cycA)
  (available_PCNAp21cdk2p2cycEp1)
  (available_PCNAp21cdk2p2cycE)
  (available_PCNAp21cdk46cycDp1)
  (available_cdk46cycDp1)
  (available_PCNAp21cdk46cycD)
  (available_cdk46cycD)
  (available_PCNAp21cdk46p1cycDp1)
  (available_cdk46p1cycDp1)
  (available_PCNAp21cdk46p1cycD)
  (available_cdk46p1cycD)
  (available_PCNAp21cdk46p1p2cycDp1)
  (available_cdk46p1p2cycDp1)
  (available_PCNAp21cdk46p1p2cycD)
  (available_cdk46p1p2cycD)
  (available_PCNAp21cdk46p2cycDp1)
  (available_cdk46p2cycDp1)
  (available_PCNAp21cdk46p2cycD)
  (available_cdk46p2cycD)
  (available_PCNAp21)
  (available_p21)
  (available_pRbAP2gEc)
  (available_pRbAP2)
  (available_pRbE2F13p1DP12gE2)
  (available_pRbE2F13p1DP12p1gE2)
  (available_pRbE2F4DP12gE2)
  (available_pRbE2F4DP12p1)
  (available_pRbE2F4p1DP12gE2)
  (available_pRbJuncFos)
  (available_pRbJun)
  (available_pRbp1AP2gEc)
  (available_pRbp1AP2)
  (available_cdk2p2cycEp1)
  (available_cdk2p2cycE)
  (available_pRbp1E2F13p1DP12gE2)
  (available_pRbp1E2F13p1DP12p1gE2)
  (available_pRbp1E2F4DP12gE2)
  (available_pRbp1E2F4DP12p1)
  (available_E2F4DP12)
  (available_pRbp1E2F4p1DP12gE2)
  (available_pRbp1JuncFos)
  (available_pRbp1Jun)
  (available_pRbp1)
  (available_pRbp1p2AP2gEc)
  (available_pRbp1p2AP2)
  (available_pRbp1p2JuncFos)
  (available_pRbp1p2Jun)
  (available_Ecadherin)
  (available_pRbp2AP2gEc)
  (available_pRbp2AP2)
  (available_pRbp1p2)
  (available_pRbp2JuncFos)
  (available_cFos)
  (available_pRbp2Jun)
  (available_Raf1cdc25Ap1)
  (available_cdc25Ap1)
  (available_Raf1cdc25A)
  (available_cdc25A)
  (available_Raf1p130E2F4p1DP12gE2)
  (available_Raf1p130E2F4p1DP12)
  (available_Raf1p130E2F5p1DP12gE2)
  (available_Raf1p130E2F5p1DP12)
  (available_Raf1pRbE2F13p1DP12gE2)
  (available_Raf1pRbE2F13p1DP12p1gE2)
  (available_Raf1pRbE2F13p1DP12p1)
  (available_pRbE2F13p1DP12p1)
  (available_Raf1pRbE2F13p1DP12)
  (available_pRbE2F13p1DP12)
  (available_Raf1pRbE2F4DP12gE2)
  (available_Raf1pRbE2F4DP12)
  (available_pRbE2F4DP12)
  (available_Raf1pRbE2F4p1DP12gE2)
  (available_Raf1pRbE2F4p1DP12)
  (available_Raf1pRbp1E2F13p1DP12gE2)
  (available_Raf1pRbp1E2F13p1DP12p1gE2)
  (available_Raf1pRbp1E2F13p1DP12p1)
  (available_pRbp1E2F13p1DP12p1)
  (available_Raf1pRbp1E2F13p1DP12)
  (available_pRbp1E2F13p1DP12)
  (available_Raf1pRbp1E2F4DP12gE2)
  (available_Raf1pRbp1E2F4DP12)
  (available_pRbp1E2F4DP12)
  (available_Raf1pRbp1E2F4p1DP12gE2)
  (available_Raf1pRbp1E2F4p1DP12)
  (available_Skp2cdk2cycA)
  (available_Skp2cdk2p1cycA)
  (available_Skp2cdk2p1p2cycA)
  (available_Skp2cdk2p2cycA)
  (available_Skp2p1Skp1p1)
  (available_Skp2p1Skp1)
  (available_Skp2p1)
  (available_Skp2Skp1cdk2cycA)
  (available_Skp2Skp1cdk2p1cycA)
  (available_Skp2Skp1cdk2p1p2cycA)
  (available_Skp2Skp1cdk2p2cycA)
  (available_Skp2Skp1p1cdk2cycA)
  (available_cdk2cycA)
  (available_Skp2Skp1p1cdk2p1cycA)
  (available_cdk2p1cycA)
  (available_Skp2Skp1p1cdk2p1p2cycA)
  (available_cdk2p1p2cycA)
  (available_Skp2Skp1p1cdk2p2cycA)
  (available_cdk2p2cycA)
  (available_Skp2Skp1p1)
  (available_Skp1p1)
  (available_Skp2Skp1)
  (available_SP1E2F13p1)
  (available_E2F13p1)
  (available_SP1E2F13)
  (available_cMyc)
  (available_cycA)
  (available_cycD)
  (available_cycDp1)
  (available_cycE)
  (available_cycEp1)
  (available_p19ARF)
  (available_pol)
  (available_SP1p107p1)
  (available_p107p1)
  (available_SP1p107)
  (available_p107)
  (needforassociation_AP2_gEc_AP2gEc)
  (needforassociation_gEc_AP2_AP2gEc)
  (prodbyassociation_AP2_gEc_AP2gEc)
  (needforsynthesis_AP2gEc_Ecadherin)
  (prodbysynthesis_AP2gEc_Ecadherin)
  (needforassociation_cAbl_pRb_cAblpRb)
  (needforassociation_pRb_cAbl_cAblpRb)
  (prodbyassociation_cAbl_pRb_cAblpRb)
  (needforassociation_cAbl_pRbp1_cAblpRbp1)
  (needforassociation_pRbp1_cAbl_cAblpRbp1)
  (prodbyassociation_cAbl_pRbp1_cAblpRbp1)
  (needforassociation_cAbl_pRbp1p2_cAblpRbp1p2)
  (needforassociation_pRbp1p2_cAbl_cAblpRbp1p2)
  (prodbyassociation_cAbl_pRbp1p2_cAblpRbp1p2)
  (needforassociation_cAbl_pRbp2_cAblpRbp2)
  (needforassociation_pRbp2_cAbl_cAblpRbp2)
  (prodbyassociation_cAbl_pRbp2_cAblpRbp2)
  (needforcatalyzedassociation_cdc25A_Raf1_cdc25Ap1)
  (needforcatalyzedassociation_Raf1_cdc25A_cdc25Ap1)
  (prodbycatalyzedassociation_cdc25A_Raf1_cdc25Ap1)
  (needforcatalyzedassociation_cdk2_cdk7cycH_cdk2p2)
  (needforcatalyzedassociation_cdk7cycH_cdk2_cdk2p2)
  (prodbycatalyzedassociation_cdk2_cdk7cycH_cdk2p2)
  (needforassociation_cdk2_cycA_cdk2cycA)
  (needforassociation_cycA_cdk2_cdk2cycA)
  (prodbyassociation_cdk2_cycA_cdk2cycA)
  (needforcatalyzedassociation_cdk2cycA_cdk7cycH_cdk2p2cycA)
  (needforcatalyzedassociation_cdk7cycH_cdk2cycA_cdk2p2cycA)
  (prodbycatalyzedassociation_cdk2cycA_cdk7cycH_cdk2p2cycA)
  (needforassociation_cdk2cycA_E2F13_cdk2cycAE2F13)
  (needforassociation_E2F13_cdk2cycA_cdk2cycAE2F13)
  (prodbyassociation_cdk2cycA_E2F13_cdk2cycAE2F13)
  (needforassociation_cdk2cycA_E2F13p1_cdk2cycAE2F13p1)
  (needforassociation_E2F13p1_cdk2cycA_cdk2cycAE2F13p1)
  (prodbyassociation_cdk2cycA_E2F13p1_cdk2cycAE2F13p1)
  (needforcatalyzedassociation_cdk2cycA_Wee1_cdk2p1cycA)
  (needforcatalyzedassociation_Wee1_cdk2cycA_cdk2p1cycA)
  (prodbycatalyzedassociation_cdk2cycA_Wee1_cdk2p1cycA)
  (needforcatalyzedassociation_cdk2cycB_Wee1_cdk2p1cycB)
  (needforcatalyzedassociation_Wee1_cdk2cycB_cdk2p1cycB)
  (prodbycatalyzedassociation_cdk2cycB_Wee1_cdk2p1cycB)
  (needforassociation_cdk2_cycE_cdk2cycE)
  (needforassociation_cycE_cdk2_cdk2cycE)
  (prodbyassociation_cdk2_cycE_cdk2cycE)
  (needforcatalyzedassociation_cdk2cycE_cdk7cycH_cdk2p2cycE)
  (needforcatalyzedassociation_cdk7cycH_cdk2cycE_cdk2p2cycE)
  (prodbycatalyzedassociation_cdk2cycE_cdk7cycH_cdk2p2cycE)
  (needforassociation_cdk2_cycEp1_cdk2cycEp1)
  (needforassociation_cycEp1_cdk2_cdk2cycEp1)
  (prodbyassociation_cdk2_cycEp1_cdk2cycEp1)
  (needforcatalyzedassociation_cdk2cycEp1_cdk7cycH_cdk2p2cycEp1)
  (needforcatalyzedassociation_cdk7cycH_cdk2cycEp1_cdk2p2cycEp1)
  (prodbycatalyzedassociation_cdk2cycEp1_cdk7cycH_cdk2p2cycEp1)
  (needforcatalyzedassociation_cdk2p1cycA_cdc25Ap1_cdk2cycA)
  (needforcatalyzedassociation_cdc25Ap1_cdk2p1cycA_cdk2cycA)
  (prodbycatalyzedassociation_cdk2p1cycA_cdc25Ap1_cdk2cycA)
  (needforcatalyzedassociation_cdk2p1cycA_cdk7cycH_cdk2p1p2cycA)
  (needforcatalyzedassociation_cdk7cycH_cdk2p1cycA_cdk2p1p2cycA)
  (prodbycatalyzedassociation_cdk2p1cycA_cdk7cycH_cdk2p1p2cycA)
  (needforassociation_cdk2p1cycA_E2F13_cdk2p1cycAE2F13)
  (needforassociation_E2F13_cdk2p1cycA_cdk2p1cycAE2F13)
  (prodbyassociation_cdk2p1cycA_E2F13_cdk2p1cycAE2F13)
  (needforassociation_cdk2p1cycA_E2F13p1_cdk2p1cycAE2F13p1)
  (needforassociation_E2F13p1_cdk2p1cycA_cdk2p1cycAE2F13p1)
  (prodbyassociation_cdk2p1cycA_E2F13p1_cdk2p1cycAE2F13p1)
  (needforcatalyzedassociation_cdk2p1p2cycA_cdc25Ap1_cdk2p2cycA)
  (needforcatalyzedassociation_cdc25Ap1_cdk2p1p2cycA_cdk2p2cycA)
  (prodbycatalyzedassociation_cdk2p1p2cycA_cdc25Ap1_cdk2p2cycA)
  (needforassociation_cdk2p1p2cycA_E2F13_cdk2p1p2cycAE2F13)
  (needforassociation_E2F13_cdk2p1p2cycA_cdk2p1p2cycAE2F13)
  (prodbyassociation_cdk2p1p2cycA_E2F13_cdk2p1p2cycAE2F13)
  (needforassociation_cdk2p1p2cycA_E2F13p1_cdk2p1p2cycAE2F13p1)
  (needforassociation_E2F13p1_cdk2p1p2cycA_cdk2p1p2cycAE2F13p1)
  (prodbyassociation_cdk2p1p2cycA_E2F13p1_cdk2p1p2cycAE2F13p1)
  (needforassociation_cdk2p2_cycA_cdk2p2cycA)
  (needforassociation_cycA_cdk2p2_cdk2p2cycA)
  (prodbyassociation_cdk2p2_cycA_cdk2p2cycA)
  (needforassociation_cdk2p2cycA_E2F13_cdk2p2cycAE2F13)
  (needforassociation_E2F13_cdk2p2cycA_cdk2p2cycAE2F13)
  (prodbyassociation_cdk2p2cycA_E2F13_cdk2p2cycAE2F13)
  (needforassociation_cdk2p2cycA_E2F13p1_cdk2p2cycAE2F13p1)
  (needforassociation_E2F13p1_cdk2p2cycA_cdk2p2cycAE2F13p1)
  (prodbyassociation_cdk2p2cycA_E2F13p1_cdk2p2cycAE2F13p1)
  (needforcatalyzedassociation_cdk2p2cycA_Wee1_cdk2p1p2cycA)
  (needforcatalyzedassociation_Wee1_cdk2p2cycA_cdk2p1p2cycA)
  (prodbycatalyzedassociation_cdk2p2cycA_Wee1_cdk2p1p2cycA)
  (needforcatalyzedassociation_cdk2p2cycB_Wee1_cdk2p1p2cycB)
  (needforcatalyzedassociation_Wee1_cdk2p2cycB_cdk2p1p2cycB)
  (prodbycatalyzedassociation_cdk2p2cycB_Wee1_cdk2p1p2cycB)
  (needforassociation_cdk2p2_cycE_cdk2p2cycE)
  (needforassociation_cycE_cdk2p2_cdk2p2cycE)
  (prodbyassociation_cdk2p2_cycE_cdk2p2cycE)
  (needforassociation_cdk2p2_cycEp1_cdk2p2cycEp1)
  (needforassociation_cycEp1_cdk2p2_cdk2p2cycEp1)
  (prodbyassociation_cdk2p2_cycEp1_cdk2p2cycEp1)
  (needforcatalyzedassociation_cdk46_cdk7cycH_cdk46p2)
  (needforcatalyzedassociation_cdk7cycH_cdk46_cdk46p2)
  (prodbycatalyzedassociation_cdk46_cdk7cycH_cdk46p2)
  (needforassociation_cdk46_cycD_cdk46cycD)
  (needforassociation_cycD_cdk46_cdk46cycD)
  (prodbyassociation_cdk46_cycD_cdk46cycD)
  (needforcatalyzedassociation_cdk46cycD_cdk7cycH_cdk46p2cycD)
  (needforcatalyzedassociation_cdk7cycH_cdk46cycD_cdk46p2cycD)
  (prodbycatalyzedassociation_cdk46cycD_cdk7cycH_cdk46p2cycD)
  (needforassociation_cdk46_cycDp1_cdk46cycDp1)
  (needforassociation_cycDp1_cdk46_cdk46cycDp1)
  (prodbyassociation_cdk46_cycDp1_cdk46cycDp1)
  (needforcatalyzedassociation_cdk46cycDp1_cdk7cycH_cdk46p2cycDp1)
  (needforcatalyzedassociation_cdk7cycH_cdk46cycDp1_cdk46p2cycDp1)
  (prodbycatalyzedassociation_cdk46cycDp1_cdk7cycH_cdk46p2cycDp1)
  (needforcatalyzedassociation_cdk46p1_cdc25Ap1_cdk46)
  (needforcatalyzedassociation_cdc25Ap1_cdk46p1_cdk46)
  (prodbycatalyzedassociation_cdk46p1_cdc25Ap1_cdk46)
  (needforcatalyzedassociation_cdk46p1_cdk7cycH_cdk46p1p2)
  (needforcatalyzedassociation_cdk7cycH_cdk46p1_cdk46p1p2)
  (prodbycatalyzedassociation_cdk46p1_cdk7cycH_cdk46p1p2)
  (needforassociation_cdk46p1_cycD_cdk46p1cycD)
  (needforassociation_cycD_cdk46p1_cdk46p1cycD)
  (prodbyassociation_cdk46p1_cycD_cdk46p1cycD)
  (needforcatalyzedassociation_cdk46p1cycD_cdk7cycH_cdk46p1p2cycD)
  (needforcatalyzedassociation_cdk7cycH_cdk46p1cycD_cdk46p1p2cycD)
  (prodbycatalyzedassociation_cdk46p1cycD_cdk7cycH_cdk46p1p2cycD)
  (needforassociation_cdk46p1_cycDp1_cdk46p1cycDp1)
  (needforassociation_cycDp1_cdk46p1_cdk46p1cycDp1)
  (prodbyassociation_cdk46p1_cycDp1_cdk46p1cycDp1)
  (needforcatalyzedassociation_cdk46p1cycDp1_cdk7cycH_cdk46p1p2cycDp1)
  (needforcatalyzedassociation_cdk7cycH_cdk46p1cycDp1_cdk46p1p2cycDp1)
  (prodbycatalyzedassociation_cdk46p1cycDp1_cdk7cycH_cdk46p1p2cycDp1)
  (needforcatalyzedassociation_cdk46p1p2_cdc25Ap1_cdk46p2)
  (needforcatalyzedassociation_cdc25Ap1_cdk46p1p2_cdk46p2)
  (prodbycatalyzedassociation_cdk46p1p2_cdc25Ap1_cdk46p2)
  (needforassociation_cdk46p1p2_cycD_cdk46p1p2cycD)
  (needforassociation_cycD_cdk46p1p2_cdk46p1p2cycD)
  (prodbyassociation_cdk46p1p2_cycD_cdk46p1p2cycD)
  (needforassociation_cdk46p1p2_cycDp1_cdk46p1p2cycDp1)
  (needforassociation_cycDp1_cdk46p1p2_cdk46p1p2cycDp1)
  (prodbyassociation_cdk46p1p2_cycDp1_cdk46p1p2cycDp1)
  (needforassociation_cdk46p2_cycD_cdk46p2cycD)
  (needforassociation_cycD_cdk46p2_cdk46p2cycD)
  (prodbyassociation_cdk46p2_cycD_cdk46p2cycD)
  (needforassociation_cdk46p2_cycDp1_cdk46p2cycDp1)
  (needforassociation_cycDp1_cdk46p2_cdk46p2cycDp1)
  (prodbyassociation_cdk46p2_cycDp1_cdk46p2cycDp1)
  (needforcatalyzedassociation_cdk7_cdk7cycH_cdk7p1)
  (needforcatalyzedassociation_cdk7cycH_cdk7_cdk7p1)
  (prodbycatalyzedassociation_cdk7_cdk7cycH_cdk7p1)
  (needforassociation_cdk7_cycH_cdk7cycH)
  (needforassociation_cycH_cdk7_cdk7cycH)
  (prodbyassociation_cdk7_cycH_cdk7cycH)
  (needforcatalyzedselfassociation_cdk7cycH_cdk7p1cycH)
  (prodbycatalyzedselfassociation_cdk7cycH_cdk7p1cycH)
  (needforassociation_cdk7p1_cycH_cdk7p1cycH)
  (needforassociation_cycH_cdk7p1_cdk7p1cycH)
  (prodbyassociation_cdk7p1_cycH_cdk7p1cycH)
  (needforassociation_CEBP_pRb_CEBPpRb)
  (needforassociation_pRb_CEBP_CEBPpRb)
  (prodbyassociation_CEBP_pRb_CEBPpRb)
  (needforassociation_CEBP_pRbp1_CEBPpRbp1)
  (needforassociation_pRbp1_CEBP_CEBPpRbp1)
  (prodbyassociation_CEBP_pRbp1_CEBPpRbp1)
  (needforassociation_CEBP_pRbp1p2_CEBPpRbp1p2)
  (needforassociation_pRbp1p2_CEBP_CEBPpRbp1p2)
  (prodbyassociation_CEBP_pRbp1p2_CEBPpRbp1p2)
  (needforassociation_CEBP_pRbp2_CEBPpRbp2)
  (needforassociation_pRbp2_CEBP_CEBPpRbp2)
  (prodbyassociation_CEBP_pRbp2_CEBPpRbp2)
  (needforassociation_cMyc_AP2_cMycAP2)
  (needforassociation_AP2_cMyc_cMycAP2)
  (prodbyassociation_cMyc_AP2_cMycAP2)
  (needforassociation_cMyc_Max_cMycMax)
  (needforassociation_Max_cMyc_cMycMax)
  (prodbyassociation_cMyc_Max_cMycMax)
  (needforsynthesis_cMycMaxgcdc25A_cdc25A)
  (prodbysynthesis_cMycMaxgcdc25A_cdc25A)
  (needforassociation_cMycMax_gcdc25A_cMycMaxgcdc25A)
  (needforassociation_gcdc25A_cMycMax_cMycMaxgcdc25A)
  (prodbyassociation_cMycMax_gcdc25A_cMycMaxgcdc25A)
  (needforcatalyzedassociation_cycA_Skp2p1Skp1_Skp2p1Skp1)
  (needforcatalyzedassociation_Skp2p1Skp1_cycA_Skp2p1Skp1)
  (prodbycatalyzedassociation_cycA_Skp2p1Skp1_Skp2p1Skp1)
  (needforcatalyzedassociation_cycA_Skp2p1Skp1p1_Skp2p1Skp1p1)
  (needforcatalyzedassociation_Skp2p1Skp1p1_cycA_Skp2p1Skp1p1)
  (prodbycatalyzedassociation_cycA_Skp2p1Skp1p1_Skp2p1Skp1p1)
  (needforcatalyzedassociation_cycA_Skp2Skp1_Skp2Skp1)
  (needforcatalyzedassociation_Skp2Skp1_cycA_Skp2Skp1)
  (prodbycatalyzedassociation_cycA_Skp2Skp1_Skp2Skp1)
  (needforcatalyzedassociation_cycA_Skp2Skp1p1_Skp2Skp1p1)
  (needforcatalyzedassociation_Skp2Skp1p1_cycA_Skp2Skp1p1)
  (prodbycatalyzedassociation_cycA_Skp2Skp1p1_Skp2Skp1p1)
  (needforcatalyzedassociation_cycE_cdk2p2cycE_cycEp1)
  (needforcatalyzedassociation_cdk2p2cycE_cycE_cycEp1)
  (prodbycatalyzedassociation_cycE_cdk2p2cycE_cycEp1)
  (needforcatalyzedassociation_cycE_cdk2p2cycEp1_cycEp1)
  (needforcatalyzedassociation_cdk2p2cycEp1_cycE_cycEp1)
  (prodbycatalyzedassociation_cycE_cdk2p2cycEp1_cycEp1)
  (needforcatalyzedassociation_DMP1_cdk46p3cycD_DMP1p1)
  (needforcatalyzedassociation_cdk46p3cycD_DMP1_DMP1p1)
  (prodbycatalyzedassociation_DMP1_cdk46p3cycD_DMP1p1)
  (needforcatalyzedassociation_DMP1_cdk46p3cycDp1_DMP1p1)
  (needforcatalyzedassociation_cdk46p3cycDp1_DMP1_DMP1p1)
  (prodbycatalyzedassociation_DMP1_cdk46p3cycDp1_DMP1p1)
  (needforassociation_DMP1_cycD_DMP1cycD)
  (needforassociation_cycD_DMP1_DMP1cycD)
  (prodbyassociation_DMP1_cycD_DMP1cycD)
  (needforassociation_DMP1_cycDp1_DMP1cycDp1)
  (needforassociation_cycDp1_DMP1_DMP1cycDp1)
  (prodbyassociation_DMP1_cycDp1_DMP1cycDp1)
  (needforassociation_DMP1p1_cycD_DMP1p1cycD)
  (needforassociation_cycD_DMP1p1_DMP1p1cycD)
  (prodbyassociation_DMP1p1_cycD_DMP1p1cycD)
  (needforassociation_DMP1p1_cycDp1_DMP1p1cycDp1)
  (needforassociation_cycDp1_DMP1p1_DMP1p1cycDp1)
  (prodbyassociation_DMP1p1_cycDp1_DMP1p1cycDp1)
  (needforcatalyzedassociation_DP12_cdk2p2cycA_DP12p1)
  (needforcatalyzedassociation_cdk2p2cycA_DP12_DP12p1)
  (prodbycatalyzedassociation_DP12_cdk2p2cycA_DP12p1)
  (needforcatalyzedassociation_E2F13_cdk2p2cycA_E2F13p1)
  (needforcatalyzedassociation_cdk2p2cycA_E2F13_E2F13p1)
  (prodbycatalyzedassociation_E2F13_cdk2p2cycA_E2F13p1)
  (needforsynthesis_E2F13p1DP12gE2_cMyc)
  (prodbysynthesis_E2F13p1DP12gE2_cMyc)
  (needforsynthesis_E2F13p1DP12gE2_cycA)
  (prodbysynthesis_E2F13p1DP12gE2_cycA)
  (needforsynthesis_E2F13p1DP12gE2_cycD)
  (prodbysynthesis_E2F13p1DP12gE2_cycD)
  (needforsynthesis_E2F13p1DP12gE2_cycDp1)
  (prodbysynthesis_E2F13p1DP12gE2_cycDp1)
  (needforsynthesis_E2F13p1DP12gE2_cycE)
  (prodbysynthesis_E2F13p1DP12gE2_cycE)
  (needforsynthesis_E2F13p1DP12gE2_cycEp1)
  (prodbysynthesis_E2F13p1DP12gE2_cycEp1)
  (needforassociation_E2F13p1DP12_gE2_E2F13p1DP12gE2)
  (needforassociation_gE2_E2F13p1DP12_E2F13p1DP12gE2)
  (prodbyassociation_E2F13p1DP12_gE2_E2F13p1DP12gE2)
  (needforsynthesis_E2F13p1DP12gE2_p107)
  (prodbysynthesis_E2F13p1DP12gE2_p107)
  (needforsynthesis_E2F13p1DP12gE2_p107p1)
  (prodbysynthesis_E2F13p1DP12gE2_p107p1)
  (needforsynthesis_E2F13p1DP12gE2_p19ARF)
  (prodbysynthesis_E2F13p1DP12gE2_p19ARF)
  (needforsynthesis_E2F13p1DP12gE2_pol)
  (prodbysynthesis_E2F13p1DP12gE2_pol)
  (needforassociation_E2F2_DP12_E2F2DP12)
  (needforassociation_DP12_E2F2_E2F2DP12)
  (prodbyassociation_E2F2_DP12_E2F2DP12)
  (needforassociation_E2F3_DP12_E2F3DP12)
  (needforassociation_DP12_E2F3_E2F3DP12)
  (prodbyassociation_E2F3_DP12_E2F3DP12)
  (needforassociation_E2F4_DP12_E2F4DP12)
  (needforassociation_DP12_E2F4_E2F4DP12)
  (prodbyassociation_E2F4_DP12_E2F4DP12)
  (needforsynthesis_E2F4DP12gE2_cMyc)
  (prodbysynthesis_E2F4DP12gE2_cMyc)
  (needforsynthesis_E2F4DP12gE2_cycA)
  (prodbysynthesis_E2F4DP12gE2_cycA)
  (needforsynthesis_E2F4DP12gE2_cycD)
  (prodbysynthesis_E2F4DP12gE2_cycD)
  (needforsynthesis_E2F4DP12gE2_cycDp1)
  (prodbysynthesis_E2F4DP12gE2_cycDp1)
  (needforsynthesis_E2F4DP12gE2_cycE)
  (prodbysynthesis_E2F4DP12gE2_cycE)
  (needforsynthesis_E2F4DP12gE2_cycEp1)
  (prodbysynthesis_E2F4DP12gE2_cycEp1)
  (needforassociation_E2F4DP12_gE2_E2F4DP12gE2)
  (needforassociation_gE2_E2F4DP12_E2F4DP12gE2)
  (prodbyassociation_E2F4DP12_gE2_E2F4DP12gE2)
  (needforsynthesis_E2F4DP12gE2_p107)
  (prodbysynthesis_E2F4DP12gE2_p107)
  (needforsynthesis_E2F4DP12gE2_p107p1)
  (prodbysynthesis_E2F4DP12gE2_p107p1)
  (needforsynthesis_E2F4DP12gE2_p19ARF)
  (prodbysynthesis_E2F4DP12gE2_p19ARF)
  (needforsynthesis_E2F4DP12gE2_pol)
  (prodbysynthesis_E2F4DP12gE2_pol)
  (needforassociation_E2F5_DP12_E2F5DP12)
  (needforassociation_DP12_E2F5_E2F5DP12)
  (prodbyassociation_E2F5_DP12_E2F5DP12)
  (needforsynthesis_E2F5DP12gE2_cMyc)
  (prodbysynthesis_E2F5DP12gE2_cMyc)
  (needforsynthesis_E2F5DP12gE2_cycA)
  (prodbysynthesis_E2F5DP12gE2_cycA)
  (needforsynthesis_E2F5DP12gE2_cycD)
  (prodbysynthesis_E2F5DP12gE2_cycD)
  (needforsynthesis_E2F5DP12gE2_cycDp1)
  (prodbysynthesis_E2F5DP12gE2_cycDp1)
  (needforsynthesis_E2F5DP12gE2_cycE)
  (prodbysynthesis_E2F5DP12gE2_cycE)
  (needforsynthesis_E2F5DP12gE2_cycEp1)
  (prodbysynthesis_E2F5DP12gE2_cycEp1)
  (needforassociation_E2F5DP12_gE2_E2F5DP12gE2)
  (needforassociation_gE2_E2F5DP12_E2F5DP12gE2)
  (prodbyassociation_E2F5DP12_gE2_E2F5DP12gE2)
  (needforsynthesis_E2F5DP12gE2_p107)
  (prodbysynthesis_E2F5DP12gE2_p107)
  (needforsynthesis_E2F5DP12gE2_p107p1)
  (prodbysynthesis_E2F5DP12gE2_p107p1)
  (needforsynthesis_E2F5DP12gE2_p19ARF)
  (prodbysynthesis_E2F5DP12gE2_p19ARF)
  (needforsynthesis_E2F5DP12gE2_pol)
  (prodbysynthesis_E2F5DP12gE2_pol)
  (needforassociation_E2F6_DP12_E2F6DP12)
  (needforassociation_DP12_E2F6_E2F6DP12)
  (prodbyassociation_E2F6_DP12_E2F6DP12)
  (needforassociation_E2F6DP12_gE2_E2F6DP12gE2)
  (needforassociation_gE2_E2F6DP12_E2F6DP12gE2)
  (prodbyassociation_E2F6DP12_gE2_E2F6DP12gE2)
  (needforassociation_E2F6DP12p1_gE2_E2F6DP12p1gE2)
  (needforassociation_gE2_E2F6DP12p1_E2F6DP12p1gE2)
  (prodbyassociation_E2F6DP12p1_gE2_E2F6DP12p1gE2)
  (needforassociation_HDAC1p107E2F4DP12_gE2_HDAC1p107E2F4DP12gE2)
  (needforassociation_gE2_HDAC1p107E2F4DP12_HDAC1p107E2F4DP12gE2)
  (prodbyassociation_HDAC1p107E2F4DP12_gE2_HDAC1p107E2F4DP12gE2)
  (needforassociation_HDAC1_p107E2F4DP12_HDAC1p107E2F4DP12)
  (needforassociation_p107E2F4DP12_HDAC1_HDAC1p107E2F4DP12)
  (prodbyassociation_HDAC1_p107E2F4DP12_HDAC1p107E2F4DP12)
  (needforassociation_HDAC1_p107E2F4DP12p1_HDAC1p107E2F4DP12p1)
  (needforassociation_p107E2F4DP12p1_HDAC1_HDAC1p107E2F4DP12p1)
  (prodbyassociation_HDAC1_p107E2F4DP12p1_HDAC1p107E2F4DP12p1)
  (needforassociation_HDAC1p107E2F4p1DP12_gE2_HDAC1p107E2F4p1DP12gE2)
  (needforassociation_gE2_HDAC1p107E2F4p1DP12_HDAC1p107E2F4p1DP12gE2)
  (prodbyassociation_HDAC1p107E2F4p1DP12_gE2_HDAC1p107E2F4p1DP12gE2)
  (needforassociation_HDAC1p130E2F4p1DP12_gE2_HDAC1p130E2F4p1DP12gE2)
  (needforassociation_gE2_HDAC1p130E2F4p1DP12_HDAC1p130E2F4p1DP12gE2)
  (prodbyassociation_HDAC1p130E2F4p1DP12_gE2_HDAC1p130E2F4p1DP12gE2)
  (needforassociation_HDAC1p130E2F5p1DP12_gE2_HDAC1p130E2F5p1DP12gE2)
  (needforassociation_gE2_HDAC1p130E2F5p1DP12_HDAC1p130E2F5p1DP12gE2)
  (prodbyassociation_HDAC1p130E2F5p1DP12_gE2_HDAC1p130E2F5p1DP12gE2)
  (needforassociation_HDAC1pRbE2F13p1DP12_gE2_HDAC1pRbE2F13p1DP12gE2)
  (needforassociation_gE2_HDAC1pRbE2F13p1DP12_HDAC1pRbE2F13p1DP12gE2)
  (prodbyassociation_HDAC1pRbE2F13p1DP12_gE2_HDAC1pRbE2F13p1DP12gE2)
  (needforassociation_HDAC1_pRbE2F13p1DP12_HDAC1pRbE2F13p1DP12)
  (needforassociation_pRbE2F13p1DP12_HDAC1_HDAC1pRbE2F13p1DP12)
  (prodbyassociation_HDAC1_pRbE2F13p1DP12_HDAC1pRbE2F13p1DP12)
  (needforassociation_HDAC1_pRbE2F13p1DP12p1_HDAC1pRbE2F13p1DP12p1)
  (needforassociation_pRbE2F13p1DP12p1_HDAC1_HDAC1pRbE2F13p1DP12p1)
  (prodbyassociation_HDAC1_pRbE2F13p1DP12p1_HDAC1pRbE2F13p1DP12p1)
  (needforassociation_HDAC1pRbE2F4DP12_gE2_HDAC1pRbE2F4DP12gE2)
  (needforassociation_gE2_HDAC1pRbE2F4DP12_HDAC1pRbE2F4DP12gE2)
  (prodbyassociation_HDAC1pRbE2F4DP12_gE2_HDAC1pRbE2F4DP12gE2)
  (needforassociation_HDAC1_pRbE2F4DP12_HDAC1pRbE2F4DP12)
  (needforassociation_pRbE2F4DP12_HDAC1_HDAC1pRbE2F4DP12)
  (prodbyassociation_HDAC1_pRbE2F4DP12_HDAC1pRbE2F4DP12)
  (needforassociation_HDAC1_pRbE2F4p1DP12_HDAC1pRbE2F4p1DP12)
  (needforassociation_pRbE2F4p1DP12_HDAC1_HDAC1pRbE2F4p1DP12)
  (prodbyassociation_HDAC1_pRbE2F4p1DP12_HDAC1pRbE2F4p1DP12)
  (needforassociation_HDAC1pRbp1E2F13DP12_gE2_HDAC1pRbp1E2F13DP12gE2)
  (needforassociation_gE2_HDAC1pRbp1E2F13DP12_HDAC1pRbp1E2F13DP12gE2)
  (prodbyassociation_HDAC1pRbp1E2F13DP12_gE2_HDAC1pRbp1E2F13DP12gE2)
  (needforassociation_HDAC1pRbp1E2F13p1DP12_gE2_HDAC1pRbp1E2F13p1DP12gE2)
  (needforassociation_gE2_HDAC1pRbp1E2F13p1DP12_HDAC1pRbp1E2F13p1DP12gE2)
  (prodbyassociation_HDAC1pRbp1E2F13p1DP12_gE2_HDAC1pRbp1E2F13p1DP12gE2)
  (needforassociation_HDAC1pRbp1E2F4DP12_gE2_HDAC1pRbp1E2F4DP12gE2)
  (needforassociation_gE2_HDAC1pRbp1E2F4DP12_HDAC1pRbp1E2F4DP12gE2)
  (prodbyassociation_HDAC1pRbp1E2F4DP12_gE2_HDAC1pRbp1E2F4DP12gE2)
  (needforassociation_Jun_cFos_JuncFos)
  (needforassociation_cFos_Jun_JuncFos)
  (prodbyassociation_Jun_cFos_JuncFos)
  (needforassociation_Mdm2_E2F13p1DP12_Mdm2E2F13p1DP12)
  (needforassociation_E2F13p1DP12_Mdm2_Mdm2E2F13p1DP12)
  (prodbyassociation_Mdm2_E2F13p1DP12_Mdm2E2F13p1DP12)
  (needforassociation_Mdm2_E2F13p1DP12p1_Mdm2E2F13p1DP12p1)
  (needforassociation_E2F13p1DP12p1_Mdm2_Mdm2E2F13p1DP12p1)
  (prodbyassociation_Mdm2_E2F13p1DP12p1_Mdm2E2F13p1DP12p1)
  (needforassociation_Mdm2_pRb_Mdm2pRb)
  (needforassociation_pRb_Mdm2_Mdm2pRb)
  (prodbyassociation_Mdm2_pRb_Mdm2pRb)
  (needforassociation_Mdm2_pRbp1_Mdm2pRbp1)
  (needforassociation_pRbp1_Mdm2_Mdm2pRbp1)
  (prodbyassociation_Mdm2_pRbp1_Mdm2pRbp1)
  (needforassociation_Mdm2_pRbp1p2_Mdm2pRbp1p2)
  (needforassociation_pRbp1p2_Mdm2_Mdm2pRbp1p2)
  (prodbyassociation_Mdm2_pRbp1p2_Mdm2pRbp1p2)
  (needforassociation_Mdm2_pRbp2_Mdm2pRbp2)
  (needforassociation_pRbp2_Mdm2_Mdm2pRbp2)
  (prodbyassociation_Mdm2_pRbp2_Mdm2pRbp2)
  (needforassociation_p107E2F4DP12_gE2_p107E2F4DP12gE2)
  (needforassociation_gE2_p107E2F4DP12_p107E2F4DP12gE2)
  (prodbyassociation_p107E2F4DP12_gE2_p107E2F4DP12gE2)
  (needforassociation_p107_E2F4DP12_p107E2F4DP12)
  (needforassociation_E2F4DP12_p107_p107E2F4DP12)
  (prodbyassociation_p107_E2F4DP12_p107E2F4DP12)
  (needforassociation_p107E2F4DP12p1_gE2_p107E2F4DP12p1gE2)
  (needforassociation_gE2_p107E2F4DP12p1_p107E2F4DP12p1gE2)
  (prodbyassociation_p107E2F4DP12p1_gE2_p107E2F4DP12p1gE2)
  (needforassociation_p107_E2F4DP12p1_p107E2F4DP12p1)
  (needforassociation_E2F4DP12p1_p107_p107E2F4DP12p1)
  (prodbyassociation_p107_E2F4DP12p1_p107E2F4DP12p1)
  (needforassociation_p16_cdk46_p16cdk46)
  (needforassociation_cdk46_p16_p16cdk46)
  (prodbyassociation_p16_cdk46_p16cdk46)
  (needforassociation_p16_cdk46p1_p16cdk46p1)
  (needforassociation_cdk46p1_p16_p16cdk46p1)
  (prodbyassociation_p16_cdk46p1_p16cdk46p1)
  (needforassociation_p16_cdk46p1p2_p16cdk46p1p2)
  (needforassociation_cdk46p1p2_p16_p16cdk46p1p2)
  (prodbyassociation_p16_cdk46p1p2_p16cdk46p1p2)
  (needforassociation_p16_cdk46p2_p16cdk46p2)
  (needforassociation_cdk46p2_p16_p16cdk46p2)
  (prodbyassociation_p16_cdk46p2_p16cdk46p2)
  (needforassociation_p16_cdk7_p16cdk7)
  (needforassociation_cdk7_p16_p16cdk7)
  (prodbyassociation_p16_cdk7_p16cdk7)
  (needforassociation_p16_cdk7p1_p16cdk7p1)
  (needforassociation_cdk7p1_p16_p16cdk7p1)
  (prodbyassociation_p16_cdk7p1_p16cdk7p1)
  (needforassociation_p21_cdk2cycA_p21cdk2cycA)
  (needforassociation_cdk2cycA_p21_p21cdk2cycA)
  (prodbyassociation_p21_cdk2cycA_p21cdk2cycA)
  (needforassociation_p21_cdk2cycEp1_p21cdk2cycEp1)
  (needforassociation_cdk2cycEp1_p21_p21cdk2cycEp1)
  (prodbyassociation_p21_cdk2cycEp1_p21cdk2cycEp1)
  (needforassociation_p21_cdk2cycE_p21cdk2cycE)
  (needforassociation_cdk2cycE_p21_p21cdk2cycE)
  (prodbyassociation_p21_cdk2cycE_p21cdk2cycE)
  (needforassociation_p21_cdk2p1cycA_p21cdk2p1cycA)
  (needforassociation_cdk2p1cycA_p21_p21cdk2p1cycA)
  (prodbyassociation_p21_cdk2p1cycA_p21cdk2p1cycA)
  (needforassociation_p21_cdk2p1p2cycA_p21cdk2p1p2cycA)
  (needforassociation_cdk2p1p2cycA_p21_p21cdk2p1p2cycA)
  (prodbyassociation_p21_cdk2p1p2cycA_p21cdk2p1p2cycA)
  (needforassociation_p21_cdk2p2cycA_p21cdk2p2cycA)
  (needforassociation_cdk2p2cycA_p21_p21cdk2p2cycA)
  (prodbyassociation_p21_cdk2p2cycA_p21cdk2p2cycA)
  (needforassociation_p21_cdk2p2cycEp1_p21cdk2p2cycEp1)
  (needforassociation_cdk2p2cycEp1_p21_p21cdk2p2cycEp1)
  (prodbyassociation_p21_cdk2p2cycEp1_p21cdk2p2cycEp1)
  (needforassociation_p21_cdk2p2cycE_p21cdk2p2cycE)
  (needforassociation_cdk2p2cycE_p21_p21cdk2p2cycE)
  (prodbyassociation_p21_cdk2p2cycE_p21cdk2p2cycE)
  (needforassociation_p21_cdk46cycDp1_p21cdk46cycDp1)
  (needforassociation_cdk46cycDp1_p21_p21cdk46cycDp1)
  (prodbyassociation_p21_cdk46cycDp1_p21cdk46cycDp1)
  (needforassociation_p21_cdk46cycD_p21cdk46cycD)
  (needforassociation_cdk46cycD_p21_p21cdk46cycD)
  (prodbyassociation_p21_cdk46cycD_p21cdk46cycD)
  (needforassociation_p21_cdk46p1cycDp1_p21cdk46p1cycDp1)
  (needforassociation_cdk46p1cycDp1_p21_p21cdk46p1cycDp1)
  (prodbyassociation_p21_cdk46p1cycDp1_p21cdk46p1cycDp1)
  (needforassociation_p21_cdk46p1cycD_p21cdk46p1cycD)
  (needforassociation_cdk46p1cycD_p21_p21cdk46p1cycD)
  (prodbyassociation_p21_cdk46p1cycD_p21cdk46p1cycD)
  (needforassociation_p21_cdk46p1p2cycDp1_p21cdk46p1p2cycDp1)
  (needforassociation_cdk46p1p2cycDp1_p21_p21cdk46p1p2cycDp1)
  (prodbyassociation_p21_cdk46p1p2cycDp1_p21cdk46p1p2cycDp1)
  (needforassociation_p21_cdk46p1p2cycD_p21cdk46p1p2cycD)
  (needforassociation_cdk46p1p2cycD_p21_p21cdk46p1p2cycD)
  (prodbyassociation_p21_cdk46p1p2cycD_p21cdk46p1p2cycD)
  (needforassociation_p21_cdk46p2cycDp1_p21cdk46p2cycDp1)
  (needforassociation_cdk46p2cycDp1_p21_p21cdk46p2cycDp1)
  (prodbyassociation_p21_cdk46p2cycDp1_p21cdk46p2cycDp1)
  (needforassociation_p21_cdk46p2cycD_p21cdk46p2cycD)
  (needforassociation_cdk46p2cycD_p21_p21cdk46p2cycD)
  (prodbyassociation_p21_cdk46p2cycD_p21cdk46p2cycD)
  (needforassociation_p21_Gadd45_p21Gadd45)
  (needforassociation_Gadd45_p21_p21Gadd45)
  (prodbyassociation_p21_Gadd45_p21Gadd45)
  (needforassociation_p27_cdk2cycA_p27cdk2cycA)
  (needforassociation_cdk2cycA_p27_p27cdk2cycA)
  (prodbyassociation_p27_cdk2cycA_p27cdk2cycA)
  (needforassociation_p27_cdk2cycEp1_p27cdk2cycEp1)
  (needforassociation_cdk2cycEp1_p27_p27cdk2cycEp1)
  (prodbyassociation_p27_cdk2cycEp1_p27cdk2cycEp1)
  (needforassociation_p27_cdk2cycE_p27cdk2cycE)
  (needforassociation_cdk2cycE_p27_p27cdk2cycE)
  (prodbyassociation_p27_cdk2cycE_p27cdk2cycE)
  (needforassociation_p27_cdk2p1cycA_p27cdk2p1cycA)
  (needforassociation_cdk2p1cycA_p27_p27cdk2p1cycA)
  (prodbyassociation_p27_cdk2p1cycA_p27cdk2p1cycA)
  (needforassociation_p27_cdk2p1p2cycA_p27cdk2p1p2cycA)
  (needforassociation_cdk2p1p2cycA_p27_p27cdk2p1p2cycA)
  (prodbyassociation_p27_cdk2p1p2cycA_p27cdk2p1p2cycA)
  (needforassociation_p27_cdk2p2cycA_p27cdk2p2cycA)
  (needforassociation_cdk2p2cycA_p27_p27cdk2p2cycA)
  (prodbyassociation_p27_cdk2p2cycA_p27cdk2p2cycA)
  (needforassociation_p27_cdk2p2cycEp1_p27cdk2p2cycEp1)
  (needforassociation_cdk2p2cycEp1_p27_p27cdk2p2cycEp1)
  (prodbyassociation_p27_cdk2p2cycEp1_p27cdk2p2cycEp1)
  (needforcatalyzedassociation_p27_cdk2p2cycEp1_p27p1)
  (needforcatalyzedassociation_cdk2p2cycEp1_p27_p27p1)
  (prodbycatalyzedassociation_p27_cdk2p2cycEp1_p27p1)
  (needforassociation_p27_cdk2p2cycE_p27cdk2p2cycE)
  (needforassociation_cdk2p2cycE_p27_p27cdk2p2cycE)
  (prodbyassociation_p27_cdk2p2cycE_p27cdk2p2cycE)
  (needforcatalyzedassociation_p27_cdk2p2cycE_p27p1)
  (needforcatalyzedassociation_cdk2p2cycE_p27_p27p1)
  (prodbycatalyzedassociation_p27_cdk2p2cycE_p27p1)
  (needforassociation_p27_cdk46cycDp1_p27cdk46cycDp1)
  (needforassociation_cdk46cycDp1_p27_p27cdk46cycDp1)
  (prodbyassociation_p27_cdk46cycDp1_p27cdk46cycDp1)
  (needforassociation_p27_cdk46cycD_p27cdk46cycD)
  (needforassociation_cdk46cycD_p27_p27cdk46cycD)
  (prodbyassociation_p27_cdk46cycD_p27cdk46cycD)
  (needforassociation_p27_cdk46p1cycDp1_p27cdk46p1cycDp1)
  (needforassociation_cdk46p1cycDp1_p27_p27cdk46p1cycDp1)
  (prodbyassociation_p27_cdk46p1cycDp1_p27cdk46p1cycDp1)
  (needforassociation_p27_cdk46p1cycD_p27cdk46p1cycD)
  (needforassociation_cdk46p1cycD_p27_p27cdk46p1cycD)
  (prodbyassociation_p27_cdk46p1cycD_p27cdk46p1cycD)
  (needforassociation_p27_cdk46p1p2cycDp1_p27cdk46p1p2cycDp1)
  (needforassociation_cdk46p1p2cycDp1_p27_p27cdk46p1p2cycDp1)
  (prodbyassociation_p27_cdk46p1p2cycDp1_p27cdk46p1p2cycDp1)
  (needforassociation_p27_cdk46p1p2cycD_p27cdk46p1p2cycD)
  (needforassociation_cdk46p1p2cycD_p27_p27cdk46p1p2cycD)
  (prodbyassociation_p27_cdk46p1p2cycD_p27cdk46p1p2cycD)
  (needforassociation_p27_cdk46p2cycDp1_p27cdk46p2cycDp1)
  (needforassociation_cdk46p2cycDp1_p27_p27cdk46p2cycDp1)
  (prodbyassociation_p27_cdk46p2cycDp1_p27cdk46p2cycDp1)
  (needforassociation_p27_cdk46p2cycD_p27cdk46p2cycD)
  (needforassociation_cdk46p2cycD_p27_p27cdk46p2cycD)
  (prodbyassociation_p27_cdk46p2cycD_p27cdk46p2cycD)
  (needforassociation_p27p1_cdk2cycA_p27p1cdk2cycA)
  (needforassociation_cdk2cycA_p27p1_p27p1cdk2cycA)
  (prodbyassociation_p27p1_cdk2cycA_p27p1cdk2cycA)
  (needforassociation_p27p1_cdk2cycEp1_p27p1cdk2cycEp1)
  (needforassociation_cdk2cycEp1_p27p1_p27p1cdk2cycEp1)
  (prodbyassociation_p27p1_cdk2cycEp1_p27p1cdk2cycEp1)
  (needforassociation_p27p1_cdk2cycE_p27p1cdk2cycE)
  (needforassociation_cdk2cycE_p27p1_p27p1cdk2cycE)
  (prodbyassociation_p27p1_cdk2cycE_p27p1cdk2cycE)
  (needforassociation_p27p1_cdk2p1cycA_p27p1cdk2p1cycA)
  (needforassociation_cdk2p1cycA_p27p1_p27p1cdk2p1cycA)
  (prodbyassociation_p27p1_cdk2p1cycA_p27p1cdk2p1cycA)
  (needforassociation_p27p1_cdk2p1p2cycA_p27p1cdk2p1p2cycA)
  (needforassociation_cdk2p1p2cycA_p27p1_p27p1cdk2p1p2cycA)
  (prodbyassociation_p27p1_cdk2p1p2cycA_p27p1cdk2p1p2cycA)
  (needforassociation_p27p1_cdk2p2cycA_p27p1cdk2p2cycA)
  (needforassociation_cdk2p2cycA_p27p1_p27p1cdk2p2cycA)
  (prodbyassociation_p27p1_cdk2p2cycA_p27p1cdk2p2cycA)
  (needforassociation_p27p1_cdk2p2cycEp1_p27p1cdk2p2cycEp1)
  (needforassociation_cdk2p2cycEp1_p27p1_p27p1cdk2p2cycEp1)
  (prodbyassociation_p27p1_cdk2p2cycEp1_p27p1cdk2p2cycEp1)
  (needforassociation_p27p1_cdk2p2cycE_p27p1cdk2p2cycE)
  (needforassociation_cdk2p2cycE_p27p1_p27p1cdk2p2cycE)
  (prodbyassociation_p27p1_cdk2p2cycE_p27p1cdk2p2cycE)
  (needforassociation_p27p1_cdk46cycDp1_p27p1cdk46cycDp1)
  (needforassociation_cdk46cycDp1_p27p1_p27p1cdk46cycDp1)
  (prodbyassociation_p27p1_cdk46cycDp1_p27p1cdk46cycDp1)
  (needforassociation_p27p1_cdk46cycD_p27p1cdk46cycD)
  (needforassociation_cdk46cycD_p27p1_p27p1cdk46cycD)
  (prodbyassociation_p27p1_cdk46cycD_p27p1cdk46cycD)
  (needforassociation_p27p1_cdk46p1cycDp1_p27p1cdk46p1cycDp1)
  (needforassociation_cdk46p1cycDp1_p27p1_p27p1cdk46p1cycDp1)
  (prodbyassociation_p27p1_cdk46p1cycDp1_p27p1cdk46p1cycDp1)
  (needforassociation_p27p1_cdk46p1cycD_p27p1cdk46p1cycD)
  (needforassociation_cdk46p1cycD_p27p1_p27p1cdk46p1cycD)
  (prodbyassociation_p27p1_cdk46p1cycD_p27p1cdk46p1cycD)
  (needforassociation_p27p1_cdk46p1p2cycDp1_p27p1cdk46p1p2cycDp1)
  (needforassociation_cdk46p1p2cycDp1_p27p1_p27p1cdk46p1p2cycDp1)
  (prodbyassociation_p27p1_cdk46p1p2cycDp1_p27p1cdk46p1p2cycDp1)
  (needforassociation_p27p1_cdk46p1p2cycD_p27p1cdk46p1p2cycD)
  (needforassociation_cdk46p1p2cycD_p27p1_p27p1cdk46p1p2cycD)
  (prodbyassociation_p27p1_cdk46p1p2cycD_p27p1cdk46p1p2cycD)
  (needforassociation_p27p1_cdk46p2cycDp1_p27p1cdk46p2cycDp1)
  (needforassociation_cdk46p2cycDp1_p27p1_p27p1cdk46p2cycDp1)
  (prodbyassociation_p27p1_cdk46p2cycDp1_p27p1cdk46p2cycDp1)
  (needforassociation_p27p1_cdk46p2cycD_p27p1cdk46p2cycD)
  (needforassociation_cdk46p2cycD_p27p1_p27p1cdk46p2cycD)
  (prodbyassociation_p27p1_cdk46p2cycD_p27p1cdk46p2cycD)
  (needforsynthesis_p53_cFos)
  (prodbysynthesis_p53_cFos)
  (needforassociation_p53_DP12p1_p53DP12p1)
  (needforassociation_DP12p1_p53_p53DP12p1)
  (prodbyassociation_p53_DP12p1_p53DP12p1)
  (needforassociation_p53_DP12_p53DP12)
  (needforassociation_DP12_p53_p53DP12)
  (prodbyassociation_p53_DP12_p53DP12)
  (needforsynthesis_p53_Gadd45)
  (prodbysynthesis_p53_Gadd45)
  (needforsynthesis_p53_Mdm2)
  (prodbysynthesis_p53_Mdm2)
  (needforsynthesis_p53p1_cFos)
  (prodbysynthesis_p53p1_cFos)
  (needforassociation_p53p1_DP12p1_p53p1DP12p1)
  (needforassociation_DP12p1_p53p1_p53p1DP12p1)
  (prodbyassociation_p53p1_DP12p1_p53p1DP12p1)
  (needforassociation_p53p1_DP12_p53p1DP12)
  (needforassociation_DP12_p53p1_p53p1DP12)
  (prodbyassociation_p53p1_DP12_p53p1DP12)
  (needforsynthesis_p53p1_Gadd45)
  (prodbysynthesis_p53p1_Gadd45)
  (needforsynthesis_p53p1_Mdm2)
  (prodbysynthesis_p53p1_Mdm2)
  (needforsynthesis_p53p1_p21)
  (prodbysynthesis_p53p1_p21)
  (needforsynthesis_p53_p21)
  (prodbysynthesis_p53_p21)
  (needforassociation_p57_cdk2cycA_p57cdk2cycA)
  (needforassociation_cdk2cycA_p57_p57cdk2cycA)
  (prodbyassociation_p57_cdk2cycA_p57cdk2cycA)
  (needforassociation_p57_cdk2cycEp1_p57cdk2cycEp1)
  (needforassociation_cdk2cycEp1_p57_p57cdk2cycEp1)
  (prodbyassociation_p57_cdk2cycEp1_p57cdk2cycEp1)
  (needforassociation_p57_cdk2cycE_p57cdk2cycE)
  (needforassociation_cdk2cycE_p57_p57cdk2cycE)
  (prodbyassociation_p57_cdk2cycE_p57cdk2cycE)
  (needforassociation_p57_cdk2p1cycA_p57cdk2p1cycA)
  (needforassociation_cdk2p1cycA_p57_p57cdk2p1cycA)
  (prodbyassociation_p57_cdk2p1cycA_p57cdk2p1cycA)
  (needforassociation_p57_cdk2p1p2cycA_p57cdk2p1p2cycA)
  (needforassociation_cdk2p1p2cycA_p57_p57cdk2p1p2cycA)
  (prodbyassociation_p57_cdk2p1p2cycA_p57cdk2p1p2cycA)
  (needforassociation_p57_cdk2p2cycA_p57cdk2p2cycA)
  (needforassociation_cdk2p2cycA_p57_p57cdk2p2cycA)
  (prodbyassociation_p57_cdk2p2cycA_p57cdk2p2cycA)
  (needforassociation_p57_cdk2p2cycEp1_p57cdk2p2cycEp1)
  (needforassociation_cdk2p2cycEp1_p57_p57cdk2p2cycEp1)
  (prodbyassociation_p57_cdk2p2cycEp1_p57cdk2p2cycEp1)
  (needforassociation_p57_cdk2p2cycE_p57cdk2p2cycE)
  (needforassociation_cdk2p2cycE_p57_p57cdk2p2cycE)
  (prodbyassociation_p57_cdk2p2cycE_p57cdk2p2cycE)
  (needforassociation_p57_cdk46cycDp1_p57cdk46cycDp1)
  (needforassociation_cdk46cycDp1_p57_p57cdk46cycDp1)
  (prodbyassociation_p57_cdk46cycDp1_p57cdk46cycDp1)
  (needforassociation_p57_cdk46cycD_p57cdk46cycD)
  (needforassociation_cdk46cycD_p57_p57cdk46cycD)
  (prodbyassociation_p57_cdk46cycD_p57cdk46cycD)
  (needforassociation_p57_cdk46p1cycDp1_p57cdk46p1cycDp1)
  (needforassociation_cdk46p1cycDp1_p57_p57cdk46p1cycDp1)
  (prodbyassociation_p57_cdk46p1cycDp1_p57cdk46p1cycDp1)
  (needforassociation_p57_cdk46p1cycD_p57cdk46p1cycD)
  (needforassociation_cdk46p1cycD_p57_p57cdk46p1cycD)
  (prodbyassociation_p57_cdk46p1cycD_p57cdk46p1cycD)
  (needforassociation_p57_cdk46p1p2cycDp1_p57cdk46p1p2cycDp1)
  (needforassociation_cdk46p1p2cycDp1_p57_p57cdk46p1p2cycDp1)
  (prodbyassociation_p57_cdk46p1p2cycDp1_p57cdk46p1p2cycDp1)
  (needforassociation_p57_cdk46p1p2cycD_p57cdk46p1p2cycD)
  (needforassociation_cdk46p1p2cycD_p57_p57cdk46p1p2cycD)
  (prodbyassociation_p57_cdk46p1p2cycD_p57cdk46p1p2cycD)
  (needforassociation_p57_cdk46p2cycDp1_p57cdk46p2cycDp1)
  (needforassociation_cdk46p2cycDp1_p57_p57cdk46p2cycDp1)
  (prodbyassociation_p57_cdk46p2cycDp1_p57cdk46p2cycDp1)
  (needforassociation_p57_cdk46p2cycD_p57cdk46p2cycD)
  (needforassociation_cdk46p2cycD_p57_p57cdk46p2cycD)
  (prodbyassociation_p57_cdk46p2cycD_p57cdk46p2cycD)
  (needforassociation_p57p1_cdk46cycDp1_p57p1cdk46cycDp1)
  (needforassociation_cdk46cycDp1_p57p1_p57p1cdk46cycDp1)
  (prodbyassociation_p57p1_cdk46cycDp1_p57p1cdk46cycDp1)
  (needforassociation_p57p1_cdk46cycD_p57p1cdk46cycD)
  (needforassociation_cdk46cycD_p57p1_p57p1cdk46cycD)
  (prodbyassociation_p57p1_cdk46cycD_p57p1cdk46cycD)
  (needforassociation_p57p1_cdk46p1cycDp1_p57p1cdk46p1cycDp1)
  (needforassociation_cdk46p1cycDp1_p57p1_p57p1cdk46p1cycDp1)
  (prodbyassociation_p57p1_cdk46p1cycDp1_p57p1cdk46p1cycDp1)
  (needforassociation_p57p1_cdk46p1cycD_p57p1cdk46p1cycD)
  (needforassociation_cdk46p1cycD_p57p1_p57p1cdk46p1cycD)
  (prodbyassociation_p57p1_cdk46p1cycD_p57p1cdk46p1cycD)
  (needforassociation_p57p1_cdk46p1p2cycDp1_p57p1cdk46p1p2cycDp1)
  (needforassociation_cdk46p1p2cycDp1_p57p1_p57p1cdk46p1p2cycDp1)
  (prodbyassociation_p57p1_cdk46p1p2cycDp1_p57p1cdk46p1p2cycDp1)
  (needforassociation_p57p1_cdk46p1p2cycD_p57p1cdk46p1p2cycD)
  (needforassociation_cdk46p1p2cycD_p57p1_p57p1cdk46p1p2cycD)
  (prodbyassociation_p57p1_cdk46p1p2cycD_p57p1cdk46p1p2cycD)
  (needforassociation_p57p1_cdk46p2cycDp1_p57p1cdk46p2cycDp1)
  (needforassociation_cdk46p2cycDp1_p57p1_p57p1cdk46p2cycDp1)
  (prodbyassociation_p57p1_cdk46p2cycDp1_p57p1cdk46p2cycDp1)
  (needforassociation_p57p1_cdk46p2cycD_p57p1cdk46p2cycD)
  (needforassociation_cdk46p2cycD_p57p1_p57p1cdk46p2cycD)
  (prodbyassociation_p57p1_cdk46p2cycD_p57p1cdk46p2cycD)
  (needforassociation_pCAF_p300_pCAFp300)
  (needforassociation_p300_pCAF_pCAFp300)
  (prodbyassociation_pCAF_p300_pCAFp300)
  (needforassociation_PCNA_cycDp1_PCNAcycDp1)
  (needforassociation_cycDp1_PCNA_PCNAcycDp1)
  (prodbyassociation_PCNA_cycDp1_PCNAcycDp1)
  (needforassociation_PCNA_cycD_PCNAcycD)
  (needforassociation_cycD_PCNA_PCNAcycD)
  (prodbyassociation_PCNA_cycD_PCNAcycD)
  (needforassociation_PCNA_Gadd45_PCNAGadd45)
  (needforassociation_Gadd45_PCNA_PCNAGadd45)
  (prodbyassociation_PCNA_Gadd45_PCNAGadd45)
  (needforassociation_PCNAp21_cdk2cycA_PCNAp21cdk2cycA)
  (needforassociation_cdk2cycA_PCNAp21_PCNAp21cdk2cycA)
  (prodbyassociation_PCNAp21_cdk2cycA_PCNAp21cdk2cycA)
  (needforassociation_PCNAp21_cdk2cycEp1_PCNAp21cdk2cycEp1)
  (needforassociation_cdk2cycEp1_PCNAp21_PCNAp21cdk2cycEp1)
  (prodbyassociation_PCNAp21_cdk2cycEp1_PCNAp21cdk2cycEp1)
  (needforassociation_PCNAp21_cdk2cycE_PCNAp21cdk2cycE)
  (needforassociation_cdk2cycE_PCNAp21_PCNAp21cdk2cycE)
  (prodbyassociation_PCNAp21_cdk2cycE_PCNAp21cdk2cycE)
  (needforassociation_PCNAp21_cdk2p1cycA_PCNAp21cdk2p1cycA)
  (needforassociation_cdk2p1cycA_PCNAp21_PCNAp21cdk2p1cycA)
  (prodbyassociation_PCNAp21_cdk2p1cycA_PCNAp21cdk2p1cycA)
  (needforassociation_PCNAp21_cdk2p1p2cycA_PCNAp21cdk2p1p2cycA)
  (needforassociation_cdk2p1p2cycA_PCNAp21_PCNAp21cdk2p1p2cycA)
  (prodbyassociation_PCNAp21_cdk2p1p2cycA_PCNAp21cdk2p1p2cycA)
  (needforassociation_PCNAp21_cdk2p2cycA_PCNAp21cdk2p2cycA)
  (needforassociation_cdk2p2cycA_PCNAp21_PCNAp21cdk2p2cycA)
  (prodbyassociation_PCNAp21_cdk2p2cycA_PCNAp21cdk2p2cycA)
  (needforassociation_PCNAp21_cdk2p2cycEp1_PCNAp21cdk2p2cycEp1)
  (needforassociation_cdk2p2cycEp1_PCNAp21_PCNAp21cdk2p2cycEp1)
  (prodbyassociation_PCNAp21_cdk2p2cycEp1_PCNAp21cdk2p2cycEp1)
  (needforassociation_PCNAp21_cdk2p2cycE_PCNAp21cdk2p2cycE)
  (needforassociation_cdk2p2cycE_PCNAp21_PCNAp21cdk2p2cycE)
  (prodbyassociation_PCNAp21_cdk2p2cycE_PCNAp21cdk2p2cycE)
  (needforassociation_PCNAp21_cdk46cycDp1_PCNAp21cdk46cycDp1)
  (needforassociation_cdk46cycDp1_PCNAp21_PCNAp21cdk46cycDp1)
  (prodbyassociation_PCNAp21_cdk46cycDp1_PCNAp21cdk46cycDp1)
  (needforassociation_PCNAp21_cdk46cycD_PCNAp21cdk46cycD)
  (needforassociation_cdk46cycD_PCNAp21_PCNAp21cdk46cycD)
  (prodbyassociation_PCNAp21_cdk46cycD_PCNAp21cdk46cycD)
  (needforassociation_PCNAp21_cdk46p1cycDp1_PCNAp21cdk46p1cycDp1)
  (needforassociation_cdk46p1cycDp1_PCNAp21_PCNAp21cdk46p1cycDp1)
  (prodbyassociation_PCNAp21_cdk46p1cycDp1_PCNAp21cdk46p1cycDp1)
  (needforassociation_PCNAp21_cdk46p1cycD_PCNAp21cdk46p1cycD)
  (needforassociation_cdk46p1cycD_PCNAp21_PCNAp21cdk46p1cycD)
  (prodbyassociation_PCNAp21_cdk46p1cycD_PCNAp21cdk46p1cycD)
  (needforassociation_PCNAp21_cdk46p1p2cycDp1_PCNAp21cdk46p1p2cycDp1)
  (needforassociation_cdk46p1p2cycDp1_PCNAp21_PCNAp21cdk46p1p2cycDp1)
  (prodbyassociation_PCNAp21_cdk46p1p2cycDp1_PCNAp21cdk46p1p2cycDp1)
  (needforassociation_PCNAp21_cdk46p1p2cycD_PCNAp21cdk46p1p2cycD)
  (needforassociation_cdk46p1p2cycD_PCNAp21_PCNAp21cdk46p1p2cycD)
  (prodbyassociation_PCNAp21_cdk46p1p2cycD_PCNAp21cdk46p1p2cycD)
  (needforassociation_PCNAp21_cdk46p2cycDp1_PCNAp21cdk46p2cycDp1)
  (needforassociation_cdk46p2cycDp1_PCNAp21_PCNAp21cdk46p2cycDp1)
  (prodbyassociation_PCNAp21_cdk46p2cycDp1_PCNAp21cdk46p2cycDp1)
  (needforassociation_PCNAp21_cdk46p2cycD_PCNAp21cdk46p2cycD)
  (needforassociation_cdk46p2cycD_PCNAp21_PCNAp21cdk46p2cycD)
  (prodbyassociation_PCNAp21_cdk46p2cycD_PCNAp21cdk46p2cycD)
  (needforassociation_PCNA_p21_PCNAp21)
  (needforassociation_p21_PCNA_PCNAp21)
  (prodbyassociation_PCNA_p21_PCNAp21)
  (needforsynthesis_pRbAP2gEc_Ecadherin)
  (prodbysynthesis_pRbAP2gEc_Ecadherin)
  (needforassociation_pRbAP2_gEc_pRbAP2gEc)
  (needforassociation_gEc_pRbAP2_pRbAP2gEc)
  (prodbyassociation_pRbAP2_gEc_pRbAP2gEc)
  (needforassociation_pRb_AP2_pRbAP2)
  (needforassociation_AP2_pRb_pRbAP2)
  (prodbyassociation_pRb_AP2_pRbAP2)
  (needforcatalyzedassociation_pRb_cdk46p3cycDp1_pRbp1)
  (needforcatalyzedassociation_cdk46p3cycDp1_pRb_pRbp1)
  (prodbycatalyzedassociation_pRb_cdk46p3cycDp1_pRbp1)
  (needforcatalyzedassociation_pRb_cdk46p3cycD_pRbp1)
  (needforcatalyzedassociation_cdk46p3cycD_pRb_pRbp1)
  (prodbycatalyzedassociation_pRb_cdk46p3cycD_pRbp1)
  (needforassociation_pRbE2F13p1DP12_gE2_pRbE2F13p1DP12gE2)
  (needforassociation_gE2_pRbE2F13p1DP12_pRbE2F13p1DP12gE2)
  (prodbyassociation_pRbE2F13p1DP12_gE2_pRbE2F13p1DP12gE2)
  (needforassociation_pRbE2F13p1DP12p1_gE2_pRbE2F13p1DP12p1gE2)
  (needforassociation_gE2_pRbE2F13p1DP12p1_pRbE2F13p1DP12p1gE2)
  (prodbyassociation_pRbE2F13p1DP12p1_gE2_pRbE2F13p1DP12p1gE2)
  (needforassociation_pRb_E2F13p1DP12p1_pRbE2F13p1DP12p1)
  (needforassociation_E2F13p1DP12p1_pRb_pRbE2F13p1DP12p1)
  (prodbyassociation_pRb_E2F13p1DP12p1_pRbE2F13p1DP12p1)
  (needforassociation_pRb_E2F13p1DP12_pRbE2F13p1DP12)
  (needforassociation_E2F13p1DP12_pRb_pRbE2F13p1DP12)
  (prodbyassociation_pRb_E2F13p1DP12_pRbE2F13p1DP12)
  (needforassociation_pRbE2F4DP12_gE2_pRbE2F4DP12gE2)
  (needforassociation_gE2_pRbE2F4DP12_pRbE2F4DP12gE2)
  (prodbyassociation_pRbE2F4DP12_gE2_pRbE2F4DP12gE2)
  (needforassociation_pRb_E2F4DP12p1_pRbE2F4DP12p1)
  (needforassociation_E2F4DP12p1_pRb_pRbE2F4DP12p1)
  (prodbyassociation_pRb_E2F4DP12p1_pRbE2F4DP12p1)
  (needforassociation_pRb_E2F4DP12_pRbE2F4DP12)
  (needforassociation_E2F4DP12_pRb_pRbE2F4DP12)
  (prodbyassociation_pRb_E2F4DP12_pRbE2F4DP12)
  (needforassociation_pRbE2F4p1DP12_gE2_pRbE2F4p1DP12gE2)
  (needforassociation_gE2_pRbE2F4p1DP12_pRbE2F4p1DP12gE2)
  (prodbyassociation_pRbE2F4p1DP12_gE2_pRbE2F4p1DP12gE2)
  (needforassociation_pRbJun_cFos_pRbJuncFos)
  (needforassociation_cFos_pRbJun_pRbJuncFos)
  (prodbyassociation_pRbJun_cFos_pRbJuncFos)
  (needforassociation_pRb_Jun_pRbJun)
  (needforassociation_Jun_pRb_pRbJun)
  (prodbyassociation_pRb_Jun_pRbJun)
  (needforsynthesis_pRbp1AP2gEc_Ecadherin)
  (prodbysynthesis_pRbp1AP2gEc_Ecadherin)
  (needforassociation_pRbp1AP2_gEc_pRbp1AP2gEc)
  (needforassociation_gEc_pRbp1AP2_pRbp1AP2gEc)
  (prodbyassociation_pRbp1AP2_gEc_pRbp1AP2gEc)
  (needforassociation_pRbp1_AP2_pRbp1AP2)
  (needforassociation_AP2_pRbp1_pRbp1AP2)
  (prodbyassociation_pRbp1_AP2_pRbp1AP2)
  (needforcatalyzedassociation_pRbp1_cdk2p2cycEp1_pRbp1p2)
  (needforcatalyzedassociation_cdk2p2cycEp1_pRbp1_pRbp1p2)
  (prodbycatalyzedassociation_pRbp1_cdk2p2cycEp1_pRbp1p2)
  (needforcatalyzedassociation_pRbp1_cdk2p2cycE_pRbp1p2)
  (needforcatalyzedassociation_cdk2p2cycE_pRbp1_pRbp1p2)
  (prodbycatalyzedassociation_pRbp1_cdk2p2cycE_pRbp1p2)
  (needforassociation_pRbp1E2F13p1DP12_gE2_pRbp1E2F13p1DP12gE2)
  (needforassociation_gE2_pRbp1E2F13p1DP12_pRbp1E2F13p1DP12gE2)
  (prodbyassociation_pRbp1E2F13p1DP12_gE2_pRbp1E2F13p1DP12gE2)
  (needforassociation_pRbp1E2F13p1DP12p1_gE2_pRbp1E2F13p1DP12p1gE2)
  (needforassociation_gE2_pRbp1E2F13p1DP12p1_pRbp1E2F13p1DP12p1gE2)
  (prodbyassociation_pRbp1E2F13p1DP12p1_gE2_pRbp1E2F13p1DP12p1gE2)
  (needforassociation_pRbp1_E2F13p1DP12p1_pRbp1E2F13p1DP12p1)
  (needforassociation_E2F13p1DP12p1_pRbp1_pRbp1E2F13p1DP12p1)
  (prodbyassociation_pRbp1_E2F13p1DP12p1_pRbp1E2F13p1DP12p1)
  (needforassociation_pRbp1_E2F13p1DP12_pRbp1E2F13p1DP12)
  (needforassociation_E2F13p1DP12_pRbp1_pRbp1E2F13p1DP12)
  (prodbyassociation_pRbp1_E2F13p1DP12_pRbp1E2F13p1DP12)
  (needforassociation_pRbp1E2F4DP12_gE2_pRbp1E2F4DP12gE2)
  (needforassociation_gE2_pRbp1E2F4DP12_pRbp1E2F4DP12gE2)
  (prodbyassociation_pRbp1E2F4DP12_gE2_pRbp1E2F4DP12gE2)
  (needforassociation_pRbp1_E2F4DP12p1_pRbp1E2F4DP12p1)
  (needforassociation_E2F4DP12p1_pRbp1_pRbp1E2F4DP12p1)
  (prodbyassociation_pRbp1_E2F4DP12p1_pRbp1E2F4DP12p1)
  (needforassociation_pRbp1_E2F4DP12_pRbp1E2F4DP12)
  (needforassociation_E2F4DP12_pRbp1_pRbp1E2F4DP12)
  (prodbyassociation_pRbp1_E2F4DP12_pRbp1E2F4DP12)
  (needforassociation_pRbp1E2F4p1DP12_gE2_pRbp1E2F4p1DP12gE2)
  (needforassociation_gE2_pRbp1E2F4p1DP12_pRbp1E2F4p1DP12gE2)
  (prodbyassociation_pRbp1E2F4p1DP12_gE2_pRbp1E2F4p1DP12gE2)
  (needforassociation_pRbp1Jun_cFos_pRbp1JuncFos)
  (needforassociation_cFos_pRbp1Jun_pRbp1JuncFos)
  (prodbyassociation_pRbp1Jun_cFos_pRbp1JuncFos)
  (needforassociation_pRbp1_Jun_pRbp1Jun)
  (needforassociation_Jun_pRbp1_pRbp1Jun)
  (prodbyassociation_pRbp1_Jun_pRbp1Jun)
  (needforsynthesis_pRbp1p2AP2gEc_Ecadherin)
  (prodbysynthesis_pRbp1p2AP2gEc_Ecadherin)
  (needforassociation_pRbp1p2AP2_gEc_pRbp1p2AP2gEc)
  (needforassociation_gEc_pRbp1p2AP2_pRbp1p2AP2gEc)
  (prodbyassociation_pRbp1p2AP2_gEc_pRbp1p2AP2gEc)
  (needforassociation_pRbp1p2_AP2_pRbp1p2AP2)
  (needforassociation_AP2_pRbp1p2_pRbp1p2AP2)
  (prodbyassociation_pRbp1p2_AP2_pRbp1p2AP2)
  (needforassociation_pRbp1p2Jun_cFos_pRbp1p2JuncFos)
  (needforassociation_cFos_pRbp1p2Jun_pRbp1p2JuncFos)
  (prodbyassociation_pRbp1p2Jun_cFos_pRbp1p2JuncFos)
  (needforassociation_pRbp1p2_Jun_pRbp1p2Jun)
  (needforassociation_Jun_pRbp1p2_pRbp1p2Jun)
  (prodbyassociation_pRbp1p2_Jun_pRbp1p2Jun)
  (needforsynthesis_pRbp2AP2gEc_Ecadherin)
  (prodbysynthesis_pRbp2AP2gEc_Ecadherin)
  (needforassociation_pRbp2AP2_gEc_pRbp2AP2gEc)
  (needforassociation_gEc_pRbp2AP2_pRbp2AP2gEc)
  (prodbyassociation_pRbp2AP2_gEc_pRbp2AP2gEc)
  (needforassociation_pRbp2_AP2_pRbp2AP2)
  (needforassociation_AP2_pRbp2_pRbp2AP2)
  (prodbyassociation_pRbp2_AP2_pRbp2AP2)
  (needforcatalyzedassociation_pRbp2_cdk46p3cycDp1_pRbp1p2)
  (needforcatalyzedassociation_cdk46p3cycDp1_pRbp2_pRbp1p2)
  (prodbycatalyzedassociation_pRbp2_cdk46p3cycDp1_pRbp1p2)
  (needforcatalyzedassociation_pRbp2_cdk46p3cycD_pRbp1p2)
  (needforcatalyzedassociation_cdk46p3cycD_pRbp2_pRbp1p2)
  (prodbycatalyzedassociation_pRbp2_cdk46p3cycD_pRbp1p2)
  (needforassociation_pRbp2Jun_cFos_pRbp2JuncFos)
  (needforassociation_cFos_pRbp2Jun_pRbp2JuncFos)
  (prodbyassociation_pRbp2Jun_cFos_pRbp2JuncFos)
  (needforassociation_pRbp2_Jun_pRbp2Jun)
  (needforassociation_Jun_pRbp2_pRbp2Jun)
  (prodbyassociation_pRbp2_Jun_pRbp2Jun)
  (needforassociation_Raf1_cdc25Ap1_Raf1cdc25Ap1)
  (needforassociation_cdc25Ap1_Raf1_Raf1cdc25Ap1)
  (prodbyassociation_Raf1_cdc25Ap1_Raf1cdc25Ap1)
  (needforassociation_Raf1_cdc25A_Raf1cdc25A)
  (needforassociation_cdc25A_Raf1_Raf1cdc25A)
  (prodbyassociation_Raf1_cdc25A_Raf1cdc25A)
  (needforsynthesis_Raf1p130E2F4p1DP12gE2_cMyc)
  (prodbysynthesis_Raf1p130E2F4p1DP12gE2_cMyc)
  (needforsynthesis_Raf1p130E2F4p1DP12gE2_cycA)
  (prodbysynthesis_Raf1p130E2F4p1DP12gE2_cycA)
  (needforsynthesis_Raf1p130E2F4p1DP12gE2_cycD)
  (prodbysynthesis_Raf1p130E2F4p1DP12gE2_cycD)
  (needforsynthesis_Raf1p130E2F4p1DP12gE2_cycDp1)
  (prodbysynthesis_Raf1p130E2F4p1DP12gE2_cycDp1)
  (needforsynthesis_Raf1p130E2F4p1DP12gE2_cycE)
  (prodbysynthesis_Raf1p130E2F4p1DP12gE2_cycE)
  (needforsynthesis_Raf1p130E2F4p1DP12gE2_cycEp1)
  (prodbysynthesis_Raf1p130E2F4p1DP12gE2_cycEp1)
  (needforsynthesis_Raf1p130E2F4p1DP12gE2_p107)
  (prodbysynthesis_Raf1p130E2F4p1DP12gE2_p107)
  (needforsynthesis_Raf1p130E2F4p1DP12gE2_p107p1)
  (prodbysynthesis_Raf1p130E2F4p1DP12gE2_p107p1)
  (needforsynthesis_Raf1p130E2F4p1DP12gE2_p19ARF)
  (prodbysynthesis_Raf1p130E2F4p1DP12gE2_p19ARF)
  (needforsynthesis_Raf1p130E2F4p1DP12gE2_pol)
  (prodbysynthesis_Raf1p130E2F4p1DP12gE2_pol)
  (needforassociation_Raf1p130E2F4p1DP12_gE2_Raf1p130E2F4p1DP12gE2)
  (needforassociation_gE2_Raf1p130E2F4p1DP12_Raf1p130E2F4p1DP12gE2)
  (prodbyassociation_Raf1p130E2F4p1DP12_gE2_Raf1p130E2F4p1DP12gE2)
  (needforassociation_Raf1_p130E2F4p1DP12_Raf1p130E2F4p1DP12)
  (needforassociation_p130E2F4p1DP12_Raf1_Raf1p130E2F4p1DP12)
  (prodbyassociation_Raf1_p130E2F4p1DP12_Raf1p130E2F4p1DP12)
  (needforsynthesis_Raf1p130E2F5p1DP12gE2_cMyc)
  (prodbysynthesis_Raf1p130E2F5p1DP12gE2_cMyc)
  (needforsynthesis_Raf1p130E2F5p1DP12gE2_cycA)
  (prodbysynthesis_Raf1p130E2F5p1DP12gE2_cycA)
  (needforsynthesis_Raf1p130E2F5p1DP12gE2_cycD)
  (prodbysynthesis_Raf1p130E2F5p1DP12gE2_cycD)
  (needforsynthesis_Raf1p130E2F5p1DP12gE2_cycDp1)
  (prodbysynthesis_Raf1p130E2F5p1DP12gE2_cycDp1)
  (needforsynthesis_Raf1p130E2F5p1DP12gE2_cycE)
  (prodbysynthesis_Raf1p130E2F5p1DP12gE2_cycE)
  (needforsynthesis_Raf1p130E2F5p1DP12gE2_cycEp1)
  (prodbysynthesis_Raf1p130E2F5p1DP12gE2_cycEp1)
  (needforsynthesis_Raf1p130E2F5p1DP12gE2_p107)
  (prodbysynthesis_Raf1p130E2F5p1DP12gE2_p107)
  (needforsynthesis_Raf1p130E2F5p1DP12gE2_p107p1)
  (prodbysynthesis_Raf1p130E2F5p1DP12gE2_p107p1)
  (needforsynthesis_Raf1p130E2F5p1DP12gE2_p19ARF)
  (prodbysynthesis_Raf1p130E2F5p1DP12gE2_p19ARF)
  (needforsynthesis_Raf1p130E2F5p1DP12gE2_pol)
  (prodbysynthesis_Raf1p130E2F5p1DP12gE2_pol)
  (needforassociation_Raf1p130E2F5p1DP12_gE2_Raf1p130E2F5p1DP12gE2)
  (needforassociation_gE2_Raf1p130E2F5p1DP12_Raf1p130E2F5p1DP12gE2)
  (prodbyassociation_Raf1p130E2F5p1DP12_gE2_Raf1p130E2F5p1DP12gE2)
  (needforassociation_Raf1_p130E2F5p1DP12_Raf1p130E2F5p1DP12)
  (needforassociation_p130E2F5p1DP12_Raf1_Raf1p130E2F5p1DP12)
  (prodbyassociation_Raf1_p130E2F5p1DP12_Raf1p130E2F5p1DP12)
  (needforsynthesis_Raf1pRbE2F13p1DP12gE2_cMyc)
  (prodbysynthesis_Raf1pRbE2F13p1DP12gE2_cMyc)
  (needforsynthesis_Raf1pRbE2F13p1DP12gE2_cycA)
  (prodbysynthesis_Raf1pRbE2F13p1DP12gE2_cycA)
  (needforsynthesis_Raf1pRbE2F13p1DP12gE2_cycD)
  (prodbysynthesis_Raf1pRbE2F13p1DP12gE2_cycD)
  (needforsynthesis_Raf1pRbE2F13p1DP12gE2_cycDp1)
  (prodbysynthesis_Raf1pRbE2F13p1DP12gE2_cycDp1)
  (needforsynthesis_Raf1pRbE2F13p1DP12gE2_cycE)
  (prodbysynthesis_Raf1pRbE2F13p1DP12gE2_cycE)
  (needforsynthesis_Raf1pRbE2F13p1DP12gE2_cycEp1)
  (prodbysynthesis_Raf1pRbE2F13p1DP12gE2_cycEp1)
  (needforsynthesis_Raf1pRbE2F13p1DP12gE2_p107)
  (prodbysynthesis_Raf1pRbE2F13p1DP12gE2_p107)
  (needforsynthesis_Raf1pRbE2F13p1DP12gE2_p107p1)
  (prodbysynthesis_Raf1pRbE2F13p1DP12gE2_p107p1)
  (needforsynthesis_Raf1pRbE2F13p1DP12gE2_p19ARF)
  (prodbysynthesis_Raf1pRbE2F13p1DP12gE2_p19ARF)
  (needforsynthesis_Raf1pRbE2F13p1DP12gE2_pol)
  (prodbysynthesis_Raf1pRbE2F13p1DP12gE2_pol)
  (needforassociation_Raf1pRbE2F13p1DP12_gE2_Raf1pRbE2F13p1DP12gE2)
  (needforassociation_gE2_Raf1pRbE2F13p1DP12_Raf1pRbE2F13p1DP12gE2)
  (prodbyassociation_Raf1pRbE2F13p1DP12_gE2_Raf1pRbE2F13p1DP12gE2)
  (needforsynthesis_Raf1pRbE2F13p1DP12p1gE2_cMyc)
  (prodbysynthesis_Raf1pRbE2F13p1DP12p1gE2_cMyc)
  (needforsynthesis_Raf1pRbE2F13p1DP12p1gE2_cycA)
  (prodbysynthesis_Raf1pRbE2F13p1DP12p1gE2_cycA)
  (needforsynthesis_Raf1pRbE2F13p1DP12p1gE2_cycD)
  (prodbysynthesis_Raf1pRbE2F13p1DP12p1gE2_cycD)
  (needforsynthesis_Raf1pRbE2F13p1DP12p1gE2_cycDp1)
  (prodbysynthesis_Raf1pRbE2F13p1DP12p1gE2_cycDp1)
  (needforsynthesis_Raf1pRbE2F13p1DP12p1gE2_cycE)
  (prodbysynthesis_Raf1pRbE2F13p1DP12p1gE2_cycE)
  (needforsynthesis_Raf1pRbE2F13p1DP12p1gE2_cycEp1)
  (prodbysynthesis_Raf1pRbE2F13p1DP12p1gE2_cycEp1)
  (needforsynthesis_Raf1pRbE2F13p1DP12p1gE2_p107)
  (prodbysynthesis_Raf1pRbE2F13p1DP12p1gE2_p107)
  (needforsynthesis_Raf1pRbE2F13p1DP12p1gE2_p107p1)
  (prodbysynthesis_Raf1pRbE2F13p1DP12p1gE2_p107p1)
  (needforsynthesis_Raf1pRbE2F13p1DP12p1gE2_p19ARF)
  (prodbysynthesis_Raf1pRbE2F13p1DP12p1gE2_p19ARF)
  (needforsynthesis_Raf1pRbE2F13p1DP12p1gE2_pol)
  (prodbysynthesis_Raf1pRbE2F13p1DP12p1gE2_pol)
  (needforassociation_Raf1pRbE2F13p1DP12p1_gE2_Raf1pRbE2F13p1DP12p1gE2)
  (needforassociation_gE2_Raf1pRbE2F13p1DP12p1_Raf1pRbE2F13p1DP12p1gE2)
  (prodbyassociation_Raf1pRbE2F13p1DP12p1_gE2_Raf1pRbE2F13p1DP12p1gE2)
  (needforassociation_Raf1_pRbE2F13p1DP12p1_Raf1pRbE2F13p1DP12p1)
  (needforassociation_pRbE2F13p1DP12p1_Raf1_Raf1pRbE2F13p1DP12p1)
  (prodbyassociation_Raf1_pRbE2F13p1DP12p1_Raf1pRbE2F13p1DP12p1)
  (needforassociation_Raf1_pRbE2F13p1DP12_Raf1pRbE2F13p1DP12)
  (needforassociation_pRbE2F13p1DP12_Raf1_Raf1pRbE2F13p1DP12)
  (prodbyassociation_Raf1_pRbE2F13p1DP12_Raf1pRbE2F13p1DP12)
  (needforsynthesis_Raf1pRbE2F4DP12gE2_cMyc)
  (prodbysynthesis_Raf1pRbE2F4DP12gE2_cMyc)
  (needforsynthesis_Raf1pRbE2F4DP12gE2_cycA)
  (prodbysynthesis_Raf1pRbE2F4DP12gE2_cycA)
  (needforsynthesis_Raf1pRbE2F4DP12gE2_cycD)
  (prodbysynthesis_Raf1pRbE2F4DP12gE2_cycD)
  (needforsynthesis_Raf1pRbE2F4DP12gE2_cycDp1)
  (prodbysynthesis_Raf1pRbE2F4DP12gE2_cycDp1)
  (needforsynthesis_Raf1pRbE2F4DP12gE2_cycE)
  (prodbysynthesis_Raf1pRbE2F4DP12gE2_cycE)
  (needforsynthesis_Raf1pRbE2F4DP12gE2_cycEp1)
  (prodbysynthesis_Raf1pRbE2F4DP12gE2_cycEp1)
  (needforsynthesis_Raf1pRbE2F4DP12gE2_p107)
  (prodbysynthesis_Raf1pRbE2F4DP12gE2_p107)
  (needforsynthesis_Raf1pRbE2F4DP12gE2_p107p1)
  (prodbysynthesis_Raf1pRbE2F4DP12gE2_p107p1)
  (needforsynthesis_Raf1pRbE2F4DP12gE2_p19ARF)
  (prodbysynthesis_Raf1pRbE2F4DP12gE2_p19ARF)
  (needforsynthesis_Raf1pRbE2F4DP12gE2_pol)
  (prodbysynthesis_Raf1pRbE2F4DP12gE2_pol)
  (needforassociation_Raf1pRbE2F4DP12_gE2_Raf1pRbE2F4DP12gE2)
  (needforassociation_gE2_Raf1pRbE2F4DP12_Raf1pRbE2F4DP12gE2)
  (prodbyassociation_Raf1pRbE2F4DP12_gE2_Raf1pRbE2F4DP12gE2)
  (needforassociation_Raf1_pRbE2F4DP12_Raf1pRbE2F4DP12)
  (needforassociation_pRbE2F4DP12_Raf1_Raf1pRbE2F4DP12)
  (prodbyassociation_Raf1_pRbE2F4DP12_Raf1pRbE2F4DP12)
  (needforsynthesis_Raf1pRbE2F4p1DP12gE2_cMyc)
  (prodbysynthesis_Raf1pRbE2F4p1DP12gE2_cMyc)
  (needforsynthesis_Raf1pRbE2F4p1DP12gE2_cycA)
  (prodbysynthesis_Raf1pRbE2F4p1DP12gE2_cycA)
  (needforsynthesis_Raf1pRbE2F4p1DP12gE2_cycD)
  (prodbysynthesis_Raf1pRbE2F4p1DP12gE2_cycD)
  (needforsynthesis_Raf1pRbE2F4p1DP12gE2_cycDp1)
  (prodbysynthesis_Raf1pRbE2F4p1DP12gE2_cycDp1)
  (needforsynthesis_Raf1pRbE2F4p1DP12gE2_cycE)
  (prodbysynthesis_Raf1pRbE2F4p1DP12gE2_cycE)
  (needforsynthesis_Raf1pRbE2F4p1DP12gE2_cycEp1)
  (prodbysynthesis_Raf1pRbE2F4p1DP12gE2_cycEp1)
  (needforsynthesis_Raf1pRbE2F4p1DP12gE2_p107)
  (prodbysynthesis_Raf1pRbE2F4p1DP12gE2_p107)
  (needforsynthesis_Raf1pRbE2F4p1DP12gE2_p107p1)
  (prodbysynthesis_Raf1pRbE2F4p1DP12gE2_p107p1)
  (needforsynthesis_Raf1pRbE2F4p1DP12gE2_p19ARF)
  (prodbysynthesis_Raf1pRbE2F4p1DP12gE2_p19ARF)
  (needforsynthesis_Raf1pRbE2F4p1DP12gE2_pol)
  (prodbysynthesis_Raf1pRbE2F4p1DP12gE2_pol)
  (needforassociation_Raf1pRbE2F4p1DP12_gE2_Raf1pRbE2F4p1DP12gE2)
  (needforassociation_gE2_Raf1pRbE2F4p1DP12_Raf1pRbE2F4p1DP12gE2)
  (prodbyassociation_Raf1pRbE2F4p1DP12_gE2_Raf1pRbE2F4p1DP12gE2)
  (needforassociation_Raf1_pRbE2F4p1DP12_Raf1pRbE2F4p1DP12)
  (needforassociation_pRbE2F4p1DP12_Raf1_Raf1pRbE2F4p1DP12)
  (prodbyassociation_Raf1_pRbE2F4p1DP12_Raf1pRbE2F4p1DP12)
  (needforsynthesis_Raf1pRbp1E2F13p1DP12gE2_cMyc)
  (prodbysynthesis_Raf1pRbp1E2F13p1DP12gE2_cMyc)
  (needforsynthesis_Raf1pRbp1E2F13p1DP12gE2_cycA)
  (prodbysynthesis_Raf1pRbp1E2F13p1DP12gE2_cycA)
  (needforsynthesis_Raf1pRbp1E2F13p1DP12gE2_cycD)
  (prodbysynthesis_Raf1pRbp1E2F13p1DP12gE2_cycD)
  (needforsynthesis_Raf1pRbp1E2F13p1DP12gE2_cycDp1)
  (prodbysynthesis_Raf1pRbp1E2F13p1DP12gE2_cycDp1)
  (needforsynthesis_Raf1pRbp1E2F13p1DP12gE2_cycE)
  (prodbysynthesis_Raf1pRbp1E2F13p1DP12gE2_cycE)
  (needforsynthesis_Raf1pRbp1E2F13p1DP12gE2_cycEp1)
  (prodbysynthesis_Raf1pRbp1E2F13p1DP12gE2_cycEp1)
  (needforsynthesis_Raf1pRbp1E2F13p1DP12gE2_p107)
  (prodbysynthesis_Raf1pRbp1E2F13p1DP12gE2_p107)
  (needforsynthesis_Raf1pRbp1E2F13p1DP12gE2_p107p1)
  (prodbysynthesis_Raf1pRbp1E2F13p1DP12gE2_p107p1)
  (needforsynthesis_Raf1pRbp1E2F13p1DP12gE2_p19ARF)
  (prodbysynthesis_Raf1pRbp1E2F13p1DP12gE2_p19ARF)
  (needforsynthesis_Raf1pRbp1E2F13p1DP12gE2_pol)
  (prodbysynthesis_Raf1pRbp1E2F13p1DP12gE2_pol)
  (needforassociation_Raf1pRbp1E2F13p1DP12_gE2_Raf1pRbp1E2F13p1DP12gE2)
  (needforassociation_gE2_Raf1pRbp1E2F13p1DP12_Raf1pRbp1E2F13p1DP12gE2)
  (prodbyassociation_Raf1pRbp1E2F13p1DP12_gE2_Raf1pRbp1E2F13p1DP12gE2)
  (needforsynthesis_Raf1pRbp1E2F13p1DP12p1gE2_cMyc)
  (prodbysynthesis_Raf1pRbp1E2F13p1DP12p1gE2_cMyc)
  (needforsynthesis_Raf1pRbp1E2F13p1DP12p1gE2_cycA)
  (prodbysynthesis_Raf1pRbp1E2F13p1DP12p1gE2_cycA)
  (needforsynthesis_Raf1pRbp1E2F13p1DP12p1gE2_cycD)
  (prodbysynthesis_Raf1pRbp1E2F13p1DP12p1gE2_cycD)
  (needforsynthesis_Raf1pRbp1E2F13p1DP12p1gE2_cycDp1)
  (prodbysynthesis_Raf1pRbp1E2F13p1DP12p1gE2_cycDp1)
  (needforsynthesis_Raf1pRbp1E2F13p1DP12p1gE2_cycE)
  (prodbysynthesis_Raf1pRbp1E2F13p1DP12p1gE2_cycE)
  (needforsynthesis_Raf1pRbp1E2F13p1DP12p1gE2_cycEp1)
  (prodbysynthesis_Raf1pRbp1E2F13p1DP12p1gE2_cycEp1)
  (needforsynthesis_Raf1pRbp1E2F13p1DP12p1gE2_p107)
  (prodbysynthesis_Raf1pRbp1E2F13p1DP12p1gE2_p107)
  (needforsynthesis_Raf1pRbp1E2F13p1DP12p1gE2_p107p1)
  (prodbysynthesis_Raf1pRbp1E2F13p1DP12p1gE2_p107p1)
  (needforsynthesis_Raf1pRbp1E2F13p1DP12p1gE2_p19ARF)
  (prodbysynthesis_Raf1pRbp1E2F13p1DP12p1gE2_p19ARF)
  (needforsynthesis_Raf1pRbp1E2F13p1DP12p1gE2_pol)
  (prodbysynthesis_Raf1pRbp1E2F13p1DP12p1gE2_pol)
  (needforassociation_Raf1pRbp1E2F13p1DP12p1_gE2_Raf1pRbp1E2F13p1DP12p1gE2)
  (needforassociation_gE2_Raf1pRbp1E2F13p1DP12p1_Raf1pRbp1E2F13p1DP12p1gE2)
  (prodbyassociation_Raf1pRbp1E2F13p1DP12p1_gE2_Raf1pRbp1E2F13p1DP12p1gE2)
  (needforassociation_Raf1_pRbp1E2F13p1DP12p1_Raf1pRbp1E2F13p1DP12p1)
  (needforassociation_pRbp1E2F13p1DP12p1_Raf1_Raf1pRbp1E2F13p1DP12p1)
  (prodbyassociation_Raf1_pRbp1E2F13p1DP12p1_Raf1pRbp1E2F13p1DP12p1)
  (needforassociation_Raf1_pRbp1E2F13p1DP12_Raf1pRbp1E2F13p1DP12)
  (needforassociation_pRbp1E2F13p1DP12_Raf1_Raf1pRbp1E2F13p1DP12)
  (prodbyassociation_Raf1_pRbp1E2F13p1DP12_Raf1pRbp1E2F13p1DP12)
  (needforsynthesis_Raf1pRbp1E2F4DP12gE2_cMyc)
  (prodbysynthesis_Raf1pRbp1E2F4DP12gE2_cMyc)
  (needforsynthesis_Raf1pRbp1E2F4DP12gE2_cycA)
  (prodbysynthesis_Raf1pRbp1E2F4DP12gE2_cycA)
  (needforsynthesis_Raf1pRbp1E2F4DP12gE2_cycD)
  (prodbysynthesis_Raf1pRbp1E2F4DP12gE2_cycD)
  (needforsynthesis_Raf1pRbp1E2F4DP12gE2_cycDp1)
  (prodbysynthesis_Raf1pRbp1E2F4DP12gE2_cycDp1)
  (needforsynthesis_Raf1pRbp1E2F4DP12gE2_cycE)
  (prodbysynthesis_Raf1pRbp1E2F4DP12gE2_cycE)
  (needforsynthesis_Raf1pRbp1E2F4DP12gE2_cycEp1)
  (prodbysynthesis_Raf1pRbp1E2F4DP12gE2_cycEp1)
  (needforsynthesis_Raf1pRbp1E2F4DP12gE2_p107)
  (prodbysynthesis_Raf1pRbp1E2F4DP12gE2_p107)
  (needforsynthesis_Raf1pRbp1E2F4DP12gE2_p107p1)
  (prodbysynthesis_Raf1pRbp1E2F4DP12gE2_p107p1)
  (needforsynthesis_Raf1pRbp1E2F4DP12gE2_p19ARF)
  (prodbysynthesis_Raf1pRbp1E2F4DP12gE2_p19ARF)
  (needforsynthesis_Raf1pRbp1E2F4DP12gE2_pol)
  (prodbysynthesis_Raf1pRbp1E2F4DP12gE2_pol)
  (needforassociation_Raf1pRbp1E2F4DP12_gE2_Raf1pRbp1E2F4DP12gE2)
  (needforassociation_gE2_Raf1pRbp1E2F4DP12_Raf1pRbp1E2F4DP12gE2)
  (prodbyassociation_Raf1pRbp1E2F4DP12_gE2_Raf1pRbp1E2F4DP12gE2)
  (needforassociation_Raf1_pRbp1E2F4DP12_Raf1pRbp1E2F4DP12)
  (needforassociation_pRbp1E2F4DP12_Raf1_Raf1pRbp1E2F4DP12)
  (prodbyassociation_Raf1_pRbp1E2F4DP12_Raf1pRbp1E2F4DP12)
  (needforsynthesis_Raf1pRbp1E2F4p1DP12gE2_cMyc)
  (prodbysynthesis_Raf1pRbp1E2F4p1DP12gE2_cMyc)
  (needforsynthesis_Raf1pRbp1E2F4p1DP12gE2_cycA)
  (prodbysynthesis_Raf1pRbp1E2F4p1DP12gE2_cycA)
  (needforsynthesis_Raf1pRbp1E2F4p1DP12gE2_cycD)
  (prodbysynthesis_Raf1pRbp1E2F4p1DP12gE2_cycD)
  (needforsynthesis_Raf1pRbp1E2F4p1DP12gE2_cycDp1)
  (prodbysynthesis_Raf1pRbp1E2F4p1DP12gE2_cycDp1)
  (needforsynthesis_Raf1pRbp1E2F4p1DP12gE2_cycE)
  (prodbysynthesis_Raf1pRbp1E2F4p1DP12gE2_cycE)
  (needforsynthesis_Raf1pRbp1E2F4p1DP12gE2_cycEp1)
  (prodbysynthesis_Raf1pRbp1E2F4p1DP12gE2_cycEp1)
  (needforsynthesis_Raf1pRbp1E2F4p1DP12gE2_p107)
  (prodbysynthesis_Raf1pRbp1E2F4p1DP12gE2_p107)
  (needforsynthesis_Raf1pRbp1E2F4p1DP12gE2_p107p1)
  (prodbysynthesis_Raf1pRbp1E2F4p1DP12gE2_p107p1)
  (needforsynthesis_Raf1pRbp1E2F4p1DP12gE2_p19ARF)
  (prodbysynthesis_Raf1pRbp1E2F4p1DP12gE2_p19ARF)
  (needforsynthesis_Raf1pRbp1E2F4p1DP12gE2_pol)
  (prodbysynthesis_Raf1pRbp1E2F4p1DP12gE2_pol)
  (needforassociation_Raf1pRbp1E2F4p1DP12_gE2_Raf1pRbp1E2F4p1DP12gE2)
  (needforassociation_gE2_Raf1pRbp1E2F4p1DP12_Raf1pRbp1E2F4p1DP12gE2)
  (prodbyassociation_Raf1pRbp1E2F4p1DP12_gE2_Raf1pRbp1E2F4p1DP12gE2)
  (needforassociation_Raf1_pRbp1E2F4p1DP12_Raf1pRbp1E2F4p1DP12)
  (needforassociation_pRbp1E2F4p1DP12_Raf1_Raf1pRbp1E2F4p1DP12)
  (prodbyassociation_Raf1_pRbp1E2F4p1DP12_Raf1pRbp1E2F4p1DP12)
  (needforcatalyzedassociation_Skp1_cdk2p2cycA_Skp1p1)
  (needforcatalyzedassociation_cdk2p2cycA_Skp1_Skp1p1)
  (prodbycatalyzedassociation_Skp1_cdk2p2cycA_Skp1p1)
  (needforassociation_Skp2_cdk2cycA_Skp2cdk2cycA)
  (needforassociation_cdk2cycA_Skp2_Skp2cdk2cycA)
  (prodbyassociation_Skp2_cdk2cycA_Skp2cdk2cycA)
  (needforassociation_Skp2_cdk2p1cycA_Skp2cdk2p1cycA)
  (needforassociation_cdk2p1cycA_Skp2_Skp2cdk2p1cycA)
  (prodbyassociation_Skp2_cdk2p1cycA_Skp2cdk2p1cycA)
  (needforassociation_Skp2_cdk2p1p2cycA_Skp2cdk2p1p2cycA)
  (needforassociation_cdk2p1p2cycA_Skp2_Skp2cdk2p1p2cycA)
  (prodbyassociation_Skp2_cdk2p1p2cycA_Skp2cdk2p1p2cycA)
  (needforassociation_Skp2_cdk2p2cycA_Skp2cdk2p2cycA)
  (needforassociation_cdk2p2cycA_Skp2_Skp2cdk2p2cycA)
  (prodbyassociation_Skp2_cdk2p2cycA_Skp2cdk2p2cycA)
  (needforcatalyzedassociation_Skp2_cdk2p2cycA_Skp2p1)
  (needforcatalyzedassociation_cdk2p2cycA_Skp2_Skp2p1)
  (prodbycatalyzedassociation_Skp2_cdk2p2cycA_Skp2p1)
  (needforassociation_Skp2p1_Skp1p1_Skp2p1Skp1p1)
  (needforassociation_Skp1p1_Skp2p1_Skp2p1Skp1p1)
  (prodbyassociation_Skp2p1_Skp1p1_Skp2p1Skp1p1)
  (needforassociation_Skp2p1_Skp1_Skp2p1Skp1)
  (needforassociation_Skp1_Skp2p1_Skp2p1Skp1)
  (prodbyassociation_Skp2p1_Skp1_Skp2p1Skp1)
  (needforassociation_Skp2Skp1_cdk2cycA_Skp2Skp1cdk2cycA)
  (needforassociation_cdk2cycA_Skp2Skp1_Skp2Skp1cdk2cycA)
  (prodbyassociation_Skp2Skp1_cdk2cycA_Skp2Skp1cdk2cycA)
  (needforassociation_Skp2Skp1_cdk2p1cycA_Skp2Skp1cdk2p1cycA)
  (needforassociation_cdk2p1cycA_Skp2Skp1_Skp2Skp1cdk2p1cycA)
  (prodbyassociation_Skp2Skp1_cdk2p1cycA_Skp2Skp1cdk2p1cycA)
  (needforassociation_Skp2Skp1_cdk2p1p2cycA_Skp2Skp1cdk2p1p2cycA)
  (needforassociation_cdk2p1p2cycA_Skp2Skp1_Skp2Skp1cdk2p1p2cycA)
  (prodbyassociation_Skp2Skp1_cdk2p1p2cycA_Skp2Skp1cdk2p1p2cycA)
  (needforassociation_Skp2Skp1_cdk2p2cycA_Skp2Skp1cdk2p2cycA)
  (needforassociation_cdk2p2cycA_Skp2Skp1_Skp2Skp1cdk2p2cycA)
  (prodbyassociation_Skp2Skp1_cdk2p2cycA_Skp2Skp1cdk2p2cycA)
  (needforassociation_Skp2Skp1p1_cdk2cycA_Skp2Skp1p1cdk2cycA)
  (needforassociation_cdk2cycA_Skp2Skp1p1_Skp2Skp1p1cdk2cycA)
  (prodbyassociation_Skp2Skp1p1_cdk2cycA_Skp2Skp1p1cdk2cycA)
  (needforassociation_Skp2Skp1p1_cdk2p1cycA_Skp2Skp1p1cdk2p1cycA)
  (needforassociation_cdk2p1cycA_Skp2Skp1p1_Skp2Skp1p1cdk2p1cycA)
  (prodbyassociation_Skp2Skp1p1_cdk2p1cycA_Skp2Skp1p1cdk2p1cycA)
  (needforassociation_Skp2Skp1p1_cdk2p1p2cycA_Skp2Skp1p1cdk2p1p2cycA)
  (needforassociation_cdk2p1p2cycA_Skp2Skp1p1_Skp2Skp1p1cdk2p1p2cycA)
  (prodbyassociation_Skp2Skp1p1_cdk2p1p2cycA_Skp2Skp1p1cdk2p1p2cycA)
  (needforassociation_Skp2Skp1p1_cdk2p2cycA_Skp2Skp1p1cdk2p2cycA)
  (needforassociation_cdk2p2cycA_Skp2Skp1p1_Skp2Skp1p1cdk2p2cycA)
  (prodbyassociation_Skp2Skp1p1_cdk2p2cycA_Skp2Skp1p1cdk2p2cycA)
  (needforassociation_Skp2_Skp1p1_Skp2Skp1p1)
  (needforassociation_Skp1p1_Skp2_Skp2Skp1p1)
  (prodbyassociation_Skp2_Skp1p1_Skp2Skp1p1)
  (needforassociation_Skp2_Skp1_Skp2Skp1)
  (needforassociation_Skp1_Skp2_Skp2Skp1)
  (prodbyassociation_Skp2_Skp1_Skp2Skp1)
  (needforassociation_SP1_E2F13p1_SP1E2F13p1)
  (needforassociation_E2F13p1_SP1_SP1E2F13p1)
  (prodbyassociation_SP1_E2F13p1_SP1E2F13p1)
  (needforassociation_SP1_E2F13_SP1E2F13)
  (needforassociation_E2F13_SP1_SP1E2F13)
  (prodbyassociation_SP1_E2F13_SP1E2F13)
  (needforassociation_SP1_p107p1_SP1p107p1)
  (needforassociation_p107p1_SP1_SP1p107p1)
  (prodbyassociation_SP1_p107p1_SP1p107p1)
  (needforassociation_SP1_p107_SP1p107)
  (needforassociation_p107_SP1_SP1p107)
  (prodbyassociation_SP1_p107_SP1p107)
)
(:action choose__AP2
	:parameters ()
	:precondition (and  (possible_AP2))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_AP2)			(not (possible_AP2))
))
(:action choose__cAbl
	:parameters ()
	:precondition (and  (possible_cAbl))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cAbl)			(not (possible_cAbl))
))
(:action choose__cdk2
	:parameters ()
	:precondition (and  (possible_cdk2))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cdk2)			(not (possible_cdk2))
))
(:action choose__cdk2cycB
	:parameters ()
	:precondition (and  (possible_cdk2cycB))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cdk2cycB)			(not (possible_cdk2cycB))
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
(:action choose__E2F6DP12p1
	:parameters ()
	:precondition (and  (possible_E2F6DP12p1))
	:effect (and 
			(increase (numsubs) 1.0)			(not (possible_E2F6DP12p1))			(chosen_E2F6DP12p1)
))
(:action choose__gcdc25A
	:parameters ()
	:precondition (and  (possible_gcdc25A))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_gcdc25A)			(not (possible_gcdc25A))
))
(:action choose__gE2
	:parameters ()
	:precondition (and  (possible_gE2))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_gE2)			(not (possible_gE2))
))
(:action choose__gEc
	:parameters ()
	:precondition (and  (possible_gEc))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_gEc)			(not (possible_gEc))
))
(:action choose__HDAC1
	:parameters ()
	:precondition (and  (possible_HDAC1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_HDAC1)			(not (possible_HDAC1))
))
(:action choose__HDAC1p107E2F4p1DP12
	:parameters ()
	:precondition (and  (possible_HDAC1p107E2F4p1DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_HDAC1p107E2F4p1DP12)			(not (possible_HDAC1p107E2F4p1DP12))
))
(:action choose__HDAC1p130E2F4p1DP12
	:parameters ()
	:precondition (and  (possible_HDAC1p130E2F4p1DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_HDAC1p130E2F4p1DP12)			(not (possible_HDAC1p130E2F4p1DP12))
))
(:action choose__HDAC1p130E2F5p1DP12
	:parameters ()
	:precondition (and  (possible_HDAC1p130E2F5p1DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_HDAC1p130E2F5p1DP12)			(not (possible_HDAC1p130E2F5p1DP12))
))
(:action choose__HDAC1pRbp1E2F13DP12
	:parameters ()
	:precondition (and  (possible_HDAC1pRbp1E2F13DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(not (possible_HDAC1pRbp1E2F13DP12))			(chosen_HDAC1pRbp1E2F13DP12)
))
(:action choose__HDAC1pRbp1E2F13p1DP12
	:parameters ()
	:precondition (and  (possible_HDAC1pRbp1E2F13p1DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_HDAC1pRbp1E2F13p1DP12)			(not (possible_HDAC1pRbp1E2F13p1DP12))
))
(:action choose__HDAC1pRbp1E2F4DP12
	:parameters ()
	:precondition (and  (possible_HDAC1pRbp1E2F4DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_HDAC1pRbp1E2F4DP12)			(not (possible_HDAC1pRbp1E2F4DP12))
))
(:action choose__Jun
	:parameters ()
	:precondition (and  (possible_Jun))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_Jun)			(not (possible_Jun))
))
(:action choose__Max
	:parameters ()
	:precondition (and  (possible_Max))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_Max)			(not (possible_Max))
))
(:action choose__p130E2F4p1DP12
	:parameters ()
	:precondition (and  (possible_p130E2F4p1DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p130E2F4p1DP12)			(not (possible_p130E2F4p1DP12))
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
(:action choose__cdk46p3cycD
	:parameters ()
	:precondition (and  (possible_cdk46p3cycD))
	:effect (and 
			(increase (numsubs) 1.0)			(not (possible_cdk46p3cycD))			(chosen_cdk46p3cycD)
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
			(increase (numsubs) 1.0)			(chosen_cdk7)			(not (possible_cdk7))
))
(:action choose__CEBP
	:parameters ()
	:precondition (and  (possible_CEBP))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_CEBP)			(not (possible_CEBP))
))
(:action choose__cycH
	:parameters ()
	:precondition (and  (possible_cycH))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cycH)			(not (possible_cycH))
))
(:action choose__DMP1
	:parameters ()
	:precondition (and  (possible_DMP1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_DMP1)			(not (possible_DMP1))
))
(:action choose__DP12
	:parameters ()
	:precondition (and  (possible_DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_DP12)			(not (possible_DP12))
))
(:action choose__E2F13
	:parameters ()
	:precondition (and  (possible_E2F13))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F13)			(not (possible_E2F13))
))
(:action choose__E2F13p1DP12
	:parameters ()
	:precondition (and  (possible_E2F13p1DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(not (possible_E2F13p1DP12))			(chosen_E2F13p1DP12)
))
(:action choose__E2F13p1DP12p1
	:parameters ()
	:precondition (and  (possible_E2F13p1DP12p1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F13p1DP12p1)			(not (possible_E2F13p1DP12p1))
))
(:action choose__E2F2
	:parameters ()
	:precondition (and  (possible_E2F2))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F2)			(not (possible_E2F2))
))
(:action choose__E2F3
	:parameters ()
	:precondition (and  (possible_E2F3))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F3)			(not (possible_E2F3))
))
(:action choose__E2F4
	:parameters ()
	:precondition (and  (possible_E2F4))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F4)			(not (possible_E2F4))
))
(:action choose__E2F4DP12p1
	:parameters ()
	:precondition (and  (possible_E2F4DP12p1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F4DP12p1)			(not (possible_E2F4DP12p1))
))
(:action choose__E2F5
	:parameters ()
	:precondition (and  (possible_E2F5))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F5)			(not (possible_E2F5))
))
(:action choose__E2F6
	:parameters ()
	:precondition (and  (possible_E2F6))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F6)			(not (possible_E2F6))
))
(:action choose__Wee1
	:parameters ()
	:precondition (and  (possible_Wee1))
	:effect (and 
			(increase (numsubs) 1.0)			(not (possible_Wee1))			(chosen_Wee1)
))
(:action choose__p27
	:parameters ()
	:precondition (and  (possible_p27))
	:effect (and 
			(increase (numsubs) 1.0)			(not (possible_p27))			(chosen_p27)
))
(:action choose__p300
	:parameters ()
	:precondition (and  (possible_p300))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p300)			(not (possible_p300))
))
(:action choose__p53
	:parameters ()
	:precondition (and  (possible_p53))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p53)			(not (possible_p53))
))
(:action choose__p53p1
	:parameters ()
	:precondition (and  (possible_p53p1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p53p1)			(not (possible_p53p1))
))
(:action choose__p57
	:parameters ()
	:precondition (and  (possible_p57))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p57)			(not (possible_p57))
))
(:action choose__p57p1
	:parameters ()
	:precondition (and  (possible_p57p1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p57p1)			(not (possible_p57p1))
))
(:action choose__pCAF
	:parameters ()
	:precondition (and  (possible_pCAF))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_pCAF)			(not (possible_pCAF))
))
(:action choose__PCNA
	:parameters ()
	:precondition (and  (possible_PCNA))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_PCNA)			(not (possible_PCNA))
))
(:action choose__pRb
	:parameters ()
	:precondition (and  (possible_pRb))
	:effect (and 
			(increase (numsubs) 1.0)			(not (possible_pRb))			(chosen_pRb)
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
			(increase (numsubs) 1.0)			(chosen_pRbp2)			(not (possible_pRbp2))
))
(:action choose__Raf1
	:parameters ()
	:precondition (and  (possible_Raf1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_Raf1)			(not (possible_Raf1))
))
(:action choose__Skp1
	:parameters ()
	:precondition (and  (possible_Skp1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_Skp1)			(not (possible_Skp1))
))
(:action choose__Skp2
	:parameters ()
	:precondition (and  (possible_Skp2))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_Skp2)			(not (possible_Skp2))
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
(:action initialize__Skp2
	:parameters ()
	:precondition (and  (chosen_Skp2))
	:effect (and 
			(increase (available_Skp2) 1.0)
))
(:action initialize__Skp1
	:parameters ()
	:precondition (and  (chosen_Skp1))
	:effect (and 
			(increase (available_Skp1) 1.0)
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
(:action initialize__pRb
	:parameters ()
	:precondition (and  (chosen_pRb))
	:effect (and 
			(increase (available_pRb) 1.0)
))
(:action initialize__PCNA
	:parameters ()
	:precondition (and  (chosen_PCNA))
	:effect (and 
			(increase (available_PCNA) 1.0)
))
(:action initialize__pCAF
	:parameters ()
	:precondition (and  (chosen_pCAF))
	:effect (and 
			(increase (available_pCAF) 1.0)
))
(:action initialize__p57p1
	:parameters ()
	:precondition (and  (chosen_p57p1))
	:effect (and 
			(increase (available_p57p1) 1.0)
))
(:action initialize__p57
	:parameters ()
	:precondition (and  (chosen_p57))
	:effect (and 
			(increase (available_p57) 1.0)
))
(:action initialize__p53p1
	:parameters ()
	:precondition (and  (chosen_p53p1))
	:effect (and 
			(increase (available_p53p1) 1.0)
))
(:action initialize__p53
	:parameters ()
	:precondition (and  (chosen_p53))
	:effect (and 
			(increase (available_p53) 1.0)
))
(:action initialize__p300
	:parameters ()
	:precondition (and  (chosen_p300))
	:effect (and 
			(increase (available_p300) 1.0)
))
(:action initialize__p27
	:parameters ()
	:precondition (and  (chosen_p27))
	:effect (and 
			(increase (available_p27) 1.0)
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
(:action initialize__p130E2F4p1DP12
	:parameters ()
	:precondition (and  (chosen_p130E2F4p1DP12))
	:effect (and 
			(increase (available_p130E2F4p1DP12) 1.0)
))
(:action initialize__Max
	:parameters ()
	:precondition (and  (chosen_Max))
	:effect (and 
			(increase (available_Max) 1.0)
))
(:action initialize__Jun
	:parameters ()
	:precondition (and  (chosen_Jun))
	:effect (and 
			(increase (available_Jun) 1.0)
))
(:action initialize__HDAC1pRbp1E2F4DP12
	:parameters ()
	:precondition (and  (chosen_HDAC1pRbp1E2F4DP12))
	:effect (and 
			(increase (available_HDAC1pRbp1E2F4DP12) 1.0)
))
(:action initialize__HDAC1pRbp1E2F13p1DP12
	:parameters ()
	:precondition (and  (chosen_HDAC1pRbp1E2F13p1DP12))
	:effect (and 
			(increase (available_HDAC1pRbp1E2F13p1DP12) 1.0)
))
(:action initialize__HDAC1pRbp1E2F13DP12
	:parameters ()
	:precondition (and  (chosen_HDAC1pRbp1E2F13DP12))
	:effect (and 
			(increase (available_HDAC1pRbp1E2F13DP12) 1.0)
))
(:action initialize__HDAC1p130E2F5p1DP12
	:parameters ()
	:precondition (and  (chosen_HDAC1p130E2F5p1DP12))
	:effect (and 
			(increase (available_HDAC1p130E2F5p1DP12) 1.0)
))
(:action initialize__HDAC1p130E2F4p1DP12
	:parameters ()
	:precondition (and  (chosen_HDAC1p130E2F4p1DP12))
	:effect (and 
			(increase (available_HDAC1p130E2F4p1DP12) 1.0)
))
(:action initialize__HDAC1p107E2F4p1DP12
	:parameters ()
	:precondition (and  (chosen_HDAC1p107E2F4p1DP12))
	:effect (and 
			(increase (available_HDAC1p107E2F4p1DP12) 1.0)
))
(:action initialize__HDAC1
	:parameters ()
	:precondition (and  (chosen_HDAC1))
	:effect (and 
			(increase (available_HDAC1) 1.0)
))
(:action initialize__gEc
	:parameters ()
	:precondition (and  (chosen_gEc))
	:effect (and 
			(increase (available_gEc) 1.0)
))
(:action initialize__gE2
	:parameters ()
	:precondition (and  (chosen_gE2))
	:effect (and 
			(increase (available_gE2) 1.0)
))
(:action initialize__gcdc25A
	:parameters ()
	:precondition (and  (chosen_gcdc25A))
	:effect (and 
			(increase (available_gcdc25A) 1.0)
))
(:action initialize__E2F6DP12p1
	:parameters ()
	:precondition (and  (chosen_E2F6DP12p1))
	:effect (and 
			(increase (available_E2F6DP12p1) 1.0)
))
(:action initialize__E2F6
	:parameters ()
	:precondition (and  (chosen_E2F6))
	:effect (and 
			(increase (available_E2F6) 1.0)
))
(:action initialize__E2F5
	:parameters ()
	:precondition (and  (chosen_E2F5))
	:effect (and 
			(increase (available_E2F5) 1.0)
))
(:action initialize__E2F4DP12p1
	:parameters ()
	:precondition (and  (chosen_E2F4DP12p1))
	:effect (and 
			(increase (available_E2F4DP12p1) 1.0)
))
(:action initialize__E2F4
	:parameters ()
	:precondition (and  (chosen_E2F4))
	:effect (and 
			(increase (available_E2F4) 1.0)
))
(:action initialize__E2F3
	:parameters ()
	:precondition (and  (chosen_E2F3))
	:effect (and 
			(increase (available_E2F3) 1.0)
))
(:action initialize__E2F2
	:parameters ()
	:precondition (and  (chosen_E2F2))
	:effect (and 
			(increase (available_E2F2) 1.0)
))
(:action initialize__E2F13p1DP12p1
	:parameters ()
	:precondition (and  (chosen_E2F13p1DP12p1))
	:effect (and 
			(increase (available_E2F13p1DP12p1) 1.0)
))
(:action initialize__E2F13p1DP12
	:parameters ()
	:precondition (and  (chosen_E2F13p1DP12))
	:effect (and 
			(increase (available_E2F13p1DP12) 1.0)
))
(:action initialize__E2F13
	:parameters ()
	:precondition (and  (chosen_E2F13))
	:effect (and 
			(increase (available_E2F13) 1.0)
))
(:action initialize__DP12
	:parameters ()
	:precondition (and  (chosen_DP12))
	:effect (and 
			(increase (available_DP12) 1.0)
))
(:action initialize__DMP1
	:parameters ()
	:precondition (and  (chosen_DMP1))
	:effect (and 
			(increase (available_DMP1) 1.0)
))
(:action initialize__cycH
	:parameters ()
	:precondition (and  (chosen_cycH))
	:effect (and 
			(increase (available_cycH) 1.0)
))
(:action initialize__CEBP
	:parameters ()
	:precondition (and  (chosen_CEBP))
	:effect (and 
			(increase (available_CEBP) 1.0)
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
(:action initialize__cdk2cycB
	:parameters ()
	:precondition (and  (chosen_cdk2cycB))
	:effect (and 
			(increase (available_cdk2cycB) 1.0)
))
(:action initialize__cdk2
	:parameters ()
	:precondition (and  (chosen_cdk2))
	:effect (and 
			(increase (available_cdk2) 1.0)
))
(:action initialize__cAbl
	:parameters ()
	:precondition (and  (chosen_cAbl))
	:effect (and 
			(increase (available_cAbl) 1.0)
))
(:action initialize__AP2
	:parameters ()
	:precondition (and  (chosen_AP2))
	:effect (and 
			(increase (available_AP2) 1.0)
))
(:action associate__pRb__E2F4DP12p1__pRbE2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_E2F4DP12p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F4DP12p1) 4.0)			(increase (available_pRbE2F4DP12p1) 4.0)			(decrease (available_pRb) 2.0)
))
(:action associate__pRbp1E2F4p1DP12__gE2__pRbp1E2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1E2F4p1DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1E2F4p1DP12) 3.0)			(decrease (available_gE2) 1.0)			(increase (available_pRbp1E2F4p1DP12gE2) 4.0)
))
(:action associatewithcatalyze__pRbp2__cdk46p3cycDp1__pRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1p2) 1.0)			(decrease (available_pRbp2) 1.0)
))
(:action associatewithcatalyze__pRbp2__cdk46p3cycD__pRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1p2) 2.0)			(decrease (available_pRbp2) 4.0)
))
(:action associate__HDAC1pRbp1E2F4DP12__gE2__HDAC1pRbp1E2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1pRbp1E2F4DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1pRbp1E2F4DP12gE2) 2.0)			(decrease (available_HDAC1pRbp1E2F4DP12) 2.0)			(decrease (available_gE2) 2.0)
))
(:action associate__p53p1__DP12__p53p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p53p1DP12) 4.0)			(decrease (available_p53p1) 1.0)			(decrease (available_DP12) 1.0)
))
(:action associate__pRbE2F4p1DP12__gE2__pRbE2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbE2F4p1DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbE2F4p1DP12) 2.0)			(increase (available_pRbE2F4p1DP12gE2) 1.0)			(decrease (available_gE2) 2.0)
))
(:action associate__pCAF__p300__pCAFp300
	:parameters ()
	:precondition (and (>= (+ (*   (available_p300) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pCAF) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pCAF) 4.0)			(decrease (available_p300) 2.0)			(increase (available_pCAFp300) 2.0)
))
(:action associate__E2F6DP12p1__gE2__E2F6DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F6DP12p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F6DP12p1) 3.0)			(decrease (available_gE2) 2.0)			(increase (available_E2F6DP12p1gE2) 1.0)
))
(:action associate__cAbl__pRb__cAblpRb
	:parameters ()
	:precondition (and (>= (+ (*   (available_cAbl) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRb) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRb) 2.0)			(increase (available_cAblpRb) 3.0)			(decrease (available_cAbl) 2.0)
))
(:action associate__E2F2__DP12__E2F2DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F2) 1.0)			(increase (available_E2F2DP12) 3.0)			(decrease (available_DP12) 1.0)
))
(:action associate__E2F3__DP12__E2F3DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F3) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_E2F3DP12) 2.0)			(decrease (available_DP12) 4.0)			(decrease (available_E2F3) 1.0)
))
(:action associate__cAbl__pRbp2__cAblpRbp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cAbl) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbp2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cAblpRbp2) 1.0)			(decrease (available_pRbp2) 3.0)			(decrease (available_cAbl) 1.0)
))
(:action associate__pRb__E2F13p1DP12__pRbE2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRb) 4.0)			(decrease (available_E2F13p1DP12) 4.0)			(increase (available_pRbE2F13p1DP12) 3.0)
))
(:action associate__pRb__E2F13p1DP12p1__pRbE2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13p1DP12p1) 2.0)			(decrease (available_pRb) 1.0)			(increase (available_pRbE2F13p1DP12p1) 1.0)
))
(:action associate__E2F4__DP12__E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_E2F4DP12) 2.0)			(decrease (available_E2F4) 4.0)			(decrease (available_DP12) 3.0)
))
(:action synthesize__p53__cFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cFos) 3.0)
))
(:action associate__E2F5__DP12__E2F5DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_E2F5DP12) 4.0)			(decrease (available_DP12) 1.0)			(decrease (available_E2F5) 4.0)
))
(:action associatewithcatalyze__DMP1__cdk46p3cycDp1__DMP1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_DMP1) 4.0)			(increase (available_DMP1p1) 3.0)
))
(:action synthesize__p53p1__cFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cFos) 1.0)
))
(:action synthesize__p53__p21
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p21) 4.0)
))
(:action associate__Skp2__Skp1__Skp2Skp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Skp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_Skp1) 4.0)			(increase (available_Skp2Skp1) 1.0)			(decrease (available_Skp2) 3.0)
))
(:action associatewithcatalyze__DMP1__cdk46p3cycD__DMP1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_DMP1p1) 2.0)			(decrease (available_DMP1) 2.0)
))
(:action synthesize__p53p1__p21
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p21) 2.0)
))
(:action associatewithcatalyze__cdk2cycB__Wee1__cdk2p1cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2cycB) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Wee1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycB) 3.0)			(increase (available_cdk2p1cycB) 3.0)
))
(:action associate__pRb__AP2__pRbAP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_AP2) 2.0)			(decrease (available_pRb) 2.0)			(increase (available_pRbAP2) 3.0)
))
(:action synthesize__p53__Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Gadd45) 3.0)
))
(:action associate__HDAC1p107E2F4p1DP12__gE2__HDAC1p107E2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1p107E2F4p1DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1p107E2F4p1DP12) 4.0)			(increase (available_HDAC1p107E2F4p1DP12gE2) 1.0)			(decrease (available_gE2) 1.0)
))
(:action associate__E2F6__DP12__E2F6DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F6) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_E2F6DP12) 4.0)			(decrease (available_DP12) 4.0)			(decrease (available_E2F6) 4.0)
))
(:action synthesize__p53__Mdm2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Mdm2) 3.0)
))
(:action synthesize__p53p1__Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Gadd45) 3.0)
))
(:action associate__Raf1__pRbE2F4p1DP12__Raf1pRbE2F4p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbE2F4p1DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbE2F4p1DP12) 4.0)			(decrease (available_Raf1) 1.0)			(increase (available_Raf1pRbE2F4p1DP12) 1.0)
))
(:action associate__Raf1__pRbp1E2F4p1DP12__Raf1pRbp1E2F4p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbp1E2F4p1DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbp1E2F4p1DP12) 2.0)			(decrease (available_pRbp1E2F4p1DP12) 3.0)			(decrease (available_Raf1) 3.0)
))
(:action associate__cdk7__cycH__cdk7cycH
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk7) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycH) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk7) 4.0)			(increase (available_cdk7cycH) 3.0)			(decrease (available_cycH) 4.0)
))
(:action associate__CEBP__pRb__CEBPpRb
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBP) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRb) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRb) 4.0)			(increase (available_CEBPpRb) 2.0)			(decrease (available_CEBP) 3.0)
))
(:action associate__p16__cdk46p1__p16cdk46p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p16) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p16) 3.0)			(decrease (available_cdk46p1) 1.0)			(increase (available_p16cdk46p1) 3.0)
))
(:action associate__E2F13p1DP12__gE2__E2F13p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13p1DP12) 4.0)			(decrease (available_gE2) 4.0)			(increase (available_E2F13p1DP12gE2) 4.0)
))
(:action associate__HDAC1pRbp1E2F13DP12__gE2__HDAC1pRbp1E2F13DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1pRbp1E2F13DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1pRbp1E2F13DP12gE2) 3.0)			(decrease (available_HDAC1pRbp1E2F13DP12) 2.0)			(decrease (available_gE2) 4.0)
))
(:action associate__AP2__gEc__AP2gEc
	:parameters ()
	:precondition (and (>= (+ (*   (available_AP2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gEc) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_AP2) 1.0)			(decrease (available_gEc) 2.0)			(increase (available_AP2gEc) 3.0)
))
(:action associate__HDAC1__pRbE2F4p1DP12__HDAC1pRbE2F4p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbE2F4p1DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1pRbE2F4p1DP12) 2.0)			(decrease (available_pRbE2F4p1DP12) 4.0)			(decrease (available_HDAC1) 4.0)
))
(:action associate__pRbp2__AP2__pRbp2AP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_AP2) 4.0)			(decrease (available_pRbp2) 3.0)			(increase (available_pRbp2AP2) 1.0)
))
(:action associate__HDAC1pRbp1E2F13p1DP12__gE2__HDAC1pRbp1E2F13p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_HDAC1pRbp1E2F13p1DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 3.0)			(decrease (available_HDAC1pRbp1E2F13p1DP12) 2.0)			(increase (available_HDAC1pRbp1E2F13p1DP12gE2) 4.0)
))
(:action associate__pRbp2__Jun__pRbp2Jun
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Jun) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp2) 3.0)			(decrease (available_Jun) 3.0)			(increase (available_pRbp2Jun) 1.0)
))
(:action associatewithcatalyze__pRb__cdk46p3cycD__pRbp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1) 1.0)			(decrease (available_pRb) 2.0)
))
(:action associate__Raf1__p130E2F4p1DP12__Raf1p130E2F4p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130E2F4p1DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Raf1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1p130E2F4p1DP12) 3.0)			(decrease (available_Raf1) 2.0)			(decrease (available_p130E2F4p1DP12) 3.0)
))
(:action associate__Raf1__p130E2F5p1DP12__Raf1p130E2F5p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p130E2F5p1DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1p130E2F5p1DP12) 4.0)			(decrease (available_Raf1) 2.0)			(decrease (available_p130E2F5p1DP12) 4.0)
))
(:action associatewithcatalyze__pRb__cdk46p3cycDp1__pRbp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p3cycDp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRb) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1) 2.0)			(decrease (available_pRb) 1.0)
))
(:action associate__p53__DP12__p53DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p53) 3.0)			(increase (available_p53DP12) 3.0)			(decrease (available_DP12) 3.0)
))
(:action associatewithcatalyze__cdk2p2cycB__Wee1__cdk2p1p2cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p2cycB) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Wee1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p2cycB) 3.0)			(increase (available_cdk2p1p2cycB) 4.0)
))
(:action synthesize__p53p1__Mdm2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Mdm2) 3.0)
))
(:action associate__HDAC1p130E2F4p1DP12__gE2__HDAC1p130E2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1p130E2F4p1DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 3.0)			(decrease (available_HDAC1p130E2F4p1DP12) 4.0)			(increase (available_HDAC1p130E2F4p1DP12gE2) 3.0)
))
(:action associate__pRb__Jun__pRbJun
	:parameters ()
	:precondition (and (>= (+ (*   (available_Jun) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRb) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pRbJun) 1.0)			(decrease (available_pRb) 1.0)			(decrease (available_Jun) 4.0)
))
(:action associate__SP1__E2F13__SP1E2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F13) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_SP1) 3.0)			(decrease (available_E2F13) 4.0)			(increase (available_SP1E2F13) 4.0)
))
(:action associate__HDAC1p130E2F5p1DP12__gE2__HDAC1p130E2F5p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_HDAC1p130E2F5p1DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1p130E2F5p1DP12) 1.0)			(decrease (available_gE2) 4.0)			(increase (available_HDAC1p130E2F5p1DP12gE2) 2.0)
))
(:action associate__p16__cdk7__p16cdk7
	:parameters ()
	:precondition (and (>= (+ (*   (available_p16) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk7) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p16) 4.0)			(decrease (available_cdk7) 1.0)			(increase (available_p16cdk7) 4.0)
))
(:action associate__CEBP__pRbp2__CEBPpRbp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBP) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbp2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_CEBPpRbp2) 3.0)			(decrease (available_CEBP) 3.0)			(decrease (available_pRbp2) 2.0)
))
(:action associate__Raf1__pRbE2F13p1DP12__Raf1pRbE2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbE2F13p1DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_Raf1) 1.0)			(increase (available_Raf1pRbE2F13p1DP12) 2.0)			(decrease (available_pRbE2F13p1DP12) 1.0)
))
(:action associate__cAbl__pRbp1__cAblpRbp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cAbl) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cAbl) 3.0)			(decrease (available_pRbp1) 2.0)			(increase (available_cAblpRbp1) 2.0)
))
(:action associate__Raf1p130E2F5p1DP12__gE2__Raf1p130E2F5p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_Raf1p130E2F5p1DP12) 3.0)			(increase (available_Raf1p130E2F5p1DP12gE2) 1.0)			(decrease (available_gE2) 1.0)
))
(:action associate__Mdm2__pRbp2__Mdm2pRbp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Mdm2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp2) 3.0)			(increase (available_Mdm2pRbp2) 3.0)			(decrease (available_Mdm2) 3.0)
))
(:action associatewithcatalyze__cdk7__cdk7cycH__cdk7p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk7) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk7p1) 1.0)			(decrease (available_cdk7) 3.0)
))
(:action associate__E2F5DP12__gE2__E2F5DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_E2F5DP12gE2) 3.0)			(decrease (available_E2F5DP12) 1.0)			(decrease (available_gE2) 1.0)
))
(:action associate__pRb__E2F4DP12__pRbE2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F4DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pRbE2F4DP12) 4.0)			(decrease (available_E2F4DP12) 4.0)			(decrease (available_pRb) 1.0)
))
(:action associate__pRbp2Jun__cFos__pRbp2JuncFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2Jun) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cFos) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp2Jun) 2.0)			(increase (available_pRbp2JuncFos) 4.0)			(decrease (available_cFos) 4.0)
))
(:action associatewithcatalyze__cdk46p1__cdk7cycH__cdk46p1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1) 2.0)			(increase (available_cdk46p1p2) 2.0)
))
(:action associate__pRbp1__AP2__pRbp1AP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1) 3.0)			(increase (available_pRbp1AP2) 1.0)			(decrease (available_AP2) 3.0)
))
(:action associate__pRbp1__Jun__pRbp1Jun
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Jun) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1) 3.0)			(increase (available_pRbp1Jun) 2.0)			(decrease (available_Jun) 2.0)
))
(:action associate__p21__Gadd45__p21Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_Gadd45) 1.0)			(decrease (available_p21) 2.0)			(increase (available_p21Gadd45) 2.0)
))
(:action associate__Mdm2__pRbp1__Mdm2pRbp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Mdm2pRbp1) 3.0)			(decrease (available_Mdm2) 4.0)			(decrease (available_pRbp1) 2.0)
))
(:action associate__Raf1__pRbE2F13p1DP12p1__Raf1pRbE2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbE2F13p1DP12p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbE2F13p1DP12p1) 4.0)			(decrease (available_pRbE2F13p1DP12p1) 4.0)			(decrease (available_Raf1) 3.0)
))
(:action associate__HDAC1__pRbE2F13p1DP12p1__HDAC1pRbE2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbE2F13p1DP12p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1pRbE2F13p1DP12p1) 3.0)			(decrease (available_pRbE2F13p1DP12p1) 4.0)			(decrease (available_HDAC1) 4.0)
))
(:action associate__pRbp1__E2F4DP12p1__pRbp1E2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F4DP12p1) 1.0)			(decrease (available_pRbp1) 3.0)			(increase (available_pRbp1E2F4DP12p1) 4.0)
))
(:action synthesize__AP2gEc__Ecadherin
	:parameters ()
	:precondition (and (>= (+ (*   (available_AP2gEc) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Ecadherin) 4.0)
))
(:action associate__cAbl__pRbp1p2__cAblpRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cAbl) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRbp1p2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cAblpRbp1p2) 4.0)			(decrease (available_pRbp1p2) 3.0)			(decrease (available_cAbl) 2.0)
))
(:action synthesize__E2F13p1DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 2.0)
))
(:action synthesize__E2F13p1DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 2.0)
))
(:action synthesize__E2F13p1DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 4.0)
))
(:action synthesize__E2F13p1DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 3.0)
))
(:action synthesize__E2F13p1DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 4.0)
))
(:action synthesize__E2F13p1DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 2.0)
))
(:action synthesize__E2F13p1DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 1.0)
))
(:action synthesize__E2F13p1DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 1.0)
))
(:action synthesize__E2F13p1DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 4.0)
))
(:action synthesize__E2F13p1DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 1.0)
))
(:action associate__HDAC1__pRbE2F13p1DP12__HDAC1pRbE2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbE2F13p1DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbE2F13p1DP12) 3.0)			(increase (available_HDAC1pRbE2F13p1DP12) 1.0)			(decrease (available_HDAC1) 1.0)
))
(:action associate__PCNA__Gadd45__PCNAGadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNA) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_PCNAGadd45) 3.0)			(decrease (available_PCNA) 3.0)			(decrease (available_Gadd45) 3.0)
))
(:action associate__Jun__cFos__JuncFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_Jun) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cFos) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_JuncFos) 1.0)			(decrease (available_Jun) 4.0)			(decrease (available_cFos) 2.0)
))
(:action associate__Raf1pRbE2F4p1DP12__gE2__Raf1pRbE2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 3.0)			(decrease (available_Raf1pRbE2F4p1DP12) 1.0)			(increase (available_Raf1pRbE2F4p1DP12gE2) 3.0)
))
(:action selfassociatewithcatalyze__cdk7cycH__cdk7p1cycH
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk7cycH) 1.0) -5.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk7cycH) 5.0)			(increase (available_cdk7p1cycH) 1.0)
))
(:action associate__pRbJun__cFos__pRbJuncFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbJun) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cFos) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pRbJuncFos) 2.0)			(decrease (available_pRbJun) 4.0)			(decrease (available_cFos) 2.0)
))
(:action associate__pRbAP2__gEc__pRbAP2gEc
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbAP2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gEc) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbAP2) 1.0)			(decrease (available_gEc) 4.0)			(increase (available_pRbAP2gEc) 2.0)
))
(:action associate__Mdm2__E2F13p1DP12__Mdm2E2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_Mdm2) 1.0)			(increase (available_Mdm2E2F13p1DP12) 4.0)			(decrease (available_E2F13p1DP12) 2.0)
))
(:action associate__pRbp1__E2F4DP12__pRbp1E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F4DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1) 4.0)			(increase (available_pRbp1E2F4DP12) 2.0)			(decrease (available_E2F4DP12) 3.0)
))
(:action associate__Mdm2__E2F13p1DP12p1__Mdm2E2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_Mdm2) 2.0)			(increase (available_Mdm2E2F13p1DP12p1) 2.0)			(decrease (available_E2F13p1DP12p1) 2.0)
))
(:action associate__Raf1p130E2F4p1DP12__gE2__Raf1p130E2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_Raf1p130E2F4p1DP12) 4.0)			(increase (available_Raf1p130E2F4p1DP12gE2) 3.0)			(decrease (available_gE2) 2.0)
))
(:action associate__E2F4DP12__gE2__E2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_E2F4DP12gE2) 4.0)			(decrease (available_gE2) 2.0)			(decrease (available_E2F4DP12) 3.0)
))
(:action associate__PCNA__p21__PCNAp21
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNA) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_p21) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_PCNAp21) 4.0)			(decrease (available_PCNA) 3.0)			(decrease (available_p21) 2.0)
))
(:action associate__Mdm2__pRb__Mdm2pRb
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRb) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_Mdm2) 2.0)			(decrease (available_pRb) 1.0)			(increase (available_Mdm2pRb) 2.0)
))
(:action associate__Mdm2__pRbp1p2__Mdm2pRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbp1p2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1p2) 4.0)			(increase (available_Mdm2pRbp1p2) 4.0)			(decrease (available_Mdm2) 4.0)
))
(:action associate__CEBP__pRbp1__CEBPpRbp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBP) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_CEBP) 1.0)			(increase (available_CEBPpRbp1) 4.0)			(decrease (available_pRbp1) 4.0)
))
(:action associate__pRbp1__E2F13p1DP12__pRbp1E2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13p1DP12) 3.0)			(decrease (available_pRbp1) 2.0)			(increase (available_pRbp1E2F13p1DP12) 2.0)
))
(:action associate__pRbE2F13p1DP12__gE2__pRbE2F13p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbE2F13p1DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbE2F13p1DP12) 3.0)			(decrease (available_gE2) 2.0)			(increase (available_pRbE2F13p1DP12gE2) 2.0)
))
(:action associate__pRbp1p2__AP2__pRbp1p2AP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1p2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1p2) 2.0)			(increase (available_pRbp1p2AP2) 1.0)			(decrease (available_AP2) 3.0)
))
(:action associate__pRbp1p2__Jun__pRbp1p2Jun
	:parameters ()
	:precondition (and (>= (+ (*   (available_Jun) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbp1p2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_Jun) 3.0)			(decrease (available_pRbp1p2) 3.0)			(increase (available_pRbp1p2Jun) 2.0)
))
(:action associate__pRbp1__E2F13p1DP12p1__pRbp1E2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1) 1.0)			(decrease (available_E2F13p1DP12p1) 3.0)			(increase (available_pRbp1E2F13p1DP12p1) 3.0)
))
(:action associate__CEBP__pRbp1p2__CEBPpRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1p2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_CEBP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_CEBPpRbp1p2) 1.0)			(decrease (available_pRbp1p2) 3.0)			(decrease (available_CEBP) 3.0)
))
(:action associate__Raf1pRbp1E2F4p1DP12__gE2__Raf1pRbp1E2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_Raf1pRbp1E2F4p1DP12) 3.0)			(increase (available_Raf1pRbp1E2F4p1DP12gE2) 1.0)			(decrease (available_gE2) 4.0)
))
(:action associatewithcatalyze__cdk2__cdk7cycH__cdk2p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk7cycH) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p2) 4.0)			(decrease (available_cdk2) 3.0)
))
(:action associate__E2F6DP12__gE2__E2F6DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F6DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 3.0)			(decrease (available_E2F6DP12) 2.0)			(increase (available_E2F6DP12gE2) 3.0)
))
(:action associate__pRbE2F13p1DP12p1__gE2__pRbE2F13p1DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbE2F13p1DP12p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbE2F13p1DP12p1) 3.0)			(increase (available_pRbE2F13p1DP12p1gE2) 4.0)			(decrease (available_gE2) 1.0)
))
(:action associate__pRbp2AP2__gEc__pRbp2AP2gEc
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2AP2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gEc) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp2AP2gEc) 4.0)			(decrease (available_gEc) 2.0)			(decrease (available_pRbp2AP2) 4.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 4.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 1.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 1.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 3.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 1.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 1.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 2.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 4.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 1.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 3.0)
))
(:action associate__PCNA__cycDp1__PCNAcycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_PCNA) 4.0)			(decrease (available_cycDp1) 3.0)			(increase (available_PCNAcycDp1) 1.0)
))
(:action associate__pRbp1p2AP2__gEc__pRbp1p2AP2gEc
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1p2AP2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gEc) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1p2AP2) 2.0)			(increase (available_pRbp1p2AP2gEc) 1.0)			(decrease (available_gEc) 3.0)
))
(:action associate__Raf1__pRbE2F4DP12__Raf1pRbE2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbE2F4DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Raf1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_Raf1) 1.0)			(decrease (available_pRbE2F4DP12) 4.0)			(increase (available_Raf1pRbE2F4DP12) 2.0)
))
(:action associate__HDAC1pRbE2F13p1DP12__gE2__HDAC1pRbE2F13p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1pRbE2F13p1DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1pRbE2F13p1DP12) 1.0)			(increase (available_HDAC1pRbE2F13p1DP12gE2) 2.0)			(decrease (available_gE2) 4.0)
))
(:action associate__p16__cdk46p1p2__p16cdk46p1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p16) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p1p2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p16cdk46p1p2) 4.0)			(decrease (available_p16) 1.0)			(decrease (available_cdk46p1p2) 2.0)
))
(:action associate__pRbp1E2F13p1DP12p1__gE2__pRbp1E2F13p1DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1E2F13p1DP12p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1E2F13p1DP12p1gE2) 1.0)			(decrease (available_pRbp1E2F13p1DP12p1) 2.0)			(decrease (available_gE2) 4.0)
))
(:action associate__cdk46p1p2__cycD__cdk46p1p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycD) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p1p2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1p2) 3.0)			(decrease (available_cycD) 2.0)			(increase (available_cdk46p1p2cycD) 1.0)
))
(:action associate__PCNA__cycD__PCNAcycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_PCNA) 4.0)			(decrease (available_cycD) 2.0)			(increase (available_PCNAcycD) 3.0)
))
(:action associate__pRbp1E2F13p1DP12__gE2__pRbp1E2F13p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1E2F13p1DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1E2F13p1DP12) 3.0)			(increase (available_pRbp1E2F13p1DP12gE2) 1.0)			(decrease (available_gE2) 1.0)
))
(:action associate__cdk46p1p2__cycDp1__cdk46p1p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1p2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cycDp1) 3.0)			(decrease (available_cdk46p1p2) 4.0)			(increase (available_cdk46p1p2cycDp1) 3.0)
))
(:action associate__cdk2p2__cycA__cdk2p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p2) 1.0)			(increase (available_cdk2p2cycA) 4.0)			(decrease (available_cycA) 1.0)
))
(:action associate__Raf1__pRbp1E2F13p1DP12p1__Raf1pRbp1E2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbp1E2F13p1DP12p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbp1E2F13p1DP12p1) 4.0)			(decrease (available_Raf1) 3.0)			(decrease (available_pRbp1E2F13p1DP12p1) 3.0)
))
(:action associate__pRbp1p2Jun__cFos__pRbp1p2JuncFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1p2Jun) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cFos) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1p2JuncFos) 3.0)			(decrease (available_pRbp1p2Jun) 4.0)			(decrease (available_cFos) 1.0)
))
(:action associate__DMP1p1__cycDp1__DMP1p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycDp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_DMP1p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cycDp1) 3.0)			(decrease (available_DMP1p1) 1.0)			(increase (available_DMP1p1cycDp1) 2.0)
))
(:action associate__Raf1__pRbp1E2F13p1DP12__Raf1pRbp1E2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbp1E2F13p1DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbp1E2F13p1DP12) 1.0)			(decrease (available_Raf1) 3.0)			(decrease (available_pRbp1E2F13p1DP12) 1.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 3.0)
))
(:action associate__p107__E2F4DP12p1__p107E2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p107) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F4DP12p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F4DP12p1) 3.0)			(decrease (available_p107) 3.0)			(increase (available_p107E2F4DP12p1) 4.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 3.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 1.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 2.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 1.0)
))
(:action associate__cdk2p2__cycEp1__cdk2p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycEp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cycEp1) 1.0)			(increase (available_cdk2p2cycEp1) 2.0)			(decrease (available_cdk2p2) 3.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 3.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 4.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 2.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 4.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 4.0)
))
(:action associate__cdk2p2__cycE__cdk2p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycE) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p2) 4.0)			(increase (available_cdk2p2cycE) 1.0)			(decrease (available_cycE) 4.0)
))
(:action associate__p107__E2F4DP12__p107E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_p107) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F4DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F4DP12) 2.0)			(increase (available_p107E2F4DP12) 1.0)			(decrease (available_p107) 3.0)
))
(:action synthesize__E2F5DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 2.0)
))
(:action synthesize__E2F5DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 4.0)
))
(:action synthesize__E2F5DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 1.0)
))
(:action synthesize__E2F5DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 1.0)
))
(:action synthesize__E2F5DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 4.0)
))
(:action synthesize__E2F5DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 2.0)
))
(:action synthesize__E2F4DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 2.0)
))
(:action synthesize__E2F4DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 4.0)
))
(:action synthesize__E2F4DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 4.0)
))
(:action synthesize__E2F4DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 4.0)
))
(:action synthesize__E2F4DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 2.0)
))
(:action synthesize__E2F4DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 4.0)
))
(:action synthesize__E2F4DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 3.0)
))
(:action synthesize__E2F5DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 3.0)
))
(:action synthesize__E2F5DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 2.0)
))
(:action synthesize__E2F5DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 2.0)
))
(:action synthesize__E2F5DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 2.0)
))
(:action associate__p16__cdk7p1__p16cdk7p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p16) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk7p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk7p1) 3.0)			(increase (available_p16cdk7p1) 2.0)			(decrease (available_p16) 4.0)
))
(:action associate__DMP1p1__cycD__DMP1p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_DMP1p1cycD) 3.0)			(decrease (available_DMP1p1) 3.0)			(decrease (available_cycD) 3.0)
))
(:action synthesize__E2F4DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 1.0)
))
(:action synthesize__E2F4DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 3.0)
))
(:action synthesize__E2F4DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 1.0)
))
(:action associate__cMyc__Max__cMycMax
	:parameters ()
	:precondition (and (>= (+ (*   (available_cMyc) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Max) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cMycMax) 3.0)			(decrease (available_Max) 1.0)			(decrease (available_cMyc) 1.0)
))
(:action associate__cdk46p1__cycDp1__cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1) 4.0)			(decrease (available_cycDp1) 4.0)			(increase (available_cdk46p1cycDp1) 2.0)
))
(:action associate__cdk46p1__cycD__cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk46p1cycD) 2.0)			(decrease (available_cdk46p1) 1.0)			(decrease (available_cycD) 3.0)
))
(:action synthesize__pRbAP2gEc__Ecadherin
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbAP2gEc) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Ecadherin) 4.0)
))
(:action associate__pRbp1Jun__cFos__pRbp1JuncFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1Jun) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cFos) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1JuncFos) 2.0)			(decrease (available_pRbp1Jun) 3.0)			(decrease (available_cFos) 4.0)
))
(:action associate__cMyc__AP2__cMycAP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cMyc) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cMycAP2) 1.0)			(decrease (available_cMyc) 1.0)			(decrease (available_AP2) 3.0)
))
(:action associate__cdk2__cycEp1__cdk2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycEp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cycEp1) 3.0)			(increase (available_cdk2cycEp1) 4.0)			(decrease (available_cdk2) 3.0)
))
(:action associate__pRbE2F4DP12__gE2__pRbE2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbE2F4DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pRbE2F4DP12gE2) 1.0)			(decrease (available_pRbE2F4DP12) 1.0)			(decrease (available_gE2) 1.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 4.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 2.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 4.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 4.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 2.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 1.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 2.0)
))
(:action associate__cdk2__cycE__cdk2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycE) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2cycE) 1.0)			(decrease (available_cycE) 3.0)			(decrease (available_cdk2) 4.0)
))
(:action associate__cdk2__cycA__cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2cycA) 4.0)			(decrease (available_cdk2) 2.0)			(decrease (available_cycA) 2.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 1.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 2.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 2.0)
))
(:action associatewithcatalyze__cycA__Skp2Skp1__Skp2Skp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycA) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Skp2Skp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2Skp1) 1.0)			(decrease (available_cycA) 3.0)
))
(:action associate__HDAC1__pRbE2F4DP12__HDAC1pRbE2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRbE2F4DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1pRbE2F4DP12) 4.0)			(decrease (available_pRbE2F4DP12) 2.0)			(decrease (available_HDAC1) 2.0)
))
(:action associate__Raf1__pRbp1E2F4DP12__Raf1pRbp1E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1E2F4DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Raf1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbp1E2F4DP12) 4.0)			(decrease (available_Raf1) 1.0)			(decrease (available_pRbp1E2F4DP12) 2.0)
))
(:action associate__pRbp1AP2__gEc__pRbp1AP2gEc
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1AP2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gEc) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1AP2gEc) 4.0)			(decrease (available_pRbp1AP2) 3.0)			(decrease (available_gEc) 3.0)
))
(:action associate__SP1__p107p1__SP1p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_p107p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_SP1) 3.0)			(decrease (available_p107p1) 4.0)			(increase (available_SP1p107p1) 2.0)
))
(:action synthesize__pRbp2AP2gEc__Ecadherin
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2AP2gEc) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Ecadherin) 1.0)
))
(:action associate__DMP1__cycDp1__DMP1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_DMP1cycDp1) 4.0)			(decrease (available_DMP1) 2.0)			(decrease (available_cycDp1) 2.0)
))
(:action associate__DMP1__cycD__DMP1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_DMP1cycD) 3.0)			(decrease (available_cycD) 4.0)			(decrease (available_DMP1) 4.0)
))
(:action associate__pRbp1E2F4DP12__gE2__pRbp1E2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1E2F4DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1E2F4DP12gE2) 3.0)			(decrease (available_gE2) 4.0)			(decrease (available_pRbp1E2F4DP12) 4.0)
))
(:action associate__SP1__p107__SP1p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p107) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p107) 2.0)			(increase (available_SP1p107) 3.0)			(decrease (available_SP1) 2.0)
))
(:action associate__Raf1pRbE2F13p1DP12p1__gE2__Raf1pRbE2F13p1DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_Raf1pRbE2F13p1DP12p1) 3.0)			(decrease (available_gE2) 3.0)			(increase (available_Raf1pRbE2F13p1DP12p1gE2) 3.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 2.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 4.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 2.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 4.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 3.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 2.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 1.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 4.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 2.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 2.0)
))
(:action associate__cdk7p1__cycH__cdk7p1cycH
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk7p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycH) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk7p1cycH) 4.0)			(decrease (available_cycH) 3.0)			(decrease (available_cdk7p1) 2.0)
))
(:action associate__Raf1pRbE2F13p1DP12__gE2__Raf1pRbE2F13p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_Raf1pRbE2F13p1DP12) 3.0)			(decrease (available_gE2) 2.0)			(increase (available_Raf1pRbE2F13p1DP12gE2) 4.0)
))
(:action associate__Skp2Skp1__cdk2cycA__Skp2Skp1cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2Skp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycA) 3.0)			(increase (available_Skp2Skp1cdk2cycA) 2.0)			(decrease (available_Skp2Skp1) 3.0)
))
(:action associate__p21__cdk2cycEp1__p21cdk2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2cycEp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p21cdk2cycEp1) 3.0)			(decrease (available_cdk2cycEp1) 1.0)			(decrease (available_p21) 4.0)
))
(:action associate__Skp2__cdk2cycA__Skp2cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycA) 3.0)			(decrease (available_Skp2) 3.0)			(increase (available_Skp2cdk2cycA) 1.0)
))
(:action associate__Raf1pRbp1E2F13p1DP12__gE2__Raf1pRbp1E2F13p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbp1E2F13p1DP12gE2) 1.0)			(decrease (available_Raf1pRbp1E2F13p1DP12) 2.0)			(decrease (available_gE2) 2.0)
))
(:action associate__p27__cdk2cycA__p27cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 1.0)			(increase (available_p27cdk2cycA) 4.0)			(decrease (available_cdk2cycA) 1.0)
))
(:action associatewithcatalyze__DP12__cdk2p2cycA__DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_DP12p1) 4.0)			(decrease (available_DP12) 3.0)
))
(:action associate__p27__cdk2cycE__p27cdk2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2cycE) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 4.0)			(decrease (available_cdk2cycE) 2.0)			(increase (available_p27cdk2cycE) 2.0)
))
(:action associate__p107E2F4DP12p1__gE2__p107E2F4DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p107E2F4DP12p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 3.0)			(decrease (available_p107E2F4DP12p1) 2.0)			(increase (available_p107E2F4DP12p1gE2) 3.0)
))
(:action associatewithcatalyze__cdk2p2cycA__Wee1__cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p2cycA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Wee1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p2cycA) 1.0)			(increase (available_cdk2p1p2cycA) 3.0)
))
(:action associatewithcatalyze__cycE__cdk2p2cycE__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p2cycE) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycE) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 4.0)			(decrease (available_cycE) 2.0)
))
(:action associate__HDAC1__p107E2F4DP12__HDAC1p107E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_p107E2F4DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1) 3.0)			(decrease (available_p107E2F4DP12) 2.0)			(increase (available_HDAC1p107E2F4DP12) 3.0)
))
(:action associate__p27__cdk2p2cycE__p27cdk2p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycE) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 2.0)			(decrease (available_cdk2p2cycE) 3.0)			(increase (available_p27cdk2p2cycE) 3.0)
))
(:action associate__p107E2F4DP12__gE2__p107E2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p107E2F4DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107E2F4DP12gE2) 3.0)			(decrease (available_p107E2F4DP12) 4.0)			(decrease (available_gE2) 4.0)
))
(:action associate__p21__cdk2cycE__p21cdk2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2cycE) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p21cdk2cycE) 1.0)			(decrease (available_cdk2cycE) 2.0)			(decrease (available_p21) 1.0)
))
(:action associatewithcatalyze__cycE__cdk2p2cycEp1__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycE) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycEp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 2.0)			(decrease (available_cycE) 4.0)
))
(:action associate__p21__cdk2cycA__p21cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycA) 3.0)			(decrease (available_p21) 2.0)			(increase (available_p21cdk2cycA) 2.0)
))
(:action associate__p27__cdk2p2cycEp1__p27cdk2p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycEp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p2cycEp1) 3.0)			(decrease (available_p27) 3.0)			(increase (available_p27cdk2p2cycEp1) 2.0)
))
(:action associate__HDAC1pRbE2F4DP12__gE2__HDAC1pRbE2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1pRbE2F4DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1pRbE2F4DP12) 2.0)			(increase (available_HDAC1pRbE2F4DP12gE2) 4.0)			(decrease (available_gE2) 2.0)
))
(:action associate__p57p1__cdk46p1p2cycD__p57p1cdk46p1p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p1p2cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p57p1) 3.0)			(increase (available_p57p1cdk46p1p2cycD) 4.0)			(decrease (available_cdk46p1p2cycD) 2.0)
))
(:action associatewithcatalyze__cdk46p1cycDp1__cdk7cycH__cdk46p1p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1cycDp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1cycDp1) 2.0)			(increase (available_cdk46p1p2cycDp1) 3.0)
))
(:action synthesize__pRbp1p2AP2gEc__Ecadherin
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1p2AP2gEc) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Ecadherin) 4.0)
))
(:action associate__cdk2cycA__E2F13__cdk2cycAE2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13) 3.0)			(decrease (available_cdk2cycA) 4.0)			(increase (available_cdk2cycAE2F13) 4.0)
))
(:action associate__p27__cdk2cycEp1__p27cdk2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2cycEp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 4.0)			(decrease (available_cdk2cycEp1) 2.0)			(increase (available_p27cdk2cycEp1) 1.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 2.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 1.0)
))
(:action associate__p57__cdk2cycA__p57cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2cycA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p57) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p57) 3.0)			(increase (available_p57cdk2cycA) 4.0)			(decrease (available_cdk2cycA) 2.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 2.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12p1gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 2.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12p1gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 3.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12p1gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 2.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12p1gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 2.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12p1gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 2.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12p1gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 3.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12p1gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 1.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12p1gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 3.0)
))
(:action associatewithcatalyze__E2F13__cdk2p2cycA__E2F13p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13) 4.0)			(increase (available_E2F13p1) 4.0)
))
(:action associate__p21__cdk2p2cycA__p21cdk2p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p2cycA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p21) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p21cdk2p2cycA) 2.0)			(decrease (available_cdk2p2cycA) 2.0)			(decrease (available_p21) 3.0)
))
(:action associate__p57__cdk2cycEp1__p57cdk2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2cycEp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2cycEp1) 4.0)			(decrease (available_cdk2cycEp1) 4.0)			(decrease (available_p57) 2.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 1.0)
))
(:action associate__PCNAp21__cdk2cycE__PCNAp21cdk2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2cycE) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_PCNAp21cdk2cycE) 2.0)			(decrease (available_cdk2cycE) 1.0)			(decrease (available_PCNAp21) 1.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 4.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 1.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 2.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 1.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 1.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 2.0)
))
(:action associate__p27__cdk46p1cycDp1__p27cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p27cdk46p1cycDp1) 2.0)			(decrease (available_p27) 3.0)			(decrease (available_cdk46p1cycDp1) 3.0)
))
(:action associate__PCNAp21__cdk2p2cycE__PCNAp21cdk2p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycE) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_PCNAp21) 3.0)			(increase (available_PCNAp21cdk2p2cycE) 1.0)			(decrease (available_cdk2p2cycE) 2.0)
))
(:action synthesize__pRbp1AP2gEc__Ecadherin
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1AP2gEc) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Ecadherin) 2.0)
))
(:action associatewithcatalyze__pRbp1__cdk2p2cycEp1__pRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycEp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1p2) 4.0)			(decrease (available_pRbp1) 4.0)
))
(:action associate__p57__cdk2cycE__p57cdk2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2cycE) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2cycE) 3.0)			(decrease (available_cdk2cycE) 4.0)			(decrease (available_p57) 4.0)
))
(:action associate__PCNAp21__cdk2p2cycEp1__PCNAp21cdk2p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycEp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p2cycEp1) 3.0)			(decrease (available_PCNAp21) 1.0)			(increase (available_PCNAp21cdk2p2cycEp1) 2.0)
))
(:action associate__p21__cdk2p2cycEp1__p21cdk2p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycEp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p21cdk2p2cycEp1) 3.0)			(decrease (available_cdk2p2cycEp1) 2.0)			(decrease (available_p21) 2.0)
))
(:action associate__HDAC1__p107E2F4DP12p1__HDAC1p107E2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_p107E2F4DP12p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p107E2F4DP12p1) 2.0)			(increase (available_HDAC1p107E2F4DP12p1) 1.0)			(decrease (available_HDAC1) 1.0)
))
(:action associate__Raf1pRbp1E2F13p1DP12p1__gE2__Raf1pRbp1E2F13p1DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbp1E2F13p1DP12p1gE2) 4.0)			(decrease (available_Raf1pRbp1E2F13p1DP12p1) 2.0)			(decrease (available_gE2) 4.0)
))
(:action associate__Skp2Skp1__cdk2p2cycA__Skp2Skp1cdk2p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2Skp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_Skp2Skp1) 2.0)			(increase (available_Skp2Skp1cdk2p2cycA) 3.0)			(decrease (available_cdk2p2cycA) 1.0)
))
(:action associate__PCNAp21__cdk2cycA__PCNAp21cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_PCNAp21) 3.0)			(decrease (available_cdk2cycA) 3.0)			(increase (available_PCNAp21cdk2cycA) 1.0)
))
(:action associate__Skp2__cdk2p2cycA__Skp2cdk2p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_Skp2) 3.0)			(decrease (available_cdk2p2cycA) 3.0)			(increase (available_Skp2cdk2p2cycA) 2.0)
))
(:action associate__p21__cdk2p2cycE__p21cdk2p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycE) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p2cycE) 3.0)			(increase (available_p21cdk2p2cycE) 4.0)			(decrease (available_p21) 1.0)
))
(:action associate__p27__cdk2p2cycA__p27cdk2p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 2.0)			(decrease (available_cdk2p2cycA) 2.0)			(increase (available_p27cdk2p2cycA) 3.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12p1gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 3.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12p1gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 3.0)
))
(:action associate__PCNAp21__cdk2cycEp1__PCNAp21cdk2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2cycEp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_PCNAp21cdk2cycEp1) 2.0)			(decrease (available_cdk2cycEp1) 4.0)			(decrease (available_PCNAp21) 4.0)
))
(:action associate__p27__cdk46p1p2cycD__p27cdk46p1p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p1p2cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p27cdk46p1p2cycD) 3.0)			(decrease (available_p27) 3.0)			(decrease (available_cdk46p1p2cycD) 2.0)
))
(:action associatewithcatalyze__cdk2cycA__cdk7cycH__cdk2p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycA) 4.0)			(increase (available_cdk2p2cycA) 3.0)
))
(:action associate__Raf1pRbE2F4DP12__gE2__Raf1pRbE2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_Raf1pRbE2F4DP12) 3.0)			(decrease (available_gE2) 1.0)			(increase (available_Raf1pRbE2F4DP12gE2) 4.0)
))
(:action associatewithcatalyze__p27__cdk2p2cycEp1__p27p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycEp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p27p1) 3.0)			(decrease (available_p27) 3.0)
))
(:action associate__p21__cdk46p1cycD__p21cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p21cdk46p1cycD) 1.0)			(decrease (available_p21) 3.0)			(decrease (available_cdk46p1cycD) 2.0)
))
(:action associate__cdk2p2cycA__E2F13__cdk2p2cycAE2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13) 4.0)			(decrease (available_cdk2p2cycA) 4.0)			(increase (available_cdk2p2cycAE2F13) 2.0)
))
(:action associatewithcatalyze__cdk2cycE__cdk7cycH__cdk2p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2cycE) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycE) 3.0)			(increase (available_cdk2p2cycE) 4.0)
))
(:action associate__PCNAp21__cdk46p1cycDp1__PCNAp21cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1cycDp1) 2.0)			(increase (available_PCNAp21cdk46p1cycDp1) 3.0)			(decrease (available_PCNAp21) 4.0)
))
(:action associatewithcatalyze__p27__cdk2p2cycE__p27p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycE) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p27p1) 3.0)			(decrease (available_p27) 2.0)
))
(:action associatewithcatalyze__Skp1__cdk2p2cycA__Skp1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_Skp1) 2.0)			(increase (available_Skp1p1) 2.0)
))
(:action associate__p21__cdk46p1p2cycDp1__p21cdk46p1p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p1p2cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p21cdk46p1p2cycDp1) 2.0)			(decrease (available_cdk46p1p2cycDp1) 2.0)			(decrease (available_p21) 1.0)
))
(:action associatewithcatalyze__pRbp1__cdk2p2cycE__pRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycE) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1) 3.0)			(increase (available_pRbp1p2) 4.0)
))
(:action associatewithcatalyze__cdk2cycA__Wee1__cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2cycA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Wee1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1cycA) 1.0)			(decrease (available_cdk2cycA) 1.0)
))
(:action associate__p27__cdk46p1cycD__p27cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 4.0)			(increase (available_p27cdk46p1cycD) 4.0)			(decrease (available_cdk46p1cycD) 4.0)
))
(:action associate__PCNAp21__cdk2p2cycA__PCNAp21cdk2p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_PCNAp21cdk2p2cycA) 1.0)			(decrease (available_cdk2p2cycA) 4.0)			(decrease (available_PCNAp21) 2.0)
))
(:action associate__p57__cdk2p2cycE__p57cdk2p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycE) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2p2cycE) 4.0)			(decrease (available_cdk2p2cycE) 2.0)			(decrease (available_p57) 4.0)
))
(:action associate__cMycMax__gcdc25A__cMycMaxgcdc25A
	:parameters ()
	:precondition (and (>= (+ (*   (available_cMycMax) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gcdc25A) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cMycMaxgcdc25A) 2.0)			(decrease (available_cMycMax) 2.0)			(decrease (available_gcdc25A) 1.0)
))
(:action associate__p57__cdk2p2cycEp1__p57cdk2p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycEp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2p2cycEp1) 3.0)			(decrease (available_cdk2p2cycEp1) 3.0)			(decrease (available_p57) 3.0)
))
(:action associate__p57__cdk2p2cycA__p57cdk2p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2p2cycA) 3.0)			(decrease (available_cdk2p2cycA) 4.0)			(decrease (available_p57) 1.0)
))
(:action associate__p27__cdk46p1p2cycDp1__p27cdk46p1p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1p2cycDp1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_p27) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1p2cycDp1) 1.0)			(decrease (available_p27) 3.0)			(increase (available_p27cdk46p1p2cycDp1) 1.0)
))
(:action associate__p21__cdk46p1cycDp1__p21cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1cycDp1) 3.0)			(increase (available_p21cdk46p1cycDp1) 1.0)			(decrease (available_p21) 2.0)
))
(:action associate__PCNAp21__cdk46p1p2cycD__PCNAp21cdk46p1p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p1p2cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_PCNAp21cdk46p1p2cycD) 2.0)			(decrease (available_PCNAp21) 3.0)			(decrease (available_cdk46p1p2cycD) 3.0)
))
(:action associate__p57p1__cdk46p1cycD__p57p1cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p57p1cdk46p1cycD) 1.0)			(decrease (available_p57p1) 2.0)			(decrease (available_cdk46p1cycD) 2.0)
))
(:action associatewithcatalyze__cdk46p1cycD__cdk7cycH__cdk46p1p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk7cycH) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1cycD) 4.0)			(increase (available_cdk46p1p2cycD) 1.0)
))
(:action associate__p57__cdk46p1p2cycDp1__p57cdk46p1p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p1p2cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1p2cycDp1) 2.0)			(increase (available_p57cdk46p1p2cycDp1) 4.0)			(decrease (available_p57) 2.0)
))
(:action associate__Raf1pRbp1E2F4DP12__gE2__Raf1pRbp1E2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 3.0)			(increase (available_Raf1pRbp1E2F4DP12gE2) 2.0)			(decrease (available_Raf1pRbp1E2F4DP12) 2.0)
))
(:action associate__p57p1__cdk46p1p2cycDp1__p57p1cdk46p1p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p1p2cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p57p1cdk46p1p2cycDp1) 2.0)			(decrease (available_cdk46p1p2cycDp1) 4.0)			(decrease (available_p57p1) 2.0)
))
(:action associate__p57__cdk46p1p2cycD__p57cdk46p1p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p1p2cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk46p1p2cycD) 2.0)			(decrease (available_cdk46p1p2cycD) 3.0)			(decrease (available_p57) 4.0)
))
(:action associatewithcatalyze__Skp2__cdk2p2cycA__Skp2p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2p1) 3.0)			(decrease (available_Skp2) 2.0)
))
(:action associate__PCNAp21__cdk46p1cycD__PCNAp21cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycD) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1cycD) 1.0)			(decrease (available_PCNAp21) 4.0)			(increase (available_PCNAp21cdk46p1cycD) 3.0)
))
(:action associate__p57__cdk46p1cycDp1__p57cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1cycDp1) 2.0)			(decrease (available_p57) 3.0)			(increase (available_p57cdk46p1cycDp1) 2.0)
))
(:action associate__p21__cdk46p1p2cycD__p21cdk46p1p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1p2cycD) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_p21) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p21cdk46p1p2cycD) 1.0)			(decrease (available_cdk46p1p2cycD) 4.0)			(decrease (available_p21) 2.0)
))
(:action associate__PCNAp21__cdk46p1p2cycDp1__PCNAp21cdk46p1p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1p2cycDp1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_PCNAp21) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_PCNAp21cdk46p1p2cycDp1) 3.0)			(decrease (available_cdk46p1p2cycDp1) 1.0)			(decrease (available_PCNAp21) 2.0)
))
(:action associatewithcatalyze__cdk2cycEp1__cdk7cycH__cdk2p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2cycEp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycEp1) 2.0)			(increase (available_cdk2p2cycEp1) 2.0)
))
(:action associate__p57p1__cdk46p1cycDp1__p57p1cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p57p1) 1.0)			(decrease (available_cdk46p1cycDp1) 3.0)			(increase (available_p57p1cdk46p1cycDp1) 2.0)
))
(:action associate__p57__cdk46p1cycD__p57cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1cycD) 3.0)			(decrease (available_p57) 3.0)			(increase (available_p57cdk46p1cycD) 1.0)
))
(:action associate__p27p1__cdk2cycE__p27p1cdk2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2cycE) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 2.0)			(decrease (available_cdk2cycE) 4.0)			(increase (available_p27p1cdk2cycE) 2.0)
))
(:action associate__p27p1__cdk2cycA__p27p1cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 1.0)			(increase (available_p27p1cdk2cycA) 2.0)			(decrease (available_cdk2cycA) 4.0)
))
(:action associate__Skp2Skp1__cdk2p1cycA__Skp2Skp1cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2Skp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycA) 2.0)			(increase (available_Skp2Skp1cdk2p1cycA) 1.0)			(decrease (available_Skp2Skp1) 3.0)
))
(:action associate__p27p1__cdk2p2cycE__p27p1cdk2p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycE) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 2.0)			(decrease (available_cdk2p2cycE) 3.0)			(increase (available_p27p1cdk2p2cycE) 1.0)
))
(:action associate__Skp2__cdk2p1cycA__Skp2cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycA) 4.0)			(increase (available_Skp2cdk2p1cycA) 4.0)			(decrease (available_Skp2) 4.0)
))
(:action associate__p27p1__cdk2p2cycEp1__p27p1cdk2p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycEp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 1.0)			(increase (available_p27p1cdk2p2cycEp1) 4.0)			(decrease (available_cdk2p2cycEp1) 1.0)
))
(:action associate__p27__cdk2p1cycA__p27cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 2.0)			(decrease (available_cdk2p1cycA) 3.0)			(increase (available_p27cdk2p1cycA) 4.0)
))
(:action associate__p53__DP12p1__p53DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_DP12p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p53DP12p1) 4.0)			(decrease (available_p53) 1.0)			(decrease (available_DP12p1) 3.0)
))
(:action synthesize__Raf1pRbE2F4DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 3.0)
))
(:action synthesize__Raf1pRbE2F4DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 3.0)
))
(:action synthesize__Raf1pRbE2F4DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 2.0)
))
(:action synthesize__Raf1pRbE2F4DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 2.0)
))
(:action synthesize__Raf1pRbE2F4DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 3.0)
))
(:action synthesize__Raf1pRbE2F4DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 3.0)
))
(:action associate__p27p1__cdk2p1cycA__p27p1cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 1.0)			(decrease (available_cdk2p1cycA) 2.0)			(increase (available_p27p1cdk2p1cycA) 1.0)
))
(:action synthesize__Raf1pRbE2F4DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 4.0)
))
(:action synthesize__Raf1pRbE2F4DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 2.0)
))
(:action synthesize__Raf1pRbE2F4DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 4.0)
))
(:action synthesize__Raf1pRbE2F4DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 4.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12p1gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 2.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12p1gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 2.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12p1gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 3.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12p1gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 3.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12p1gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 3.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12p1gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 3.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12p1gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 4.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12p1gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 2.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12p1gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 1.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12p1gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 1.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 4.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 4.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 4.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 1.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 3.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 1.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 1.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 2.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 3.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 1.0)
))
(:action associate__p27p1__cdk2cycEp1__p27p1cdk2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2cycEp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycEp1) 2.0)			(increase (available_p27p1cdk2cycEp1) 2.0)			(decrease (available_p27p1) 3.0)
))
(:action associate__Skp2__Skp1p1__Skp2Skp1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Skp1p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_Skp1p1) 1.0)			(decrease (available_Skp2) 3.0)			(increase (available_Skp2Skp1p1) 1.0)
))
(:action associate__p57__cdk2p1cycA__p57cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycA) 2.0)			(increase (available_p57cdk2p1cycA) 4.0)			(decrease (available_p57) 2.0)
))
(:action associate__p27p1__cdk46p1cycDp1__p27p1cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1cycDp1) 2.0)			(increase (available_p27p1cdk46p1cycDp1) 2.0)			(decrease (available_p27p1) 3.0)
))
(:action associate__cdk2p2cycA__E2F13p1__cdk2p2cycAE2F13p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p2cycA) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F13p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13p1) 1.0)			(increase (available_cdk2p2cycAE2F13p1) 2.0)			(decrease (available_cdk2p2cycA) 3.0)
))
(:action associate__PCNAp21__cdk2p1cycA__PCNAp21cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_PCNAp21cdk2p1cycA) 3.0)			(decrease (available_cdk2p1cycA) 3.0)			(decrease (available_PCNAp21) 2.0)
))
(:action associate__Skp2Skp1__cdk2p1p2cycA__Skp2Skp1cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2Skp1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2Skp1cdk2p1p2cycA) 4.0)			(decrease (available_Skp2Skp1) 1.0)			(decrease (available_cdk2p1p2cycA) 3.0)
))
(:action associate__p53p1__DP12p1__p53p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_DP12p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p53p1) 1.0)			(increase (available_p53p1DP12p1) 4.0)			(decrease (available_DP12p1) 3.0)
))
(:action associate__Skp2__cdk2p1p2cycA__Skp2cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2cdk2p1p2cycA) 4.0)			(decrease (available_Skp2) 2.0)			(decrease (available_cdk2p1p2cycA) 1.0)
))
(:action associate__p21__cdk2p1cycA__p21cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycA) 4.0)			(increase (available_p21cdk2p1cycA) 3.0)			(decrease (available_p21) 3.0)
))
(:action associate__p27__cdk2p1p2cycA__p27cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1p2cycA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p27) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 2.0)			(increase (available_p27cdk2p1p2cycA) 1.0)			(decrease (available_cdk2p1p2cycA) 2.0)
))
(:action associate__p27p1__cdk2p1p2cycA__p27p1cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1p2cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_p27p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 1.0)			(increase (available_p27p1cdk2p1p2cycA) 4.0)			(decrease (available_cdk2p1p2cycA) 4.0)
))
(:action associate__p21__cdk2p1p2cycA__p21cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1p2cycA) 3.0)			(increase (available_p21cdk2p1p2cycA) 2.0)			(decrease (available_p21) 2.0)
))
(:action associate__Skp2p1__Skp1p1__Skp2p1Skp1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Skp1p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_Skp1p1) 4.0)			(decrease (available_Skp2p1) 4.0)			(increase (available_Skp2p1Skp1p1) 4.0)
))
(:action associate__p27p1__cdk2p2cycA__p27p1cdk2p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 2.0)			(increase (available_p27p1cdk2p2cycA) 3.0)			(decrease (available_cdk2p2cycA) 3.0)
))
(:action associate__p27p1__cdk46p1p2cycD__p27p1cdk46p1p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p1p2cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 2.0)			(increase (available_p27p1cdk46p1p2cycD) 4.0)			(decrease (available_cdk46p1p2cycD) 2.0)
))
(:action synthesize__cMycMaxgcdc25A__cdc25A
	:parameters ()
	:precondition (and (>= (+ (*   (available_cMycMaxgcdc25A) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25A) 3.0)
))
(:action associate__cdk2p1cycA__E2F13p1__cdk2p1cycAE2F13p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_E2F13p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycA) 2.0)			(decrease (available_E2F13p1) 2.0)			(increase (available_cdk2p1cycAE2F13p1) 1.0)
))
(:action associate__p57__cdk2p1p2cycA__p57cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2p1p2cycA) 3.0)			(decrease (available_p57) 1.0)			(decrease (available_cdk2p1p2cycA) 4.0)
))
(:action associate__p27p1__cdk46p1cycD__p27p1cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycD) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 4.0)			(decrease (available_cdk46p1cycD) 1.0)			(increase (available_p27p1cdk46p1cycD) 3.0)
))
(:action associatewithcatalyze__cdk2p1cycA__cdk7cycH__cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycA) 1.0)			(increase (available_cdk2p1p2cycA) 1.0)
))
(:action associate__PCNAp21__cdk2p1p2cycA__PCNAp21cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1p2cycA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_PCNAp21) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_PCNAp21cdk2p1p2cycA) 2.0)			(decrease (available_PCNAp21) 2.0)			(decrease (available_cdk2p1p2cycA) 2.0)
))
(:action associate__p27p1__cdk46p1p2cycDp1__p27p1cdk46p1p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1p2cycDp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p27p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 1.0)			(increase (available_p27p1cdk46p1p2cycDp1) 3.0)			(decrease (available_cdk46p1p2cycDp1) 2.0)
))
(:action associate__HDAC1p107E2F4DP12__gE2__HDAC1p107E2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1p107E2F4DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1p107E2F4DP12gE2) 2.0)			(decrease (available_gE2) 1.0)			(decrease (available_HDAC1p107E2F4DP12) 4.0)
))
(:action associate__SP1__E2F13p1__SP1E2F13p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F13p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13p1) 2.0)			(increase (available_SP1E2F13p1) 3.0)			(decrease (available_SP1) 1.0)
))
(:action associate__Skp2p1__Skp1__Skp2p1Skp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Skp2p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_Skp1) 1.0)			(decrease (available_Skp2p1) 4.0)			(increase (available_Skp2p1Skp1) 3.0)
))
(:action associate__cdk2p1p2cycA__E2F13p1__cdk2p1p2cycAE2F13p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1p2cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13p1) 3.0)			(decrease (available_cdk2p1p2cycA) 4.0)			(increase (available_cdk2p1p2cycAE2F13p1) 2.0)
))
(:action synthesize__Raf1pRbp1E2F4DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 4.0)
))
(:action synthesize__Raf1pRbp1E2F4DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 2.0)
))
(:action synthesize__Raf1pRbp1E2F4DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 3.0)
))
(:action synthesize__Raf1pRbp1E2F4DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 3.0)
))
(:action synthesize__Raf1pRbp1E2F4DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 4.0)
))
(:action synthesize__Raf1pRbp1E2F4DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 2.0)
))
(:action synthesize__Raf1pRbp1E2F4DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 2.0)
))
(:action synthesize__Raf1pRbp1E2F4DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 2.0)
))
(:action synthesize__Raf1pRbp1E2F4DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 2.0)
))
(:action synthesize__Raf1pRbp1E2F4DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 2.0)
))
(:action associate__cdk2p1cycA__E2F13__cdk2p1cycAE2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycA) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F13) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13) 1.0)			(decrease (available_cdk2p1cycA) 3.0)			(increase (available_cdk2p1cycAE2F13) 4.0)
))
(:action associate__cdk2p1p2cycA__E2F13__cdk2p1p2cycAE2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1p2cycA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_E2F13) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13) 4.0)			(increase (available_cdk2p1p2cycAE2F13) 4.0)			(decrease (available_cdk2p1p2cycA) 2.0)
))
(:action associate__cdk2cycA__E2F13p1__cdk2cycAE2F13p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13p1) 2.0)			(increase (available_cdk2cycAE2F13p1) 4.0)			(decrease (available_cdk2cycA) 2.0)
))
(:action associatewithcatalyze__cdc25A__Raf1__cdc25Ap1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25A) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Raf1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25A) 1.0)			(increase (available_cdc25Ap1) 3.0)
))
(:action associatewithcatalyze__cycA__Skp2p1Skp1p1__Skp2p1Skp1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Skp2p1Skp1p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2p1Skp1p1) 3.0)			(decrease (available_cycA) 1.0)
))
(:action associatewithcatalyze__cycA__Skp2p1Skp1__Skp2p1Skp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Skp2p1Skp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2p1Skp1) 2.0)			(decrease (available_cycA) 2.0)
))
(:action associate__Skp2Skp1p1__cdk2p1p2cycA__Skp2Skp1p1cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2Skp1p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2Skp1p1cdk2p1p2cycA) 4.0)			(decrease (available_Skp2Skp1p1) 4.0)			(decrease (available_cdk2p1p2cycA) 4.0)
))
(:action associate__Skp2Skp1p1__cdk2p2cycA__Skp2Skp1p1cdk2p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p2cycA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Skp2Skp1p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p2cycA) 2.0)			(increase (available_Skp2Skp1p1cdk2p2cycA) 2.0)			(decrease (available_Skp2Skp1p1) 1.0)
))
(:action associate__Skp2Skp1p1__cdk2cycA__Skp2Skp1p1cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2Skp1p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2Skp1p1cdk2cycA) 2.0)			(decrease (available_cdk2cycA) 1.0)			(decrease (available_Skp2Skp1p1) 2.0)
))
(:action associate__Skp2Skp1p1__cdk2p1cycA__Skp2Skp1p1cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2Skp1p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycA) 2.0)			(increase (available_Skp2Skp1p1cdk2p1cycA) 2.0)			(decrease (available_Skp2Skp1p1) 1.0)
))
(:action associatewithcatalyze__cycA__Skp2Skp1p1__Skp2Skp1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycA) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Skp2Skp1p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cycA) 3.0)			(increase (available_Skp2Skp1p1) 2.0)
))
(:action associate__Raf1__cdc25A__Raf1cdc25A
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25A) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25A) 4.0)			(decrease (available_Raf1) 4.0)			(increase (available_Raf1cdc25A) 2.0)
))
(:action associatewithcatalyze__cdk46p1__cdc25Ap1__cdk46
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Ap1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1) 1.0)			(increase (available_cdk46) 1.0)
))
(:action associatewithcatalyze__cdk2p1p2cycA__cdc25Ap1__cdk2p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25Ap1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p2cycA) 3.0)			(decrease (available_cdk2p1p2cycA) 2.0)
))
(:action associatewithcatalyze__cdk46p1p2__cdc25Ap1__cdk46p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1p2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Ap1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk46p2) 2.0)			(decrease (available_cdk46p1p2) 1.0)
))
(:action associate__Raf1__cdc25Ap1__Raf1cdc25Ap1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Ap1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_Raf1) 1.0)			(increase (available_Raf1cdc25Ap1) 2.0)			(decrease (available_cdc25Ap1) 3.0)
))
(:action associatewithcatalyze__cdk2p1cycA__cdc25Ap1__cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Ap1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycA) 1.0)			(increase (available_cdk2cycA) 3.0)
))
(:action associate__cdk46__cycD__cdk46cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46) 1.0)			(decrease (available_cycD) 4.0)			(increase (available_cdk46cycD) 3.0)
))
(:action associate__p16__cdk46__p16cdk46
	:parameters ()
	:precondition (and (>= (+ (*   (available_p16) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p16cdk46) 2.0)			(decrease (available_cdk46) 3.0)			(decrease (available_p16) 4.0)
))
(:action associate__cdk46__cycDp1__cdk46cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46) 1.0)			(decrease (available_cycDp1) 3.0)			(increase (available_cdk46cycDp1) 2.0)
))
(:action associate__p16__cdk46p2__p16cdk46p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p16) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p16cdk46p2) 1.0)			(decrease (available_p16) 2.0)			(decrease (available_cdk46p2) 2.0)
))
(:action associatewithcatalyze__cdk46__cdk7cycH__cdk46p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk46p2) 4.0)			(decrease (available_cdk46) 3.0)
))
(:action associate__cdk46p2__cycD__cdk46p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cycD) 2.0)			(increase (available_cdk46p2cycD) 1.0)			(decrease (available_cdk46p2) 2.0)
))
(:action associate__cdk46p2__cycDp1__cdk46p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk46p2cycDp1) 1.0)			(decrease (available_cycDp1) 3.0)			(decrease (available_cdk46p2) 2.0)
))
(:action associate__p57p1__cdk46p2cycD__p57p1cdk46p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p2cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p57p1) 3.0)			(increase (available_p57p1cdk46p2cycD) 4.0)			(decrease (available_cdk46p2cycD) 3.0)
))
(:action associatewithcatalyze__cdk46cycD__cdk7cycH__cdk46p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46cycD) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46cycD) 4.0)			(increase (available_cdk46p2cycD) 2.0)
))
(:action associate__PCNAp21__cdk46p2cycD__PCNAp21cdk46p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p2cycD) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p2cycD) 1.0)			(decrease (available_PCNAp21) 3.0)			(increase (available_PCNAp21cdk46p2cycD) 2.0)
))
(:action associate__p57__cdk46p2cycDp1__p57cdk46p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p2cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk46p2cycDp1) 1.0)			(decrease (available_cdk46p2cycDp1) 3.0)			(decrease (available_p57) 4.0)
))
(:action associate__p57p1__cdk46p2cycDp1__p57p1cdk46p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p2cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p57p1) 3.0)			(increase (available_p57p1cdk46p2cycDp1) 1.0)			(decrease (available_cdk46p2cycDp1) 4.0)
))
(:action associate__p57__cdk46p2cycD__p57cdk46p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p2cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p2cycD) 4.0)			(increase (available_p57cdk46p2cycD) 1.0)			(decrease (available_p57) 2.0)
))
(:action associate__p27__cdk46cycD__p27cdk46cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 2.0)			(decrease (available_cdk46cycD) 4.0)			(increase (available_p27cdk46cycD) 1.0)
))
(:action associate__p27p1__cdk46cycD__p27p1cdk46cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 4.0)			(decrease (available_cdk46cycD) 2.0)			(increase (available_p27p1cdk46cycD) 3.0)
))
(:action associate__p21__cdk46cycDp1__p21cdk46cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p21cdk46cycDp1) 4.0)			(decrease (available_cdk46cycDp1) 2.0)			(decrease (available_p21) 1.0)
))
(:action associatewithcatalyze__cdk46cycDp1__cdk7cycH__cdk46p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46cycDp1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk46p2cycDp1) 1.0)			(decrease (available_cdk46cycDp1) 4.0)
))
(:action associate__p27p1__cdk46cycDp1__p27p1cdk46cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 4.0)			(increase (available_p27p1cdk46cycDp1) 1.0)			(decrease (available_cdk46cycDp1) 4.0)
))
(:action associate__p27__cdk46cycDp1__p27cdk46cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46cycDp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p27cdk46cycDp1) 4.0)			(decrease (available_p27) 3.0)			(decrease (available_cdk46cycDp1) 1.0)
))
(:action associate__PCNAp21__cdk46cycD__PCNAp21cdk46cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46cycD) 4.0)			(increase (available_PCNAp21cdk46cycD) 1.0)			(decrease (available_PCNAp21) 1.0)
))
(:action associate__p57__cdk46cycDp1__p57cdk46cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46cycDp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p57) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p57) 2.0)			(increase (available_p57cdk46cycDp1) 2.0)			(decrease (available_cdk46cycDp1) 2.0)
))
(:action associate__p27__cdk46p2cycDp1__p27cdk46p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p2cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 1.0)			(increase (available_p27cdk46p2cycDp1) 1.0)			(decrease (available_cdk46p2cycDp1) 4.0)
))
(:action associate__p57p1__cdk46cycDp1__p57p1cdk46cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46cycDp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p57p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p57p1) 4.0)			(decrease (available_cdk46cycDp1) 2.0)			(increase (available_p57p1cdk46cycDp1) 3.0)
))
(:action associate__p27p1__cdk46p2cycDp1__p27p1cdk46p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p2cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 2.0)			(increase (available_p27p1cdk46p2cycDp1) 3.0)			(decrease (available_cdk46p2cycDp1) 2.0)
))
(:action associate__p57__cdk46cycD__p57cdk46cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46cycD) 4.0)			(increase (available_p57cdk46cycD) 1.0)			(decrease (available_p57) 4.0)
))
(:action associate__p21__cdk46cycD__p21cdk46cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46cycD) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46cycD) 1.0)			(increase (available_p21cdk46cycD) 3.0)			(decrease (available_p21) 1.0)
))
(:action associate__PCNAp21__cdk46cycDp1__PCNAp21cdk46cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_PCNAp21cdk46cycDp1) 2.0)			(decrease (available_PCNAp21) 3.0)			(decrease (available_cdk46cycDp1) 2.0)
))
(:action associate__p21__cdk46p2cycD__p21cdk46p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p2cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p2cycD) 4.0)			(increase (available_p21cdk46p2cycD) 1.0)			(decrease (available_p21) 1.0)
))
(:action associate__PCNAp21__cdk46p2cycDp1__PCNAp21cdk46p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p2cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_PCNAp21) 1.0)			(decrease (available_cdk46p2cycDp1) 4.0)			(increase (available_PCNAp21cdk46p2cycDp1) 3.0)
))
(:action associate__p27__cdk46p2cycD__p27cdk46p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p2cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p27cdk46p2cycD) 3.0)			(decrease (available_cdk46p2cycD) 3.0)			(decrease (available_p27) 3.0)
))
(:action associate__p57p1__cdk46cycD__p57p1cdk46cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46cycD) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p57p1cdk46cycD) 1.0)			(decrease (available_cdk46cycD) 1.0)			(decrease (available_p57p1) 2.0)
))
(:action associate__p27p1__cdk46p2cycD__p27p1cdk46p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p2cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 1.0)			(decrease (available_cdk46p2cycD) 3.0)			(increase (available_p27p1cdk46p2cycD) 1.0)
))
(:action associate__p21__cdk46p2cycDp1__p21cdk46p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p2cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p21cdk46p2cycDp1) 4.0)			(decrease (available_cdk46p2cycDp1) 2.0)			(decrease (available_p21) 4.0)
))


)