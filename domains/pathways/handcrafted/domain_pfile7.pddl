(define (domain PathwaysMetric)
(:predicates  (chosen_p53)
 (chosen_p16)
 (chosen_p130E2F5p1DP12)
 (chosen_p130E2F4p1DP12)
 (chosen_p130)
 (chosen_Myt1)
 (chosen_m1433)
 (chosen_Jun)
 (chosen_HDAC1)
 (chosen_HBP1)
 (chosen_gEc)
 (chosen_E2F6)
 (chosen_E2F5)
 (chosen_E2F4)
 (chosen_E2F3)
 (chosen_E2F2)
 (chosen_E2F13p1DP12p1)
 (chosen_E2F13p1DP12)
 (chosen_E2F13DP12p1)
 (chosen_E2F13DP12)
 (chosen_E2F1)
 (possible_Wee1)
 (possible_SL1)
 (chosen_DP12)
 (possible_Raf1)
 (possible_pRbp2)
 (chosen_cycH)
 (possible_pRbp1E2F4p1DP12)
 (possible_pRb)
 (chosen_cycB)
 (possible_Plk1)
 (possible_PCNA)
 (chosen_CTAK1)
 (possible_p53)
 (possible_p16)
 (chosen_cks1)
 (possible_p130E2F5p1DP12)
 (possible_p130E2F4p1DP12)
 (chosen_CEBP)
 (possible_p130)
 (possible_Myt1)
 (chosen_cdk7)
 (possible_m1433)
 (possible_Jun)
 (chosen_cdk46p3cycDp1)
 (possible_HDAC1)
 (possible_HBP1)
 (chosen_cdk46p3cycD)
 (possible_gEc)
 (possible_E2F6)
 (chosen_cdk46p1)
 (possible_E2F5)
 (possible_E2F4)
 (chosen_cdk2p2cycB)
 (possible_E2F3)
 (possible_E2F2)
 (chosen_cdk2p1)
 (possible_E2F13p1DP12p1)
 (possible_E2F13p1DP12)
 (chosen_cdk2cycB)
 (possible_E2F13DP12p1)
 (possible_E2F13DP12)
 (chosen_cdk2)
 (possible_E2F1)
 (possible_DP12)
 (chosen_cdk1p1p2)
 (possible_cycH)
 (possible_cycB)
 (chosen_cdc25C)
 (possible_CTAK1)
 (possible_cks1)
 (chosen_cAbl)
 (possible_CEBP)
 (possible_cdk7)
 (chosen_APC)
 (possible_cdk46p3cycDp1)
 (possible_cdk46p3cycD)
 (chosen_AP2)
 (possible_cdk46p1)
 (possible_cdk2p2cycB)
 (chosen_Wee1)
 (possible_cdk2p1)
 (possible_cdk2cycB)
 (chosen_SL1)
 (possible_cdk2)
 (possible_cdk1p1p2)
 (chosen_Raf1)
 (possible_cdc25C)
 (possible_cAbl)
 (chosen_pRbp2)
 (possible_APC)
 (possible_AP2)
 (chosen_pRbp1E2F4p1DP12)
 (chosen_pRb)
 (chosen_Plk1)
 (chosen_PCNA)
)
(:functions   (numsubs)
  (available_Wee1)
  (available_SL1)
  (available_Raf1)
  (available_pRbp2)
  (available_pRbp1E2F4p1DP12)
  (available_pRb)
  (available_Plk1)
  (available_PCNA)
  (available_p53)
  (available_p16)
  (available_p130E2F5p1DP12)
  (available_p130E2F4p1DP12)
  (available_p130)
  (available_Myt1)
  (available_m1433)
  (available_Jun)
  (available_HDAC1)
  (available_HBP1)
  (available_gEc)
  (available_E2F6)
  (available_E2F5)
  (available_E2F4)
  (available_E2F3)
  (available_E2F2)
  (available_E2F13p1DP12p1)
  (available_E2F13p1DP12)
  (available_E2F13DP12p1)
  (available_E2F13DP12)
  (available_E2F1)
  (available_DP12)
  (available_cycH)
  (available_cycB)
  (available_CTAK1)
  (available_cks1)
  (available_CEBP)
  (available_cdk7)
  (available_cdk46p3cycDp1)
  (available_cdk46p3cycD)
  (available_cdk46p1)
  (available_cdk2p2cycB)
  (available_cdk2p1)
  (available_cdk2cycB)
  (available_cdk2)
  (available_cdk1p1p2)
  (available_cdc25C)
  (available_cAbl)
  (available_APC)
  (available_AP2)
  (available_AP2gEc)
  (available_cAblpRb)
  (available_cAblpRbp1)
  (available_cAblpRbp1p2)
  (available_cAblpRbp2)
  (available_cdk1cks1)
  (available_cdk1Gadd45)
  (available_cdk1p1cks1)
  (available_cdk1p1Gadd45)
  (available_cdk1p1)
  (available_cdk1p1p2cks1)
  (available_cdk1p1p2Gadd45)
  (available_cdk1p1p2p3cks1)
  (available_cdk1p1p2p3Gadd45)
  (available_cdk1p1p2p3)
  (available_cdk1p1p3cks1)
  (available_cdk1p1p3Gadd45)
  (available_cdk1p1p3)
  (available_cdk1)
  (available_cdk1p2cks1)
  (available_cdk1p2Gadd45)
  (available_cdk1p2)
  (available_cdk1p2p3cks1)
  (available_cdc25Cp1)
  (available_cdk1p1p2p3cycB)
  (available_cdk1p2p3Gadd45)
  (available_cdk1p2p3)
  (available_cdk1p3cks1)
  (available_cdk1p1p3cycB)
  (available_cdk1p2p3cycB)
  (available_cdk1p3Gadd45)
  (available_cdk1p3)
  (available_cdk2cks1)
  (available_cdk2p1cycB)
  (available_cdk2p1cks1)
  (available_cdk2p1p2cks1)
  (available_cdk2p1p2)
  (available_cdk2p2cks1)
  (available_cdk2p1p2cycB)
  (available_cdk2p2)
  (available_cdk7cycH)
  (available_cdk7p1cycH)
  (available_CEBPpRb)
  (available_CEBPpRbp1)
  (available_CEBPpRbp1p2)
  (available_CEBPpRbp2)
  (available_APCp1)
  (available_E2F1DP12)
  (available_E2F2DP12)
  (available_E2F3DP12)
  (available_E2F6DP12)
  (available_HBP1p130)
  (available_HDAC1p130E2F4DP12)
  (available_HDAC1p130E2F5DP12)
  (available_HDAC1pRbE2F13DP12)
  (available_HDAC1pRbE2F13DP12p1)
  (available_HDAC1pRbE2F13p1DP12)
  (available_HDAC1pRbE2F13p1DP12p1)
  (available_HDAC1pRbE2F4DP12)
  (available_JuncFos)
  (available_m1433cdc25Cp1p2)
  (available_cdc25Cp1p2)
  (available_m1433cdc25Cp2)
  (available_cdc25Cp2)
  (available_Mdm2E2F13DP12)
  (available_Mdm2E2F13DP12p1)
  (available_Mdm2E2F13p1DP12)
  (available_Mdm2E2F13p1DP12p1)
  (available_Mdm2pRb)
  (available_Mdm2pRbp1)
  (available_Mdm2pRbp1p2)
  (available_Mdm2pRbp2)
  (available_E2F5DP12)
  (available_p16cdk46p1)
  (available_p16cdk46p1p2)
  (available_cdk46p1p2)
  (available_p16cdk7)
  (available_p16cdk7p1)
  (available_cdk7p1)
  (available_p21Gadd45)
  (available_p53DP12)
  (available_Mdm2)
  (available_PCNAGadd45)
  (available_Gadd45)
  (available_PCNAp21)
  (available_p21)
  (available_pRbAP2gEc)
  (available_pRbAP2)
  (available_pRbJuncFos)
  (available_pRbJun)
  (available_pRbp1AP2gEc)
  (available_pRbp1AP2)
  (available_E2F4DP12)
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
  (available_Raf1p130E2F4DP12)
  (available_p130E2F4DP12)
  (available_Raf1p130E2F4p1DP12)
  (available_Raf1p130E2F5DP12)
  (available_p130E2F5DP12)
  (available_Raf1p130E2F5p1DP12)
  (available_Raf1pRbE2F13DP12p1)
  (available_pRbE2F13DP12p1)
  (available_Raf1pRbE2F13DP12)
  (available_pRbE2F13DP12)
  (available_Raf1pRbE2F13p1DP12p1)
  (available_pRbE2F13p1DP12p1)
  (available_Raf1pRbE2F13p1DP12)
  (available_pRbE2F13p1DP12)
  (available_Raf1pRbE2F4DP12)
  (available_pRbE2F4DP12)
  (available_Raf1pRbp1E2F13DP12p1)
  (available_pRbp1E2F13DP12p1)
  (available_Raf1pRbp1E2F13DP12)
  (available_pRbp1E2F13DP12)
  (available_Raf1pRbp1E2F13p1DP12p1)
  (available_pRbp1E2F13p1DP12p1)
  (available_Raf1pRbp1E2F13p1DP12)
  (available_pRbp1E2F13p1DP12)
  (available_Raf1pRbp1E2F4DP12)
  (available_pRbp1E2F4DP12)
  (available_Raf1pRbp1E2F4p1DP12)
  (available_SL1p1)
  (available_Wee1p1)
  (available_cdk1p3cycB)
  (needforassociation_AP2_gEc_AP2gEc)
  (needforassociation_gEc_AP2_AP2gEc)
  (prodbyassociation_AP2_gEc_AP2gEc)
  (needforsynthesis_AP2gEc_Ecadherin)
  (prodbysynthesis_AP2gEc_Ecadherin)
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
  (needforcatalyzedassociation_cdc25C_cdk1p3cycB_cdc25Cp1)
  (needforcatalyzedassociation_cdk1p3cycB_cdc25C_cdc25Cp1)
  (prodbycatalyzedassociation_cdc25C_cdk1p3cycB_cdc25Cp1)
  (needforcatalyzedassociation_cdc25C_CTAK1_cdc25Cp2)
  (needforcatalyzedassociation_CTAK1_cdc25C_cdc25Cp2)
  (prodbycatalyzedassociation_cdc25C_CTAK1_cdc25Cp2)
  (needforcatalyzedassociation_cdc25Cp1_CTAK1_cdc25Cp1p2)
  (needforcatalyzedassociation_CTAK1_cdc25Cp1_cdc25Cp1p2)
  (prodbycatalyzedassociation_cdc25Cp1_CTAK1_cdc25Cp1p2)
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
  (needforassociation_cdk1_Gadd45_cdk1Gadd45)
  (needforassociation_Gadd45_cdk1_cdk1Gadd45)
  (prodbyassociation_cdk1_Gadd45_cdk1Gadd45)
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
  (needforassociation_cdk1p1_Gadd45_cdk1p1Gadd45)
  (needforassociation_Gadd45_cdk1p1_cdk1p1Gadd45)
  (prodbyassociation_cdk1p1_Gadd45_cdk1p1Gadd45)
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
  (needforassociation_cdk1p1p2_Gadd45_cdk1p1p2Gadd45)
  (needforassociation_Gadd45_cdk1p1p2_cdk1p1p2Gadd45)
  (prodbyassociation_cdk1p1p2_Gadd45_cdk1p1p2Gadd45)
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
  (needforassociation_cdk1p1p2p3_Gadd45_cdk1p1p2p3Gadd45)
  (needforassociation_Gadd45_cdk1p1p2p3_cdk1p1p2p3Gadd45)
  (prodbyassociation_cdk1p1p2p3_Gadd45_cdk1p1p2p3Gadd45)
  (needforcatalyzedassociation_cdk1p1p3_cdc25Cp1_cdk1p3)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p1p3_cdk1p3)
  (prodbycatalyzedassociation_cdk1p1p3_cdc25Cp1_cdk1p3)
  (needforcatalyzedassociation_cdk1p1p3_cdc25Cp1p2_cdk1p3)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p1p3_cdk1p3)
  (prodbycatalyzedassociation_cdk1p1p3_cdc25Cp1p2_cdk1p3)
  (needforassociation_cdk1p1p3_cks1_cdk1p1p3cks1)
  (needforassociation_cks1_cdk1p1p3_cdk1p1p3cks1)
  (prodbyassociation_cdk1p1p3_cks1_cdk1p1p3cks1)
  (needforcatalyzedassociation_cdk1p1p3cycB_cdc25Cp1_cdk1p3cycB)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p1p3cycB_cdk1p3cycB)
  (prodbycatalyzedassociation_cdk1p1p3cycB_cdc25Cp1_cdk1p3cycB)
  (needforcatalyzedassociation_cdk1p1p3cycB_cdc25Cp1p2_cdk1p3cycB)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p1p3cycB_cdk1p3cycB)
  (prodbycatalyzedassociation_cdk1p1p3cycB_cdc25Cp1p2_cdk1p3cycB)
  (needforassociation_cdk1p1p3_cycB_cdk1p1p3cycB)
  (needforassociation_cycB_cdk1p1p3_cdk1p1p3cycB)
  (prodbyassociation_cdk1p1p3_cycB_cdk1p1p3cycB)
  (needforcatalyzedassociation_cdk1p1p3cycB_Wee1_cdk1p1p2p3cycB)
  (needforcatalyzedassociation_Wee1_cdk1p1p3cycB_cdk1p1p2p3cycB)
  (prodbycatalyzedassociation_cdk1p1p3cycB_Wee1_cdk1p1p2p3cycB)
  (needforassociation_cdk1p1p3_Gadd45_cdk1p1p3Gadd45)
  (needforassociation_Gadd45_cdk1p1p3_cdk1p1p3Gadd45)
  (prodbyassociation_cdk1p1p3_Gadd45_cdk1p1p3Gadd45)
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
  (needforassociation_cdk1p2_Gadd45_cdk1p2Gadd45)
  (needforassociation_Gadd45_cdk1p2_cdk1p2Gadd45)
  (prodbyassociation_cdk1p2_Gadd45_cdk1p2Gadd45)
  (needforcatalyzedassociation_cdk1p2p3_cdc25Cp1_cdk1p3)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p2p3_cdk1p3)
  (prodbycatalyzedassociation_cdk1p2p3_cdc25Cp1_cdk1p3)
  (needforcatalyzedassociation_cdk1p2p3_cdc25Cp1p2_cdk1p3)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p2p3_cdk1p3)
  (prodbycatalyzedassociation_cdk1p2p3_cdc25Cp1p2_cdk1p3)
  (needforassociation_cdk1p2p3_cks1_cdk1p2p3cks1)
  (needforassociation_cks1_cdk1p2p3_cdk1p2p3cks1)
  (prodbyassociation_cdk1p2p3_cks1_cdk1p2p3cks1)
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
  (needforassociation_cdk1p2p3_Gadd45_cdk1p2p3Gadd45)
  (needforassociation_Gadd45_cdk1p2p3_cdk1p2p3Gadd45)
  (prodbyassociation_cdk1p2p3_Gadd45_cdk1p2p3Gadd45)
  (needforassociation_cdk1p3_cks1_cdk1p3cks1)
  (needforassociation_cks1_cdk1p3_cdk1p3cks1)
  (prodbyassociation_cdk1p3_cks1_cdk1p3cks1)
  (needforassociation_cdk1p3_cycB_cdk1p3cycB)
  (needforassociation_cycB_cdk1p3_cdk1p3cycB)
  (prodbyassociation_cdk1p3_cycB_cdk1p3cycB)
  (needforcatalyzedassociation_cdk1p3cycB_Myt1_cdk1p1p3cycB)
  (needforcatalyzedassociation_Myt1_cdk1p3cycB_cdk1p1p3cycB)
  (prodbycatalyzedassociation_cdk1p3cycB_Myt1_cdk1p1p3cycB)
  (needforcatalyzedassociation_cdk1p3cycB_Wee1_cdk1p2p3cycB)
  (needforcatalyzedassociation_Wee1_cdk1p3cycB_cdk1p2p3cycB)
  (prodbycatalyzedassociation_cdk1p3cycB_Wee1_cdk1p2p3cycB)
  (needforassociation_cdk1p3_Gadd45_cdk1p3Gadd45)
  (needforassociation_Gadd45_cdk1p3_cdk1p3Gadd45)
  (prodbyassociation_cdk1p3_Gadd45_cdk1p3Gadd45)
  (needforcatalyzedassociation_cdk2_cdk7cycH_cdk2p2)
  (needforcatalyzedassociation_cdk7cycH_cdk2_cdk2p2)
  (prodbycatalyzedassociation_cdk2_cdk7cycH_cdk2p2)
  (needforassociation_cdk2_cks1_cdk2cks1)
  (needforassociation_cks1_cdk2_cdk2cks1)
  (prodbyassociation_cdk2_cks1_cdk2cks1)
  (needforcatalyzedassociation_cdk2cycB_Wee1_cdk2p1cycB)
  (needforcatalyzedassociation_Wee1_cdk2cycB_cdk2p1cycB)
  (prodbycatalyzedassociation_cdk2cycB_Wee1_cdk2p1cycB)
  (needforcatalyzedassociation_cdk2p1_cdk7cycH_cdk2p1p2)
  (needforcatalyzedassociation_cdk7cycH_cdk2p1_cdk2p1p2)
  (prodbycatalyzedassociation_cdk2p1_cdk7cycH_cdk2p1p2)
  (needforassociation_cdk2p1_cks1_cdk2p1cks1)
  (needforassociation_cks1_cdk2p1_cdk2p1cks1)
  (prodbyassociation_cdk2p1_cks1_cdk2p1cks1)
  (needforassociation_cdk2p1p2_cks1_cdk2p1p2cks1)
  (needforassociation_cks1_cdk2p1p2_cdk2p1p2cks1)
  (prodbyassociation_cdk2p1p2_cks1_cdk2p1p2cks1)
  (needforassociation_cdk2p2_cks1_cdk2p2cks1)
  (needforassociation_cks1_cdk2p2_cdk2p2cks1)
  (prodbyassociation_cdk2p2_cks1_cdk2p2cks1)
  (needforcatalyzedassociation_cdk2p2cycB_Wee1_cdk2p1p2cycB)
  (needforcatalyzedassociation_Wee1_cdk2p2cycB_cdk2p1p2cycB)
  (prodbycatalyzedassociation_cdk2p2cycB_Wee1_cdk2p1p2cycB)
  (needforcatalyzedassociation_cdk46p1_cdk7cycH_cdk46p1p2)
  (needforcatalyzedassociation_cdk7cycH_cdk46p1_cdk46p1p2)
  (prodbycatalyzedassociation_cdk46p1_cdk7cycH_cdk46p1p2)
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
  (needforcatalyzedassociation_cycB_APCp1_APCp1)
  (needforcatalyzedassociation_APCp1_cycB_APCp1)
  (prodbycatalyzedassociation_cycB_APCp1_APCp1)
  (needforassociation_E2F1_DP12_E2F1DP12)
  (needforassociation_DP12_E2F1_E2F1DP12)
  (prodbyassociation_E2F1_DP12_E2F1DP12)
  (needforassociation_E2F2_DP12_E2F2DP12)
  (needforassociation_DP12_E2F2_E2F2DP12)
  (prodbyassociation_E2F2_DP12_E2F2DP12)
  (needforassociation_E2F3_DP12_E2F3DP12)
  (needforassociation_DP12_E2F3_E2F3DP12)
  (prodbyassociation_E2F3_DP12_E2F3DP12)
  (needforassociation_E2F4_DP12_E2F4DP12)
  (needforassociation_DP12_E2F4_E2F4DP12)
  (prodbyassociation_E2F4_DP12_E2F4DP12)
  (needforassociation_E2F5_DP12_E2F5DP12)
  (needforassociation_DP12_E2F5_E2F5DP12)
  (prodbyassociation_E2F5_DP12_E2F5DP12)
  (needforassociation_E2F6_DP12_E2F6DP12)
  (needforassociation_DP12_E2F6_E2F6DP12)
  (prodbyassociation_E2F6_DP12_E2F6DP12)
  (needforassociation_HBP1_p130_HBP1p130)
  (needforassociation_p130_HBP1_HBP1p130)
  (prodbyassociation_HBP1_p130_HBP1p130)
  (needforassociation_HDAC1_p130E2F4DP12_HDAC1p130E2F4DP12)
  (needforassociation_p130E2F4DP12_HDAC1_HDAC1p130E2F4DP12)
  (prodbyassociation_HDAC1_p130E2F4DP12_HDAC1p130E2F4DP12)
  (needforassociation_HDAC1_p130E2F5DP12_HDAC1p130E2F5DP12)
  (needforassociation_p130E2F5DP12_HDAC1_HDAC1p130E2F5DP12)
  (prodbyassociation_HDAC1_p130E2F5DP12_HDAC1p130E2F5DP12)
  (needforassociation_HDAC1_pRbE2F13DP12_HDAC1pRbE2F13DP12)
  (needforassociation_pRbE2F13DP12_HDAC1_HDAC1pRbE2F13DP12)
  (prodbyassociation_HDAC1_pRbE2F13DP12_HDAC1pRbE2F13DP12)
  (needforassociation_HDAC1_pRbE2F13DP12p1_HDAC1pRbE2F13DP12p1)
  (needforassociation_pRbE2F13DP12p1_HDAC1_HDAC1pRbE2F13DP12p1)
  (prodbyassociation_HDAC1_pRbE2F13DP12p1_HDAC1pRbE2F13DP12p1)
  (needforassociation_HDAC1_pRbE2F13p1DP12_HDAC1pRbE2F13p1DP12)
  (needforassociation_pRbE2F13p1DP12_HDAC1_HDAC1pRbE2F13p1DP12)
  (prodbyassociation_HDAC1_pRbE2F13p1DP12_HDAC1pRbE2F13p1DP12)
  (needforassociation_HDAC1_pRbE2F13p1DP12p1_HDAC1pRbE2F13p1DP12p1)
  (needforassociation_pRbE2F13p1DP12p1_HDAC1_HDAC1pRbE2F13p1DP12p1)
  (prodbyassociation_HDAC1_pRbE2F13p1DP12p1_HDAC1pRbE2F13p1DP12p1)
  (needforassociation_HDAC1_pRbE2F4DP12_HDAC1pRbE2F4DP12)
  (needforassociation_pRbE2F4DP12_HDAC1_HDAC1pRbE2F4DP12)
  (prodbyassociation_HDAC1_pRbE2F4DP12_HDAC1pRbE2F4DP12)
  (needforassociation_Jun_cFos_JuncFos)
  (needforassociation_cFos_Jun_JuncFos)
  (prodbyassociation_Jun_cFos_JuncFos)
  (needforassociation_m1433_cdc25Cp1p2_m1433cdc25Cp1p2)
  (needforassociation_cdc25Cp1p2_m1433_m1433cdc25Cp1p2)
  (prodbyassociation_m1433_cdc25Cp1p2_m1433cdc25Cp1p2)
  (needforassociation_m1433_cdc25Cp2_m1433cdc25Cp2)
  (needforassociation_cdc25Cp2_m1433_m1433cdc25Cp2)
  (prodbyassociation_m1433_cdc25Cp2_m1433cdc25Cp2)
  (needforassociation_Mdm2_E2F13DP12_Mdm2E2F13DP12)
  (needforassociation_E2F13DP12_Mdm2_Mdm2E2F13DP12)
  (prodbyassociation_Mdm2_E2F13DP12_Mdm2E2F13DP12)
  (needforassociation_Mdm2_E2F13DP12p1_Mdm2E2F13DP12p1)
  (needforassociation_E2F13DP12p1_Mdm2_Mdm2E2F13DP12p1)
  (prodbyassociation_Mdm2_E2F13DP12p1_Mdm2E2F13DP12p1)
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
  (needforassociation_p130_E2F4DP12_p130E2F4DP12)
  (needforassociation_E2F4DP12_p130_p130E2F4DP12)
  (prodbyassociation_p130_E2F4DP12_p130E2F4DP12)
  (needforassociation_p130_E2F5DP12_p130E2F5DP12)
  (needforassociation_E2F5DP12_p130_p130E2F5DP12)
  (prodbyassociation_p130_E2F5DP12_p130E2F5DP12)
  (needforassociation_p16_cdk46p1_p16cdk46p1)
  (needforassociation_cdk46p1_p16_p16cdk46p1)
  (prodbyassociation_p16_cdk46p1_p16cdk46p1)
  (needforassociation_p16_cdk46p1p2_p16cdk46p1p2)
  (needforassociation_cdk46p1p2_p16_p16cdk46p1p2)
  (prodbyassociation_p16_cdk46p1p2_p16cdk46p1p2)
  (needforassociation_p16_cdk7_p16cdk7)
  (needforassociation_cdk7_p16_p16cdk7)
  (prodbyassociation_p16_cdk7_p16cdk7)
  (needforassociation_p16_cdk7p1_p16cdk7p1)
  (needforassociation_cdk7p1_p16_p16cdk7p1)
  (prodbyassociation_p16_cdk7p1_p16cdk7p1)
  (needforassociation_p21_Gadd45_p21Gadd45)
  (needforassociation_Gadd45_p21_p21Gadd45)
  (prodbyassociation_p21_Gadd45_p21Gadd45)
  (needforsynthesis_p53_cFos)
  (prodbysynthesis_p53_cFos)
  (needforassociation_p53_DP12_p53DP12)
  (needforassociation_DP12_p53_p53DP12)
  (prodbyassociation_p53_DP12_p53DP12)
  (needforsynthesis_p53_Gadd45)
  (prodbysynthesis_p53_Gadd45)
  (needforsynthesis_p53_Mdm2)
  (prodbysynthesis_p53_Mdm2)
  (needforsynthesis_p53_p21)
  (prodbysynthesis_p53_p21)
  (needforassociation_PCNA_Gadd45_PCNAGadd45)
  (needforassociation_Gadd45_PCNA_PCNAGadd45)
  (prodbyassociation_PCNA_Gadd45_PCNAGadd45)
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
  (needforassociation_pRb_E2F13DP12p1_pRbE2F13DP12p1)
  (needforassociation_E2F13DP12p1_pRb_pRbE2F13DP12p1)
  (prodbyassociation_pRb_E2F13DP12p1_pRbE2F13DP12p1)
  (needforassociation_pRb_E2F13DP12_pRbE2F13DP12)
  (needforassociation_E2F13DP12_pRb_pRbE2F13DP12)
  (prodbyassociation_pRb_E2F13DP12_pRbE2F13DP12)
  (needforassociation_pRb_E2F13p1DP12p1_pRbE2F13p1DP12p1)
  (needforassociation_E2F13p1DP12p1_pRb_pRbE2F13p1DP12p1)
  (prodbyassociation_pRb_E2F13p1DP12p1_pRbE2F13p1DP12p1)
  (needforassociation_pRb_E2F13p1DP12_pRbE2F13p1DP12)
  (needforassociation_E2F13p1DP12_pRb_pRbE2F13p1DP12)
  (prodbyassociation_pRb_E2F13p1DP12_pRbE2F13p1DP12)
  (needforassociation_pRb_E2F4DP12_pRbE2F4DP12)
  (needforassociation_E2F4DP12_pRb_pRbE2F4DP12)
  (prodbyassociation_pRb_E2F4DP12_pRbE2F4DP12)
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
  (needforassociation_pRbp1_E2F13DP12p1_pRbp1E2F13DP12p1)
  (needforassociation_E2F13DP12p1_pRbp1_pRbp1E2F13DP12p1)
  (prodbyassociation_pRbp1_E2F13DP12p1_pRbp1E2F13DP12p1)
  (needforassociation_pRbp1_E2F13DP12_pRbp1E2F13DP12)
  (needforassociation_E2F13DP12_pRbp1_pRbp1E2F13DP12)
  (prodbyassociation_pRbp1_E2F13DP12_pRbp1E2F13DP12)
  (needforassociation_pRbp1_E2F13p1DP12p1_pRbp1E2F13p1DP12p1)
  (needforassociation_E2F13p1DP12p1_pRbp1_pRbp1E2F13p1DP12p1)
  (prodbyassociation_pRbp1_E2F13p1DP12p1_pRbp1E2F13p1DP12p1)
  (needforassociation_pRbp1_E2F13p1DP12_pRbp1E2F13p1DP12)
  (needforassociation_E2F13p1DP12_pRbp1_pRbp1E2F13p1DP12)
  (prodbyassociation_pRbp1_E2F13p1DP12_pRbp1E2F13p1DP12)
  (needforassociation_pRbp1_E2F4DP12_pRbp1E2F4DP12)
  (needforassociation_E2F4DP12_pRbp1_pRbp1E2F4DP12)
  (prodbyassociation_pRbp1_E2F4DP12_pRbp1E2F4DP12)
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
  (needforassociation_Raf1_p130E2F4DP12_Raf1p130E2F4DP12)
  (needforassociation_p130E2F4DP12_Raf1_Raf1p130E2F4DP12)
  (prodbyassociation_Raf1_p130E2F4DP12_Raf1p130E2F4DP12)
  (needforassociation_Raf1_p130E2F4p1DP12_Raf1p130E2F4p1DP12)
  (needforassociation_p130E2F4p1DP12_Raf1_Raf1p130E2F4p1DP12)
  (prodbyassociation_Raf1_p130E2F4p1DP12_Raf1p130E2F4p1DP12)
  (needforassociation_Raf1_p130E2F5DP12_Raf1p130E2F5DP12)
  (needforassociation_p130E2F5DP12_Raf1_Raf1p130E2F5DP12)
  (prodbyassociation_Raf1_p130E2F5DP12_Raf1p130E2F5DP12)
  (needforassociation_Raf1_p130E2F5p1DP12_Raf1p130E2F5p1DP12)
  (needforassociation_p130E2F5p1DP12_Raf1_Raf1p130E2F5p1DP12)
  (prodbyassociation_Raf1_p130E2F5p1DP12_Raf1p130E2F5p1DP12)
  (needforassociation_Raf1_pRbE2F13DP12p1_Raf1pRbE2F13DP12p1)
  (needforassociation_pRbE2F13DP12p1_Raf1_Raf1pRbE2F13DP12p1)
  (prodbyassociation_Raf1_pRbE2F13DP12p1_Raf1pRbE2F13DP12p1)
  (needforassociation_Raf1_pRbE2F13DP12_Raf1pRbE2F13DP12)
  (needforassociation_pRbE2F13DP12_Raf1_Raf1pRbE2F13DP12)
  (prodbyassociation_Raf1_pRbE2F13DP12_Raf1pRbE2F13DP12)
  (needforassociation_Raf1_pRbE2F13p1DP12p1_Raf1pRbE2F13p1DP12p1)
  (needforassociation_pRbE2F13p1DP12p1_Raf1_Raf1pRbE2F13p1DP12p1)
  (prodbyassociation_Raf1_pRbE2F13p1DP12p1_Raf1pRbE2F13p1DP12p1)
  (needforassociation_Raf1_pRbE2F13p1DP12_Raf1pRbE2F13p1DP12)
  (needforassociation_pRbE2F13p1DP12_Raf1_Raf1pRbE2F13p1DP12)
  (prodbyassociation_Raf1_pRbE2F13p1DP12_Raf1pRbE2F13p1DP12)
  (needforassociation_Raf1_pRbE2F4DP12_Raf1pRbE2F4DP12)
  (needforassociation_pRbE2F4DP12_Raf1_Raf1pRbE2F4DP12)
  (prodbyassociation_Raf1_pRbE2F4DP12_Raf1pRbE2F4DP12)
  (needforassociation_Raf1_pRbp1E2F13DP12p1_Raf1pRbp1E2F13DP12p1)
  (needforassociation_pRbp1E2F13DP12p1_Raf1_Raf1pRbp1E2F13DP12p1)
  (prodbyassociation_Raf1_pRbp1E2F13DP12p1_Raf1pRbp1E2F13DP12p1)
  (needforassociation_Raf1_pRbp1E2F13DP12_Raf1pRbp1E2F13DP12)
  (needforassociation_pRbp1E2F13DP12_Raf1_Raf1pRbp1E2F13DP12)
  (prodbyassociation_Raf1_pRbp1E2F13DP12_Raf1pRbp1E2F13DP12)
  (needforassociation_Raf1_pRbp1E2F13p1DP12p1_Raf1pRbp1E2F13p1DP12p1)
  (needforassociation_pRbp1E2F13p1DP12p1_Raf1_Raf1pRbp1E2F13p1DP12p1)
  (prodbyassociation_Raf1_pRbp1E2F13p1DP12p1_Raf1pRbp1E2F13p1DP12p1)
  (needforassociation_Raf1_pRbp1E2F13p1DP12_Raf1pRbp1E2F13p1DP12)
  (needforassociation_pRbp1E2F13p1DP12_Raf1_Raf1pRbp1E2F13p1DP12)
  (prodbyassociation_Raf1_pRbp1E2F13p1DP12_Raf1pRbp1E2F13p1DP12)
  (needforassociation_Raf1_pRbp1E2F4DP12_Raf1pRbp1E2F4DP12)
  (needforassociation_pRbp1E2F4DP12_Raf1_Raf1pRbp1E2F4DP12)
  (prodbyassociation_Raf1_pRbp1E2F4DP12_Raf1pRbp1E2F4DP12)
  (needforassociation_Raf1_pRbp1E2F4p1DP12_Raf1pRbp1E2F4p1DP12)
  (needforassociation_pRbp1E2F4p1DP12_Raf1_Raf1pRbp1E2F4p1DP12)
  (prodbyassociation_Raf1_pRbp1E2F4p1DP12_Raf1pRbp1E2F4p1DP12)
  (needforcatalyzedassociation_SL1_cdk1p3cycB_SL1p1)
  (needforcatalyzedassociation_cdk1p3cycB_SL1_SL1p1)
  (prodbycatalyzedassociation_SL1_cdk1p3cycB_SL1p1)
  (needforcatalyzedassociation_Wee1_cdk1p3cycB_Wee1p1)
  (needforcatalyzedassociation_cdk1p3cycB_Wee1_Wee1p1)
  (prodbycatalyzedassociation_Wee1_cdk1p3cycB_Wee1p1)
)
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
(:action choose__DP12
	:parameters ()
	:precondition (and  (possible_DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_DP12)			(not (possible_DP12))
))
(:action choose__E2F1
	:parameters ()
	:precondition (and  (possible_E2F1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F1)			(not (possible_E2F1))
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
(:action choose__E2F13p1DP12
	:parameters ()
	:precondition (and  (possible_E2F13p1DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F13p1DP12)			(not (possible_E2F13p1DP12))
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
(:action choose__gEc
	:parameters ()
	:precondition (and  (possible_gEc))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_gEc)			(not (possible_gEc))
))
(:action choose__HBP1
	:parameters ()
	:precondition (and  (possible_HBP1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_HBP1)			(not (possible_HBP1))
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
(:action choose__cdk2cycB
	:parameters ()
	:precondition (and  (possible_cdk2cycB))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cdk2cycB)			(not (possible_cdk2cycB))
))
(:action choose__cdk2p1
	:parameters ()
	:precondition (and  (possible_cdk2p1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cdk2p1)			(not (possible_cdk2p1))
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
(:action choose__cks1
	:parameters ()
	:precondition (and  (possible_cks1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cks1)			(not (possible_cks1))
))
(:action choose__Wee1
	:parameters ()
	:precondition (and  (possible_Wee1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_Wee1)			(not (possible_Wee1))
))
(:action choose__HDAC1
	:parameters ()
	:precondition (and  (possible_HDAC1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_HDAC1)			(not (possible_HDAC1))
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
(:action choose__p53
	:parameters ()
	:precondition (and  (possible_p53))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p53)			(not (possible_p53))
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
(:action choose__SL1
	:parameters ()
	:precondition (and  (possible_SL1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_SL1)			(not (possible_SL1))
))
(:action initialize__Wee1
	:parameters ()
	:precondition (and  (chosen_Wee1))
	:effect (and 
			(increase (available_Wee1) 1.0)
))
(:action initialize__SL1
	:parameters ()
	:precondition (and  (chosen_SL1))
	:effect (and 
			(increase (available_SL1) 1.0)
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
(:action initialize__p53
	:parameters ()
	:precondition (and  (chosen_p53))
	:effect (and 
			(increase (available_p53) 1.0)
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
(:action initialize__gEc
	:parameters ()
	:precondition (and  (chosen_gEc))
	:effect (and 
			(increase (available_gEc) 1.0)
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
(:action initialize__cdk2p1
	:parameters ()
	:precondition (and  (chosen_cdk2p1))
	:effect (and 
			(increase (available_cdk2p1) 1.0)
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
(:action associatewithcatalyze__cdc25C__CTAK1__cdc25Cp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25C) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_CTAK1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25Cp2) 3.0)			(decrease (available_cdc25C) 3.0)
))
(:action associate__E2F6__DP12__E2F6DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F6) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F6) 4.0)			(decrease (available_DP12) 1.0)			(increase (available_E2F6DP12) 1.0)
))
(:action associate__pRb__Jun__pRbJun
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Jun) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRb) 3.0)			(increase (available_pRbJun) 2.0)			(decrease (available_Jun) 2.0)
))
(:action associate__E2F5__DP12__E2F5DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_E2F5DP12) 2.0)			(decrease (available_E2F5) 4.0)			(decrease (available_DP12) 3.0)
))
(:action associate__cAbl__pRbp2__cAblpRbp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cAbl) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbp2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp2) 4.0)			(increase (available_cAblpRbp2) 2.0)			(decrease (available_cAbl) 3.0)
))
(:action associate__pRbp2__AP2__pRbp2AP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp2) 1.0)			(increase (available_pRbp2AP2) 3.0)			(decrease (available_AP2) 3.0)
))
(:action associatewithcatalyze__pRb__cdk46p3cycDp1__pRbp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1) 2.0)			(decrease (available_pRb) 1.0)
))
(:action associate__Raf1__p130E2F4p1DP12__Raf1p130E2F4p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_p130E2F4p1DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1p130E2F4p1DP12) 1.0)			(decrease (available_p130E2F4p1DP12) 1.0)			(decrease (available_Raf1) 1.0)
))
(:action associate__cdk7__cycH__cdk7cycH
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk7) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycH) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk7cycH) 2.0)			(decrease (available_cdk7) 3.0)			(decrease (available_cycH) 2.0)
))
(:action associatewithcatalyze__APC__Plk1__APCp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_APC) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Plk1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_APCp1) 3.0)			(decrease (available_APC) 1.0)
))
(:action associatewithcatalyze__pRb__cdk46p3cycD__pRbp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRb) 3.0)			(increase (available_pRbp1) 2.0)
))
(:action associate__Raf1__p130E2F5p1DP12__Raf1p130E2F5p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_p130E2F5p1DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1p130E2F5p1DP12) 4.0)			(decrease (available_Raf1) 4.0)			(decrease (available_p130E2F5p1DP12) 3.0)
))
(:action associate__pRb__E2F13DP12__pRbE2F13DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F13DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pRbE2F13DP12) 2.0)			(decrease (available_pRb) 3.0)			(decrease (available_E2F13DP12) 2.0)
))
(:action associate__Raf1__pRbp1E2F4p1DP12__Raf1pRbp1E2F4p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbp1E2F4p1DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1E2F4p1DP12) 1.0)			(decrease (available_Raf1) 3.0)			(increase (available_Raf1pRbp1E2F4p1DP12) 1.0)
))
(:action associate__pRb__E2F13DP12p1__pRbE2F13DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_E2F13DP12p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13DP12p1) 2.0)			(decrease (available_pRb) 2.0)			(increase (available_pRbE2F13DP12p1) 1.0)
))
(:action associate__CEBP__pRb__CEBPpRb
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBP) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRb) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_CEBP) 3.0)			(increase (available_CEBPpRb) 4.0)			(decrease (available_pRb) 4.0)
))
(:action associate__E2F1__DP12__E2F1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F1) 3.0)			(decrease (available_DP12) 4.0)			(increase (available_E2F1DP12) 2.0)
))
(:action associate__pRb__AP2__pRbAP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pRbAP2) 3.0)			(decrease (available_AP2) 2.0)			(decrease (available_pRb) 1.0)
))
(:action associate__p16__cdk46p1__p16cdk46p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p16) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p16) 1.0)			(increase (available_p16cdk46p1) 2.0)			(decrease (available_cdk46p1) 3.0)
))
(:action associate__E2F4__DP12__E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_DP12) 4.0)			(increase (available_E2F4DP12) 2.0)			(decrease (available_E2F4) 4.0)
))
(:action associate__AP2__gEc__AP2gEc
	:parameters ()
	:precondition (and (>= (+ (*   (available_AP2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gEc) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_AP2gEc) 4.0)			(decrease (available_AP2) 2.0)			(decrease (available_gEc) 2.0)
))
(:action associate__E2F2__DP12__E2F2DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_E2F2DP12) 2.0)			(decrease (available_E2F2) 3.0)			(decrease (available_DP12) 3.0)
))
(:action associate__p16__cdk7__p16cdk7
	:parameters ()
	:precondition (and (>= (+ (*   (available_p16) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk7) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p16) 4.0)			(decrease (available_cdk7) 3.0)			(increase (available_p16cdk7) 4.0)
))
(:action synthesize__p53__p21
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p21) 1.0)
))
(:action synthesize__p53__Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Gadd45) 2.0)
))
(:action associatewithcatalyze__cdk2p2cycB__Wee1__cdk2p1p2cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p2cycB) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Wee1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1p2cycB) 3.0)			(decrease (available_cdk2p2cycB) 2.0)
))
(:action synthesize__p53__Mdm2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Mdm2) 1.0)
))
(:action synthesize__p53__cFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cFos) 1.0)
))
(:action associate__pRb__E2F13p1DP12__pRbE2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13p1DP12) 4.0)			(increase (available_pRbE2F13p1DP12) 3.0)			(decrease (available_pRb) 1.0)
))
(:action associate__E2F3__DP12__E2F3DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F3) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_E2F3DP12) 4.0)			(decrease (available_DP12) 1.0)			(decrease (available_E2F3) 3.0)
))
(:action associate__cdk2p1__cks1__cdk2p1cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 3.0)			(decrease (available_cdk2p1) 4.0)			(increase (available_cdk2p1cks1) 4.0)
))
(:action associate__CEBP__pRbp2__CEBPpRbp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBP) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbp2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp2) 1.0)			(increase (available_CEBPpRbp2) 1.0)			(decrease (available_CEBP) 4.0)
))
(:action associate__pRb__E2F13p1DP12p1__pRbE2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13p1DP12p1) 4.0)			(increase (available_pRbE2F13p1DP12p1) 2.0)			(decrease (available_pRb) 4.0)
))
(:action associate__pRbp2__Jun__pRbp2Jun
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Jun) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp2) 1.0)			(decrease (available_Jun) 4.0)			(increase (available_pRbp2Jun) 3.0)
))
(:action associate__cAbl__pRb__cAblpRb
	:parameters ()
	:precondition (and (>= (+ (*   (available_cAbl) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRb) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cAblpRb) 2.0)			(decrease (available_cAbl) 4.0)			(decrease (available_pRb) 2.0)
))
(:action associate__cdk1p1p2__cks1__cdk1p1p2cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2) 3.0)			(decrease (available_cks1) 2.0)			(increase (available_cdk1p1p2cks1) 3.0)
))
(:action associate__HBP1__p130__HBP1p130
	:parameters ()
	:precondition (and (>= (+ (*   (available_HBP1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_p130) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_HBP1p130) 3.0)			(decrease (available_HBP1) 3.0)			(decrease (available_p130) 1.0)
))
(:action associatewithcatalyze__pRbp2__cdk46p3cycDp1__pRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycDp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1p2) 4.0)			(decrease (available_pRbp2) 3.0)
))
(:action associate__p53__DP12__p53DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_DP12) 2.0)			(decrease (available_p53) 4.0)			(increase (available_p53DP12) 1.0)
))
(:action associatewithcatalyze__cdk2cycB__Wee1__cdk2p1cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2cycB) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Wee1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycB) 2.0)			(increase (available_cdk2p1cycB) 3.0)
))
(:action associatewithcatalyze__cdc25C__Plk1__cdc25Cp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25C) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Plk1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25Cp1) 4.0)			(decrease (available_cdc25C) 2.0)
))
(:action associate__cdk2__cks1__cdk2cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 3.0)			(decrease (available_cdk2) 2.0)			(increase (available_cdk2cks1) 2.0)
))
(:action associatewithcatalyze__pRbp2__cdk46p3cycD__pRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp2) 1.0)			(increase (available_pRbp1p2) 3.0)
))
(:action associate__Jun__cFos__JuncFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_Jun) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cFos) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_JuncFos) 1.0)			(decrease (available_cFos) 1.0)			(decrease (available_Jun) 4.0)
))
(:action associate__pRbp1__Jun__pRbp1Jun
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Jun) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1Jun) 2.0)			(decrease (available_Jun) 3.0)			(decrease (available_pRbp1) 2.0)
))
(:action associate__pRbp2Jun__cFos__pRbp2JuncFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2Jun) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cFos) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp2JuncFos) 4.0)			(decrease (available_cFos) 1.0)			(decrease (available_pRbp2Jun) 2.0)
))
(:action associate__pRbp1p2__Jun__pRbp1p2Jun
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1p2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Jun) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1p2Jun) 3.0)			(decrease (available_pRbp1p2) 1.0)			(decrease (available_Jun) 4.0)
))
(:action associate__pRbp1p2__AP2__pRbp1p2AP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1p2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1p2AP2) 3.0)			(decrease (available_pRbp1p2) 3.0)			(decrease (available_AP2) 1.0)
))
(:action associate__Mdm2__pRbp2__Mdm2pRbp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbp2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp2) 1.0)			(decrease (available_Mdm2) 3.0)			(increase (available_Mdm2pRbp2) 4.0)
))
(:action associate__cdk1p1p2__Gadd45__cdk1p1p2Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p2Gadd45) 2.0)			(decrease (available_Gadd45) 3.0)			(decrease (available_cdk1p1p2) 4.0)
))
(:action associate__pRbAP2__gEc__pRbAP2gEc
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbAP2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gEc) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbAP2) 2.0)			(increase (available_pRbAP2gEc) 4.0)			(decrease (available_gEc) 4.0)
))
(:action synthesize__AP2gEc__Ecadherin
	:parameters ()
	:precondition (and (>= (+ (*   (available_AP2gEc) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Ecadherin) 2.0)
))
(:action associatewithcatalyze__cdc25Cp2__Plk1__cdc25Cp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25Cp2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Plk1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25Cp1p2) 1.0)			(decrease (available_cdc25Cp2) 1.0)
))
(:action associate__cAbl__pRbp1p2__cAblpRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cAbl) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbp1p2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cAblpRbp1p2) 3.0)			(decrease (available_pRbp1p2) 1.0)			(decrease (available_cAbl) 4.0)
))
(:action associate__CEBP__pRbp1__CEBPpRbp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBP) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_CEBPpRbp1) 2.0)			(decrease (available_pRbp1) 3.0)			(decrease (available_CEBP) 4.0)
))
(:action associate__Mdm2__pRb__Mdm2pRb
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRb) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_Mdm2) 3.0)			(increase (available_Mdm2pRb) 2.0)			(decrease (available_pRb) 2.0)
))
(:action associate__pRbJun__cFos__pRbJuncFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbJun) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cFos) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pRbJuncFos) 2.0)			(decrease (available_cFos) 1.0)			(decrease (available_pRbJun) 3.0)
))
(:action associatewithcatalyze__cdk46p1__cdk7cycH__cdk46p1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk46p1p2) 4.0)			(decrease (available_cdk46p1) 2.0)
))
(:action associate__pRbp1__E2F13DP12__pRbp1E2F13DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F13DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13DP12) 3.0)			(decrease (available_pRbp1) 3.0)			(increase (available_pRbp1E2F13DP12) 3.0)
))
(:action associate__p130__E2F4DP12__p130E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F4DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p130) 3.0)			(increase (available_p130E2F4DP12) 3.0)			(decrease (available_E2F4DP12) 1.0)
))
(:action associate__pRbp1__E2F13DP12p1__pRbp1E2F13DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_E2F13DP12p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13DP12p1) 2.0)			(decrease (available_pRbp1) 2.0)			(increase (available_pRbp1E2F13DP12p1) 1.0)
))
(:action associate__PCNA__Gadd45__PCNAGadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_Gadd45) 4.0)			(decrease (available_PCNA) 1.0)			(increase (available_PCNAGadd45) 1.0)
))
(:action associate__HDAC1__pRbE2F13p1DP12p1__HDAC1pRbE2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbE2F13p1DP12p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbE2F13p1DP12p1) 2.0)			(decrease (available_HDAC1) 3.0)			(increase (available_HDAC1pRbE2F13p1DP12p1) 4.0)
))
(:action associate__Mdm2__pRbp1p2__Mdm2pRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbp1p2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1p2) 2.0)			(decrease (available_Mdm2) 1.0)			(increase (available_Mdm2pRbp1p2) 4.0)
))
(:action associate__pRbp1__AP2__pRbp1AP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1AP2) 4.0)			(decrease (available_AP2) 1.0)			(decrease (available_pRbp1) 1.0)
))
(:action associatewithcatalyze__cdk2p1__cdk7cycH__cdk2p1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1p2) 2.0)			(decrease (available_cdk2p1) 4.0)
))
(:action associate__PCNA__p21__PCNAp21
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_p21) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_PCNA) 1.0)			(increase (available_PCNAp21) 1.0)			(decrease (available_p21) 4.0)
))
(:action associate__HDAC1__pRbE2F13p1DP12__HDAC1pRbE2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRbE2F13p1DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1) 2.0)			(increase (available_HDAC1pRbE2F13p1DP12) 3.0)			(decrease (available_pRbE2F13p1DP12) 4.0)
))
(:action associate__Raf1__pRbE2F13p1DP12p1__Raf1pRbE2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbE2F13p1DP12p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbE2F13p1DP12p1) 4.0)			(increase (available_Raf1pRbE2F13p1DP12p1) 4.0)			(decrease (available_Raf1) 4.0)
))
(:action associate__CEBP__pRbp1p2__CEBPpRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_CEBP) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbp1p2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1p2) 2.0)			(increase (available_CEBPpRbp1p2) 4.0)			(decrease (available_CEBP) 4.0)
))
(:action associate__p130__E2F5DP12__p130E2F5DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F5DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F5DP12) 1.0)			(increase (available_p130E2F5DP12) 1.0)			(decrease (available_p130) 4.0)
))
(:action selfassociatewithcatalyze__cdk7cycH__cdk7p1cycH
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk7cycH) 1.0) -6.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk7cycH) 6.0)			(increase (available_cdk7p1cycH) 4.0)
))
(:action associate__HDAC1__pRbE2F13DP12p1__HDAC1pRbE2F13DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbE2F13DP12p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1) 4.0)			(increase (available_HDAC1pRbE2F13DP12p1) 1.0)			(decrease (available_pRbE2F13DP12p1) 2.0)
))
(:action associatewithcatalyze__cdk7__cdk7cycH__cdk7p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk7) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk7) 4.0)			(increase (available_cdk7p1) 1.0)
))
(:action associate__Raf1__pRbE2F13p1DP12__Raf1pRbE2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbE2F13p1DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbE2F13p1DP12) 1.0)			(decrease (available_Raf1) 3.0)			(decrease (available_pRbE2F13p1DP12) 4.0)
))
(:action associate__pRbp1__E2F13p1DP12__pRbp1E2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13p1DP12) 1.0)			(decrease (available_pRbp1) 3.0)			(increase (available_pRbp1E2F13p1DP12) 3.0)
))
(:action associate__m1433__cdc25Cp2__m1433cdc25Cp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_m1433) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_m1433cdc25Cp2) 2.0)			(decrease (available_m1433) 1.0)			(decrease (available_cdc25Cp2) 2.0)
))
(:action associate__cAbl__pRbp1__cAblpRbp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cAbl) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRbp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cAbl) 2.0)			(decrease (available_pRbp1) 2.0)			(increase (available_cAblpRbp1) 2.0)
))
(:action associate__pRbp1__E2F4DP12__pRbp1E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F4DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1) 3.0)			(decrease (available_E2F4DP12) 3.0)			(increase (available_pRbp1E2F4DP12) 2.0)
))
(:action associatewithcatalyze__cdk2__cdk7cycH__cdk2p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p2) 1.0)			(decrease (available_cdk2) 2.0)
))
(:action associate__pRb__E2F4DP12__pRbE2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F4DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F4DP12) 4.0)			(decrease (available_pRb) 4.0)			(increase (available_pRbE2F4DP12) 3.0)
))
(:action associate__pRbp1__E2F13p1DP12p1__pRbp1E2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1E2F13p1DP12p1) 3.0)			(decrease (available_E2F13p1DP12p1) 4.0)			(decrease (available_pRbp1) 4.0)
))
(:action associatewithcatalyze__cdc25Cp1__CTAK1__cdc25Cp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25Cp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_CTAK1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25Cp1) 2.0)			(increase (available_cdc25Cp1p2) 1.0)
))
(:action associate__HDAC1__pRbE2F13DP12__HDAC1pRbE2F13DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbE2F13DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1) 4.0)			(increase (available_HDAC1pRbE2F13DP12) 2.0)			(decrease (available_pRbE2F13DP12) 3.0)
))
(:action associate__Raf1__pRbE2F13DP12p1__Raf1pRbE2F13DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRbE2F13DP12p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbE2F13DP12p1) 1.0)			(decrease (available_Raf1) 2.0)			(decrease (available_pRbE2F13DP12p1) 1.0)
))
(:action associate__Mdm2__E2F13p1DP12__Mdm2E2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13p1DP12) 1.0)			(decrease (available_Mdm2) 2.0)			(increase (available_Mdm2E2F13p1DP12) 2.0)
))
(:action associate__Mdm2__E2F13p1DP12p1__Mdm2E2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Mdm2E2F13p1DP12p1) 3.0)			(decrease (available_Mdm2) 3.0)			(decrease (available_E2F13p1DP12p1) 1.0)
))
(:action associate__p21__Gadd45__p21Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_Gadd45) 4.0)			(decrease (available_p21) 3.0)			(increase (available_p21Gadd45) 1.0)
))
(:action associatewithcatalyze__cycB__APCp1__APCp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycB) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_APCp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_APCp1) 1.0)			(decrease (available_cycB) 1.0)
))
(:action associate__Raf1__pRbE2F13DP12__Raf1pRbE2F13DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRbE2F13DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbE2F13DP12) 3.0)			(decrease (available_pRbE2F13DP12) 2.0)			(decrease (available_Raf1) 2.0)
))
(:action associate__Mdm2__pRbp1__Mdm2pRbp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRbp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Mdm2pRbp1) 3.0)			(decrease (available_Mdm2) 2.0)			(decrease (available_pRbp1) 4.0)
))
(:action associatewithcatalyze__cdk1p1p2__cdc25Cp1__cdk1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2) 4.0)			(increase (available_cdk1p1) 2.0)
))
(:action associate__Mdm2__E2F13DP12__Mdm2E2F13DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F13DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_Mdm2) 3.0)			(decrease (available_E2F13DP12) 2.0)			(increase (available_Mdm2E2F13DP12) 1.0)
))
(:action associatewithcatalyze__cdk1p1p2__cdk7cycH__cdk1p1p2p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p2p3) 2.0)			(decrease (available_cdk1p1p2) 1.0)
))
(:action associate__pRbp2AP2__gEc__pRbp2AP2gEc
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2AP2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gEc) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp2AP2) 3.0)			(increase (available_pRbp2AP2gEc) 1.0)			(decrease (available_gEc) 2.0)
))
(:action associate__Mdm2__E2F13DP12p1__Mdm2E2F13DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F13DP12p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_Mdm2) 3.0)			(decrease (available_E2F13DP12p1) 2.0)			(increase (available_Mdm2E2F13DP12p1) 3.0)
))
(:action associatewithcatalyze__cdk1p1p2__cdc25Cp1__cdk1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2) 4.0)			(increase (available_cdk1p2) 4.0)
))
(:action associate__Raf1__pRbp1E2F13DP12__Raf1pRbp1E2F13DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbp1E2F13DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbp1E2F13DP12) 2.0)			(decrease (available_Raf1) 3.0)			(decrease (available_pRbp1E2F13DP12) 1.0)
))
(:action associate__cdk1p2__cks1__cdk1p2cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p2cks1) 3.0)			(decrease (available_cks1) 2.0)			(decrease (available_cdk1p2) 4.0)
))
(:action associatewithcatalyze__cdk1p1__cdc25Cp1p2__cdk1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1) 1.0)			(increase (available_cdk1) 3.0)
))
(:action synthesize__pRbAP2gEc__Ecadherin
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbAP2gEc) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Ecadherin) 1.0)
))
(:action synthesize__pRbp2AP2gEc__Ecadherin
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2AP2gEc) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Ecadherin) 3.0)
))
(:action associate__cdk1p2__Gadd45__cdk1p2Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p2Gadd45) 2.0)			(decrease (available_Gadd45) 3.0)			(decrease (available_cdk1p2) 4.0)
))
(:action associate__p16__cdk46p1p2__p16cdk46p1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p16) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p1p2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p16) 1.0)			(decrease (available_cdk46p1p2) 1.0)			(increase (available_p16cdk46p1p2) 3.0)
))
(:action associatewithcatalyze__cdk1p1p2p3__cdc25Cp1__cdk1p1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p3) 3.0)			(decrease (available_cdk1p1p2p3) 2.0)
))
(:action associate__pRbp1p2AP2__gEc__pRbp1p2AP2gEc
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1p2AP2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gEc) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1p2AP2gEc) 3.0)			(decrease (available_pRbp1p2AP2) 4.0)			(decrease (available_gEc) 4.0)
))
(:action associate__HDAC1__pRbE2F4DP12__HDAC1pRbE2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRbE2F4DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1) 2.0)			(decrease (available_pRbE2F4DP12) 2.0)			(increase (available_HDAC1pRbE2F4DP12) 3.0)
))
(:action associate__Raf1__pRbp1E2F13p1DP12p1__Raf1pRbp1E2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbp1E2F13p1DP12p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1E2F13p1DP12p1) 1.0)			(increase (available_Raf1pRbp1E2F13p1DP12p1) 2.0)			(decrease (available_Raf1) 4.0)
))
(:action associate__p16__cdk7p1__p16cdk7p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p16) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk7p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p16) 1.0)			(increase (available_p16cdk7p1) 4.0)			(decrease (available_cdk7p1) 1.0)
))
(:action associatewithcatalyze__cdk1p1p2p3__cdc25Cp1__cdk1p2p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p2p3) 2.0)			(decrease (available_cdk1p1p2p3) 4.0)
))
(:action associate__Raf1__p130E2F5DP12__Raf1p130E2F5DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_p130E2F5DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1p130E2F5DP12) 1.0)			(decrease (available_p130E2F5DP12) 1.0)			(decrease (available_Raf1) 4.0)
))
(:action associatewithcatalyze__cdk1p2__cdc25Cp1__cdk1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p2) 2.0)			(increase (available_cdk1) 2.0)
))
(:action associate__HDAC1__p130E2F4DP12__HDAC1p130E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_p130E2F4DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1) 1.0)			(increase (available_HDAC1p130E2F4DP12) 4.0)			(decrease (available_p130E2F4DP12) 4.0)
))
(:action associate__Raf1__pRbE2F4DP12__Raf1pRbE2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbE2F4DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbE2F4DP12) 2.0)			(increase (available_Raf1pRbE2F4DP12) 1.0)			(decrease (available_Raf1) 1.0)
))
(:action associate__cdk1p1p2p3__cycB__cdk1p1p2p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycB) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p2p3cycB) 1.0)			(decrease (available_cdk1p1p2p3) 3.0)			(decrease (available_cycB) 2.0)
))
(:action associatewithcatalyze__cdk1p1p2__cdc25Cp1p2__cdk1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2) 3.0)			(increase (available_cdk1p2) 4.0)
))
(:action associatewithcatalyze__cdk1p1__cdk7cycH__cdk1p1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1) 4.0)			(increase (available_cdk1p1p3) 3.0)
))
(:action associate__Raf1__p130E2F4DP12__Raf1p130E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_p130E2F4DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1p130E2F4DP12) 2.0)			(decrease (available_p130E2F4DP12) 2.0)			(decrease (available_Raf1) 4.0)
))
(:action associate__Raf1__pRbp1E2F13DP12p1__Raf1pRbp1E2F13DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbp1E2F13DP12p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbp1E2F13DP12p1) 1.0)			(decrease (available_pRbp1E2F13DP12p1) 2.0)			(decrease (available_Raf1) 4.0)
))
(:action associate__pRbp1p2Jun__cFos__pRbp1p2JuncFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1p2Jun) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cFos) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1p2Jun) 4.0)			(decrease (available_cFos) 4.0)			(increase (available_pRbp1p2JuncFos) 1.0)
))
(:action associate__cdk7p1__cycH__cdk7p1cycH
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk7p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycH) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk7p1cycH) 1.0)			(decrease (available_cycH) 4.0)			(decrease (available_cdk7p1) 4.0)
))
(:action associate__cdk1p1p2p3__cks1__cdk1p1p2p3cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 3.0)			(decrease (available_cdk1p1p2p3) 3.0)			(increase (available_cdk1p1p2p3cks1) 2.0)
))
(:action associate__cdk2p2__cks1__cdk2p2cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p2) 4.0)			(decrease (available_cks1) 1.0)			(increase (available_cdk2p2cks1) 1.0)
))
(:action associate__cdk1p1p2p3__Gadd45__cdk1p1p2p3Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p2p3Gadd45) 2.0)			(decrease (available_Gadd45) 3.0)			(decrease (available_cdk1p1p2p3) 4.0)
))
(:action associatewithcatalyze__cdk1p2__cdc25Cp1p2__cdk1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p2) 2.0)			(increase (available_cdk1) 4.0)
))
(:action associate__cdk1p1__cks1__cdk1p1cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 3.0)			(decrease (available_cdk1p1) 2.0)			(increase (available_cdk1p1cks1) 4.0)
))
(:action associate__m1433__cdc25Cp1p2__m1433cdc25Cp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_m1433) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25Cp1p2) 4.0)			(decrease (available_m1433) 1.0)			(increase (available_m1433cdc25Cp1p2) 2.0)
))
(:action associate__pRbp1Jun__cFos__pRbp1JuncFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1Jun) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cFos) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cFos) 2.0)			(increase (available_pRbp1JuncFos) 4.0)			(decrease (available_pRbp1Jun) 2.0)
))
(:action associate__cdk1p1__Gadd45__cdk1p1Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_Gadd45) 2.0)			(decrease (available_cdk1p1) 2.0)			(increase (available_cdk1p1Gadd45) 3.0)
))
(:action associate__pRbp1AP2__gEc__pRbp1AP2gEc
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1AP2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gEc) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1AP2) 3.0)			(increase (available_pRbp1AP2gEc) 2.0)			(decrease (available_gEc) 4.0)
))
(:action associatewithcatalyze__cdk1p1p2__cdc25Cp1p2__cdk1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2) 3.0)			(increase (available_cdk1p1) 2.0)
))
(:action associatewithcatalyze__cdk1p1__cdc25Cp1__cdk1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1) 4.0)			(increase (available_cdk1) 2.0)
))
(:action associate__Raf1__pRbp1E2F13p1DP12__Raf1pRbp1E2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbp1E2F13p1DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbp1E2F13p1DP12) 2.0)			(decrease (available_Raf1) 4.0)			(decrease (available_pRbp1E2F13p1DP12) 1.0)
))
(:action associatewithcatalyze__cdk1p2__cdk7cycH__cdk1p2p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p2p3) 2.0)			(decrease (available_cdk1p2) 4.0)
))
(:action associate__HDAC1__p130E2F5DP12__HDAC1p130E2F5DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_p130E2F5DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1) 4.0)			(decrease (available_p130E2F5DP12) 3.0)			(increase (available_HDAC1p130E2F5DP12) 4.0)
))
(:action associate__cdk2p1p2__cks1__cdk2p1p2cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1p2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 3.0)			(increase (available_cdk2p1p2cks1) 1.0)			(decrease (available_cdk2p1p2) 3.0)
))
(:action associatewithcatalyze__cdk1p1p2p3__cdc25Cp1p2__cdk1p2p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p2p3) 4.0)			(decrease (available_cdk1p1p2p3) 2.0)
))
(:action associate__Raf1__pRbp1E2F4DP12__Raf1pRbp1E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbp1E2F4DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1E2F4DP12) 4.0)			(increase (available_Raf1pRbp1E2F4DP12) 1.0)			(decrease (available_Raf1) 4.0)
))
(:action associatewithcatalyze__cdk1p1p2p3__cdc25Cp1p2__cdk1p1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p3) 3.0)			(decrease (available_cdk1p1p2p3) 4.0)
))
(:action associatewithcatalyze__cdk1p1p3__cdc25Cp1p2__cdk1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p3) 3.0)			(increase (available_cdk1p3) 1.0)
))
(:action associatewithcatalyze__cdk1p1p2p3cycB__cdc25Cp1p2__cdk1p1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3cycB) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2p3cycB) 3.0)			(increase (available_cdk1p1p3cycB) 2.0)
))
(:action associatewithcatalyze__cdk1p1p2p3cycB__cdc25Cp1p2__cdk1p2p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3cycB) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2p3cycB) 1.0)			(increase (available_cdk1p2p3cycB) 3.0)
))
(:action associatewithcatalyze__cdk1p1p3__cdc25Cp1__cdk1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p3) 2.0)			(increase (available_cdk1p3) 1.0)
))
(:action synthesize__pRbp1AP2gEc__Ecadherin
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1AP2gEc) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Ecadherin) 2.0)
))
(:action associatewithcatalyze__cdk1p1p2p3cycB__cdc25Cp1__cdk1p1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3cycB) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2p3cycB) 3.0)			(increase (available_cdk1p1p3cycB) 3.0)
))
(:action associatewithcatalyze__cdk1p1p2p3cycB__cdc25Cp1__cdk1p2p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3cycB) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p2p3cycB) 4.0)			(decrease (available_cdk1p1p2p3cycB) 4.0)
))
(:action associatewithcatalyze__cdk1p2p3__cdc25Cp1p2__cdk1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p2p3) 4.0)			(increase (available_cdk1p3) 2.0)
))
(:action associate__cdk1p1p3__cks1__cdk1p1p3cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 3.0)			(decrease (available_cdk1p1p3) 1.0)			(increase (available_cdk1p1p3cks1) 4.0)
))
(:action associate__cdk1p1p3__Gadd45__cdk1p1p3Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_Gadd45) 1.0)			(decrease (available_cdk1p1p3) 3.0)			(increase (available_cdk1p1p3Gadd45) 1.0)
))
(:action associate__cdk1p1p3__cycB__cdk1p1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycB) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p3) 3.0)			(decrease (available_cycB) 3.0)			(increase (available_cdk1p1p3cycB) 4.0)
))
(:action associate__cdk1p2p3__cks1__cdk1p2p3cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p2p3) 1.0)			(decrease (available_cks1) 1.0)			(increase (available_cdk1p2p3cks1) 4.0)
))
(:action associatewithcatalyze__cdk1__cdk7cycH__cdk1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p3) 1.0)			(decrease (available_cdk1) 4.0)
))
(:action associatewithcatalyze__cdk1p2p3__cdc25Cp1__cdk1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p3) 3.0)			(decrease (available_cdk1p2p3) 3.0)
))
(:action synthesize__pRbp1p2AP2gEc__Ecadherin
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1p2AP2gEc) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Ecadherin) 4.0)
))
(:action associate__cdk1p2p3__Gadd45__cdk1p2p3Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_Gadd45) 3.0)			(increase (available_cdk1p2p3Gadd45) 4.0)			(decrease (available_cdk1p2p3) 3.0)
))
(:action associate__cdk1__cks1__cdk1cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 3.0)			(increase (available_cdk1cks1) 3.0)			(decrease (available_cdk1) 1.0)
))
(:action associate__cdk1__Gadd45__cdk1Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1Gadd45) 3.0)			(decrease (available_Gadd45) 3.0)			(decrease (available_cdk1) 2.0)
))
(:action associate__cdk1p2p3__cycB__cdk1p2p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycB) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cycB) 2.0)			(increase (available_cdk1p2p3cycB) 3.0)			(decrease (available_cdk1p2p3) 3.0)
))
(:action associatewithcatalyze__cdk1p1p3cycB__Wee1__cdk1p1p2p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3cycB) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Wee1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p2p3cycB) 3.0)			(decrease (available_cdk1p1p3cycB) 2.0)
))
(:action associatewithcatalyze__cdk1p2p3cycB__cdc25Cp1p2__cdk1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3cycB) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p3cycB) 1.0)			(decrease (available_cdk1p2p3cycB) 3.0)
))
(:action associate__cdk1p3__Gadd45__cdk1p3Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p3) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_Gadd45) 2.0)			(decrease (available_cdk1p3) 3.0)			(increase (available_cdk1p3Gadd45) 3.0)
))
(:action associatewithcatalyze__cdk1p2p3cycB__Myt1__cdk1p1p2p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3cycB) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Myt1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p2p3cycB) 1.0)			(decrease (available_cdk1p2p3cycB) 4.0)
))
(:action associatewithcatalyze__cdk1p1p3cycB__cdc25Cp1p2__cdk1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3cycB) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p3cycB) 2.0)			(decrease (available_cdk1p1p3cycB) 1.0)
))
(:action associate__cdk1p3__cycB__cdk1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p3) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycB) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p3) 3.0)			(increase (available_cdk1p3cycB) 3.0)			(decrease (available_cycB) 1.0)
))
(:action associate__cdk1p3__cks1__cdk1p3cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p3) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p3cks1) 1.0)			(decrease (available_cks1) 2.0)			(decrease (available_cdk1p3) 1.0)
))
(:action associatewithcatalyze__cdk1p1p3cycB__cdc25Cp1__cdk1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3cycB) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p3cycB) 2.0)			(decrease (available_cdk1p1p3cycB) 4.0)
))
(:action associatewithcatalyze__cdk1p2p3cycB__cdc25Cp1__cdk1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3cycB) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p3cycB) 4.0)			(decrease (available_cdk1p2p3cycB) 4.0)
))
(:action associatewithcatalyze__cdc25Cp2__cdk1p3cycB__cdc25Cp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25Cp2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk1p3cycB) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25Cp2) 3.0)			(increase (available_cdc25Cp1p2) 2.0)
))
(:action associatewithcatalyze__cdc25C__cdk1p3cycB__cdc25Cp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25C) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk1p3cycB) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25C) 3.0)			(increase (available_cdc25Cp1) 3.0)
))
(:action associatewithcatalyze__Wee1__cdk1p3cycB__Wee1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Wee1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk1p3cycB) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_Wee1) 2.0)			(increase (available_Wee1p1) 2.0)
))
(:action associatewithcatalyze__cdk1p3cycB__Wee1__cdk1p2p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p3cycB) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Wee1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p3cycB) 2.0)			(increase (available_cdk1p2p3cycB) 3.0)
))
(:action associatewithcatalyze__cdk1p3cycB__Myt1__cdk1p1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p3cycB) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Myt1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p3cycB) 4.0)			(increase (available_cdk1p1p3cycB) 1.0)
))
(:action associatewithcatalyze__SL1__cdk1p3cycB__SL1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SL1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk1p3cycB) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_SL1) 4.0)			(increase (available_SL1p1) 2.0)
))


)