(define (domain PathwaysMetric)
(:predicates  (chosen_SP1)
 (chosen_SL1)
 (chosen_Skp2)
 (chosen_Skp1)
 (chosen_RPA)
 (chosen_Raf1)
 (chosen_pRbp2)
 (chosen_pRbp1E2F4p1DP12)
 (chosen_pRbE2F4p1DP12)
 (chosen_pRb)
 (chosen_Plk1)
 (chosen_PCNA)
 (chosen_pCAF)
 (chosen_p68)
 (chosen_p57p1)
 (chosen_p57)
 (chosen_p300)
 (chosen_p27)
 (chosen_p16)
 (chosen_p130E2F5p1DP12)
 (chosen_p130E2F4p1DP12)
 (chosen_p130)
 (chosen_Myt1)
 (chosen_Max)
 (chosen_m1433)
 (chosen_Jun)
 (chosen_HDAC1pRbp1E2F4DP12)
 (chosen_HDAC1pRbp1E2F13p1DP12)
 (chosen_HDAC1pRbp1E2F13DP12)
 (chosen_HDAC1p130E2F5p1DP12)
 (chosen_HDAC1p130E2F4p1DP12)
 (chosen_HDAC1p107E2F4p1DP12)
 (chosen_HDAC1)
 (chosen_HBP1)
 (chosen_gP)
 (chosen_gE2)
 (chosen_gcdc25A)
 (chosen_E2F6DP12p1)
 (chosen_E2F6)
 (chosen_E2F5DP12p1)
 (chosen_E2F5)
 (chosen_E2F4DP12p1)
 (possible_SP1)
 (chosen_E2F3)
 (possible_SL1)
 (possible_Skp2)
 (chosen_E2F2)
 (possible_Skp1)
 (possible_RPA)
 (chosen_E2F13p1DP12p1)
 (possible_Raf1)
 (possible_pRbp2)
 (chosen_E2F13DP12p1)
 (possible_pRbp1E2F4p1DP12)
 (possible_pRbE2F4p1DP12)
 (chosen_E2F13DP12)
 (possible_pRb)
 (possible_Plk1)
 (chosen_E2F13)
 (possible_PCNA)
 (possible_pCAF)
 (chosen_E2F1)
 (possible_p68)
 (possible_p57p1)
 (chosen_DP12)
 (possible_p57)
 (possible_p300)
 (chosen_DMP1)
 (possible_p27)
 (possible_p16)
 (chosen_cycH)
 (possible_p130E2F5p1DP12)
 (possible_p130E2F4p1DP12)
 (chosen_cycB)
 (possible_p130)
 (possible_Myt1)
 (chosen_CTAK1)
 (possible_Max)
 (possible_m1433)
 (chosen_cks1)
 (possible_Jun)
 (possible_HDAC1pRbp1E2F4DP12)
 (chosen_Chk1)
 (possible_HDAC1pRbp1E2F13p1DP12)
 (possible_HDAC1pRbp1E2F13DP12)
 (chosen_CEBP)
 (possible_HDAC1p130E2F5p1DP12)
 (possible_HDAC1p130E2F4p1DP12)
 (chosen_cdk7)
 (possible_HDAC1p107E2F4p1DP12)
 (possible_HDAC1)
 (chosen_cdk46p3cycD)
 (possible_HBP1)
 (possible_gP)
 (chosen_cdk46p1)
 (possible_gE2)
 (possible_gcdc25A)
 (chosen_cdk2p1)
 (possible_E2F6DP12p1)
 (possible_E2F6)
 (chosen_cdk2)
 (possible_E2F5DP12p1)
 (possible_E2F5)
 (chosen_cdk1p1p2)
 (possible_E2F4DP12p1)
 (possible_E2F3)
 (chosen_cdc25C)
 (possible_E2F2)
 (possible_E2F13p1DP12p1)
 (chosen_cAbl)
 (possible_E2F13DP12p1)
 (possible_E2F13DP12)
 (chosen_APC)
 (possible_E2F13)
 (possible_E2F1)
 (chosen_AP2)
 (possible_DP12)
 (possible_DMP1)
 (possible_cycH)
 (possible_cycB)
 (possible_CTAK1)
 (possible_cks1)
 (possible_Chk1)
 (possible_CEBP)
 (possible_cdk7)
 (possible_cdk46p3cycD)
 (possible_cdk46p1)
 (possible_cdk2p1)
 (possible_cdk2)
 (possible_cdk1p1p2)
 (possible_cdc25C)
 (possible_cAbl)
 (possible_APC)
 (possible_AP2)
)
(:functions   (numsubs)
  (available_SP1)
  (available_SL1)
  (available_Skp2)
  (available_Skp1)
  (available_RPA)
  (available_Raf1)
  (available_pRbp2)
  (available_pRbp1E2F4p1DP12)
  (available_pRbE2F4p1DP12)
  (available_pRb)
  (available_Plk1)
  (available_PCNA)
  (available_pCAF)
  (available_p68)
  (available_p57p1)
  (available_p57)
  (available_p300)
  (available_p27)
  (available_p16)
  (available_p130E2F5p1DP12)
  (available_p130E2F4p1DP12)
  (available_p130)
  (available_Myt1)
  (available_Max)
  (available_m1433)
  (available_Jun)
  (available_HDAC1pRbp1E2F4DP12)
  (available_HDAC1pRbp1E2F13p1DP12)
  (available_HDAC1pRbp1E2F13DP12)
  (available_HDAC1p130E2F5p1DP12)
  (available_HDAC1p130E2F4p1DP12)
  (available_HDAC1p107E2F4p1DP12)
  (available_HDAC1)
  (available_HBP1)
  (available_gP)
  (available_gE2)
  (available_gcdc25A)
  (available_E2F6DP12p1)
  (available_E2F6)
  (available_E2F5DP12p1)
  (available_E2F5)
  (available_E2F4DP12p1)
  (available_E2F3)
  (available_E2F2)
  (available_E2F13p1DP12p1)
  (available_E2F13DP12p1)
  (available_E2F13DP12)
  (available_E2F13)
  (available_E2F1)
  (available_DP12)
  (available_DMP1)
  (available_cycH)
  (available_cycB)
  (available_CTAK1)
  (available_cks1)
  (available_Chk1)
  (available_CEBP)
  (available_cdk7)
  (available_cdk46p3cycD)
  (available_cdk46p1)
  (available_cdk2p1)
  (available_cdk2)
  (available_cdk1p1p2)
  (available_cdc25C)
  (available_cAbl)
  (available_APC)
  (available_AP2)
  (available_cAblpRb)
  (available_cAblpRbp1)
  (available_cAblpRbp1p2)
  (available_cAblpRbp2)
  (available_cdk1cks1)
  (available_cdk1p1cks1)
  (available_cdk1p1)
  (available_cdk1p1p2cks1)
  (available_cdk1p1p2p3cks1)
  (available_cdk1p1p2p3)
  (available_cdk1p1p3cks1)
  (available_cdk1p1p3)
  (available_cdk1)
  (available_cdk1p2cks1)
  (available_cdk1p2)
  (available_cdk1p2p3cks1)
  (available_cdk1p1p2p3cycA)
  (available_cdc25Cp1)
  (available_cdk1p1p2p3cycB)
  (available_cdk1p2p3)
  (available_cdk1p3cks1)
  (available_cdk1p1p3cycA)
  (available_cdk1p2p3cycA)
  (available_cdk1p1p3cycB)
  (available_cdk1p2p3cycB)
  (available_cdk1p3)
  (available_cdk2cks1)
  (available_cdk2cycAE2F13)
  (available_cdk2cycAE2F13p1)
  (available_cdk2p1cks1)
  (available_cdk2p1cycAE2F13)
  (available_cdk2p1cycAE2F13p1)
  (available_cdk2p1p2cks1)
  (available_cdk2p1p2cycAE2F13)
  (available_cdk2p1p2cycAE2F13p1)
  (available_cdk2p1p2)
  (available_cdk2p2cks1)
  (available_cdk2p2cycAE2F13)
  (available_cdk2p2cycAE2F13p1)
  (available_cdk2p2)
  (available_cdk7cycH)
  (available_cdk7p1cycH)
  (available_CEBPgP)
  (available_CEBPpRb)
  (available_CEBPpRbgP)
  (available_CEBPpRbp1)
  (available_CEBPpRbp1gP)
  (available_CEBPpRbp1p2)
  (available_CEBPpRbp1p2gP)
  (available_CEBPpRbp2)
  (available_P)
  (available_CEBPpRbp2gP)
  (available_cMycAP2)
  (available_cMycMaxgcdc25A)
  (available_cMycMax)
  (available_APCp1)
  (available_DMP1cycD)
  (available_DMP1cycDp1)
  (available_DMP1p1cycD)
  (available_DMP1p1cycDp1)
  (available_DMP1p1)
  (available_E2F13DP12gE2)
  (available_E2F1DP12)
  (available_E2F2DP12)
  (available_E2F3DP12)
  (available_E2F5DP12gE2)
  (available_E2F6DP12gE2)
  (available_E2F6DP12)
  (available_E2F6DP12p1gE2)
  (available_HBP1p130)
  (available_HDAC1p107E2F4DP12p1)
  (available_HDAC1p107E2F4p1DP12gE2)
  (available_HDAC1p130E2F4DP12p1)
  (available_HDAC1p130E2F4p1DP12gE2)
  (available_HDAC1p130E2F5DP12gE2)
  (available_HDAC1p130E2F5DP12)
  (available_HDAC1p130E2F5DP12p1)
  (available_HDAC1p130E2F5p1DP12gE2)
  (available_HDAC1pRbE2F13DP12gE2)
  (available_HDAC1pRbE2F13DP12)
  (available_HDAC1pRbE2F13DP12p1)
  (available_HDAC1pRbE2F13p1DP12p1)
  (available_HDAC1pRbE2F4p1DP12)
  (available_HDAC1pRbp1E2F13DP12gE2)
  (available_HDAC1pRbp1E2F13p1DP12gE2)
  (available_HDAC1pRbp1E2F4DP12gE2)
  (available_m1433cdc25Cp1p2)
  (available_cdc25Cp1p2)
  (available_m1433cdc25Cp2)
  (available_cdc25Cp2)
  (available_p107E2F4DP12p1gE2)
  (available_p107E2F4DP12p1)
  (available_p130E2F4DP12p1gE2)
  (available_p130E2F4DP12p1)
  (available_p130E2F5DP12gE2)
  (available_E2F5DP12)
  (available_p130E2F5DP12p1gE2)
  (available_p130E2F5DP12p1)
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
  (available_p27cdk2cycA)
  (available_p27cdk2cycEp1)
  (available_p27cdk2cycE)
  (available_p27cdk2p1cycA)
  (available_p27cdk2p1cycEp1)
  (available_p27cdk2p1cycE)
  (available_p27cdk2p1p2cycA)
  (available_p27cdk2p1p2cycEp1)
  (available_p27cdk2p1p2cycE)
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
  (available_p27p1cdk2p1cycEp1)
  (available_p27p1cdk2p1cycE)
  (available_p27p1cdk2p1p2cycA)
  (available_p27p1cdk2p1p2cycEp1)
  (available_p27p1cdk2p1p2cycE)
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
  (available_DP12p1)
  (available_p57cdk2cycA)
  (available_p57cdk2cycEp1)
  (available_p57cdk2cycE)
  (available_p57cdk2p1cycA)
  (available_p57cdk2p1cycEp1)
  (available_p57cdk2p1cycE)
  (available_p57cdk2p1p2cycA)
  (available_p57cdk2p1p2cycEp1)
  (available_p57cdk2p1p2cycE)
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
  (available_p68p1)
  (available_p68p1p2)
  (available_p68p2)
  (available_pCAFp300)
  (available_PCNAcycDp1)
  (available_PCNAcycD)
  (available_cdk2cycEp1)
  (available_cdk2cycE)
  (available_cdk2p1cycEp1)
  (available_cdk2p1cycE)
  (available_cdk2p1p2cycEp1)
  (available_cdk2p1p2cycE)
  (available_cdk46cycDp1)
  (available_cdk46cycD)
  (available_cdk46p1cycDp1)
  (available_cdk46p1cycD)
  (available_cdk46p1p2cycDp1)
  (available_cdk46p1p2cycD)
  (available_cdk46p2cycDp1)
  (available_cdk46p2cycD)
  (available_pRbAP2)
  (available_pRbE2F13DP12gE2)
  (available_pRbE2F13DP12p1gE2)
  (available_pRbE2F13p1DP12p1gE2)
  (available_pRbE2F4DP12p1)
  (available_pRbE2F4p1DP12gE2)
  (available_pRbJun)
  (available_pRbp1AP2)
  (available_cdk2p2cycEp1)
  (available_cdk2p2cycE)
  (available_pRbp1E2F13DP12gE2)
  (available_pRbp1E2F13DP12p1gE2)
  (available_pRbp1E2F13p1DP12p1gE2)
  (available_pRbp1E2F4DP12p1)
  (available_pRbp1E2F4p1DP12gE2)
  (available_pRbp1Jun)
  (available_pRbp1)
  (available_pRbp1p2AP2)
  (available_pRbp1p2Jun)
  (available_pRbp2AP2)
  (available_pRbp1p2)
  (available_pRbp2Jun)
  (available_Raf1cdc25Ap1)
  (available_cdc25Ap1)
  (available_Raf1cdc25A)
  (available_cdc25A)
  (available_Raf1p130E2F4p1DP12gE2)
  (available_Raf1p130E2F4p1DP12)
  (available_Raf1p130E2F5DP12gE2)
  (available_Raf1p130E2F5DP12)
  (available_p130E2F5DP12)
  (available_Raf1p130E2F5p1DP12gE2)
  (available_Raf1p130E2F5p1DP12)
  (available_Raf1pRbE2F13DP12gE2)
  (available_Raf1pRbE2F13DP12p1gE2)
  (available_Raf1pRbE2F13DP12p1)
  (available_pRbE2F13DP12p1)
  (available_Raf1pRbE2F13DP12)
  (available_pRbE2F13DP12)
  (available_Raf1pRbE2F13p1DP12p1gE2)
  (available_Raf1pRbE2F13p1DP12p1)
  (available_pRbE2F13p1DP12p1)
  (available_Raf1pRbE2F4p1DP12gE2)
  (available_Raf1pRbE2F4p1DP12)
  (available_Raf1pRbp1E2F13DP12gE2)
  (available_Raf1pRbp1E2F13DP12p1gE2)
  (available_Raf1pRbp1E2F13DP12p1)
  (available_pRbp1E2F13DP12p1)
  (available_Raf1pRbp1E2F13DP12)
  (available_pRbp1E2F13DP12)
  (available_Raf1pRbp1E2F13p1DP12p1gE2)
  (available_Raf1pRbp1E2F13p1DP12p1)
  (available_pRbp1E2F13p1DP12p1)
  (available_Raf1pRbp1E2F4p1DP12gE2)
  (available_Raf1pRbp1E2F4p1DP12)
  (available_RPAcycA)
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
  (available_SL1p1)
  (available_SP1E2F13gP)
  (available_SP1E2F13p1gP)
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
  (available_SP1gP)
  (available_SP1p107gP)
  (available_SP1p107p1gP)
  (available_SP1p107p1)
  (available_p107p1)
  (available_SP1p107)
  (available_p107)
  (available_cdk1p3cycA)
  (available_cdk1p3cycB)
  (needforcatalyzedassociation_APC_Plk1_APCp1)
  (needforcatalyzedassociation_Plk1_APC_APCp1)
  (prodbycatalyzedassociation_APC_Plk1_APCp1)
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
  (needforcatalyzedassociation_cdc25C_cdk1p3cycA_cdc25Cp1)
  (needforcatalyzedassociation_cdk1p3cycA_cdc25C_cdc25Cp1)
  (prodbycatalyzedassociation_cdc25C_cdk1p3cycA_cdc25Cp1)
  (needforcatalyzedassociation_cdc25C_cdk1p3cycB_cdc25Cp1)
  (needforcatalyzedassociation_cdk1p3cycB_cdc25C_cdc25Cp1)
  (prodbycatalyzedassociation_cdc25C_cdk1p3cycB_cdc25Cp1)
  (needforcatalyzedassociation_cdc25C_Chk1_cdc25Cp2)
  (needforcatalyzedassociation_Chk1_cdc25C_cdc25Cp2)
  (prodbycatalyzedassociation_cdc25C_Chk1_cdc25Cp2)
  (needforcatalyzedassociation_cdc25C_CTAK1_cdc25Cp2)
  (needforcatalyzedassociation_CTAK1_cdc25C_cdc25Cp2)
  (prodbycatalyzedassociation_cdc25C_CTAK1_cdc25Cp2)
  (needforcatalyzedassociation_cdc25Cp1_Chk1_cdc25Cp1p2)
  (needforcatalyzedassociation_Chk1_cdc25Cp1_cdc25Cp1p2)
  (prodbycatalyzedassociation_cdc25Cp1_Chk1_cdc25Cp1p2)
  (needforcatalyzedassociation_cdc25Cp1_CTAK1_cdc25Cp1p2)
  (needforcatalyzedassociation_CTAK1_cdc25Cp1_cdc25Cp1p2)
  (prodbycatalyzedassociation_cdc25Cp1_CTAK1_cdc25Cp1p2)
  (needforcatalyzedassociation_cdc25Cp2_cdk1p3cycA_cdc25Cp1p2)
  (needforcatalyzedassociation_cdk1p3cycA_cdc25Cp2_cdc25Cp1p2)
  (prodbycatalyzedassociation_cdc25Cp2_cdk1p3cycA_cdc25Cp1p2)
  (needforcatalyzedassociation_cdc25Cp2_cdk1p3cycB_cdc25Cp1p2)
  (needforcatalyzedassociation_cdk1p3cycB_cdc25Cp2_cdc25Cp1p2)
  (prodbycatalyzedassociation_cdc25Cp2_cdk1p3cycB_cdc25Cp1p2)
  (needforcatalyzedassociation_cdc25Cp2_Plk1_cdc25Cp1p2)
  (needforcatalyzedassociation_Plk1_cdc25Cp2_cdc25Cp1p2)
  (prodbycatalyzedassociation_cdc25Cp2_Plk1_cdc25Cp1p2)
  (needforcatalyzedassociation_cdc25C_Plk1_cdc25Cp1)
  (needforcatalyzedassociation_Plk1_cdc25C_cdc25Cp1)
  (prodbycatalyzedassociation_cdc25C_Plk1_cdc25Cp1)
  (needforcatalyzedassociation_cdk1_cdk7cycH_cdk1p3)
  (needforcatalyzedassociation_cdk7cycH_cdk1_cdk1p3)
  (prodbycatalyzedassociation_cdk1_cdk7cycH_cdk1p3)
  (needforassociation_cdk1_cks1_cdk1cks1)
  (needforassociation_cks1_cdk1_cdk1cks1)
  (prodbyassociation_cdk1_cks1_cdk1cks1)
  (needforcatalyzedassociation_cdk1p1_cdc25Cp1_cdk1)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p1_cdk1)
  (prodbycatalyzedassociation_cdk1p1_cdc25Cp1_cdk1)
  (needforcatalyzedassociation_cdk1p1_cdc25Cp1p2_cdk1)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p1_cdk1)
  (prodbycatalyzedassociation_cdk1p1_cdc25Cp1p2_cdk1)
  (needforcatalyzedassociation_cdk1p1_cdk7cycH_cdk1p1p3)
  (needforcatalyzedassociation_cdk7cycH_cdk1p1_cdk1p1p3)
  (prodbycatalyzedassociation_cdk1p1_cdk7cycH_cdk1p1p3)
  (needforassociation_cdk1p1_cks1_cdk1p1cks1)
  (needforassociation_cks1_cdk1p1_cdk1p1cks1)
  (prodbyassociation_cdk1p1_cks1_cdk1p1cks1)
  (needforcatalyzedassociation_cdk1p1p2_cdc25Cp1_cdk1p1)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p1p2_cdk1p1)
  (prodbycatalyzedassociation_cdk1p1p2_cdc25Cp1_cdk1p1)
  (needforcatalyzedassociation_cdk1p1p2_cdc25Cp1_cdk1p2)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p1p2_cdk1p2)
  (prodbycatalyzedassociation_cdk1p1p2_cdc25Cp1_cdk1p2)
  (needforcatalyzedassociation_cdk1p1p2_cdc25Cp1p2_cdk1p1)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p1p2_cdk1p1)
  (prodbycatalyzedassociation_cdk1p1p2_cdc25Cp1p2_cdk1p1)
  (needforcatalyzedassociation_cdk1p1p2_cdc25Cp1p2_cdk1p2)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p1p2_cdk1p2)
  (prodbycatalyzedassociation_cdk1p1p2_cdc25Cp1p2_cdk1p2)
  (needforcatalyzedassociation_cdk1p1p2_cdk7cycH_cdk1p1p2p3)
  (needforcatalyzedassociation_cdk7cycH_cdk1p1p2_cdk1p1p2p3)
  (prodbycatalyzedassociation_cdk1p1p2_cdk7cycH_cdk1p1p2p3)
  (needforassociation_cdk1p1p2_cks1_cdk1p1p2cks1)
  (needforassociation_cks1_cdk1p1p2_cdk1p1p2cks1)
  (prodbyassociation_cdk1p1p2_cks1_cdk1p1p2cks1)
  (needforcatalyzedassociation_cdk1p1p2p3_cdc25Cp1_cdk1p1p3)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p1p2p3_cdk1p1p3)
  (prodbycatalyzedassociation_cdk1p1p2p3_cdc25Cp1_cdk1p1p3)
  (needforcatalyzedassociation_cdk1p1p2p3_cdc25Cp1_cdk1p2p3)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p1p2p3_cdk1p2p3)
  (prodbycatalyzedassociation_cdk1p1p2p3_cdc25Cp1_cdk1p2p3)
  (needforcatalyzedassociation_cdk1p1p2p3_cdc25Cp1p2_cdk1p1p3)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p1p2p3_cdk1p1p3)
  (prodbycatalyzedassociation_cdk1p1p2p3_cdc25Cp1p2_cdk1p1p3)
  (needforcatalyzedassociation_cdk1p1p2p3_cdc25Cp1p2_cdk1p2p3)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p1p2p3_cdk1p2p3)
  (prodbycatalyzedassociation_cdk1p1p2p3_cdc25Cp1p2_cdk1p2p3)
  (needforassociation_cdk1p1p2p3_cks1_cdk1p1p2p3cks1)
  (needforassociation_cks1_cdk1p1p2p3_cdk1p1p2p3cks1)
  (prodbyassociation_cdk1p1p2p3_cks1_cdk1p1p2p3cks1)
  (needforcatalyzedassociation_cdk1p1p2p3cycA_cdc25Cp1_cdk1p1p3cycA)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p1p2p3cycA_cdk1p1p3cycA)
  (prodbycatalyzedassociation_cdk1p1p2p3cycA_cdc25Cp1_cdk1p1p3cycA)
  (needforcatalyzedassociation_cdk1p1p2p3cycA_cdc25Cp1_cdk1p2p3cycA)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p1p2p3cycA_cdk1p2p3cycA)
  (prodbycatalyzedassociation_cdk1p1p2p3cycA_cdc25Cp1_cdk1p2p3cycA)
  (needforcatalyzedassociation_cdk1p1p2p3cycA_cdc25Cp1p2_cdk1p1p3cycA)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p1p2p3cycA_cdk1p1p3cycA)
  (prodbycatalyzedassociation_cdk1p1p2p3cycA_cdc25Cp1p2_cdk1p1p3cycA)
  (needforcatalyzedassociation_cdk1p1p2p3cycA_cdc25Cp1p2_cdk1p2p3cycA)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p1p2p3cycA_cdk1p2p3cycA)
  (prodbycatalyzedassociation_cdk1p1p2p3cycA_cdc25Cp1p2_cdk1p2p3cycA)
  (needforassociation_cdk1p1p2p3_cycA_cdk1p1p2p3cycA)
  (needforassociation_cycA_cdk1p1p2p3_cdk1p1p2p3cycA)
  (prodbyassociation_cdk1p1p2p3_cycA_cdk1p1p2p3cycA)
  (needforcatalyzedassociation_cdk1p1p2p3cycB_cdc25Cp1_cdk1p1p3cycB)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p1p2p3cycB_cdk1p1p3cycB)
  (prodbycatalyzedassociation_cdk1p1p2p3cycB_cdc25Cp1_cdk1p1p3cycB)
  (needforcatalyzedassociation_cdk1p1p2p3cycB_cdc25Cp1_cdk1p2p3cycB)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p1p2p3cycB_cdk1p2p3cycB)
  (prodbycatalyzedassociation_cdk1p1p2p3cycB_cdc25Cp1_cdk1p2p3cycB)
  (needforcatalyzedassociation_cdk1p1p2p3cycB_cdc25Cp1p2_cdk1p1p3cycB)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p1p2p3cycB_cdk1p1p3cycB)
  (prodbycatalyzedassociation_cdk1p1p2p3cycB_cdc25Cp1p2_cdk1p1p3cycB)
  (needforcatalyzedassociation_cdk1p1p2p3cycB_cdc25Cp1p2_cdk1p2p3cycB)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p1p2p3cycB_cdk1p2p3cycB)
  (prodbycatalyzedassociation_cdk1p1p2p3cycB_cdc25Cp1p2_cdk1p2p3cycB)
  (needforassociation_cdk1p1p2p3_cycB_cdk1p1p2p3cycB)
  (needforassociation_cycB_cdk1p1p2p3_cdk1p1p2p3cycB)
  (prodbyassociation_cdk1p1p2p3_cycB_cdk1p1p2p3cycB)
  (needforcatalyzedassociation_cdk1p1p3_cdc25Cp1_cdk1p3)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p1p3_cdk1p3)
  (prodbycatalyzedassociation_cdk1p1p3_cdc25Cp1_cdk1p3)
  (needforcatalyzedassociation_cdk1p1p3_cdc25Cp1p2_cdk1p3)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p1p3_cdk1p3)
  (prodbycatalyzedassociation_cdk1p1p3_cdc25Cp1p2_cdk1p3)
  (needforassociation_cdk1p1p3_cks1_cdk1p1p3cks1)
  (needforassociation_cks1_cdk1p1p3_cdk1p1p3cks1)
  (prodbyassociation_cdk1p1p3_cks1_cdk1p1p3cks1)
  (needforcatalyzedassociation_cdk1p1p3cycA_cdc25Cp1_cdk1p3cycA)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p1p3cycA_cdk1p3cycA)
  (prodbycatalyzedassociation_cdk1p1p3cycA_cdc25Cp1_cdk1p3cycA)
  (needforcatalyzedassociation_cdk1p1p3cycA_cdc25Cp1p2_cdk1p3cycA)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p1p3cycA_cdk1p3cycA)
  (prodbycatalyzedassociation_cdk1p1p3cycA_cdc25Cp1p2_cdk1p3cycA)
  (needforassociation_cdk1p1p3_cycA_cdk1p1p3cycA)
  (needforassociation_cycA_cdk1p1p3_cdk1p1p3cycA)
  (prodbyassociation_cdk1p1p3_cycA_cdk1p1p3cycA)
  (needforcatalyzedassociation_cdk1p1p3cycB_cdc25Cp1_cdk1p3cycB)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p1p3cycB_cdk1p3cycB)
  (prodbycatalyzedassociation_cdk1p1p3cycB_cdc25Cp1_cdk1p3cycB)
  (needforcatalyzedassociation_cdk1p1p3cycB_cdc25Cp1p2_cdk1p3cycB)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p1p3cycB_cdk1p3cycB)
  (prodbycatalyzedassociation_cdk1p1p3cycB_cdc25Cp1p2_cdk1p3cycB)
  (needforassociation_cdk1p1p3_cycB_cdk1p1p3cycB)
  (needforassociation_cycB_cdk1p1p3_cdk1p1p3cycB)
  (prodbyassociation_cdk1p1p3_cycB_cdk1p1p3cycB)
  (needforcatalyzedassociation_cdk1p2_cdc25Cp1_cdk1)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p2_cdk1)
  (prodbycatalyzedassociation_cdk1p2_cdc25Cp1_cdk1)
  (needforcatalyzedassociation_cdk1p2_cdc25Cp1p2_cdk1)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p2_cdk1)
  (prodbycatalyzedassociation_cdk1p2_cdc25Cp1p2_cdk1)
  (needforcatalyzedassociation_cdk1p2_cdk7cycH_cdk1p2p3)
  (needforcatalyzedassociation_cdk7cycH_cdk1p2_cdk1p2p3)
  (prodbycatalyzedassociation_cdk1p2_cdk7cycH_cdk1p2p3)
  (needforassociation_cdk1p2_cks1_cdk1p2cks1)
  (needforassociation_cks1_cdk1p2_cdk1p2cks1)
  (prodbyassociation_cdk1p2_cks1_cdk1p2cks1)
  (needforcatalyzedassociation_cdk1p2p3_cdc25Cp1_cdk1p3)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p2p3_cdk1p3)
  (prodbycatalyzedassociation_cdk1p2p3_cdc25Cp1_cdk1p3)
  (needforcatalyzedassociation_cdk1p2p3_cdc25Cp1p2_cdk1p3)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p2p3_cdk1p3)
  (prodbycatalyzedassociation_cdk1p2p3_cdc25Cp1p2_cdk1p3)
  (needforassociation_cdk1p2p3_cks1_cdk1p2p3cks1)
  (needforassociation_cks1_cdk1p2p3_cdk1p2p3cks1)
  (prodbyassociation_cdk1p2p3_cks1_cdk1p2p3cks1)
  (needforcatalyzedassociation_cdk1p2p3cycA_cdc25Cp1_cdk1p3cycA)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p2p3cycA_cdk1p3cycA)
  (prodbycatalyzedassociation_cdk1p2p3cycA_cdc25Cp1_cdk1p3cycA)
  (needforcatalyzedassociation_cdk1p2p3cycA_cdc25Cp1p2_cdk1p3cycA)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p2p3cycA_cdk1p3cycA)
  (prodbycatalyzedassociation_cdk1p2p3cycA_cdc25Cp1p2_cdk1p3cycA)
  (needforassociation_cdk1p2p3_cycA_cdk1p2p3cycA)
  (needforassociation_cycA_cdk1p2p3_cdk1p2p3cycA)
  (prodbyassociation_cdk1p2p3_cycA_cdk1p2p3cycA)
  (needforcatalyzedassociation_cdk1p2p3cycA_Myt1_cdk1p1p2p3cycA)
  (needforcatalyzedassociation_Myt1_cdk1p2p3cycA_cdk1p1p2p3cycA)
  (prodbycatalyzedassociation_cdk1p2p3cycA_Myt1_cdk1p1p2p3cycA)
  (needforcatalyzedassociation_cdk1p2p3cycB_cdc25Cp1_cdk1p3cycB)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p2p3cycB_cdk1p3cycB)
  (prodbycatalyzedassociation_cdk1p2p3cycB_cdc25Cp1_cdk1p3cycB)
  (needforcatalyzedassociation_cdk1p2p3cycB_cdc25Cp1p2_cdk1p3cycB)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p2p3cycB_cdk1p3cycB)
  (prodbycatalyzedassociation_cdk1p2p3cycB_cdc25Cp1p2_cdk1p3cycB)
  (needforassociation_cdk1p2p3_cycB_cdk1p2p3cycB)
  (needforassociation_cycB_cdk1p2p3_cdk1p2p3cycB)
  (prodbyassociation_cdk1p2p3_cycB_cdk1p2p3cycB)
  (needforcatalyzedassociation_cdk1p2p3cycB_Myt1_cdk1p1p2p3cycB)
  (needforcatalyzedassociation_Myt1_cdk1p2p3cycB_cdk1p1p2p3cycB)
  (prodbycatalyzedassociation_cdk1p2p3cycB_Myt1_cdk1p1p2p3cycB)
  (needforassociation_cdk1p3_cks1_cdk1p3cks1)
  (needforassociation_cks1_cdk1p3_cdk1p3cks1)
  (prodbyassociation_cdk1p3_cks1_cdk1p3cks1)
  (needforassociation_cdk1p3_cycA_cdk1p3cycA)
  (needforassociation_cycA_cdk1p3_cdk1p3cycA)
  (prodbyassociation_cdk1p3_cycA_cdk1p3cycA)
  (needforcatalyzedassociation_cdk1p3cycA_Myt1_cdk1p1p3cycA)
  (needforcatalyzedassociation_Myt1_cdk1p3cycA_cdk1p1p3cycA)
  (prodbycatalyzedassociation_cdk1p3cycA_Myt1_cdk1p1p3cycA)
  (needforassociation_cdk1p3_cycB_cdk1p3cycB)
  (needforassociation_cycB_cdk1p3_cdk1p3cycB)
  (prodbyassociation_cdk1p3_cycB_cdk1p3cycB)
  (needforcatalyzedassociation_cdk1p3cycB_Myt1_cdk1p1p3cycB)
  (needforcatalyzedassociation_Myt1_cdk1p3cycB_cdk1p1p3cycB)
  (prodbycatalyzedassociation_cdk1p3cycB_Myt1_cdk1p1p3cycB)
  (needforcatalyzedassociation_cdk2_cdk7cycH_cdk2p2)
  (needforcatalyzedassociation_cdk7cycH_cdk2_cdk2p2)
  (prodbycatalyzedassociation_cdk2_cdk7cycH_cdk2p2)
  (needforassociation_cdk2_cks1_cdk2cks1)
  (needforassociation_cks1_cdk2_cdk2cks1)
  (prodbyassociation_cdk2_cks1_cdk2cks1)
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
  (needforcatalyzedassociation_cdk2p1_cdk7cycH_cdk2p1p2)
  (needforcatalyzedassociation_cdk7cycH_cdk2p1_cdk2p1p2)
  (prodbycatalyzedassociation_cdk2p1_cdk7cycH_cdk2p1p2)
  (needforassociation_cdk2p1_cks1_cdk2p1cks1)
  (needforassociation_cks1_cdk2p1_cdk2p1cks1)
  (prodbyassociation_cdk2p1_cks1_cdk2p1cks1)
  (needforcatalyzedassociation_cdk2p1cycA_cdc25Ap1_cdk2cycA)
  (needforcatalyzedassociation_cdc25Ap1_cdk2p1cycA_cdk2cycA)
  (prodbycatalyzedassociation_cdk2p1cycA_cdc25Ap1_cdk2cycA)
  (needforassociation_cdk2p1_cycA_cdk2p1cycA)
  (needforassociation_cycA_cdk2p1_cdk2p1cycA)
  (prodbyassociation_cdk2p1_cycA_cdk2p1cycA)
  (needforcatalyzedassociation_cdk2p1cycA_cdk7cycH_cdk2p1p2cycA)
  (needforcatalyzedassociation_cdk7cycH_cdk2p1cycA_cdk2p1p2cycA)
  (prodbycatalyzedassociation_cdk2p1cycA_cdk7cycH_cdk2p1p2cycA)
  (needforassociation_cdk2p1cycA_E2F13_cdk2p1cycAE2F13)
  (needforassociation_E2F13_cdk2p1cycA_cdk2p1cycAE2F13)
  (prodbyassociation_cdk2p1cycA_E2F13_cdk2p1cycAE2F13)
  (needforassociation_cdk2p1cycA_E2F13p1_cdk2p1cycAE2F13p1)
  (needforassociation_E2F13p1_cdk2p1cycA_cdk2p1cycAE2F13p1)
  (prodbyassociation_cdk2p1cycA_E2F13p1_cdk2p1cycAE2F13p1)
  (needforcatalyzedassociation_cdk2p1cycE_cdc25Ap1_cdk2cycE)
  (needforcatalyzedassociation_cdc25Ap1_cdk2p1cycE_cdk2cycE)
  (prodbycatalyzedassociation_cdk2p1cycE_cdc25Ap1_cdk2cycE)
  (needforassociation_cdk2p1_cycE_cdk2p1cycE)
  (needforassociation_cycE_cdk2p1_cdk2p1cycE)
  (prodbyassociation_cdk2p1_cycE_cdk2p1cycE)
  (needforcatalyzedassociation_cdk2p1cycE_cdk7cycH_cdk2p1p2cycE)
  (needforcatalyzedassociation_cdk7cycH_cdk2p1cycE_cdk2p1p2cycE)
  (prodbycatalyzedassociation_cdk2p1cycE_cdk7cycH_cdk2p1p2cycE)
  (needforcatalyzedassociation_cdk2p1cycEp1_cdc25Ap1_cdk2cycEp1)
  (needforcatalyzedassociation_cdc25Ap1_cdk2p1cycEp1_cdk2cycEp1)
  (prodbycatalyzedassociation_cdk2p1cycEp1_cdc25Ap1_cdk2cycEp1)
  (needforassociation_cdk2p1_cycEp1_cdk2p1cycEp1)
  (needforassociation_cycEp1_cdk2p1_cdk2p1cycEp1)
  (prodbyassociation_cdk2p1_cycEp1_cdk2p1cycEp1)
  (needforcatalyzedassociation_cdk2p1cycEp1_cdk7cycH_cdk2p1p2cycEp1)
  (needforcatalyzedassociation_cdk7cycH_cdk2p1cycEp1_cdk2p1p2cycEp1)
  (prodbycatalyzedassociation_cdk2p1cycEp1_cdk7cycH_cdk2p1p2cycEp1)
  (needforassociation_cdk2p1p2_cks1_cdk2p1p2cks1)
  (needforassociation_cks1_cdk2p1p2_cdk2p1p2cks1)
  (prodbyassociation_cdk2p1p2_cks1_cdk2p1p2cks1)
  (needforcatalyzedassociation_cdk2p1p2cycA_cdc25Ap1_cdk2p2cycA)
  (needforcatalyzedassociation_cdc25Ap1_cdk2p1p2cycA_cdk2p2cycA)
  (prodbycatalyzedassociation_cdk2p1p2cycA_cdc25Ap1_cdk2p2cycA)
  (needforassociation_cdk2p1p2_cycA_cdk2p1p2cycA)
  (needforassociation_cycA_cdk2p1p2_cdk2p1p2cycA)
  (prodbyassociation_cdk2p1p2_cycA_cdk2p1p2cycA)
  (needforassociation_cdk2p1p2cycA_E2F13_cdk2p1p2cycAE2F13)
  (needforassociation_E2F13_cdk2p1p2cycA_cdk2p1p2cycAE2F13)
  (prodbyassociation_cdk2p1p2cycA_E2F13_cdk2p1p2cycAE2F13)
  (needforassociation_cdk2p1p2cycA_E2F13p1_cdk2p1p2cycAE2F13p1)
  (needforassociation_E2F13p1_cdk2p1p2cycA_cdk2p1p2cycAE2F13p1)
  (prodbyassociation_cdk2p1p2cycA_E2F13p1_cdk2p1p2cycAE2F13p1)
  (needforcatalyzedassociation_cdk2p1p2cycE_cdc25Ap1_cdk2p2cycE)
  (needforcatalyzedassociation_cdc25Ap1_cdk2p1p2cycE_cdk2p2cycE)
  (prodbycatalyzedassociation_cdk2p1p2cycE_cdc25Ap1_cdk2p2cycE)
  (needforassociation_cdk2p1p2_cycE_cdk2p1p2cycE)
  (needforassociation_cycE_cdk2p1p2_cdk2p1p2cycE)
  (prodbyassociation_cdk2p1p2_cycE_cdk2p1p2cycE)
  (needforcatalyzedassociation_cdk2p1p2cycEp1_cdc25Ap1_cdk2p2cycEp1)
  (needforcatalyzedassociation_cdc25Ap1_cdk2p1p2cycEp1_cdk2p2cycEp1)
  (prodbycatalyzedassociation_cdk2p1p2cycEp1_cdc25Ap1_cdk2p2cycEp1)
  (needforassociation_cdk2p1p2_cycEp1_cdk2p1p2cycEp1)
  (needforassociation_cycEp1_cdk2p1p2_cdk2p1p2cycEp1)
  (prodbyassociation_cdk2p1p2_cycEp1_cdk2p1p2cycEp1)
  (needforassociation_cdk2p2_cks1_cdk2p2cks1)
  (needforassociation_cks1_cdk2p2_cdk2p2cks1)
  (prodbyassociation_cdk2p2_cks1_cdk2p2cks1)
  (needforassociation_cdk2p2_cycA_cdk2p2cycA)
  (needforassociation_cycA_cdk2p2_cdk2p2cycA)
  (prodbyassociation_cdk2p2_cycA_cdk2p2cycA)
  (needforassociation_cdk2p2cycA_E2F13_cdk2p2cycAE2F13)
  (needforassociation_E2F13_cdk2p2cycA_cdk2p2cycAE2F13)
  (prodbyassociation_cdk2p2cycA_E2F13_cdk2p2cycAE2F13)
  (needforassociation_cdk2p2cycA_E2F13p1_cdk2p2cycAE2F13p1)
  (needforassociation_E2F13p1_cdk2p2cycA_cdk2p2cycAE2F13p1)
  (prodbyassociation_cdk2p2cycA_E2F13p1_cdk2p2cycAE2F13p1)
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
  (needforassociation_CEBP_gP_CEBPgP)
  (needforassociation_gP_CEBP_CEBPgP)
  (prodbyassociation_CEBP_gP_CEBPgP)
  (needforsynthesis_CEBPgP_P)
  (prodbysynthesis_CEBPgP_P)
  (needforassociation_CEBP_pRb_CEBPpRb)
  (needforassociation_pRb_CEBP_CEBPpRb)
  (prodbyassociation_CEBP_pRb_CEBPpRb)
  (needforassociation_CEBPpRb_gP_CEBPpRbgP)
  (needforassociation_gP_CEBPpRb_CEBPpRbgP)
  (prodbyassociation_CEBPpRb_gP_CEBPpRbgP)
  (needforsynthesis_CEBPpRbgP_P)
  (prodbysynthesis_CEBPpRbgP_P)
  (needforassociation_CEBP_pRbp1_CEBPpRbp1)
  (needforassociation_pRbp1_CEBP_CEBPpRbp1)
  (prodbyassociation_CEBP_pRbp1_CEBPpRbp1)
  (needforassociation_CEBPpRbp1_gP_CEBPpRbp1gP)
  (needforassociation_gP_CEBPpRbp1_CEBPpRbp1gP)
  (prodbyassociation_CEBPpRbp1_gP_CEBPpRbp1gP)
  (needforsynthesis_CEBPpRbp1gP_P)
  (prodbysynthesis_CEBPpRbp1gP_P)
  (needforassociation_CEBP_pRbp1p2_CEBPpRbp1p2)
  (needforassociation_pRbp1p2_CEBP_CEBPpRbp1p2)
  (prodbyassociation_CEBP_pRbp1p2_CEBPpRbp1p2)
  (needforassociation_CEBPpRbp1p2_gP_CEBPpRbp1p2gP)
  (needforassociation_gP_CEBPpRbp1p2_CEBPpRbp1p2gP)
  (prodbyassociation_CEBPpRbp1p2_gP_CEBPpRbp1p2gP)
  (needforsynthesis_CEBPpRbp1p2gP_P)
  (prodbysynthesis_CEBPpRbp1p2gP_P)
  (needforassociation_CEBP_pRbp2_CEBPpRbp2)
  (needforassociation_pRbp2_CEBP_CEBPpRbp2)
  (prodbyassociation_CEBP_pRbp2_CEBPpRbp2)
  (needforassociation_CEBPpRbp2_gP_CEBPpRbp2gP)
  (needforassociation_gP_CEBPpRbp2_CEBPpRbp2gP)
  (prodbyassociation_CEBPpRbp2_gP_CEBPpRbp2gP)
  (needforsynthesis_CEBPpRbp2gP_P)
  (prodbysynthesis_CEBPpRbp2gP_P)
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
  (needforcatalyzedassociation_cycB_APCp1_APCp1)
  (needforcatalyzedassociation_APCp1_cycB_APCp1)
  (prodbycatalyzedassociation_cycB_APCp1_APCp1)
  (needforcatalyzedassociation_cycE_cdk2p2cycE_cycEp1)
  (needforcatalyzedassociation_cdk2p2cycE_cycE_cycEp1)
  (prodbycatalyzedassociation_cycE_cdk2p2cycE_cycEp1)
  (needforcatalyzedassociation_cycE_cdk2p2cycEp1_cycEp1)
  (needforcatalyzedassociation_cdk2p2cycEp1_cycE_cycEp1)
  (prodbycatalyzedassociation_cycE_cdk2p2cycEp1_cycEp1)
  (needforcatalyzedassociation_DMP1_cdk46p3cycD_DMP1p1)
  (needforcatalyzedassociation_cdk46p3cycD_DMP1_DMP1p1)
  (prodbycatalyzedassociation_DMP1_cdk46p3cycD_DMP1p1)
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
  (needforsynthesis_E2F13DP12gE2_cMyc)
  (prodbysynthesis_E2F13DP12gE2_cMyc)
  (needforsynthesis_E2F13DP12gE2_cycA)
  (prodbysynthesis_E2F13DP12gE2_cycA)
  (needforsynthesis_E2F13DP12gE2_cycD)
  (prodbysynthesis_E2F13DP12gE2_cycD)
  (needforsynthesis_E2F13DP12gE2_cycDp1)
  (prodbysynthesis_E2F13DP12gE2_cycDp1)
  (needforsynthesis_E2F13DP12gE2_cycE)
  (prodbysynthesis_E2F13DP12gE2_cycE)
  (needforsynthesis_E2F13DP12gE2_cycEp1)
  (prodbysynthesis_E2F13DP12gE2_cycEp1)
  (needforassociation_E2F13DP12_gE2_E2F13DP12gE2)
  (needforassociation_gE2_E2F13DP12_E2F13DP12gE2)
  (prodbyassociation_E2F13DP12_gE2_E2F13DP12gE2)
  (needforsynthesis_E2F13DP12gE2_p107)
  (prodbysynthesis_E2F13DP12gE2_p107)
  (needforsynthesis_E2F13DP12gE2_p107p1)
  (prodbysynthesis_E2F13DP12gE2_p107p1)
  (needforsynthesis_E2F13DP12gE2_p19ARF)
  (prodbysynthesis_E2F13DP12gE2_p19ARF)
  (needforsynthesis_E2F13DP12gE2_pol)
  (prodbysynthesis_E2F13DP12gE2_pol)
  (needforassociation_E2F1_DP12_E2F1DP12)
  (needforassociation_DP12_E2F1_E2F1DP12)
  (prodbyassociation_E2F1_DP12_E2F1DP12)
  (needforassociation_E2F2_DP12_E2F2DP12)
  (needforassociation_DP12_E2F2_E2F2DP12)
  (prodbyassociation_E2F2_DP12_E2F2DP12)
  (needforassociation_E2F3_DP12_E2F3DP12)
  (needforassociation_DP12_E2F3_E2F3DP12)
  (prodbyassociation_E2F3_DP12_E2F3DP12)
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
  (needforassociation_HBP1_p130_HBP1p130)
  (needforassociation_p130_HBP1_HBP1p130)
  (prodbyassociation_HBP1_p130_HBP1p130)
  (needforassociation_HDAC1_p107E2F4DP12p1_HDAC1p107E2F4DP12p1)
  (needforassociation_p107E2F4DP12p1_HDAC1_HDAC1p107E2F4DP12p1)
  (prodbyassociation_HDAC1_p107E2F4DP12p1_HDAC1p107E2F4DP12p1)
  (needforassociation_HDAC1p107E2F4p1DP12_gE2_HDAC1p107E2F4p1DP12gE2)
  (needforassociation_gE2_HDAC1p107E2F4p1DP12_HDAC1p107E2F4p1DP12gE2)
  (prodbyassociation_HDAC1p107E2F4p1DP12_gE2_HDAC1p107E2F4p1DP12gE2)
  (needforassociation_HDAC1_p130E2F4DP12p1_HDAC1p130E2F4DP12p1)
  (needforassociation_p130E2F4DP12p1_HDAC1_HDAC1p130E2F4DP12p1)
  (prodbyassociation_HDAC1_p130E2F4DP12p1_HDAC1p130E2F4DP12p1)
  (needforassociation_HDAC1p130E2F4p1DP12_gE2_HDAC1p130E2F4p1DP12gE2)
  (needforassociation_gE2_HDAC1p130E2F4p1DP12_HDAC1p130E2F4p1DP12gE2)
  (prodbyassociation_HDAC1p130E2F4p1DP12_gE2_HDAC1p130E2F4p1DP12gE2)
  (needforassociation_HDAC1p130E2F5DP12_gE2_HDAC1p130E2F5DP12gE2)
  (needforassociation_gE2_HDAC1p130E2F5DP12_HDAC1p130E2F5DP12gE2)
  (prodbyassociation_HDAC1p130E2F5DP12_gE2_HDAC1p130E2F5DP12gE2)
  (needforassociation_HDAC1_p130E2F5DP12_HDAC1p130E2F5DP12)
  (needforassociation_p130E2F5DP12_HDAC1_HDAC1p130E2F5DP12)
  (prodbyassociation_HDAC1_p130E2F5DP12_HDAC1p130E2F5DP12)
  (needforassociation_HDAC1_p130E2F5DP12p1_HDAC1p130E2F5DP12p1)
  (needforassociation_p130E2F5DP12p1_HDAC1_HDAC1p130E2F5DP12p1)
  (prodbyassociation_HDAC1_p130E2F5DP12p1_HDAC1p130E2F5DP12p1)
  (needforassociation_HDAC1p130E2F5p1DP12_gE2_HDAC1p130E2F5p1DP12gE2)
  (needforassociation_gE2_HDAC1p130E2F5p1DP12_HDAC1p130E2F5p1DP12gE2)
  (prodbyassociation_HDAC1p130E2F5p1DP12_gE2_HDAC1p130E2F5p1DP12gE2)
  (needforassociation_HDAC1pRbE2F13DP12_gE2_HDAC1pRbE2F13DP12gE2)
  (needforassociation_gE2_HDAC1pRbE2F13DP12_HDAC1pRbE2F13DP12gE2)
  (prodbyassociation_HDAC1pRbE2F13DP12_gE2_HDAC1pRbE2F13DP12gE2)
  (needforassociation_HDAC1_pRbE2F13DP12_HDAC1pRbE2F13DP12)
  (needforassociation_pRbE2F13DP12_HDAC1_HDAC1pRbE2F13DP12)
  (prodbyassociation_HDAC1_pRbE2F13DP12_HDAC1pRbE2F13DP12)
  (needforassociation_HDAC1_pRbE2F13DP12p1_HDAC1pRbE2F13DP12p1)
  (needforassociation_pRbE2F13DP12p1_HDAC1_HDAC1pRbE2F13DP12p1)
  (prodbyassociation_HDAC1_pRbE2F13DP12p1_HDAC1pRbE2F13DP12p1)
  (needforassociation_HDAC1_pRbE2F13p1DP12p1_HDAC1pRbE2F13p1DP12p1)
  (needforassociation_pRbE2F13p1DP12p1_HDAC1_HDAC1pRbE2F13p1DP12p1)
  (prodbyassociation_HDAC1_pRbE2F13p1DP12p1_HDAC1pRbE2F13p1DP12p1)
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
  (needforassociation_m1433_cdc25Cp1p2_m1433cdc25Cp1p2)
  (needforassociation_cdc25Cp1p2_m1433_m1433cdc25Cp1p2)
  (prodbyassociation_m1433_cdc25Cp1p2_m1433cdc25Cp1p2)
  (needforassociation_m1433_cdc25Cp2_m1433cdc25Cp2)
  (needforassociation_cdc25Cp2_m1433_m1433cdc25Cp2)
  (prodbyassociation_m1433_cdc25Cp2_m1433cdc25Cp2)
  (needforassociation_p107E2F4DP12p1_gE2_p107E2F4DP12p1gE2)
  (needforassociation_gE2_p107E2F4DP12p1_p107E2F4DP12p1gE2)
  (prodbyassociation_p107E2F4DP12p1_gE2_p107E2F4DP12p1gE2)
  (needforassociation_p107_E2F4DP12p1_p107E2F4DP12p1)
  (needforassociation_E2F4DP12p1_p107_p107E2F4DP12p1)
  (prodbyassociation_p107_E2F4DP12p1_p107E2F4DP12p1)
  (needforassociation_p130E2F4DP12p1_gE2_p130E2F4DP12p1gE2)
  (needforassociation_gE2_p130E2F4DP12p1_p130E2F4DP12p1gE2)
  (prodbyassociation_p130E2F4DP12p1_gE2_p130E2F4DP12p1gE2)
  (needforassociation_p130_E2F4DP12p1_p130E2F4DP12p1)
  (needforassociation_E2F4DP12p1_p130_p130E2F4DP12p1)
  (prodbyassociation_p130_E2F4DP12p1_p130E2F4DP12p1)
  (needforassociation_p130E2F5DP12_gE2_p130E2F5DP12gE2)
  (needforassociation_gE2_p130E2F5DP12_p130E2F5DP12gE2)
  (prodbyassociation_p130E2F5DP12_gE2_p130E2F5DP12gE2)
  (needforassociation_p130_E2F5DP12_p130E2F5DP12)
  (needforassociation_E2F5DP12_p130_p130E2F5DP12)
  (prodbyassociation_p130_E2F5DP12_p130E2F5DP12)
  (needforassociation_p130E2F5DP12p1_gE2_p130E2F5DP12p1gE2)
  (needforassociation_gE2_p130E2F5DP12p1_p130E2F5DP12p1gE2)
  (prodbyassociation_p130E2F5DP12p1_gE2_p130E2F5DP12p1gE2)
  (needforassociation_p130_E2F5DP12p1_p130E2F5DP12p1)
  (needforassociation_E2F5DP12p1_p130_p130E2F5DP12p1)
  (prodbyassociation_p130_E2F5DP12p1_p130E2F5DP12p1)
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
  (needforassociation_p27_cdk2p1cycEp1_p27cdk2p1cycEp1)
  (needforassociation_cdk2p1cycEp1_p27_p27cdk2p1cycEp1)
  (prodbyassociation_p27_cdk2p1cycEp1_p27cdk2p1cycEp1)
  (needforassociation_p27_cdk2p1cycE_p27cdk2p1cycE)
  (needforassociation_cdk2p1cycE_p27_p27cdk2p1cycE)
  (prodbyassociation_p27_cdk2p1cycE_p27cdk2p1cycE)
  (needforassociation_p27_cdk2p1p2cycA_p27cdk2p1p2cycA)
  (needforassociation_cdk2p1p2cycA_p27_p27cdk2p1p2cycA)
  (prodbyassociation_p27_cdk2p1p2cycA_p27cdk2p1p2cycA)
  (needforassociation_p27_cdk2p1p2cycEp1_p27cdk2p1p2cycEp1)
  (needforassociation_cdk2p1p2cycEp1_p27_p27cdk2p1p2cycEp1)
  (prodbyassociation_p27_cdk2p1p2cycEp1_p27cdk2p1p2cycEp1)
  (needforassociation_p27_cdk2p1p2cycE_p27cdk2p1p2cycE)
  (needforassociation_cdk2p1p2cycE_p27_p27cdk2p1p2cycE)
  (prodbyassociation_p27_cdk2p1p2cycE_p27cdk2p1p2cycE)
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
  (needforassociation_p27p1_cdk2p1cycEp1_p27p1cdk2p1cycEp1)
  (needforassociation_cdk2p1cycEp1_p27p1_p27p1cdk2p1cycEp1)
  (prodbyassociation_p27p1_cdk2p1cycEp1_p27p1cdk2p1cycEp1)
  (needforassociation_p27p1_cdk2p1cycE_p27p1cdk2p1cycE)
  (needforassociation_cdk2p1cycE_p27p1_p27p1cdk2p1cycE)
  (prodbyassociation_p27p1_cdk2p1cycE_p27p1cdk2p1cycE)
  (needforassociation_p27p1_cdk2p1p2cycA_p27p1cdk2p1p2cycA)
  (needforassociation_cdk2p1p2cycA_p27p1_p27p1cdk2p1p2cycA)
  (prodbyassociation_p27p1_cdk2p1p2cycA_p27p1cdk2p1p2cycA)
  (needforassociation_p27p1_cdk2p1p2cycEp1_p27p1cdk2p1p2cycEp1)
  (needforassociation_cdk2p1p2cycEp1_p27p1_p27p1cdk2p1p2cycEp1)
  (prodbyassociation_p27p1_cdk2p1p2cycEp1_p27p1cdk2p1p2cycEp1)
  (needforassociation_p27p1_cdk2p1p2cycE_p27p1cdk2p1p2cycE)
  (needforassociation_cdk2p1p2cycE_p27p1_p27p1cdk2p1p2cycE)
  (prodbyassociation_p27p1_cdk2p1p2cycE_p27p1cdk2p1p2cycE)
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
  (needforassociation_p57_cdk2p1cycEp1_p57cdk2p1cycEp1)
  (needforassociation_cdk2p1cycEp1_p57_p57cdk2p1cycEp1)
  (prodbyassociation_p57_cdk2p1cycEp1_p57cdk2p1cycEp1)
  (needforassociation_p57_cdk2p1cycE_p57cdk2p1cycE)
  (needforassociation_cdk2p1cycE_p57_p57cdk2p1cycE)
  (prodbyassociation_p57_cdk2p1cycE_p57cdk2p1cycE)
  (needforassociation_p57_cdk2p1p2cycA_p57cdk2p1p2cycA)
  (needforassociation_cdk2p1p2cycA_p57_p57cdk2p1p2cycA)
  (prodbyassociation_p57_cdk2p1p2cycA_p57cdk2p1p2cycA)
  (needforassociation_p57_cdk2p1p2cycEp1_p57cdk2p1p2cycEp1)
  (needforassociation_cdk2p1p2cycEp1_p57_p57cdk2p1p2cycEp1)
  (prodbyassociation_p57_cdk2p1p2cycEp1_p57cdk2p1p2cycEp1)
  (needforassociation_p57_cdk2p1p2cycE_p57cdk2p1p2cycE)
  (needforassociation_cdk2p1p2cycE_p57_p57cdk2p1p2cycE)
  (prodbyassociation_p57_cdk2p1p2cycE_p57cdk2p1p2cycE)
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
  (needforcatalyzedassociation_p68_cdk2p2cycA_p68p2)
  (needforcatalyzedassociation_cdk2p2cycA_p68_p68p2)
  (prodbycatalyzedassociation_p68_cdk2p2cycA_p68p2)
  (needforcatalyzedassociation_p68_cdk2p2cycEp1_p68p1)
  (needforcatalyzedassociation_cdk2p2cycEp1_p68_p68p1)
  (prodbycatalyzedassociation_p68_cdk2p2cycEp1_p68p1)
  (needforcatalyzedassociation_p68_cdk2p2cycE_p68p1)
  (needforcatalyzedassociation_cdk2p2cycE_p68_p68p1)
  (prodbycatalyzedassociation_p68_cdk2p2cycE_p68p1)
  (needforcatalyzedassociation_p68p1_cdk2p2cycA_p68p1p2)
  (needforcatalyzedassociation_cdk2p2cycA_p68p1_p68p1p2)
  (prodbycatalyzedassociation_p68p1_cdk2p2cycA_p68p1p2)
  (needforcatalyzedassociation_p68p2_cdk2p2cycEp1_p68p1p2)
  (needforcatalyzedassociation_cdk2p2cycEp1_p68p2_p68p1p2)
  (prodbycatalyzedassociation_p68p2_cdk2p2cycEp1_p68p1p2)
  (needforcatalyzedassociation_p68p2_cdk2p2cycE_p68p1p2)
  (needforcatalyzedassociation_cdk2p2cycE_p68p2_p68p1p2)
  (prodbycatalyzedassociation_p68p2_cdk2p2cycE_p68p1p2)
  (needforassociation_pCAF_p300_pCAFp300)
  (needforassociation_p300_pCAF_pCAFp300)
  (prodbyassociation_pCAF_p300_pCAFp300)
  (needforassociation_PCNA_cycDp1_PCNAcycDp1)
  (needforassociation_cycDp1_PCNA_PCNAcycDp1)
  (prodbyassociation_PCNA_cycDp1_PCNAcycDp1)
  (needforassociation_PCNA_cycD_PCNAcycD)
  (needforassociation_cycD_PCNA_PCNAcycD)
  (prodbyassociation_PCNA_cycD_PCNAcycD)
  (needforassociation_pRb_AP2_pRbAP2)
  (needforassociation_AP2_pRb_pRbAP2)
  (prodbyassociation_pRb_AP2_pRbAP2)
  (needforcatalyzedassociation_pRb_cdk46p3cycD_pRbp1)
  (needforcatalyzedassociation_cdk46p3cycD_pRb_pRbp1)
  (prodbycatalyzedassociation_pRb_cdk46p3cycD_pRbp1)
  (needforassociation_pRbE2F13DP12_gE2_pRbE2F13DP12gE2)
  (needforassociation_gE2_pRbE2F13DP12_pRbE2F13DP12gE2)
  (prodbyassociation_pRbE2F13DP12_gE2_pRbE2F13DP12gE2)
  (needforassociation_pRbE2F13DP12p1_gE2_pRbE2F13DP12p1gE2)
  (needforassociation_gE2_pRbE2F13DP12p1_pRbE2F13DP12p1gE2)
  (prodbyassociation_pRbE2F13DP12p1_gE2_pRbE2F13DP12p1gE2)
  (needforassociation_pRb_E2F13DP12p1_pRbE2F13DP12p1)
  (needforassociation_E2F13DP12p1_pRb_pRbE2F13DP12p1)
  (prodbyassociation_pRb_E2F13DP12p1_pRbE2F13DP12p1)
  (needforassociation_pRb_E2F13DP12_pRbE2F13DP12)
  (needforassociation_E2F13DP12_pRb_pRbE2F13DP12)
  (prodbyassociation_pRb_E2F13DP12_pRbE2F13DP12)
  (needforassociation_pRbE2F13p1DP12p1_gE2_pRbE2F13p1DP12p1gE2)
  (needforassociation_gE2_pRbE2F13p1DP12p1_pRbE2F13p1DP12p1gE2)
  (prodbyassociation_pRbE2F13p1DP12p1_gE2_pRbE2F13p1DP12p1gE2)
  (needforassociation_pRb_E2F13p1DP12p1_pRbE2F13p1DP12p1)
  (needforassociation_E2F13p1DP12p1_pRb_pRbE2F13p1DP12p1)
  (prodbyassociation_pRb_E2F13p1DP12p1_pRbE2F13p1DP12p1)
  (needforassociation_pRb_E2F4DP12p1_pRbE2F4DP12p1)
  (needforassociation_E2F4DP12p1_pRb_pRbE2F4DP12p1)
  (prodbyassociation_pRb_E2F4DP12p1_pRbE2F4DP12p1)
  (needforassociation_pRbE2F4p1DP12_gE2_pRbE2F4p1DP12gE2)
  (needforassociation_gE2_pRbE2F4p1DP12_pRbE2F4p1DP12gE2)
  (prodbyassociation_pRbE2F4p1DP12_gE2_pRbE2F4p1DP12gE2)
  (needforassociation_pRb_Jun_pRbJun)
  (needforassociation_Jun_pRb_pRbJun)
  (prodbyassociation_pRb_Jun_pRbJun)
  (needforassociation_pRbp1_AP2_pRbp1AP2)
  (needforassociation_AP2_pRbp1_pRbp1AP2)
  (prodbyassociation_pRbp1_AP2_pRbp1AP2)
  (needforcatalyzedassociation_pRbp1_cdk2p2cycEp1_pRbp1p2)
  (needforcatalyzedassociation_cdk2p2cycEp1_pRbp1_pRbp1p2)
  (prodbycatalyzedassociation_pRbp1_cdk2p2cycEp1_pRbp1p2)
  (needforcatalyzedassociation_pRbp1_cdk2p2cycE_pRbp1p2)
  (needforcatalyzedassociation_cdk2p2cycE_pRbp1_pRbp1p2)
  (prodbycatalyzedassociation_pRbp1_cdk2p2cycE_pRbp1p2)
  (needforassociation_pRbp1E2F13DP12_gE2_pRbp1E2F13DP12gE2)
  (needforassociation_gE2_pRbp1E2F13DP12_pRbp1E2F13DP12gE2)
  (prodbyassociation_pRbp1E2F13DP12_gE2_pRbp1E2F13DP12gE2)
  (needforassociation_pRbp1E2F13DP12p1_gE2_pRbp1E2F13DP12p1gE2)
  (needforassociation_gE2_pRbp1E2F13DP12p1_pRbp1E2F13DP12p1gE2)
  (prodbyassociation_pRbp1E2F13DP12p1_gE2_pRbp1E2F13DP12p1gE2)
  (needforassociation_pRbp1_E2F13DP12p1_pRbp1E2F13DP12p1)
  (needforassociation_E2F13DP12p1_pRbp1_pRbp1E2F13DP12p1)
  (prodbyassociation_pRbp1_E2F13DP12p1_pRbp1E2F13DP12p1)
  (needforassociation_pRbp1_E2F13DP12_pRbp1E2F13DP12)
  (needforassociation_E2F13DP12_pRbp1_pRbp1E2F13DP12)
  (prodbyassociation_pRbp1_E2F13DP12_pRbp1E2F13DP12)
  (needforassociation_pRbp1E2F13p1DP12p1_gE2_pRbp1E2F13p1DP12p1gE2)
  (needforassociation_gE2_pRbp1E2F13p1DP12p1_pRbp1E2F13p1DP12p1gE2)
  (prodbyassociation_pRbp1E2F13p1DP12p1_gE2_pRbp1E2F13p1DP12p1gE2)
  (needforassociation_pRbp1_E2F13p1DP12p1_pRbp1E2F13p1DP12p1)
  (needforassociation_E2F13p1DP12p1_pRbp1_pRbp1E2F13p1DP12p1)
  (prodbyassociation_pRbp1_E2F13p1DP12p1_pRbp1E2F13p1DP12p1)
  (needforassociation_pRbp1_E2F4DP12p1_pRbp1E2F4DP12p1)
  (needforassociation_E2F4DP12p1_pRbp1_pRbp1E2F4DP12p1)
  (prodbyassociation_pRbp1_E2F4DP12p1_pRbp1E2F4DP12p1)
  (needforassociation_pRbp1E2F4p1DP12_gE2_pRbp1E2F4p1DP12gE2)
  (needforassociation_gE2_pRbp1E2F4p1DP12_pRbp1E2F4p1DP12gE2)
  (prodbyassociation_pRbp1E2F4p1DP12_gE2_pRbp1E2F4p1DP12gE2)
  (needforassociation_pRbp1_Jun_pRbp1Jun)
  (needforassociation_Jun_pRbp1_pRbp1Jun)
  (prodbyassociation_pRbp1_Jun_pRbp1Jun)
  (needforassociation_pRbp1p2_AP2_pRbp1p2AP2)
  (needforassociation_AP2_pRbp1p2_pRbp1p2AP2)
  (prodbyassociation_pRbp1p2_AP2_pRbp1p2AP2)
  (needforassociation_pRbp1p2_Jun_pRbp1p2Jun)
  (needforassociation_Jun_pRbp1p2_pRbp1p2Jun)
  (prodbyassociation_pRbp1p2_Jun_pRbp1p2Jun)
  (needforassociation_pRbp2_AP2_pRbp2AP2)
  (needforassociation_AP2_pRbp2_pRbp2AP2)
  (prodbyassociation_pRbp2_AP2_pRbp2AP2)
  (needforcatalyzedassociation_pRbp2_cdk46p3cycD_pRbp1p2)
  (needforcatalyzedassociation_cdk46p3cycD_pRbp2_pRbp1p2)
  (prodbycatalyzedassociation_pRbp2_cdk46p3cycD_pRbp1p2)
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
  (needforsynthesis_Raf1p130E2F5DP12gE2_cMyc)
  (prodbysynthesis_Raf1p130E2F5DP12gE2_cMyc)
  (needforsynthesis_Raf1p130E2F5DP12gE2_cycA)
  (prodbysynthesis_Raf1p130E2F5DP12gE2_cycA)
  (needforsynthesis_Raf1p130E2F5DP12gE2_cycD)
  (prodbysynthesis_Raf1p130E2F5DP12gE2_cycD)
  (needforsynthesis_Raf1p130E2F5DP12gE2_cycDp1)
  (prodbysynthesis_Raf1p130E2F5DP12gE2_cycDp1)
  (needforsynthesis_Raf1p130E2F5DP12gE2_cycE)
  (prodbysynthesis_Raf1p130E2F5DP12gE2_cycE)
  (needforsynthesis_Raf1p130E2F5DP12gE2_cycEp1)
  (prodbysynthesis_Raf1p130E2F5DP12gE2_cycEp1)
  (needforsynthesis_Raf1p130E2F5DP12gE2_p107)
  (prodbysynthesis_Raf1p130E2F5DP12gE2_p107)
  (needforsynthesis_Raf1p130E2F5DP12gE2_p107p1)
  (prodbysynthesis_Raf1p130E2F5DP12gE2_p107p1)
  (needforsynthesis_Raf1p130E2F5DP12gE2_p19ARF)
  (prodbysynthesis_Raf1p130E2F5DP12gE2_p19ARF)
  (needforsynthesis_Raf1p130E2F5DP12gE2_pol)
  (prodbysynthesis_Raf1p130E2F5DP12gE2_pol)
  (needforassociation_Raf1p130E2F5DP12_gE2_Raf1p130E2F5DP12gE2)
  (needforassociation_gE2_Raf1p130E2F5DP12_Raf1p130E2F5DP12gE2)
  (prodbyassociation_Raf1p130E2F5DP12_gE2_Raf1p130E2F5DP12gE2)
  (needforassociation_Raf1_p130E2F5DP12_Raf1p130E2F5DP12)
  (needforassociation_p130E2F5DP12_Raf1_Raf1p130E2F5DP12)
  (prodbyassociation_Raf1_p130E2F5DP12_Raf1p130E2F5DP12)
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
  (needforsynthesis_Raf1pRbE2F13DP12gE2_cMyc)
  (prodbysynthesis_Raf1pRbE2F13DP12gE2_cMyc)
  (needforsynthesis_Raf1pRbE2F13DP12gE2_cycA)
  (prodbysynthesis_Raf1pRbE2F13DP12gE2_cycA)
  (needforsynthesis_Raf1pRbE2F13DP12gE2_cycD)
  (prodbysynthesis_Raf1pRbE2F13DP12gE2_cycD)
  (needforsynthesis_Raf1pRbE2F13DP12gE2_cycDp1)
  (prodbysynthesis_Raf1pRbE2F13DP12gE2_cycDp1)
  (needforsynthesis_Raf1pRbE2F13DP12gE2_cycE)
  (prodbysynthesis_Raf1pRbE2F13DP12gE2_cycE)
  (needforsynthesis_Raf1pRbE2F13DP12gE2_cycEp1)
  (prodbysynthesis_Raf1pRbE2F13DP12gE2_cycEp1)
  (needforsynthesis_Raf1pRbE2F13DP12gE2_p107)
  (prodbysynthesis_Raf1pRbE2F13DP12gE2_p107)
  (needforsynthesis_Raf1pRbE2F13DP12gE2_p107p1)
  (prodbysynthesis_Raf1pRbE2F13DP12gE2_p107p1)
  (needforsynthesis_Raf1pRbE2F13DP12gE2_p19ARF)
  (prodbysynthesis_Raf1pRbE2F13DP12gE2_p19ARF)
  (needforsynthesis_Raf1pRbE2F13DP12gE2_pol)
  (prodbysynthesis_Raf1pRbE2F13DP12gE2_pol)
  (needforassociation_Raf1pRbE2F13DP12_gE2_Raf1pRbE2F13DP12gE2)
  (needforassociation_gE2_Raf1pRbE2F13DP12_Raf1pRbE2F13DP12gE2)
  (prodbyassociation_Raf1pRbE2F13DP12_gE2_Raf1pRbE2F13DP12gE2)
  (needforsynthesis_Raf1pRbE2F13DP12p1gE2_cMyc)
  (prodbysynthesis_Raf1pRbE2F13DP12p1gE2_cMyc)
  (needforsynthesis_Raf1pRbE2F13DP12p1gE2_cycA)
  (prodbysynthesis_Raf1pRbE2F13DP12p1gE2_cycA)
  (needforsynthesis_Raf1pRbE2F13DP12p1gE2_cycD)
  (prodbysynthesis_Raf1pRbE2F13DP12p1gE2_cycD)
  (needforsynthesis_Raf1pRbE2F13DP12p1gE2_cycDp1)
  (prodbysynthesis_Raf1pRbE2F13DP12p1gE2_cycDp1)
  (needforsynthesis_Raf1pRbE2F13DP12p1gE2_cycE)
  (prodbysynthesis_Raf1pRbE2F13DP12p1gE2_cycE)
  (needforsynthesis_Raf1pRbE2F13DP12p1gE2_cycEp1)
  (prodbysynthesis_Raf1pRbE2F13DP12p1gE2_cycEp1)
  (needforsynthesis_Raf1pRbE2F13DP12p1gE2_p107)
  (prodbysynthesis_Raf1pRbE2F13DP12p1gE2_p107)
  (needforsynthesis_Raf1pRbE2F13DP12p1gE2_p107p1)
  (prodbysynthesis_Raf1pRbE2F13DP12p1gE2_p107p1)
  (needforsynthesis_Raf1pRbE2F13DP12p1gE2_p19ARF)
  (prodbysynthesis_Raf1pRbE2F13DP12p1gE2_p19ARF)
  (needforsynthesis_Raf1pRbE2F13DP12p1gE2_pol)
  (prodbysynthesis_Raf1pRbE2F13DP12p1gE2_pol)
  (needforassociation_Raf1pRbE2F13DP12p1_gE2_Raf1pRbE2F13DP12p1gE2)
  (needforassociation_gE2_Raf1pRbE2F13DP12p1_Raf1pRbE2F13DP12p1gE2)
  (prodbyassociation_Raf1pRbE2F13DP12p1_gE2_Raf1pRbE2F13DP12p1gE2)
  (needforassociation_Raf1_pRbE2F13DP12p1_Raf1pRbE2F13DP12p1)
  (needforassociation_pRbE2F13DP12p1_Raf1_Raf1pRbE2F13DP12p1)
  (prodbyassociation_Raf1_pRbE2F13DP12p1_Raf1pRbE2F13DP12p1)
  (needforassociation_Raf1_pRbE2F13DP12_Raf1pRbE2F13DP12)
  (needforassociation_pRbE2F13DP12_Raf1_Raf1pRbE2F13DP12)
  (prodbyassociation_Raf1_pRbE2F13DP12_Raf1pRbE2F13DP12)
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
  (needforsynthesis_Raf1pRbp1E2F13DP12gE2_cMyc)
  (prodbysynthesis_Raf1pRbp1E2F13DP12gE2_cMyc)
  (needforsynthesis_Raf1pRbp1E2F13DP12gE2_cycA)
  (prodbysynthesis_Raf1pRbp1E2F13DP12gE2_cycA)
  (needforsynthesis_Raf1pRbp1E2F13DP12gE2_cycD)
  (prodbysynthesis_Raf1pRbp1E2F13DP12gE2_cycD)
  (needforsynthesis_Raf1pRbp1E2F13DP12gE2_cycDp1)
  (prodbysynthesis_Raf1pRbp1E2F13DP12gE2_cycDp1)
  (needforsynthesis_Raf1pRbp1E2F13DP12gE2_cycE)
  (prodbysynthesis_Raf1pRbp1E2F13DP12gE2_cycE)
  (needforsynthesis_Raf1pRbp1E2F13DP12gE2_cycEp1)
  (prodbysynthesis_Raf1pRbp1E2F13DP12gE2_cycEp1)
  (needforsynthesis_Raf1pRbp1E2F13DP12gE2_p107)
  (prodbysynthesis_Raf1pRbp1E2F13DP12gE2_p107)
  (needforsynthesis_Raf1pRbp1E2F13DP12gE2_p107p1)
  (prodbysynthesis_Raf1pRbp1E2F13DP12gE2_p107p1)
  (needforsynthesis_Raf1pRbp1E2F13DP12gE2_p19ARF)
  (prodbysynthesis_Raf1pRbp1E2F13DP12gE2_p19ARF)
  (needforsynthesis_Raf1pRbp1E2F13DP12gE2_pol)
  (prodbysynthesis_Raf1pRbp1E2F13DP12gE2_pol)
  (needforassociation_Raf1pRbp1E2F13DP12_gE2_Raf1pRbp1E2F13DP12gE2)
  (needforassociation_gE2_Raf1pRbp1E2F13DP12_Raf1pRbp1E2F13DP12gE2)
  (prodbyassociation_Raf1pRbp1E2F13DP12_gE2_Raf1pRbp1E2F13DP12gE2)
  (needforsynthesis_Raf1pRbp1E2F13DP12p1gE2_cMyc)
  (prodbysynthesis_Raf1pRbp1E2F13DP12p1gE2_cMyc)
  (needforsynthesis_Raf1pRbp1E2F13DP12p1gE2_cycA)
  (prodbysynthesis_Raf1pRbp1E2F13DP12p1gE2_cycA)
  (needforsynthesis_Raf1pRbp1E2F13DP12p1gE2_cycD)
  (prodbysynthesis_Raf1pRbp1E2F13DP12p1gE2_cycD)
  (needforsynthesis_Raf1pRbp1E2F13DP12p1gE2_cycDp1)
  (prodbysynthesis_Raf1pRbp1E2F13DP12p1gE2_cycDp1)
  (needforsynthesis_Raf1pRbp1E2F13DP12p1gE2_cycE)
  (prodbysynthesis_Raf1pRbp1E2F13DP12p1gE2_cycE)
  (needforsynthesis_Raf1pRbp1E2F13DP12p1gE2_cycEp1)
  (prodbysynthesis_Raf1pRbp1E2F13DP12p1gE2_cycEp1)
  (needforsynthesis_Raf1pRbp1E2F13DP12p1gE2_p107)
  (prodbysynthesis_Raf1pRbp1E2F13DP12p1gE2_p107)
  (needforsynthesis_Raf1pRbp1E2F13DP12p1gE2_p107p1)
  (prodbysynthesis_Raf1pRbp1E2F13DP12p1gE2_p107p1)
  (needforsynthesis_Raf1pRbp1E2F13DP12p1gE2_p19ARF)
  (prodbysynthesis_Raf1pRbp1E2F13DP12p1gE2_p19ARF)
  (needforsynthesis_Raf1pRbp1E2F13DP12p1gE2_pol)
  (prodbysynthesis_Raf1pRbp1E2F13DP12p1gE2_pol)
  (needforassociation_Raf1pRbp1E2F13DP12p1_gE2_Raf1pRbp1E2F13DP12p1gE2)
  (needforassociation_gE2_Raf1pRbp1E2F13DP12p1_Raf1pRbp1E2F13DP12p1gE2)
  (prodbyassociation_Raf1pRbp1E2F13DP12p1_gE2_Raf1pRbp1E2F13DP12p1gE2)
  (needforassociation_Raf1_pRbp1E2F13DP12p1_Raf1pRbp1E2F13DP12p1)
  (needforassociation_pRbp1E2F13DP12p1_Raf1_Raf1pRbp1E2F13DP12p1)
  (prodbyassociation_Raf1_pRbp1E2F13DP12p1_Raf1pRbp1E2F13DP12p1)
  (needforassociation_Raf1_pRbp1E2F13DP12_Raf1pRbp1E2F13DP12)
  (needforassociation_pRbp1E2F13DP12_Raf1_Raf1pRbp1E2F13DP12)
  (prodbyassociation_Raf1_pRbp1E2F13DP12_Raf1pRbp1E2F13DP12)
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
  (needforassociation_RPA_cycA_RPAcycA)
  (needforassociation_cycA_RPA_RPAcycA)
  (prodbyassociation_RPA_cycA_RPAcycA)
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
  (needforcatalyzedassociation_SL1_cdk1p3cycA_SL1p1)
  (needforcatalyzedassociation_cdk1p3cycA_SL1_SL1p1)
  (prodbycatalyzedassociation_SL1_cdk1p3cycA_SL1p1)
  (needforcatalyzedassociation_SL1_cdk1p3cycB_SL1p1)
  (needforcatalyzedassociation_cdk1p3cycB_SL1_SL1p1)
  (prodbycatalyzedassociation_SL1_cdk1p3cycB_SL1p1)
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
  (needforsynthesis_SP1E2F13p1gP_cMyc)
  (prodbysynthesis_SP1E2F13p1gP_cMyc)
  (needforsynthesis_SP1E2F13p1gP_cycA)
  (prodbysynthesis_SP1E2F13p1gP_cycA)
  (needforsynthesis_SP1E2F13p1gP_cycD)
  (prodbysynthesis_SP1E2F13p1gP_cycD)
  (needforsynthesis_SP1E2F13p1gP_cycDp1)
  (prodbysynthesis_SP1E2F13p1gP_cycDp1)
  (needforsynthesis_SP1E2F13p1gP_cycE)
  (prodbysynthesis_SP1E2F13p1gP_cycE)
  (needforsynthesis_SP1E2F13p1gP_cycEp1)
  (prodbysynthesis_SP1E2F13p1gP_cycEp1)
  (needforsynthesis_SP1E2F13p1gP_p107)
  (prodbysynthesis_SP1E2F13p1gP_p107)
  (needforsynthesis_SP1E2F13p1gP_p107p1)
  (prodbysynthesis_SP1E2F13p1gP_p107p1)
  (needforsynthesis_SP1E2F13p1gP_p19ARF)
  (prodbysynthesis_SP1E2F13p1gP_p19ARF)
  (needforsynthesis_SP1E2F13p1gP_pol)
  (prodbysynthesis_SP1E2F13p1gP_pol)
  (needforassociation_SP1E2F13p1_gP_SP1E2F13p1gP)
  (needforassociation_gP_SP1E2F13p1_SP1E2F13p1gP)
  (prodbyassociation_SP1E2F13p1_gP_SP1E2F13p1gP)
  (needforassociation_SP1_E2F13p1_SP1E2F13p1)
  (needforassociation_E2F13p1_SP1_SP1E2F13p1)
  (prodbyassociation_SP1_E2F13p1_SP1E2F13p1)
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
(:action choose__cdk1p1p2
	:parameters ()
	:precondition (and  (possible_cdk1p1p2))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cdk1p1p2)			(not (possible_cdk1p1p2))
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
(:action choose__cycB
	:parameters ()
	:precondition (and  (possible_cycB))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cycB)			(not (possible_cycB))
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
(:action choose__AP2
	:parameters ()
	:precondition (and  (possible_AP2))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_AP2)			(not (possible_AP2))
))
(:action choose__APC
	:parameters ()
	:precondition (and  (possible_APC))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_APC)			(not (possible_APC))
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
			(increase (numsubs) 1.0)			(chosen_HDAC1pRbp1E2F13DP12)			(not (possible_HDAC1pRbp1E2F13DP12))
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
(:action choose__m1433
	:parameters ()
	:precondition (and  (possible_m1433))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_m1433)			(not (possible_m1433))
))
(:action choose__Max
	:parameters ()
	:precondition (and  (possible_Max))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_Max)			(not (possible_Max))
))
(:action choose__Myt1
	:parameters ()
	:precondition (and  (possible_Myt1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_Myt1)			(not (possible_Myt1))
))
(:action choose__p130
	:parameters ()
	:precondition (and  (possible_p130))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p130)			(not (possible_p130))
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
(:action choose__p27
	:parameters ()
	:precondition (and  (possible_p27))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p27)			(not (possible_p27))
))
(:action choose__E2F1
	:parameters ()
	:precondition (and  (possible_E2F1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F1)			(not (possible_E2F1))
))
(:action choose__E2F13
	:parameters ()
	:precondition (and  (possible_E2F13))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F13)			(not (possible_E2F13))
))
(:action choose__E2F13DP12
	:parameters ()
	:precondition (and  (possible_E2F13DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F13DP12)			(not (possible_E2F13DP12))
))
(:action choose__E2F13DP12p1
	:parameters ()
	:precondition (and  (possible_E2F13DP12p1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F13DP12p1)			(not (possible_E2F13DP12p1))
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
(:action choose__E2F5DP12p1
	:parameters ()
	:precondition (and  (possible_E2F5DP12p1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F5DP12p1)			(not (possible_E2F5DP12p1))
))
(:action choose__E2F6
	:parameters ()
	:precondition (and  (possible_E2F6))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F6)			(not (possible_E2F6))
))
(:action choose__E2F6DP12p1
	:parameters ()
	:precondition (and  (possible_E2F6DP12p1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F6DP12p1)			(not (possible_E2F6DP12p1))
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
(:action choose__gP
	:parameters ()
	:precondition (and  (possible_gP))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_gP)			(not (possible_gP))
))
(:action choose__HBP1
	:parameters ()
	:precondition (and  (possible_HBP1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_HBP1)			(not (possible_HBP1))
))
(:action choose__SP1
	:parameters ()
	:precondition (and  (possible_SP1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_SP1)			(not (possible_SP1))
))
(:action choose__p300
	:parameters ()
	:precondition (and  (possible_p300))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p300)			(not (possible_p300))
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
(:action choose__p68
	:parameters ()
	:precondition (and  (possible_p68))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p68)			(not (possible_p68))
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
(:action choose__Plk1
	:parameters ()
	:precondition (and  (possible_Plk1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_Plk1)			(not (possible_Plk1))
))
(:action choose__pRb
	:parameters ()
	:precondition (and  (possible_pRb))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_pRb)			(not (possible_pRb))
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
(:action choose__RPA
	:parameters ()
	:precondition (and  (possible_RPA))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_RPA)			(not (possible_RPA))
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
(:action choose__SL1
	:parameters ()
	:precondition (and  (possible_SL1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_SL1)			(not (possible_SL1))
))
(:action initialize__SP1
	:parameters ()
	:precondition (and  (chosen_SP1))
	:effect (and 
			(increase (available_SP1) 1.0)
))
(:action initialize__SL1
	:parameters ()
	:precondition (and  (chosen_SL1))
	:effect (and 
			(increase (available_SL1) 1.0)
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
(:action initialize__RPA
	:parameters ()
	:precondition (and  (chosen_RPA))
	:effect (and 
			(increase (available_RPA) 1.0)
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
(:action initialize__Plk1
	:parameters ()
	:precondition (and  (chosen_Plk1))
	:effect (and 
			(increase (available_Plk1) 1.0)
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
(:action initialize__p68
	:parameters ()
	:precondition (and  (chosen_p68))
	:effect (and 
			(increase (available_p68) 1.0)
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
(:action initialize__p130
	:parameters ()
	:precondition (and  (chosen_p130))
	:effect (and 
			(increase (available_p130) 1.0)
))
(:action initialize__Myt1
	:parameters ()
	:precondition (and  (chosen_Myt1))
	:effect (and 
			(increase (available_Myt1) 1.0)
))
(:action initialize__Max
	:parameters ()
	:precondition (and  (chosen_Max))
	:effect (and 
			(increase (available_Max) 1.0)
))
(:action initialize__m1433
	:parameters ()
	:precondition (and  (chosen_m1433))
	:effect (and 
			(increase (available_m1433) 1.0)
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
(:action initialize__HBP1
	:parameters ()
	:precondition (and  (chosen_HBP1))
	:effect (and 
			(increase (available_HBP1) 1.0)
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
(:action initialize__E2F5DP12p1
	:parameters ()
	:precondition (and  (chosen_E2F5DP12p1))
	:effect (and 
			(increase (available_E2F5DP12p1) 1.0)
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
(:action initialize__E2F13DP12p1
	:parameters ()
	:precondition (and  (chosen_E2F13DP12p1))
	:effect (and 
			(increase (available_E2F13DP12p1) 1.0)
))
(:action initialize__E2F13DP12
	:parameters ()
	:precondition (and  (chosen_E2F13DP12))
	:effect (and 
			(increase (available_E2F13DP12) 1.0)
))
(:action initialize__E2F13
	:parameters ()
	:precondition (and  (chosen_E2F13))
	:effect (and 
			(increase (available_E2F13) 1.0)
))
(:action initialize__E2F1
	:parameters ()
	:precondition (and  (chosen_E2F1))
	:effect (and 
			(increase (available_E2F1) 1.0)
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
(:action initialize__cycB
	:parameters ()
	:precondition (and  (chosen_cycB))
	:effect (and 
			(increase (available_cycB) 1.0)
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
(:action initialize__cAbl
	:parameters ()
	:precondition (and  (chosen_cAbl))
	:effect (and 
			(increase (available_cAbl) 1.0)
))
(:action initialize__APC
	:parameters ()
	:precondition (and  (chosen_APC))
	:effect (and 
			(increase (available_APC) 1.0)
))
(:action initialize__AP2
	:parameters ()
	:precondition (and  (chosen_AP2))
	:effect (and 
			(increase (available_AP2) 1.0)
))
(:action associate__p16__cdk7__p16cdk7
	:parameters ()
	:precondition (and (>= (+ (*   (available_p16) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk7) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk7) 2.0)			(increase (available_p16cdk7) 4.0)			(decrease (available_p16) 2.0)
))
(:action associate__SP1__E2F13__SP1E2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_SP1) 4.0)			(decrease (available_E2F13) 2.0)			(increase (available_SP1E2F13) 4.0)
))
(:action associatewithcatalyze__APC__Plk1__APCp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_APC) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Plk1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_APC) 3.0)			(increase (available_APCp1) 1.0)
))
(:action associate__p16__cdk46p1__p16cdk46p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p16) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1) 2.0)			(increase (available_p16cdk46p1) 3.0)			(decrease (available_p16) 1.0)
))
(:action associate__CEBP__pRbp2__CEBPpRbp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBP) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbp2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_CEBPpRbp2) 2.0)			(decrease (available_CEBP) 1.0)			(decrease (available_pRbp2) 3.0)
))
(:action associate__pRbE2F4p1DP12__gE2__pRbE2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbE2F4p1DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 1.0)			(increase (available_pRbE2F4p1DP12gE2) 2.0)			(decrease (available_pRbE2F4p1DP12) 4.0)
))
(:action associate__CEBP__gP__CEBPgP
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBP) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gP) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_CEBP) 3.0)			(increase (available_CEBPgP) 3.0)			(decrease (available_gP) 1.0)
))
(:action associate__E2F1__DP12__E2F1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F1) 1.0)			(increase (available_E2F1DP12) 1.0)			(decrease (available_DP12) 3.0)
))
(:action associate__pRbp2__Jun__pRbp2Jun
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Jun) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_Jun) 2.0)			(decrease (available_pRbp2) 2.0)			(increase (available_pRbp2Jun) 3.0)
))
(:action associate__HBP1__p130__HBP1p130
	:parameters ()
	:precondition (and (>= (+ (*   (available_HBP1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_p130) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_HBP1p130) 1.0)			(decrease (available_HBP1) 1.0)			(decrease (available_p130) 4.0)
))
(:action associate__pRb__AP2__pRbAP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pRbAP2) 1.0)			(decrease (available_pRb) 3.0)			(decrease (available_AP2) 4.0)
))
(:action associate__p130__E2F5DP12p1__p130E2F5DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F5DP12p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F5DP12p1) 1.0)			(increase (available_p130E2F5DP12p1) 1.0)			(decrease (available_p130) 4.0)
))
(:action associate__E2F3__DP12__E2F3DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F3) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_DP12) 3.0)			(increase (available_E2F3DP12) 2.0)			(decrease (available_E2F3) 3.0)
))
(:action associate__cdk2p1__cks1__cdk2p1cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 4.0)			(increase (available_cdk2p1cks1) 2.0)			(decrease (available_cdk2p1) 1.0)
))
(:action associate__pRb__E2F13DP12__pRbE2F13DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_E2F13DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRb) 2.0)			(decrease (available_E2F13DP12) 3.0)			(increase (available_pRbE2F13DP12) 4.0)
))
(:action associate__p130__E2F4DP12p1__p130E2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F4DP12p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p130E2F4DP12p1) 3.0)			(decrease (available_E2F4DP12p1) 3.0)			(decrease (available_p130) 1.0)
))
(:action associatewithcatalyze__pRbp2__cdk46p3cycD__pRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1p2) 4.0)			(decrease (available_pRbp2) 3.0)
))
(:action associate__pRb__E2F13DP12p1__pRbE2F13DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F13DP12p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_pRb) 1.0)			(decrease (available_E2F13DP12p1) 1.0)			(increase (available_pRbE2F13DP12p1) 3.0)
))
(:action associate__pRb__E2F13p1DP12p1__pRbE2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRb) 3.0)			(decrease (available_E2F13p1DP12p1) 2.0)			(increase (available_pRbE2F13p1DP12p1) 4.0)
))
(:action associate__CEBP__pRb__CEBPpRb
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBP) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRb) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRb) 4.0)			(increase (available_CEBPpRb) 1.0)			(decrease (available_CEBP) 2.0)
))
(:action associatewithcatalyze__pRb__cdk46p3cycD__pRbp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRb) 2.0)			(increase (available_pRbp1) 4.0)
))
(:action associate__pRbp2__AP2__pRbp2AP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp2) 3.0)			(increase (available_pRbp2AP2) 4.0)			(decrease (available_AP2) 4.0)
))
(:action associate__E2F6DP12p1__gE2__E2F6DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F6DP12p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(increase (available_E2F6DP12p1gE2) 3.0)			(decrease (available_E2F6DP12p1) 2.0)
))
(:action associatewithcatalyze__cdc25C__Plk1__cdc25Cp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25C) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Plk1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25C) 2.0)			(increase (available_cdc25Cp1) 3.0)
))
(:action associate__cdk1p1p2__cks1__cdk1p1p2cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p2cks1) 4.0)			(decrease (available_cdk1p1p2) 4.0)			(decrease (available_cks1) 3.0)
))
(:action associate__pRbp1E2F4p1DP12__gE2__pRbp1E2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1E2F4p1DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(increase (available_pRbp1E2F4p1DP12gE2) 2.0)			(decrease (available_pRbp1E2F4p1DP12) 2.0)
))
(:action associate__pCAF__p300__pCAFp300
	:parameters ()
	:precondition (and (>= (+ (*   (available_pCAF) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_p300) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p300) 4.0)			(increase (available_pCAFp300) 4.0)			(decrease (available_pCAF) 3.0)
))
(:action associate__E2F2__DP12__E2F2DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_DP12) 3.0)			(decrease (available_E2F2) 2.0)			(increase (available_E2F2DP12) 4.0)
))
(:action associate__cdk2__cks1__cdk2cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 1.0)			(increase (available_cdk2cks1) 4.0)			(decrease (available_cdk2) 4.0)
))
(:action associate__pRb__E2F4DP12p1__pRbE2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F4DP12p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F4DP12p1) 2.0)			(increase (available_pRbE2F4DP12p1) 2.0)			(decrease (available_pRb) 3.0)
))
(:action associate__cAbl__pRbp2__cAblpRbp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cAbl) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbp2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cAbl) 4.0)			(decrease (available_pRbp2) 1.0)			(increase (available_cAblpRbp2) 4.0)
))
(:action associate__Skp2__Skp1__Skp2Skp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Skp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_Skp1) 3.0)			(increase (available_Skp2Skp1) 4.0)			(decrease (available_Skp2) 2.0)
))
(:action associate__HDAC1p107E2F4p1DP12__gE2__HDAC1p107E2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1p107E2F4p1DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 1.0)			(increase (available_HDAC1p107E2F4p1DP12gE2) 2.0)			(decrease (available_HDAC1p107E2F4p1DP12) 1.0)
))
(:action associate__E2F6__DP12__E2F6DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F6) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F6) 2.0)			(decrease (available_DP12) 4.0)			(increase (available_E2F6DP12) 1.0)
))
(:action associatewithcatalyze__cdc25C__CTAK1__cdc25Cp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25C) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_CTAK1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25C) 3.0)			(increase (available_cdc25Cp2) 4.0)
))
(:action associate__SP1__gP__SP1gP
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gP) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_SP1) 2.0)			(increase (available_SP1gP) 4.0)			(decrease (available_gP) 4.0)
))
(:action associate__HDAC1p130E2F4p1DP12__gE2__HDAC1p130E2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1p130E2F4p1DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(decrease (available_HDAC1p130E2F4p1DP12) 3.0)			(increase (available_HDAC1p130E2F4p1DP12gE2) 3.0)
))
(:action associate__E2F13DP12__gE2__E2F13DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 2.0)			(increase (available_E2F13DP12gE2) 1.0)			(decrease (available_E2F13DP12) 2.0)
))
(:action associatewithcatalyze__cdc25C__Chk1__cdc25Cp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25C) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Chk1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25C) 3.0)			(increase (available_cdc25Cp2) 3.0)
))
(:action associate__E2F5__DP12__E2F5DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F5) 4.0)			(decrease (available_DP12) 2.0)			(increase (available_E2F5DP12) 4.0)
))
(:action associate__cdk7__cycH__cdk7cycH
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk7) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycH) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cycH) 4.0)			(increase (available_cdk7cycH) 1.0)			(decrease (available_cdk7) 4.0)
))
(:action associatewithcatalyze__DMP1__cdk46p3cycD__DMP1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_DMP1p1) 3.0)			(decrease (available_DMP1) 1.0)
))
(:action associate__Raf1__pRbE2F4p1DP12__Raf1pRbE2F4p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbE2F4p1DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbE2F4p1DP12) 1.0)			(increase (available_Raf1pRbE2F4p1DP12) 3.0)			(decrease (available_Raf1) 4.0)
))
(:action associate__Raf1__pRbp1E2F4p1DP12__Raf1pRbp1E2F4p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbp1E2F4p1DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1E2F4p1DP12) 1.0)			(decrease (available_Raf1) 3.0)			(increase (available_Raf1pRbp1E2F4p1DP12) 4.0)
))
(:action associate__HDAC1pRbp1E2F13p1DP12__gE2__HDAC1pRbp1E2F13p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1pRbp1E2F13p1DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 2.0)			(decrease (available_HDAC1pRbp1E2F13p1DP12) 4.0)			(increase (available_HDAC1pRbp1E2F13p1DP12gE2) 3.0)
))
(:action associate__Raf1__p130E2F5p1DP12__Raf1p130E2F5p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p130E2F5p1DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p130E2F5p1DP12) 3.0)			(increase (available_Raf1p130E2F5p1DP12) 4.0)			(decrease (available_Raf1) 2.0)
))
(:action associate__HDAC1pRbp1E2F4DP12__gE2__HDAC1pRbp1E2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1pRbp1E2F4DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(increase (available_HDAC1pRbp1E2F4DP12gE2) 1.0)			(decrease (available_HDAC1pRbp1E2F4DP12) 2.0)
))
(:action associate__Raf1__p130E2F4p1DP12__Raf1p130E2F4p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_p130E2F4p1DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p130E2F4p1DP12) 4.0)			(increase (available_Raf1p130E2F4p1DP12) 2.0)			(decrease (available_Raf1) 3.0)
))
(:action associate__HDAC1__pRbE2F4p1DP12__HDAC1pRbE2F4p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRbE2F4p1DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1) 2.0)			(decrease (available_pRbE2F4p1DP12) 2.0)			(increase (available_HDAC1pRbE2F4p1DP12) 4.0)
))
(:action associate__HDAC1p130E2F5p1DP12__gE2__HDAC1p130E2F5p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1p130E2F5p1DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 1.0)			(decrease (available_HDAC1p130E2F5p1DP12) 4.0)			(increase (available_HDAC1p130E2F5p1DP12gE2) 2.0)
))
(:action associate__cAbl__pRb__cAblpRb
	:parameters ()
	:precondition (and (>= (+ (*   (available_cAbl) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRb) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cAbl) 1.0)			(increase (available_cAblpRb) 2.0)			(decrease (available_pRb) 3.0)
))
(:action associate__HDAC1pRbp1E2F13DP12__gE2__HDAC1pRbp1E2F13DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1pRbp1E2F13DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(increase (available_HDAC1pRbp1E2F13DP12gE2) 3.0)			(decrease (available_HDAC1pRbp1E2F13DP12) 1.0)
))
(:action associate__pRb__Jun__pRbJun
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Jun) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_Jun) 4.0)			(decrease (available_pRb) 3.0)			(increase (available_pRbJun) 1.0)
))
(:action associate__pRbE2F13DP12p1__gE2__pRbE2F13DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbE2F13DP12p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 2.0)			(decrease (available_pRbE2F13DP12p1) 2.0)			(increase (available_pRbE2F13DP12p1gE2) 3.0)
))
(:action synthesize__SP1gP__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 3.0)
))
(:action synthesize__SP1gP__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 1.0)
))
(:action synthesize__SP1gP__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 3.0)
))
(:action synthesize__SP1gP__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 4.0)
))
(:action synthesize__SP1gP__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 2.0)
))
(:action synthesize__SP1gP__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 1.0)
))
(:action synthesize__SP1gP__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 2.0)
))
(:action synthesize__SP1gP__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 4.0)
))
(:action synthesize__SP1gP__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 3.0)
))
(:action synthesize__SP1gP__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 4.0)
))
(:action associate__pRbE2F13DP12__gE2__pRbE2F13DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbE2F13DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 1.0)			(decrease (available_pRbE2F13DP12) 3.0)			(increase (available_pRbE2F13DP12gE2) 3.0)
))
(:action associate__cAbl__pRbp1p2__cAblpRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cAbl) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbp1p2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cAbl) 4.0)			(decrease (available_pRbp1p2) 4.0)			(increase (available_cAblpRbp1p2) 2.0)
))
(:action associate__Raf1pRbp1E2F4p1DP12__gE2__Raf1pRbp1E2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 1.0)			(increase (available_Raf1pRbp1E2F4p1DP12gE2) 3.0)			(decrease (available_Raf1pRbp1E2F4p1DP12) 1.0)
))
(:action associate__pRbp1__Jun__pRbp1Jun
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Jun) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1Jun) 4.0)			(decrease (available_pRbp1) 1.0)			(decrease (available_Jun) 2.0)
))
(:action associate__pRbp1p2__AP2__pRbp1p2AP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1p2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1p2) 1.0)			(increase (available_pRbp1p2AP2) 4.0)			(decrease (available_AP2) 1.0)
))
(:action synthesize__E2F13DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 2.0)
))
(:action synthesize__E2F13DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 4.0)
))
(:action synthesize__E2F13DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 3.0)
))
(:action synthesize__E2F13DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 4.0)
))
(:action synthesize__E2F13DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 4.0)
))
(:action synthesize__E2F13DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 3.0)
))
(:action synthesize__E2F13DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 3.0)
))
(:action synthesize__E2F13DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 1.0)
))
(:action synthesize__E2F13DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 4.0)
))
(:action synthesize__E2F13DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 4.0)
))
(:action associatewithcatalyze__cycB__APCp1__APCp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycB) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_APCp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cycB) 4.0)			(increase (available_APCp1) 1.0)
))
(:action associatewithcatalyze__cdc25Cp1__Chk1__cdc25Cp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25Cp1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Chk1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25Cp1) 4.0)			(increase (available_cdc25Cp1p2) 4.0)
))
(:action associatewithcatalyze__cdk2p1__cdk7cycH__cdk2p1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1) 3.0)			(increase (available_cdk2p1p2) 2.0)
))
(:action associate__p130E2F5DP12p1__gE2__p130E2F5DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130E2F5DP12p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p130E2F5DP12p1) 2.0)			(decrease (available_gE2) 3.0)			(increase (available_p130E2F5DP12p1gE2) 2.0)
))
(:action associate__HDAC1__p130E2F5DP12p1__HDAC1p130E2F5DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_p130E2F5DP12p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1) 4.0)			(decrease (available_p130E2F5DP12p1) 1.0)			(increase (available_HDAC1p130E2F5DP12p1) 2.0)
))
(:action associate__Raf1__pRbE2F13DP12p1__Raf1pRbE2F13DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRbE2F13DP12p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbE2F13DP12p1) 4.0)			(increase (available_Raf1pRbE2F13DP12p1) 4.0)			(decrease (available_Raf1) 2.0)
))
(:action associate__Raf1p130E2F5p1DP12__gE2__Raf1p130E2F5p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 2.0)			(decrease (available_Raf1p130E2F5p1DP12) 1.0)			(increase (available_Raf1p130E2F5p1DP12gE2) 3.0)
))
(:action associatewithcatalyze__cdk1p1p2__cdk7cycH__cdk1p1p2p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2) 3.0)			(increase (available_cdk1p1p2p3) 3.0)
))
(:action associate__E2F6DP12__gE2__E2F6DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F6DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 1.0)			(decrease (available_E2F6DP12) 1.0)			(increase (available_E2F6DP12gE2) 4.0)
))
(:action associate__p130__E2F5DP12__p130E2F5DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F5DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p130E2F5DP12) 4.0)			(decrease (available_p130) 4.0)			(decrease (available_E2F5DP12) 4.0)
))
(:action associate__HDAC1__p130E2F4DP12p1__HDAC1p130E2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p130E2F4DP12p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1p130E2F4DP12p1) 4.0)			(decrease (available_HDAC1) 2.0)			(decrease (available_p130E2F4DP12p1) 1.0)
))
(:action associate__CEBPpRbp2__gP__CEBPpRbp2gP
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBPpRbp2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_CEBPpRbp2) 1.0)			(increase (available_CEBPpRbp2gP) 2.0)			(decrease (available_gP) 2.0)
))
(:action selfassociatewithcatalyze__cdk7cycH__cdk7p1cycH
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk7cycH) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk7cycH) 3.0)			(increase (available_cdk7p1cycH) 1.0)
))
(:action associatewithcatalyze__cdc25Cp1__CTAK1__cdc25Cp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25Cp1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_CTAK1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25Cp1) 4.0)			(increase (available_cdc25Cp1p2) 2.0)
))
(:action associatewithcatalyze__cdk2__cdk7cycH__cdk2p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2) 3.0)			(increase (available_cdk2p2) 3.0)
))
(:action associate__pRbp1__AP2__pRbp1AP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1AP2) 4.0)			(decrease (available_pRbp1) 3.0)			(decrease (available_AP2) 1.0)
))
(:action associate__SP1E2F13__gP__SP1E2F13gP
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_SP1E2F13gP) 1.0)			(decrease (available_SP1E2F13) 3.0)			(decrease (available_gP) 3.0)
))
(:action associatewithcatalyze__cdc25Cp2__Plk1__cdc25Cp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25Cp2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Plk1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25Cp2) 3.0)			(increase (available_cdc25Cp1p2) 4.0)
))
(:action associate__CEBP__pRbp1p2__CEBPpRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBP) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbp1p2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1p2) 2.0)			(decrease (available_CEBP) 1.0)			(increase (available_CEBPpRbp1p2) 2.0)
))
(:action associatewithcatalyze__cdk7__cdk7cycH__cdk7p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk7) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk7p1) 1.0)			(decrease (available_cdk7) 3.0)
))
(:action associate__HDAC1__pRbE2F13DP12p1__HDAC1pRbE2F13DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRbE2F13DP12p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1) 2.0)			(decrease (available_pRbE2F13DP12p1) 1.0)			(increase (available_HDAC1pRbE2F13DP12p1) 4.0)
))
(:action associate__p130E2F4DP12p1__gE2__p130E2F4DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130E2F4DP12p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p130E2F4DP12p1) 1.0)			(increase (available_p130E2F4DP12p1gE2) 3.0)			(decrease (available_gE2) 3.0)
))
(:action associate__pRbp1__E2F13DP12p1__pRbp1E2F13DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13DP12p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1E2F13DP12p1) 4.0)			(decrease (available_pRbp1) 4.0)			(decrease (available_E2F13DP12p1) 1.0)
))
(:action associate__Raf1p130E2F4p1DP12__gE2__Raf1p130E2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 2.0)			(decrease (available_Raf1p130E2F4p1DP12) 1.0)			(increase (available_Raf1p130E2F4p1DP12gE2) 4.0)
))
(:action associate__CEBPpRb__gP__CEBPpRbgP
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBPpRb) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_gP) 3.0)			(decrease (available_CEBPpRb) 2.0)			(increase (available_CEBPpRbgP) 2.0)
))
(:action associate__HDAC1__pRbE2F13DP12__HDAC1pRbE2F13DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbE2F13DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1) 1.0)			(decrease (available_pRbE2F13DP12) 2.0)			(increase (available_HDAC1pRbE2F13DP12) 1.0)
))
(:action associate__pRbp1__E2F13p1DP12p1__pRbp1E2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1) 4.0)			(decrease (available_E2F13p1DP12p1) 4.0)			(increase (available_pRbp1E2F13p1DP12p1) 3.0)
))
(:action associate__CEBP__pRbp1__CEBPpRbp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBP) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1) 4.0)			(decrease (available_CEBP) 4.0)			(increase (available_CEBPpRbp1) 4.0)
))
(:action associatewithcatalyze__cdk46p1__cdk7cycH__cdk46p1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1) 2.0)			(increase (available_cdk46p1p2) 1.0)
))
(:action associate__Raf1__pRbE2F13DP12__Raf1pRbE2F13DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbE2F13DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_Raf1) 3.0)			(increase (available_Raf1pRbE2F13DP12) 3.0)			(decrease (available_pRbE2F13DP12) 4.0)
))
(:action associatewithcatalyze__cdk1p1p2__cdc25Cp1__cdk1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p2) 2.0)			(decrease (available_cdk1p1p2) 3.0)
))
(:action associate__Raf1__pRbE2F13p1DP12p1__Raf1pRbE2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbE2F13p1DP12p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbE2F13p1DP12p1) 2.0)			(decrease (available_Raf1) 1.0)			(decrease (available_pRbE2F13p1DP12p1) 2.0)
))
(:action associatewithcatalyze__cdk1p1p2__cdc25Cp1__cdk1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2) 3.0)			(increase (available_cdk1p1) 2.0)
))
(:action associate__E2F5DP12__gE2__E2F5DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 1.0)			(increase (available_E2F5DP12gE2) 4.0)			(decrease (available_E2F5DP12) 3.0)
))
(:action associate__pRbp1__E2F4DP12p1__pRbp1E2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F4DP12p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1) 1.0)			(decrease (available_E2F4DP12p1) 2.0)			(increase (available_pRbp1E2F4DP12p1) 2.0)
))
(:action synthesize__CEBPgP__P
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBPgP) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_P) 1.0)
))
(:action associate__cAbl__pRbp1__cAblpRbp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cAbl) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cAblpRbp1) 1.0)			(decrease (available_cAbl) 3.0)			(decrease (available_pRbp1) 3.0)
))
(:action associate__HDAC1__pRbE2F13p1DP12p1__HDAC1pRbE2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbE2F13p1DP12p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1) 4.0)			(increase (available_HDAC1pRbE2F13p1DP12p1) 4.0)			(decrease (available_pRbE2F13p1DP12p1) 1.0)
))
(:action associate__pRbp1__E2F13DP12__pRbp1E2F13DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1) 4.0)			(decrease (available_E2F13DP12) 3.0)			(increase (available_pRbp1E2F13DP12) 1.0)
))
(:action associate__Raf1pRbE2F4p1DP12__gE2__Raf1pRbE2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 2.0)			(increase (available_Raf1pRbE2F4p1DP12gE2) 2.0)			(decrease (available_Raf1pRbE2F4p1DP12) 3.0)
))
(:action associate__m1433__cdc25Cp2__m1433cdc25Cp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_m1433) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_m1433cdc25Cp2) 1.0)			(decrease (available_cdc25Cp2) 3.0)			(decrease (available_m1433) 2.0)
))
(:action associate__pRbp1p2__Jun__pRbp1p2Jun
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1p2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Jun) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1p2) 2.0)			(increase (available_pRbp1p2Jun) 3.0)			(decrease (available_Jun) 3.0)
))
(:action associate__pRbE2F13p1DP12p1__gE2__pRbE2F13p1DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbE2F13p1DP12p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(increase (available_pRbE2F13p1DP12p1gE2) 4.0)			(decrease (available_pRbE2F13p1DP12p1) 4.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 3.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 3.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 1.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 1.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 2.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 4.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 4.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 4.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 3.0)
))
(:action associate__Raf1pRbE2F13DP12__gE2__Raf1pRbE2F13DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 2.0)			(decrease (available_Raf1pRbE2F13DP12) 3.0)			(increase (available_Raf1pRbE2F13DP12gE2) 3.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 3.0)
))
(:action associate__pRbp1E2F13p1DP12p1__gE2__pRbp1E2F13p1DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1E2F13p1DP12p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 1.0)			(increase (available_pRbp1E2F13p1DP12p1gE2) 3.0)			(decrease (available_pRbp1E2F13p1DP12p1) 3.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 2.0)
))
(:action associate__cdk2p1p2__cycEp1__cdk2p1p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1p2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycEp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1p2) 2.0)			(increase (available_cdk2p1p2cycEp1) 2.0)			(decrease (available_cycEp1) 2.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 1.0)
))
(:action associatewithcatalyze__cdk1p1__cdc25Cp1p2__cdk1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1) 3.0)			(increase (available_cdk1) 1.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 4.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 3.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 1.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 4.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 1.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 4.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 3.0)
))
(:action associate__DMP1__cycD__DMP1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_DMP1cycD) 2.0)			(decrease (available_cycD) 3.0)			(decrease (available_DMP1) 2.0)
))
(:action associate__RPA__cycA__RPAcycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_RPA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_RPA) 4.0)			(increase (available_RPAcycA) 2.0)			(decrease (available_cycA) 4.0)
))
(:action associate__cdk2p1p2__cycE__cdk2p1p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1p2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycE) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1p2) 2.0)			(increase (available_cdk2p1p2cycE) 4.0)			(decrease (available_cycE) 4.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 4.0)
))
(:action associate__cMyc__AP2__cMycAP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cMyc) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cMycAP2) 1.0)			(decrease (available_cMyc) 2.0)			(decrease (available_AP2) 1.0)
))
(:action associate__cdk2p1p2__cycA__cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1p2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cycA) 3.0)			(increase (available_cdk2p1p2cycA) 3.0)			(decrease (available_cdk2p1p2) 3.0)
))
(:action associatewithcatalyze__cdk1p2__cdk7cycH__cdk1p2p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p2p3) 3.0)			(decrease (available_cdk1p2) 4.0)
))
(:action associate__cdk1p2__cks1__cdk1p2cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 1.0)			(increase (available_cdk1p2cks1) 2.0)			(decrease (available_cdk1p2) 4.0)
))
(:action associate__DMP1__cycDp1__DMP1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_DMP1) 3.0)			(decrease (available_cycDp1) 3.0)			(increase (available_DMP1cycDp1) 1.0)
))
(:action associate__p107__E2F4DP12p1__p107E2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p107) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F4DP12p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F4DP12p1) 2.0)			(decrease (available_p107) 1.0)			(increase (available_p107E2F4DP12p1) 3.0)
))
(:action associate__p130E2F5DP12__gE2__p130E2F5DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130E2F5DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(increase (available_p130E2F5DP12gE2) 1.0)			(decrease (available_p130E2F5DP12) 4.0)
))
(:action associate__cdk1p1p2p3__cks1__cdk1p1p2p3cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p2p3cks1) 2.0)			(decrease (available_cks1) 2.0)			(decrease (available_cdk1p1p2p3) 4.0)
))
(:action associatewithcatalyze__cdk1p2__cdc25Cp1__cdk1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p2) 3.0)			(increase (available_cdk1) 1.0)
))
(:action associate__CEBPpRbp1p2__gP__CEBPpRbp1p2gP
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBPpRbp1p2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_CEBPpRbp1p2gP) 3.0)			(decrease (available_CEBPpRbp1p2) 1.0)			(decrease (available_gP) 2.0)
))
(:action associate__pRbp1E2F13DP12p1__gE2__pRbp1E2F13DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1E2F13DP12p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 2.0)			(increase (available_pRbp1E2F13DP12p1gE2) 4.0)			(decrease (available_pRbp1E2F13DP12p1) 1.0)
))
(:action associate__HDAC1__p130E2F5DP12__HDAC1p130E2F5DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_p130E2F5DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1) 3.0)			(increase (available_HDAC1p130E2F5DP12) 3.0)			(decrease (available_p130E2F5DP12) 3.0)
))
(:action associate__DMP1p1__cycD__DMP1p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_DMP1p1) 3.0)			(decrease (available_cycD) 1.0)			(increase (available_DMP1p1cycD) 3.0)
))
(:action associate__cdk7p1__cycH__cdk7p1cycH
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk7p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycH) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cycH) 2.0)			(decrease (available_cdk7p1) 3.0)			(increase (available_cdk7p1cycH) 2.0)
))
(:action associate__Raf1__p130E2F5DP12__Raf1p130E2F5DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_p130E2F5DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p130E2F5DP12) 4.0)			(decrease (available_Raf1) 3.0)			(increase (available_Raf1p130E2F5DP12) 1.0)
))
(:action associate__Raf1pRbE2F13DP12p1__gE2__Raf1pRbE2F13DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbE2F13DP12p1gE2) 2.0)			(decrease (available_gE2) 4.0)			(decrease (available_Raf1pRbE2F13DP12p1) 2.0)
))
(:action associate__cdk1p1p2p3__cycA__cdk1p1p2p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p2p3cycA) 3.0)			(decrease (available_cycA) 3.0)			(decrease (available_cdk1p1p2p3) 4.0)
))
(:action associate__pRbp1E2F13DP12__gE2__pRbp1E2F13DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1E2F13DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(increase (available_pRbp1E2F13DP12gE2) 2.0)			(decrease (available_pRbp1E2F13DP12) 3.0)
))
(:action associate__cdk1p1p2p3__cycB__cdk1p1p2p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycB) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2p3) 3.0)			(decrease (available_cycB) 2.0)			(increase (available_cdk1p1p2p3cycB) 2.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 1.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 2.0)
))
(:action associate__DMP1p1__cycDp1__DMP1p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cycDp1) 1.0)			(increase (available_DMP1p1cycDp1) 2.0)			(decrease (available_DMP1p1) 1.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 3.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 4.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 1.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 1.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 3.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 4.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 3.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 1.0)
))
(:action synthesize__CEBPpRbp2gP__P
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBPpRbp2gP) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_P) 3.0)
))
(:action associate__cdk46p1__cycDp1__cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cycDp1) 2.0)			(decrease (available_cdk46p1) 1.0)			(increase (available_cdk46p1cycDp1) 1.0)
))
(:action associate__SP1__p107p1__SP1p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_p107p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_SP1) 4.0)			(increase (available_SP1p107p1) 4.0)			(decrease (available_p107p1) 1.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 1.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 3.0)
))
(:action associate__cdk2p1__cycEp1__cdk2p1cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycEp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1) 3.0)			(increase (available_cdk2p1cycEp1) 4.0)			(decrease (available_cycEp1) 4.0)
))
(:action associatewithcatalyze__cdk1p1p2__cdc25Cp1p2__cdk1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p2) 3.0)			(decrease (available_cdk1p1p2) 1.0)
))
(:action associatewithcatalyze__cdk1p1p2__cdc25Cp1p2__cdk1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1) 1.0)			(decrease (available_cdk1p1p2) 2.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 1.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -1.0 ) 0.0))
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
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 4.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 2.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 3.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 3.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 1.0)
))
(:action associate__SP1__p107__SP1p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p107) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_SP1) 2.0)			(decrease (available_p107) 1.0)			(increase (available_SP1p107) 3.0)
))
(:action associate__cMyc__Max__cMycMax
	:parameters ()
	:precondition (and (>= (+ (*   (available_cMyc) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Max) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_Max) 2.0)			(decrease (available_cMyc) 4.0)			(increase (available_cMycMax) 1.0)
))
(:action associatewithcatalyze__cdk1p1p2p3__cdc25Cp1__cdk1p2p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p2p3) 1.0)			(decrease (available_cdk1p1p2p3) 1.0)
))
(:action associate__p16__cdk7p1__p16cdk7p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p16) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk7p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p16cdk7p1) 2.0)			(decrease (available_cdk7p1) 2.0)			(decrease (available_p16) 4.0)
))
(:action associate__m1433__cdc25Cp1p2__m1433cdc25Cp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_m1433) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25Cp1p2) 4.0)			(decrease (available_m1433) 1.0)			(increase (available_m1433cdc25Cp1p2) 1.0)
))
(:action associatewithcatalyze__cdk1p1p2p3__cdc25Cp1__cdk1p1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p3) 3.0)			(decrease (available_cdk1p1p2p3) 1.0)
))
(:action associate__PCNA__cycD__PCNAcycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_PCNAcycD) 4.0)			(decrease (available_PCNA) 4.0)			(decrease (available_cycD) 4.0)
))
(:action associate__cdk2__cycA__cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2cycA) 1.0)			(decrease (available_cdk2) 1.0)			(decrease (available_cycA) 2.0)
))
(:action associate__p16__cdk46p1p2__p16cdk46p1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p16) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p1p2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p16cdk46p1p2) 4.0)			(decrease (available_cdk46p1p2) 1.0)			(decrease (available_p16) 2.0)
))
(:action associate__cdk2__cycE__cdk2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycE) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cycE) 3.0)			(increase (available_cdk2cycE) 4.0)			(decrease (available_cdk2) 3.0)
))
(:action associatewithcatalyze__cdk1p2__cdc25Cp1p2__cdk1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1) 3.0)			(decrease (available_cdk1p2) 4.0)
))
(:action associate__CEBPpRbp1__gP__CEBPpRbp1gP
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBPpRbp1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_CEBPpRbp1) 4.0)			(increase (available_CEBPpRbp1gP) 1.0)			(decrease (available_gP) 3.0)
))
(:action synthesize__SP1E2F13gP__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 1.0)
))
(:action associate__cdk46p1__cycD__cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk46p1cycD) 2.0)			(decrease (available_cdk46p1) 4.0)			(decrease (available_cycD) 1.0)
))
(:action synthesize__SP1E2F13gP__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 4.0)
))
(:action associate__cdk2p1__cycA__cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cycA) 4.0)			(increase (available_cdk2p1cycA) 1.0)			(decrease (available_cdk2p1) 1.0)
))
(:action synthesize__SP1E2F13gP__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 1.0)
))
(:action synthesize__SP1E2F13gP__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13gP) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 4.0)
))
(:action synthesize__SP1E2F13gP__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13gP) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 1.0)
))
(:action synthesize__SP1E2F13gP__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 4.0)
))
(:action synthesize__SP1E2F13gP__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13gP) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 4.0)
))
(:action synthesize__SP1E2F13gP__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13gP) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 3.0)
))
(:action synthesize__SP1E2F13gP__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13gP) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 4.0)
))
(:action associate__cdk2p1__cycE__cdk2p1cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycE) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1) 3.0)			(decrease (available_cycE) 4.0)			(increase (available_cdk2p1cycE) 3.0)
))
(:action synthesize__SP1E2F13gP__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13gP) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 4.0)
))
(:action associate__HDAC1pRbE2F13DP12__gE2__HDAC1pRbE2F13DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1pRbE2F13DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 2.0)			(increase (available_HDAC1pRbE2F13DP12gE2) 2.0)			(decrease (available_HDAC1pRbE2F13DP12) 3.0)
))
(:action associate__PCNA__cycDp1__PCNAcycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_PCNA) 1.0)			(decrease (available_cycDp1) 3.0)			(increase (available_PCNAcycDp1) 2.0)
))
(:action associatewithcatalyze__cdk1p1__cdk7cycH__cdk1p1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1) 2.0)			(increase (available_cdk1p1p3) 3.0)
))
(:action associate__cdk2__cycEp1__cdk2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycEp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2) 2.0)			(increase (available_cdk2cycEp1) 3.0)			(decrease (available_cycEp1) 2.0)
))
(:action associate__cdk2p2__cks1__cdk2p2cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 2.0)			(increase (available_cdk2p2cks1) 4.0)			(decrease (available_cdk2p2) 1.0)
))
(:action associate__cdk1p1__cks1__cdk1p1cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1cks1) 1.0)			(decrease (available_cdk1p1) 2.0)			(decrease (available_cks1) 1.0)
))
(:action associatewithcatalyze__cycA__Skp2Skp1__Skp2Skp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Skp2Skp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2Skp1) 1.0)			(decrease (available_cycA) 2.0)
))
(:action associate__cdk46p1p2__cycDp1__cdk46p1p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1p2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cycDp1) 4.0)			(decrease (available_cdk46p1p2) 1.0)			(increase (available_cdk46p1p2cycDp1) 3.0)
))
(:action associatewithcatalyze__cdk1p1__cdc25Cp1__cdk1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1) 1.0)			(increase (available_cdk1) 1.0)
))
(:action synthesize__E2F5DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 1.0)
))
(:action associate__Raf1pRbE2F13p1DP12p1__gE2__Raf1pRbE2F13p1DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(increase (available_Raf1pRbE2F13p1DP12p1gE2) 1.0)			(decrease (available_Raf1pRbE2F13p1DP12p1) 2.0)
))
(:action synthesize__E2F5DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 2.0)
))
(:action synthesize__E2F5DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 4.0)
))
(:action synthesize__E2F5DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 1.0)
))
(:action synthesize__E2F5DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 4.0)
))
(:action synthesize__E2F5DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 2.0)
))
(:action associate__Raf1__pRbp1E2F13p1DP12p1__Raf1pRbp1E2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbp1E2F13p1DP12p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbp1E2F13p1DP12p1) 3.0)			(decrease (available_Raf1) 3.0)			(decrease (available_pRbp1E2F13p1DP12p1) 3.0)
))
(:action synthesize__E2F5DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 4.0)
))
(:action synthesize__E2F5DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 3.0)
))
(:action synthesize__E2F5DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 4.0)
))
(:action synthesize__E2F5DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 1.0)
))
(:action associate__Raf1__pRbp1E2F13DP12p1__Raf1pRbp1E2F13DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbp1E2F13DP12p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbp1E2F13DP12p1) 4.0)			(decrease (available_Raf1) 3.0)			(decrease (available_pRbp1E2F13DP12p1) 2.0)
))
(:action associate__cdk2p2__cycE__cdk2p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycE) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p2) 4.0)			(decrease (available_cycE) 2.0)			(increase (available_cdk2p2cycE) 2.0)
))
(:action associate__cdk2p2__cycA__cdk2p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p2cycA) 3.0)			(decrease (available_cycA) 4.0)			(decrease (available_cdk2p2) 3.0)
))
(:action associatewithcatalyze__cdk1p1p2p3__cdc25Cp1p2__cdk1p1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p3) 1.0)			(decrease (available_cdk1p1p2p3) 1.0)
))
(:action associate__Raf1__pRbp1E2F13DP12__Raf1pRbp1E2F13DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRbp1E2F13DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1E2F13DP12) 2.0)			(increase (available_Raf1pRbp1E2F13DP12) 4.0)			(decrease (available_Raf1) 2.0)
))
(:action associate__cdk46p1p2__cycD__cdk46p1p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1p2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1p2) 1.0)			(increase (available_cdk46p1p2cycD) 3.0)			(decrease (available_cycD) 1.0)
))
(:action associate__cdk2p1p2__cks1__cdk2p1p2cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1p2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1p2cks1) 3.0)			(decrease (available_cdk2p1p2) 3.0)			(decrease (available_cks1) 3.0)
))
(:action associate__cdk2p2__cycEp1__cdk2p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycEp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p2) 2.0)			(decrease (available_cycEp1) 3.0)			(increase (available_cdk2p2cycEp1) 3.0)
))
(:action associatewithcatalyze__cdk1p1p2p3__cdc25Cp1p2__cdk1p2p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2p3) 3.0)			(increase (available_cdk1p2p3) 1.0)
))
(:action synthesize__CEBPpRbgP__P
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBPpRbgP) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_P) 1.0)
))
(:action associate__p27__cdk2p1cycE__p27cdk2p1cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycE) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 3.0)			(increase (available_p27cdk2p1cycE) 4.0)			(decrease (available_cdk2p1cycE) 2.0)
))
(:action associatewithcatalyze__cdk1p1p2p3cycB__cdc25Cp1__cdk1p1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3cycB) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2p3cycB) 3.0)			(increase (available_cdk1p1p3cycB) 1.0)
))
(:action associatewithcatalyze__cdk1p1p2p3cycB__cdc25Cp1__cdk1p2p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3cycB) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p2p3cycB) 1.0)			(decrease (available_cdk1p1p2p3cycB) 2.0)
))
(:action associate__p27__cdk2p1cycEp1__p27cdk2p1cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycEp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p27cdk2p1cycEp1) 3.0)			(decrease (available_cdk2p1cycEp1) 1.0)			(decrease (available_p27) 4.0)
))
(:action associate__cdk2p1p2cycA__E2F13__cdk2p1p2cycAE2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1p2cycA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F13) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13) 3.0)			(increase (available_cdk2p1p2cycAE2F13) 2.0)			(decrease (available_cdk2p1p2cycA) 1.0)
))
(:action associate__cMycMax__gcdc25A__cMycMaxgcdc25A
	:parameters ()
	:precondition (and (>= (+ (*   (available_cMycMax) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gcdc25A) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cMycMaxgcdc25A) 1.0)			(decrease (available_cMycMax) 1.0)			(decrease (available_gcdc25A) 3.0)
))
(:action associatewithcatalyze__p27__cdk2p2cycEp1__p27p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycEp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 1.0)			(increase (available_p27p1) 3.0)
))
(:action associate__p27__cdk2p1p2cycE__p27cdk2p1p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycE) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1p2cycE) 2.0)			(increase (available_p27cdk2p1p2cycE) 2.0)			(decrease (available_p27) 1.0)
))
(:action associate__cdk1p1p3__cycA__cdk1p1p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p3cycA) 2.0)			(decrease (available_cycA) 1.0)			(decrease (available_cdk1p1p3) 2.0)
))
(:action associatewithcatalyze__Skp1__cdk2p2cycA__Skp1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_Skp1) 2.0)			(increase (available_Skp1p1) 1.0)
))
(:action associate__cdk1p1p3__cycB__cdk1p1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycB) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p3) 3.0)			(decrease (available_cycB) 1.0)			(increase (available_cdk1p1p3cycB) 4.0)
))
(:action associatewithcatalyze__p27__cdk2p2cycE__p27p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycE) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p27p1) 1.0)			(decrease (available_p27) 2.0)
))
(:action associatewithcatalyze__Skp2__cdk2p2cycA__Skp2p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_Skp2) 3.0)			(increase (available_Skp2p1) 3.0)
))
(:action associate__cdk1__cks1__cdk1cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 2.0)			(increase (available_cdk1cks1) 2.0)			(decrease (available_cdk1) 4.0)
))
(:action associatewithcatalyze__cdk1__cdk7cycH__cdk1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1) 4.0)			(increase (available_cdk1p3) 2.0)
))
(:action associatewithcatalyze__DP12__cdk2p2cycA__DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_DP12p1) 1.0)			(decrease (available_DP12) 4.0)
))
(:action associate__p27__cdk2p1p2cycEp1__p27cdk2p1p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycEp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 4.0)			(increase (available_p27cdk2p1p2cycEp1) 1.0)			(decrease (available_cdk2p1p2cycEp1) 1.0)
))
(:action associatewithcatalyze__cdk1p2p3__cdc25Cp1p2__cdk1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p2p3) 4.0)			(increase (available_cdk1p3) 3.0)
))
(:action associate__cdk2p2cycA__E2F13__cdk2p2cycAE2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p2cycA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F13) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p2cycA) 1.0)			(increase (available_cdk2p2cycAE2F13) 2.0)			(decrease (available_E2F13) 3.0)
))
(:action associatewithcatalyze__pRbp1__cdk2p2cycEp1__pRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycEp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1) 2.0)			(increase (available_pRbp1p2) 4.0)
))
(:action associate__p27__cdk2cycE__p27cdk2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2cycE) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p27cdk2cycE) 3.0)			(decrease (available_p27) 2.0)			(decrease (available_cdk2cycE) 2.0)
))
(:action associatewithcatalyze__pRbp1__cdk2p2cycE__pRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycE) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1) 4.0)			(increase (available_pRbp1p2) 2.0)
))
(:action associatewithcatalyze__cdk1p2p3__cdc25Cp1__cdk1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p2p3) 1.0)			(increase (available_cdk1p3) 1.0)
))
(:action associate__p27__cdk2cycEp1__p27cdk2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2cycEp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 3.0)			(decrease (available_cdk2cycEp1) 4.0)			(increase (available_p27cdk2cycEp1) 4.0)
))
(:action associate__p27__cdk46p1p2cycD__p27cdk46p1p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p1p2cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p27cdk46p1p2cycD) 3.0)			(decrease (available_cdk46p1p2cycD) 2.0)			(decrease (available_p27) 4.0)
))
(:action associate__p57__cdk2p1p2cycE__p57cdk2p1p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycE) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2p1p2cycE) 1.0)			(decrease (available_cdk2p1p2cycE) 3.0)			(decrease (available_p57) 4.0)
))
(:action associate__cdk2cycA__E2F13__cdk2cycAE2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2cycAE2F13) 2.0)			(decrease (available_E2F13) 3.0)			(decrease (available_cdk2cycA) 4.0)
))
(:action associatewithcatalyze__cdk1p1p2p3cycA__cdc25Cp1p2__cdk1p1p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3cycA) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p3cycA) 2.0)			(decrease (available_cdk1p1p2p3cycA) 3.0)
))
(:action associatewithcatalyze__cdk1p1p2p3cycA__cdc25Cp1p2__cdk1p2p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3cycA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2p3cycA) 1.0)			(increase (available_cdk1p2p3cycA) 1.0)
))
(:action associate__p27__cdk46p1p2cycDp1__p27cdk46p1p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p1p2cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1p2cycDp1) 3.0)			(decrease (available_p27) 2.0)			(increase (available_p27cdk46p1p2cycDp1) 2.0)
))
(:action associate__p57__cdk2p1p2cycEp1__p57cdk2p1p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycEp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p57) 3.0)			(increase (available_p57cdk2p1p2cycEp1) 4.0)			(decrease (available_cdk2p1p2cycEp1) 1.0)
))
(:action associate__SP1p107__gP__SP1p107gP
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1p107) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gP) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_SP1p107gP) 3.0)			(decrease (available_SP1p107) 4.0)			(decrease (available_gP) 4.0)
))
(:action associatewithcatalyze__p68__cdk2p2cycA__p68p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p68) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p68p2) 2.0)			(decrease (available_p68) 4.0)
))
(:action associatewithcatalyze__p68__cdk2p2cycEp1__p68p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p68) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycEp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p68) 2.0)			(increase (available_p68p1) 4.0)
))
(:action associate__Raf1pRbp1E2F13DP12__gE2__Raf1pRbp1E2F13DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(decrease (available_Raf1pRbp1E2F13DP12) 1.0)			(increase (available_Raf1pRbp1E2F13DP12gE2) 4.0)
))
(:action associatewithcatalyze__E2F13__cdk2p2cycA__E2F13p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_E2F13p1) 1.0)			(decrease (available_E2F13) 4.0)
))
(:action associatewithcatalyze__cdk46p1cycD__cdk7cycH__cdk46p1p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1cycD) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk46p1p2cycD) 3.0)			(decrease (available_cdk46p1cycD) 3.0)
))
(:action associate__HDAC1__p107E2F4DP12p1__HDAC1p107E2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_p107E2F4DP12p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1) 4.0)			(increase (available_HDAC1p107E2F4DP12p1) 3.0)			(decrease (available_p107E2F4DP12p1) 4.0)
))
(:action associate__p57__cdk2cycE__p57cdk2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2cycE) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2cycE) 2.0)			(decrease (available_cdk2cycE) 3.0)			(decrease (available_p57) 1.0)
))
(:action associate__Raf1pRbp1E2F13p1DP12p1__gE2__Raf1pRbp1E2F13p1DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 1.0)			(increase (available_Raf1pRbp1E2F13p1DP12p1gE2) 4.0)			(decrease (available_Raf1pRbp1E2F13p1DP12p1) 1.0)
))
(:action associate__cdk2p1cycA__E2F13__cdk2p1cycAE2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycA) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F13) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycA) 3.0)			(increase (available_cdk2p1cycAE2F13) 3.0)			(decrease (available_E2F13) 2.0)
))
(:action associate__cdk1p1p3__cks1__cdk1p1p3cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p3) 3.0)			(increase (available_cdk1p1p3cks1) 1.0)			(decrease (available_cks1) 3.0)
))
(:action associatewithcatalyze__cdk1p1p2p3cycB__cdc25Cp1p2__cdk1p1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3cycB) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p3cycB) 2.0)			(decrease (available_cdk1p1p2p3cycB) 2.0)
))
(:action associatewithcatalyze__cdk1p1p2p3cycB__cdc25Cp1p2__cdk1p2p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3cycB) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p2p3cycB) 1.0)			(decrease (available_cdk1p1p2p3cycB) 2.0)
))
(:action associatewithcatalyze__cdk1p1p2p3cycA__cdc25Cp1__cdk1p1p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3cycA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2p3cycA) 1.0)			(increase (available_cdk1p1p3cycA) 3.0)
))
(:action associatewithcatalyze__cdk1p1p2p3cycA__cdc25Cp1__cdk1p2p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3cycA) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2p3cycA) 3.0)			(increase (available_cdk1p2p3cycA) 2.0)
))
(:action associate__p57__cdk2cycEp1__p57cdk2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2cycEp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2cycEp1) 2.0)			(decrease (available_cdk2cycEp1) 4.0)			(decrease (available_p57) 1.0)
))
(:action associatewithcatalyze__cdk46p1cycDp1__cdk7cycH__cdk46p1p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1cycDp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1cycDp1) 3.0)			(increase (available_cdk46p1p2cycDp1) 2.0)
))
(:action associate__p27__cdk46p1cycD__p27cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p27cdk46p1cycD) 1.0)			(decrease (available_p27) 2.0)			(decrease (available_cdk46p1cycD) 3.0)
))
(:action associate__p57__cdk2p1cycE__p57cdk2p1cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycE) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycE) 3.0)			(increase (available_p57cdk2p1cycE) 4.0)			(decrease (available_p57) 4.0)
))
(:action associate__p27__cdk46p1cycDp1__p27cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1cycDp1) 4.0)			(increase (available_p27cdk46p1cycDp1) 4.0)			(decrease (available_p27) 2.0)
))
(:action associate__p57__cdk2p1cycEp1__p57cdk2p1cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycEp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2p1cycEp1) 4.0)			(decrease (available_cdk2p1cycEp1) 2.0)			(decrease (available_p57) 2.0)
))
(:action associatewithcatalyze__cdk2p1cycE__cdk7cycH__cdk2p1p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycE) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1p2cycE) 1.0)			(decrease (available_cdk2p1cycE) 1.0)
))
(:action associate__p57p1__cdk46p1p2cycD__p57p1cdk46p1p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p1p2cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1p2cycD) 2.0)			(decrease (available_p57p1) 4.0)			(increase (available_p57p1cdk46p1p2cycD) 4.0)
))
(:action associatewithcatalyze__cycE__cdk2p2cycEp1__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycE) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycEp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cycE) 4.0)			(increase (available_cycEp1) 4.0)
))
(:action associate__Skp2__cdk2cycA__Skp2cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2cdk2cycA) 1.0)			(decrease (available_cdk2cycA) 2.0)			(decrease (available_Skp2) 4.0)
))
(:action associate__p27__cdk2p1cycA__p27cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 3.0)			(increase (available_p27cdk2p1cycA) 3.0)			(decrease (available_cdk2p1cycA) 1.0)
))
(:action associate__p57p1__cdk46p1p2cycDp1__p57p1cdk46p1p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p1p2cycDp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p57p1cdk46p1p2cycDp1) 3.0)			(decrease (available_p57p1) 4.0)			(decrease (available_cdk46p1p2cycDp1) 1.0)
))
(:action associate__cdk1p2p3__cycB__cdk1p2p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycB) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p2p3cycB) 4.0)			(decrease (available_cdk1p2p3) 1.0)			(decrease (available_cycB) 1.0)
))
(:action associatewithcatalyze__cdk2p1cycEp1__cdk7cycH__cdk2p1p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycEp1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1p2cycEp1) 3.0)			(decrease (available_cdk2p1cycEp1) 4.0)
))
(:action associatewithcatalyze__cycE__cdk2p2cycE__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycE) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycE) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 3.0)			(decrease (available_cycE) 4.0)
))
(:action associate__Skp2Skp1__cdk2cycA__Skp2Skp1cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2Skp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2Skp1cdk2cycA) 2.0)			(decrease (available_cdk2cycA) 4.0)			(decrease (available_Skp2Skp1) 3.0)
))
(:action associate__p57__cdk2cycA__p57cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p57) 3.0)			(increase (available_p57cdk2cycA) 4.0)			(decrease (available_cdk2cycA) 3.0)
))
(:action synthesize__CEBPpRbp1p2gP__P
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBPpRbp1p2gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_P) 4.0)
))
(:action associatewithcatalyze__cdk2p1cycA__cdk7cycH__cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1p2cycA) 4.0)			(decrease (available_cdk2p1cycA) 2.0)
))
(:action associatewithcatalyze__cdk1p1p3__cdc25Cp1p2__cdk1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p3) 2.0)			(increase (available_cdk1p3) 1.0)
))
(:action associate__p27__cdk2p1p2cycA__p27cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1p2cycA) 3.0)			(decrease (available_p27) 1.0)			(increase (available_p27cdk2p1p2cycA) 1.0)
))
(:action associate__Skp2__cdk2p1cycA__Skp2cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycA) 2.0)			(increase (available_Skp2cdk2p1cycA) 2.0)			(decrease (available_Skp2) 2.0)
))
(:action associate__p57__cdk46p1cycD__p57cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1cycD) 2.0)			(increase (available_p57cdk46p1cycD) 3.0)			(decrease (available_p57) 2.0)
))
(:action associatewithcatalyze__p68__cdk2p2cycE__p68p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p68) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycE) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p68) 2.0)			(increase (available_p68p1) 3.0)
))
(:action associate__p57__cdk46p1cycDp1__p57cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1cycDp1) 2.0)			(increase (available_p57cdk46p1cycDp1) 1.0)			(decrease (available_p57) 3.0)
))
(:action associate__Raf1p130E2F5DP12__gE2__Raf1p130E2F5DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 2.0)			(decrease (available_Raf1p130E2F5DP12) 2.0)			(increase (available_Raf1p130E2F5DP12gE2) 4.0)
))
(:action associate__p57__cdk46p1p2cycD__p57cdk46p1p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p1p2cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1p2cycD) 4.0)			(increase (available_p57cdk46p1p2cycD) 4.0)			(decrease (available_p57) 4.0)
))
(:action associate__SP1p107p1__gP__SP1p107p1gP
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1p107p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gP) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_SP1p107p1gP) 2.0)			(decrease (available_SP1p107p1) 2.0)			(decrease (available_gP) 1.0)
))
(:action associate__p57p1__cdk46p1cycD__p57p1cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p57p1cdk46p1cycD) 1.0)			(decrease (available_p57p1) 1.0)			(decrease (available_cdk46p1cycD) 3.0)
))
(:action associate__Raf1pRbp1E2F13DP12p1__gE2__Raf1pRbp1E2F13DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 2.0)			(increase (available_Raf1pRbp1E2F13DP12p1gE2) 3.0)			(decrease (available_Raf1pRbp1E2F13DP12p1) 4.0)
))
(:action associatewithcatalyze__cdk1p1p3__cdc25Cp1__cdk1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p3) 4.0)			(increase (available_cdk1p3) 1.0)
))
(:action associate__p27__cdk2cycA__p27cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 3.0)			(decrease (available_cdk2cycA) 1.0)			(increase (available_p27cdk2cycA) 1.0)
))
(:action associate__p57__cdk46p1p2cycDp1__p57cdk46p1p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p1p2cycDp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk46p1p2cycDp1) 4.0)			(decrease (available_p57) 1.0)			(decrease (available_cdk46p1p2cycDp1) 1.0)
))
(:action associate__p57p1__cdk46p1cycDp1__p57p1cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycDp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1cycDp1) 1.0)			(decrease (available_p57p1) 1.0)			(increase (available_p57p1cdk46p1cycDp1) 1.0)
))
(:action associate__p57__cdk2p2cycA__p57cdk2p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p2cycA) 4.0)			(decrease (available_p57) 1.0)			(increase (available_p57cdk2p2cycA) 4.0)
))
(:action associate__p57__cdk2p2cycEp1__p57cdk2p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycEp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2p2cycEp1) 2.0)			(decrease (available_cdk2p2cycEp1) 2.0)			(decrease (available_p57) 1.0)
))
(:action associate__Skp2Skp1__cdk2p2cycA__Skp2Skp1cdk2p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2Skp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p2cycA) 4.0)			(increase (available_Skp2Skp1cdk2p2cycA) 4.0)			(decrease (available_Skp2Skp1) 3.0)
))
(:action synthesize__Raf1pRbE2F13DP12p1gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12p1gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 3.0)
))
(:action synthesize__Raf1pRbE2F13DP12p1gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12p1gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 1.0)
))
(:action synthesize__Raf1pRbE2F13DP12p1gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12p1gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 3.0)
))
(:action synthesize__Raf1pRbE2F13DP12p1gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12p1gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 1.0)
))
(:action synthesize__Raf1pRbE2F13DP12p1gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12p1gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 4.0)
))
(:action synthesize__Raf1pRbE2F13DP12p1gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 3.0)
))
(:action synthesize__Raf1pRbE2F13DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 4.0)
))
(:action synthesize__Raf1pRbE2F13DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 1.0)
))
(:action synthesize__Raf1pRbE2F13DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 1.0)
))
(:action synthesize__Raf1pRbE2F13DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 3.0)
))
(:action synthesize__Raf1pRbE2F13DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 1.0)
))
(:action synthesize__Raf1pRbE2F13DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 1.0)
))
(:action synthesize__Raf1pRbE2F13DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 1.0)
))
(:action synthesize__Raf1pRbE2F13DP12p1gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12p1gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 3.0)
))
(:action synthesize__Raf1pRbE2F13DP12p1gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12p1gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 4.0)
))
(:action synthesize__Raf1pRbE2F13DP12p1gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12p1gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 3.0)
))
(:action synthesize__Raf1pRbE2F13DP12p1gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 1.0)
))
(:action associate__p57__cdk2p2cycE__p57cdk2p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycE) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2p2cycE) 2.0)			(decrease (available_p57) 1.0)			(decrease (available_cdk2p2cycE) 2.0)
))
(:action synthesize__Raf1pRbE2F13DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 2.0)
))
(:action synthesize__Raf1pRbE2F13DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 2.0)
))
(:action synthesize__Raf1pRbE2F13DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 3.0)
))
(:action associate__p57__cdk2p1cycA__p57cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p57) 4.0)			(decrease (available_cdk2p1cycA) 4.0)			(increase (available_p57cdk2p1cycA) 1.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12p1gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 4.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12p1gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 4.0)
))
(:action associate__Skp2Skp1__cdk2p1cycA__Skp2Skp1cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2Skp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_Skp2Skp1) 2.0)			(decrease (available_cdk2p1cycA) 3.0)			(increase (available_Skp2Skp1cdk2p1cycA) 2.0)
))
(:action associate__cdk1p2p3__cks1__cdk1p2p3cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 4.0)			(decrease (available_cdk1p2p3) 2.0)			(increase (available_cdk1p2p3cks1) 3.0)
))
(:action associate__p27__cdk2p2cycE__p27cdk2p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycE) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p27cdk2p2cycE) 4.0)			(decrease (available_cdk2p2cycE) 3.0)			(decrease (available_p27) 4.0)
))
(:action synthesize__CEBPpRbp1gP__P
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBPpRbp1gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_P) 3.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12p1gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 4.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12p1gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 2.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12p1gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 1.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12p1gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 2.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12p1gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 4.0)
))
(:action associate__cdk1p2p3__cycA__cdk1p2p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p2p3cycA) 3.0)			(decrease (available_cdk1p2p3) 4.0)			(decrease (available_cycA) 4.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12p1gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 2.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12p1gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 4.0)
))
(:action associate__p27__cdk2p2cycA__p27cdk2p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p2cycA) 2.0)			(increase (available_p27cdk2p2cycA) 3.0)			(decrease (available_p27) 4.0)
))
(:action associatewithcatalyze__cdk2cycE__cdk7cycH__cdk2p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2cycE) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycE) 3.0)			(increase (available_cdk2p2cycE) 4.0)
))
(:action synthesize__Raf1pRbE2F13p1DP12p1gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F13p1DP12p1gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 2.0)
))
(:action associate__Skp2__cdk2p1p2cycA__Skp2cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2cdk2p1p2cycA) 1.0)			(decrease (available_cdk2p1p2cycA) 2.0)			(decrease (available_Skp2) 1.0)
))
(:action associate__p27__cdk2p2cycEp1__p27cdk2p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycEp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p2cycEp1) 4.0)			(increase (available_p27cdk2p2cycEp1) 4.0)			(decrease (available_p27) 1.0)
))
(:action associate__p57__cdk2p1p2cycA__p57cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2p1p2cycA) 3.0)			(decrease (available_cdk2p1p2cycA) 2.0)			(decrease (available_p57) 4.0)
))
(:action associate__Skp2Skp1__cdk2p1p2cycA__Skp2Skp1cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2Skp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1p2cycA) 4.0)			(decrease (available_Skp2Skp1) 3.0)			(increase (available_Skp2Skp1cdk2p1p2cycA) 3.0)
))
(:action associate__p107E2F4DP12p1__gE2__p107E2F4DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p107E2F4DP12p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 2.0)			(increase (available_p107E2F4DP12p1gE2) 2.0)			(decrease (available_p107E2F4DP12p1) 4.0)
))
(:action associatewithcatalyze__cdk2cycA__cdk7cycH__cdk2p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2cycA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycA) 1.0)			(increase (available_cdk2p2cycA) 2.0)
))
(:action associate__Skp2__cdk2p2cycA__Skp2cdk2p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2cdk2p2cycA) 1.0)			(decrease (available_cdk2p2cycA) 3.0)			(decrease (available_Skp2) 4.0)
))
(:action associatewithcatalyze__cdk2cycEp1__cdk7cycH__cdk2p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2cycEp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycEp1) 3.0)			(increase (available_cdk2p2cycEp1) 1.0)
))
(:action associate__HDAC1p130E2F5DP12__gE2__HDAC1p130E2F5DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1p130E2F5DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(decrease (available_HDAC1p130E2F5DP12) 3.0)			(increase (available_HDAC1p130E2F5DP12gE2) 3.0)
))
(:action associatewithcatalyze__cdk1p1p3cycB__cdc25Cp1__cdk1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3cycB) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p3cycB) 1.0)			(decrease (available_cdk1p1p3cycB) 2.0)
))
(:action associate__p27p1__cdk46p1cycDp1__p27p1cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1cycDp1) 4.0)			(decrease (available_p27p1) 2.0)			(increase (available_p27p1cdk46p1cycDp1) 3.0)
))
(:action associatewithcatalyze__cdk1p2p3cycA__cdc25Cp1__cdk1p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3cycA) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p2p3cycA) 3.0)			(increase (available_cdk1p3cycA) 1.0)
))
(:action associate__p27p1__cdk46p1p2cycDp1__p27p1cdk46p1p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p1p2cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 4.0)			(increase (available_p27p1cdk46p1p2cycDp1) 4.0)			(decrease (available_cdk46p1p2cycDp1) 4.0)
))
(:action associatewithcatalyze__p68p1__cdk2p2cycA__p68p1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p68p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p68p1p2) 2.0)			(decrease (available_p68p1) 4.0)
))
(:action associatewithcatalyze__cdk1p2p3cycB__cdc25Cp1p2__cdk1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3cycB) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p3cycB) 4.0)			(decrease (available_cdk1p2p3cycB) 2.0)
))
(:action associate__cdk2p1p2cycA__E2F13p1__cdk2p1p2cycAE2F13p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1p2cycA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_E2F13p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13p1) 2.0)			(decrease (available_cdk2p1p2cycA) 2.0)			(increase (available_cdk2p1p2cycAE2F13p1) 4.0)
))
(:action associate__SP1__E2F13p1__SP1E2F13p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13p1) 3.0)			(decrease (available_SP1) 4.0)			(increase (available_SP1E2F13p1) 2.0)
))
(:action associate__p27p1__cdk46p1cycD__p27p1cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 2.0)			(decrease (available_cdk46p1cycD) 4.0)			(increase (available_p27p1cdk46p1cycD) 1.0)
))
(:action associate__p27p1__cdk2p1p2cycEp1__p27p1cdk2p1p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycEp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1p2cycEp1) 3.0)			(decrease (available_p27p1) 2.0)			(increase (available_p27p1cdk2p1p2cycEp1) 3.0)
))
(:action associate__p27p1__cdk2p1cycE__p27p1cdk2p1cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycE) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 1.0)			(increase (available_p27p1cdk2p1cycE) 3.0)			(decrease (available_cdk2p1cycE) 2.0)
))
(:action associatewithcatalyze__cdk1p2p3cycA__Myt1__cdk1p1p2p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3cycA) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Myt1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p2p3cycA) 1.0)			(decrease (available_cdk1p2p3cycA) 3.0)
))
(:action associatewithcatalyze__p68p2__cdk2p2cycEp1__p68p1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p68p2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycEp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p68p2) 2.0)			(increase (available_p68p1p2) 2.0)
))
(:action associate__cdk2p2cycA__E2F13p1__cdk2p2cycAE2F13p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p2cycA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_E2F13p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p2cycA) 2.0)			(decrease (available_E2F13p1) 1.0)			(increase (available_cdk2p2cycAE2F13p1) 4.0)
))
(:action associatewithcatalyze__cdk1p2p3cycB__cdc25Cp1__cdk1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3cycB) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p3cycB) 2.0)			(decrease (available_cdk1p2p3cycB) 4.0)
))
(:action associatewithcatalyze__p68p2__cdk2p2cycE__p68p1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p68p2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycE) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p68p2) 2.0)			(increase (available_p68p1p2) 4.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 3.0)
))
(:action associate__p27p1__cdk2p1p2cycE__p27p1cdk2p1p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycE) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p27p1cdk2p1p2cycE) 4.0)			(decrease (available_cdk2p1p2cycE) 4.0)			(decrease (available_p27p1) 1.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 2.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 4.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 4.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 1.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 4.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 3.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 1.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 2.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 3.0)
))
(:action associate__cdk1p3__cks1__cdk1p3cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p3) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 1.0)			(increase (available_cdk1p3cks1) 1.0)			(decrease (available_cdk1p3) 2.0)
))
(:action associatewithcatalyze__cdk1p1p3cycA__cdc25Cp1p2__cdk1p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p3cycA) 3.0)			(decrease (available_cdk1p1p3cycA) 4.0)
))
(:action associate__p27p1__cdk2cycA__p27p1cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 4.0)			(decrease (available_cdk2cycA) 2.0)			(increase (available_p27p1cdk2cycA) 2.0)
))
(:action synthesize__cMycMaxgcdc25A__cdc25A
	:parameters ()
	:precondition (and (>= (+ (*   (available_cMycMaxgcdc25A) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25A) 1.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12p1gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 3.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12p1gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 1.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12p1gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 1.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12p1gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 1.0)
))
(:action associate__cdk2cycA__E2F13p1__cdk2cycAE2F13p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2cycA) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F13p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13p1) 4.0)			(increase (available_cdk2cycAE2F13p1) 2.0)			(decrease (available_cdk2cycA) 3.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12p1gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 2.0)
))
(:action associate__p27p1__cdk2p1cycA__p27p1cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 4.0)			(increase (available_p27p1cdk2p1cycA) 1.0)			(decrease (available_cdk2p1cycA) 4.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12p1gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 1.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12p1gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 1.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12p1gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 3.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12p1gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 3.0)
))
(:action synthesize__Raf1pRbp1E2F13p1DP12p1gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13p1DP12p1gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 1.0)
))
(:action associatewithcatalyze__cdk1p1p3cycB__cdc25Cp1p2__cdk1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3cycB) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p3cycB) 1.0)			(decrease (available_cdk1p1p3cycB) 2.0)
))
(:action associatewithcatalyze__cdk1p1p3cycA__cdc25Cp1__cdk1p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p3cycA) 4.0)			(increase (available_cdk1p3cycA) 4.0)
))
(:action associate__p27p1__cdk46p1p2cycD__p27p1cdk46p1p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p1p2cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1p2cycD) 2.0)			(decrease (available_p27p1) 4.0)			(increase (available_p27p1cdk46p1p2cycD) 2.0)
))
(:action associatewithcatalyze__cdk1p2p3cycA__cdc25Cp1p2__cdk1p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p2p3cycA) 4.0)			(increase (available_cdk1p3cycA) 3.0)
))
(:action associate__cdk2p1cycA__E2F13p1__cdk2p1cycAE2F13p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F13p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13p1) 4.0)			(decrease (available_cdk2p1cycA) 1.0)			(increase (available_cdk2p1cycAE2F13p1) 2.0)
))
(:action synthesize__Raf1pRbp1E2F13DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 4.0)
))
(:action synthesize__Raf1pRbp1E2F13DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 1.0)
))
(:action synthesize__Raf1pRbp1E2F13DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 2.0)
))
(:action synthesize__Raf1pRbp1E2F13DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 1.0)
))
(:action synthesize__Raf1pRbp1E2F13DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 4.0)
))
(:action synthesize__Raf1pRbp1E2F13DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 1.0)
))
(:action synthesize__Raf1pRbp1E2F13DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 3.0)
))
(:action synthesize__Raf1pRbp1E2F13DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 1.0)
))
(:action synthesize__Raf1pRbp1E2F13DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 1.0)
))
(:action associate__Skp2p1__Skp1__Skp2p1Skp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Skp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_Skp1) 1.0)			(decrease (available_Skp2p1) 1.0)			(increase (available_Skp2p1Skp1) 2.0)
))
(:action associate__cdk1p3__cycA__cdk1p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p3) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cycA) 2.0)			(decrease (available_cdk1p3) 4.0)			(increase (available_cdk1p3cycA) 4.0)
))
(:action associate__p27p1__cdk2p2cycE__p27p1cdk2p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycE) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p27p1cdk2p2cycE) 1.0)			(decrease (available_p27p1) 2.0)			(decrease (available_cdk2p2cycE) 2.0)
))
(:action associate__cdk1p3__cycB__cdk1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p3) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycB) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cycB) 4.0)			(increase (available_cdk1p3cycB) 1.0)			(decrease (available_cdk1p3) 2.0)
))
(:action associate__p27p1__cdk2p1p2cycA__p27p1cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 1.0)			(decrease (available_cdk2p1p2cycA) 4.0)			(increase (available_p27p1cdk2p1p2cycA) 1.0)
))
(:action associate__p27p1__cdk2p2cycA__p27p1cdk2p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p2cycA) 1.0)			(decrease (available_p27p1) 2.0)			(increase (available_p27p1cdk2p2cycA) 2.0)
))
(:action associate__p27p1__cdk2p2cycEp1__p27p1cdk2p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycEp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 1.0)			(decrease (available_cdk2p2cycEp1) 4.0)			(increase (available_p27p1cdk2p2cycEp1) 3.0)
))
(:action synthesize__Raf1pRbp1E2F13DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 4.0)
))
(:action synthesize__Raf1pRbp1E2F13DP12p1gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12p1gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 2.0)
))
(:action synthesize__Raf1pRbp1E2F13DP12p1gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12p1gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 1.0)
))
(:action synthesize__Raf1pRbp1E2F13DP12p1gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12p1gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 3.0)
))
(:action synthesize__Raf1pRbp1E2F13DP12p1gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12p1gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 4.0)
))
(:action synthesize__Raf1pRbp1E2F13DP12p1gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12p1gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 4.0)
))
(:action synthesize__Raf1pRbp1E2F13DP12p1gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12p1gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 4.0)
))
(:action synthesize__Raf1pRbp1E2F13DP12p1gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12p1gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 4.0)
))
(:action synthesize__Raf1pRbp1E2F13DP12p1gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 1.0)
))
(:action synthesize__Raf1pRbp1E2F13DP12p1gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12p1gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 4.0)
))
(:action synthesize__Raf1pRbp1E2F13DP12p1gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F13DP12p1gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 4.0)
))
(:action associate__p27p1__cdk2cycEp1__p27p1cdk2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2cycEp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycEp1) 3.0)			(decrease (available_p27p1) 3.0)			(increase (available_p27p1cdk2cycEp1) 3.0)
))
(:action associatewithcatalyze__cdk1p2p3cycB__Myt1__cdk1p1p2p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3cycB) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Myt1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p2p3cycB) 3.0)			(decrease (available_cdk1p2p3cycB) 2.0)
))
(:action associate__Skp2__Skp1p1__Skp2Skp1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Skp1p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2Skp1p1) 4.0)			(decrease (available_Skp1p1) 3.0)			(decrease (available_Skp2) 4.0)
))
(:action associate__Skp2p1__Skp1p1__Skp2p1Skp1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Skp1p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_Skp2p1) 1.0)			(decrease (available_Skp1p1) 1.0)			(increase (available_Skp2p1Skp1p1) 2.0)
))
(:action associate__p27p1__cdk2p1cycEp1__p27p1cdk2p1cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycEp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p27p1cdk2p1cycEp1) 4.0)			(decrease (available_p27p1) 1.0)			(decrease (available_cdk2p1cycEp1) 1.0)
))
(:action associate__p27p1__cdk2cycE__p27p1cdk2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2cycE) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycE) 3.0)			(increase (available_p27p1cdk2cycE) 3.0)			(decrease (available_p27p1) 3.0)
))
(:action associatewithcatalyze__cdk1p3cycA__Myt1__cdk1p1p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p3cycA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Myt1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p3cycA) 4.0)			(decrease (available_cdk1p3cycA) 2.0)
))
(:action associate__Skp2Skp1p1__cdk2p2cycA__Skp2Skp1p1cdk2p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2Skp1p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p2cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_Skp2Skp1p1) 2.0)			(decrease (available_cdk2p2cycA) 3.0)			(increase (available_Skp2Skp1p1cdk2p2cycA) 4.0)
))
(:action associatewithcatalyze__cdc25C__cdk1p3cycA__cdc25Cp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25C) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk1p3cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25Cp1) 1.0)			(decrease (available_cdc25C) 4.0)
))
(:action associatewithcatalyze__cdc25C__cdk1p3cycB__cdc25Cp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25C) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk1p3cycB) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25Cp1) 2.0)			(decrease (available_cdc25C) 1.0)
))
(:action associate__Raf1__cdc25A__Raf1cdc25A
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25A) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1cdc25A) 3.0)			(decrease (available_Raf1) 4.0)			(decrease (available_cdc25A) 4.0)
))
(:action associatewithcatalyze__cdk1p3cycB__Myt1__cdk1p1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p3cycB) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Myt1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p3cycB) 1.0)			(increase (available_cdk1p1p3cycB) 1.0)
))
(:action associatewithcatalyze__SL1__cdk1p3cycA__SL1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SL1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk1p3cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_SL1) 3.0)			(increase (available_SL1p1) 3.0)
))
(:action associatewithcatalyze__SL1__cdk1p3cycB__SL1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SL1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk1p3cycB) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_SL1p1) 1.0)			(decrease (available_SL1) 1.0)
))
(:action associatewithcatalyze__cycA__Skp2p1Skp1p1__Skp2p1Skp1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Skp2p1Skp1p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cycA) 1.0)			(increase (available_Skp2p1Skp1p1) 4.0)
))
(:action associatewithcatalyze__cdc25Cp2__cdk1p3cycB__cdc25Cp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25Cp2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk1p3cycB) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25Cp1p2) 4.0)			(decrease (available_cdc25Cp2) 1.0)
))
(:action associatewithcatalyze__cycA__Skp2p1Skp1__Skp2p1Skp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycA) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Skp2p1Skp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cycA) 3.0)			(increase (available_Skp2p1Skp1) 3.0)
))
(:action associate__SP1E2F13p1__gP__SP1E2F13p1gP
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_gP) 3.0)			(decrease (available_SP1E2F13p1) 4.0)			(increase (available_SP1E2F13p1gP) 1.0)
))
(:action associatewithcatalyze__cdc25A__Raf1__cdc25Ap1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25A) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25Ap1) 3.0)			(decrease (available_cdc25A) 3.0)
))
(:action associatewithcatalyze__cdc25Cp2__cdk1p3cycA__cdc25Cp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25Cp2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk1p3cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25Cp1p2) 4.0)			(decrease (available_cdc25Cp2) 1.0)
))
(:action associate__Skp2Skp1p1__cdk2p1cycA__Skp2Skp1p1cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2Skp1p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2Skp1p1cdk2p1cycA) 2.0)			(decrease (available_Skp2Skp1p1) 1.0)			(decrease (available_cdk2p1cycA) 1.0)
))
(:action associate__Skp2Skp1p1__cdk2p1p2cycA__Skp2Skp1p1cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2Skp1p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_Skp2Skp1p1) 1.0)			(increase (available_Skp2Skp1p1cdk2p1p2cycA) 4.0)			(decrease (available_cdk2p1p2cycA) 4.0)
))
(:action associate__Skp2Skp1p1__cdk2cycA__Skp2Skp1p1cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2Skp1p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_Skp2Skp1p1) 4.0)			(decrease (available_cdk2cycA) 1.0)			(increase (available_Skp2Skp1p1cdk2cycA) 1.0)
))
(:action associatewithcatalyze__cycA__Skp2Skp1p1__Skp2Skp1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Skp2Skp1p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2Skp1p1) 4.0)			(decrease (available_cycA) 4.0)
))
(:action associatewithcatalyze__cdk2p1cycEp1__cdc25Ap1__cdk2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycEp1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Ap1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2cycEp1) 1.0)			(decrease (available_cdk2p1cycEp1) 1.0)
))
(:action associatewithcatalyze__cdk2p1cycA__cdc25Ap1__cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Ap1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2cycA) 4.0)			(decrease (available_cdk2p1cycA) 4.0)
))
(:action associate__Raf1__cdc25Ap1__Raf1cdc25Ap1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Ap1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25Ap1) 4.0)			(increase (available_Raf1cdc25Ap1) 3.0)			(decrease (available_Raf1) 2.0)
))
(:action associatewithcatalyze__cdk2p1p2cycE__cdc25Ap1__cdk2p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1p2cycE) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Ap1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p2cycE) 3.0)			(decrease (available_cdk2p1p2cycE) 3.0)
))
(:action associatewithcatalyze__cdk46p1__cdc25Ap1__cdk46
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Ap1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk46) 3.0)			(decrease (available_cdk46p1) 4.0)
))
(:action associatewithcatalyze__cdk2p1p2cycEp1__cdc25Ap1__cdk2p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1p2cycEp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Ap1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p2cycEp1) 3.0)			(decrease (available_cdk2p1p2cycEp1) 2.0)
))
(:action associatewithcatalyze__cdk2p1cycE__cdc25Ap1__cdk2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycE) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Ap1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycE) 4.0)			(increase (available_cdk2cycE) 2.0)
))
(:action associatewithcatalyze__cdk2p1p2cycA__cdc25Ap1__cdk2p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1p2cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Ap1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p2cycA) 2.0)			(decrease (available_cdk2p1p2cycA) 4.0)
))
(:action associatewithcatalyze__cdk46p1p2__cdc25Ap1__cdk46p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1p2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Ap1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk46p2) 4.0)			(decrease (available_cdk46p1p2) 1.0)
))
(:action synthesize__SP1E2F13p1gP__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13p1gP) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 2.0)
))
(:action synthesize__SP1E2F13p1gP__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13p1gP) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 3.0)
))
(:action synthesize__SP1E2F13p1gP__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13p1gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 1.0)
))
(:action synthesize__SP1E2F13p1gP__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13p1gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 1.0)
))
(:action synthesize__SP1E2F13p1gP__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13p1gP) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 3.0)
))
(:action synthesize__SP1E2F13p1gP__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13p1gP) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 3.0)
))
(:action synthesize__SP1E2F13p1gP__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13p1gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 4.0)
))
(:action synthesize__SP1E2F13p1gP__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13p1gP) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 4.0)
))
(:action synthesize__SP1E2F13p1gP__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13p1gP) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 2.0)
))
(:action synthesize__SP1E2F13p1gP__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1E2F13p1gP) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 4.0)
))
(:action associate__cdk46__cycDp1__cdk46cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cycDp1) 1.0)			(increase (available_cdk46cycDp1) 2.0)			(decrease (available_cdk46) 4.0)
))
(:action associate__cdk46__cycD__cdk46cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cycD) 3.0)			(decrease (available_cdk46) 3.0)			(increase (available_cdk46cycD) 1.0)
))
(:action associate__p16__cdk46__p16cdk46
	:parameters ()
	:precondition (and (>= (+ (*   (available_p16) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46) 1.0)			(increase (available_p16cdk46) 4.0)			(decrease (available_p16) 1.0)
))
(:action associate__cdk46p2__cycD__cdk46p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p2) 3.0)			(increase (available_cdk46p2cycD) 3.0)			(decrease (available_cycD) 4.0)
))
(:action associate__p16__cdk46p2__p16cdk46p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p16) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p16cdk46p2) 1.0)			(decrease (available_p16) 3.0)			(decrease (available_cdk46p2) 1.0)
))
(:action associatewithcatalyze__cdk46__cdk7cycH__cdk46p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk46p2) 2.0)			(decrease (available_cdk46) 1.0)
))
(:action associate__cdk46p2__cycDp1__cdk46p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk46p2cycDp1) 2.0)			(decrease (available_cdk46p2) 1.0)			(decrease (available_cycDp1) 3.0)
))
(:action associate__p27p1__cdk46cycD__p27p1cdk46cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p27p1cdk46cycD) 3.0)			(decrease (available_p27p1) 2.0)			(decrease (available_cdk46cycD) 4.0)
))
(:action associate__p27p1__cdk46cycDp1__p27p1cdk46cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46cycDp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p27p1) 4.0)			(increase (available_p27p1cdk46cycDp1) 3.0)			(decrease (available_cdk46cycDp1) 1.0)
))
(:action associatewithcatalyze__cdk46cycD__cdk7cycH__cdk46p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46cycD) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk46p2cycD) 1.0)			(decrease (available_cdk46cycD) 2.0)
))
(:action associatewithcatalyze__cdk46cycDp1__cdk7cycH__cdk46p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46cycDp1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46cycDp1) 1.0)			(increase (available_cdk46p2cycDp1) 3.0)
))
(:action associate__p27__cdk46p2cycD__p27cdk46p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p2cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p27cdk46p2cycD) 3.0)			(decrease (available_cdk46p2cycD) 2.0)			(decrease (available_p27) 1.0)
))
(:action associate__p57__cdk46cycD__p57cdk46cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46cycD) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p57) 3.0)			(increase (available_p57cdk46cycD) 4.0)			(decrease (available_cdk46cycD) 1.0)
))
(:action associate__p27__cdk46p2cycDp1__p27cdk46p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p2cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p27cdk46p2cycDp1) 2.0)			(decrease (available_cdk46p2cycDp1) 2.0)			(decrease (available_p27) 2.0)
))
(:action associate__p57__cdk46cycDp1__p57cdk46cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46cycDp1) 2.0)			(decrease (available_p57) 2.0)			(increase (available_p57cdk46cycDp1) 4.0)
))
(:action associate__p27p1__cdk46p2cycDp1__p27p1cdk46p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p2cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p2cycDp1) 2.0)			(decrease (available_p27p1) 2.0)			(increase (available_p27p1cdk46p2cycDp1) 1.0)
))
(:action associate__p27__cdk46cycD__p27cdk46cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46cycD) 3.0)			(decrease (available_p27) 2.0)			(increase (available_p27cdk46cycD) 2.0)
))
(:action associate__p27__cdk46cycDp1__p27cdk46cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46cycDp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p27cdk46cycDp1) 1.0)			(decrease (available_cdk46cycDp1) 1.0)			(decrease (available_p27) 4.0)
))
(:action associate__p27p1__cdk46p2cycD__p27p1cdk46p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p2cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p2cycD) 3.0)			(decrease (available_p27p1) 2.0)			(increase (available_p27p1cdk46p2cycD) 1.0)
))
(:action associate__p57__cdk46p2cycD__p57cdk46p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p2cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p2cycD) 3.0)			(decrease (available_p57) 4.0)			(increase (available_p57cdk46p2cycD) 1.0)
))
(:action associate__p57__cdk46p2cycDp1__p57cdk46p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p2cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk46p2cycDp1) 2.0)			(decrease (available_p57) 3.0)			(decrease (available_cdk46p2cycDp1) 3.0)
))
(:action associate__p57p1__cdk46p2cycD__p57p1cdk46p2cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p2cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p2cycD) 2.0)			(decrease (available_p57p1) 1.0)			(increase (available_p57p1cdk46p2cycD) 3.0)
))
(:action associate__p57p1__cdk46p2cycDp1__p57p1cdk46p2cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p2cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p57p1cdk46p2cycDp1) 4.0)			(decrease (available_p57p1) 2.0)			(decrease (available_cdk46p2cycDp1) 3.0)
))
(:action associate__p57p1__cdk46cycD__p57p1cdk46cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p57p1) 4.0)			(increase (available_p57p1cdk46cycD) 3.0)			(decrease (available_cdk46cycD) 4.0)
))
(:action associate__p57p1__cdk46cycDp1__p57p1cdk46cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p57p1) 3.0)			(increase (available_p57p1cdk46cycDp1) 2.0)			(decrease (available_cdk46cycDp1) 4.0)
))


)