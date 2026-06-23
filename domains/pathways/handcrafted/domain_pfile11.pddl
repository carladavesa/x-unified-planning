(define (domain PathwaysMetric)
(:predicates  (possible_AP2)
 (chosen_HDAC1p107E2F4p1DP12)
 (chosen_HDAC1)
 (chosen_gp19ARF)
 (chosen_gERCC1)
 (chosen_gEc)
 (chosen_gE2)
 (chosen_E2F13p1DP12p1)
 (chosen_E2F13p1DP12)
 (chosen_E2F13DP12p1)
 (chosen_E2F13DP12)
 (chosen_E2F13)
 (chosen_DMP1)
 (chosen_cycH)
 (chosen_cycB)
 (chosen_CTAK1)
 (chosen_cks1)
 (chosen_Chk1)
 (chosen_cdk7)
 (chosen_cdk46p3cycDp1)
 (chosen_cdk2p2cycB)
 (chosen_cdk2p1)
 (chosen_cdk1p1p2)
 (chosen_cdc25C)
 (chosen_cAbl)
 (chosen_APC)
 (possible_Wee1)
 (possible_SP1)
 (chosen_AP2)
 (possible_Skp2)
 (possible_RPA)
 (chosen_Wee1)
 (possible_pRbE2F4p1DP12)
 (possible_pRb)
 (chosen_SP1)
 (possible_Plk1)
 (possible_p57)
 (chosen_Skp2)
 (possible_p53p1)
 (possible_p53)
 (chosen_RPA)
 (possible_p27)
 (possible_Max)
 (chosen_pRbE2F4p1DP12)
 (possible_m1433)
 (possible_Jun)
 (chosen_pRb)
 (possible_HDAC1pRbp1E2F13p1DP12)
 (possible_HDAC1pRbp1E2F13DP12)
 (chosen_Plk1)
 (possible_HDAC1p130E2F4p1DP12)
 (possible_HDAC1p107E2F4p1DP12)
 (chosen_p57)
 (possible_HDAC1)
 (possible_gp19ARF)
 (chosen_p53p1)
 (possible_gERCC1)
 (possible_gEc)
 (chosen_p53)
 (possible_gE2)
 (possible_E2F13p1DP12p1)
 (chosen_p27)
 (possible_E2F13p1DP12)
 (possible_E2F13DP12p1)
 (chosen_Max)
 (possible_E2F13DP12)
 (possible_E2F13)
 (chosen_m1433)
 (possible_DMP1)
 (possible_cycH)
 (chosen_Jun)
 (possible_cycB)
 (possible_CTAK1)
 (chosen_HDAC1pRbp1E2F13p1DP12)
 (possible_cks1)
 (possible_Chk1)
 (chosen_HDAC1pRbp1E2F13DP12)
 (possible_cdk7)
 (possible_cdk46p3cycDp1)
 (chosen_HDAC1p130E2F4p1DP12)
 (possible_cdk2p2cycB)
 (possible_cdk2p1)
 (possible_cdk1p1p2)
 (possible_cdc25C)
 (possible_cAbl)
 (possible_APC)
)
(:functions   (numsubs)
  (available_Wee1)
  (available_SP1)
  (available_Skp2)
  (available_RPA)
  (available_pRbE2F4p1DP12)
  (available_pRb)
  (available_Plk1)
  (available_p57)
  (available_p53p1)
  (available_p53)
  (available_p27)
  (available_Max)
  (available_m1433)
  (available_Jun)
  (available_HDAC1pRbp1E2F13p1DP12)
  (available_HDAC1pRbp1E2F13DP12)
  (available_HDAC1p130E2F4p1DP12)
  (available_HDAC1p107E2F4p1DP12)
  (available_HDAC1)
  (available_gp19ARF)
  (available_gERCC1)
  (available_gEc)
  (available_gE2)
  (available_E2F13p1DP12p1)
  (available_E2F13p1DP12)
  (available_E2F13DP12p1)
  (available_E2F13DP12)
  (available_E2F13)
  (available_DMP1)
  (available_cycH)
  (available_cycB)
  (available_CTAK1)
  (available_cks1)
  (available_Chk1)
  (available_cdk7)
  (available_cdk46p3cycDp1)
  (available_cdk2p2cycB)
  (available_cdk2p1)
  (available_cdk1p1p2)
  (available_cdc25C)
  (available_cAbl)
  (available_APC)
  (available_AP2)
  (available_AP2gEc)
  (available_cAblpRb)
  (available_cAblpRbp1)
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
  (available_cdk1p1p2p3cycA)
  (available_cdc25Cp1)
  (available_cdk1p1p2p3cycB)
  (available_cdk1p2p3Gadd45)
  (available_cdk1p2p3)
  (available_cdk1p3cks1)
  (available_cdk1p1p3cycA)
  (available_cdk1p2p3cycA)
  (available_cdk1p1p3cycB)
  (available_cdk1p2p3cycB)
  (available_cdk1p3Gadd45)
  (available_cdk1p3)
  (available_cdk2p1cks1)
  (available_cdk2p1cycAE2F13)
  (available_cdk2p1p2cks1)
  (available_cdk2p1p2cycAE2F13)
  (available_cdk2p1p2)
  (available_cdk2p1p2cycB)
  (available_cdk7cycH)
  (available_cdk7p1cycH)
  (available_cMycAP2)
  (available_cMycMax)
  (available_APCp1)
  (available_DMP1cycD)
  (available_DMP1cycDp1)
  (available_DMP1gp19ARF)
  (available_DMP1p1cycD)
  (available_DMP1p1cycDp1)
  (available_DMP1p1)
  (available_DMP1p1gp19ARF)
  (available_E2F13DP12gE2)
  (available_E2F13p1DP12gE2)
  (available_HDAC1p107E2F4p1DP12gE2)
  (available_HDAC1p130E2F4p1DP12gE2)
  (available_HDAC1pRbE2F13DP12gE2)
  (available_HDAC1pRbE2F13DP12)
  (available_HDAC1pRbE2F13DP12p1)
  (available_HDAC1pRbE2F13p1DP12gE2)
  (available_HDAC1pRbE2F13p1DP12)
  (available_HDAC1pRbE2F13p1DP12p1)
  (available_HDAC1pRbE2F4p1DP12)
  (available_HDAC1pRbp1E2F13DP12gE2)
  (available_HDAC1pRbp1E2F13p1DP12gE2)
  (available_JuncFosgERCC1)
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
  (available_cdk7p1)
  (available_p21cdk2p1cycA)
  (available_p21cdk2p1cycEp1)
  (available_p21cdk2p1cycE)
  (available_p21cdk2p1p2cycA)
  (available_p21cdk2p1p2cycEp1)
  (available_p21cdk2p1p2cycE)
  (available_p21Gadd45)
  (available_p27cdk2p1cycA)
  (available_p27cdk2p1cycEp1)
  (available_p27cdk2p1cycE)
  (available_p27cdk2p1p2cycA)
  (available_p27cdk2p1p2cycEp1)
  (available_p27cdk2p1p2cycE)
  (available_Mdm2)
  (available_p57cdk2p1cycA)
  (available_p57cdk2p1cycEp1)
  (available_p57cdk2p1cycE)
  (available_p57cdk2p1p2cycA)
  (available_p57cdk2p1p2cycEp1)
  (available_p57cdk2p1p2cycE)
  (available_Gadd45)
  (available_cdk2p1cycEp1)
  (available_cdk2p1cycE)
  (available_cdk2p1p2cycEp1)
  (available_cdk2p1p2cycE)
  (available_p21)
  (available_pRbAP2gEc)
  (available_pRbAP2)
  (available_pRbE2F13DP12gE2)
  (available_pRbE2F13DP12p1gE2)
  (available_pRbE2F13p1DP12gE2)
  (available_pRbE2F13p1DP12p1gE2)
  (available_pRbE2F4p1DP12gE2)
  (available_pRbJuncFosgERCC1)
  (available_pRbJuncFos)
  (available_pRbJun)
  (available_pRbp1AP2gEc)
  (available_pRbp1AP2)
  (available_pRbp1E2F13DP12gE2)
  (available_pRbp1E2F13DP12p1gE2)
  (available_pRbp1E2F13p1DP12gE2)
  (available_pRbp1E2F13p1DP12p1gE2)
  (available_pRbp1JuncFosgERCC1)
  (available_pRbp1JuncFos)
  (available_pRbp1Jun)
  (available_pRbp1)
  (available_Ecadherin)
  (available_ERCC1)
  (available_cFos)
  (available_pRbE2F13DP12p1)
  (available_pRbE2F13DP12)
  (available_pRbE2F13p1DP12p1)
  (available_pRbE2F13p1DP12)
  (available_pRbp1E2F13DP12p1)
  (available_pRbp1E2F13DP12)
  (available_pRbp1E2F13p1DP12p1)
  (available_pRbp1E2F13p1DP12)
  (available_RPAcycA)
  (available_Skp2cdk2p1cycA)
  (available_Skp2cdk2p1p2cycA)
  (available_cdk2p1cycA)
  (available_cdk2p1p2cycA)
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
  (available_cdk1p3cycA)
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
  (needforcatalyzedassociation_cdk1p1p3cycA_cdc25Cp1_cdk1p3cycA)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p1p3cycA_cdk1p3cycA)
  (prodbycatalyzedassociation_cdk1p1p3cycA_cdc25Cp1_cdk1p3cycA)
  (needforcatalyzedassociation_cdk1p1p3cycA_cdc25Cp1p2_cdk1p3cycA)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p1p3cycA_cdk1p3cycA)
  (prodbycatalyzedassociation_cdk1p1p3cycA_cdc25Cp1p2_cdk1p3cycA)
  (needforassociation_cdk1p1p3_cycA_cdk1p1p3cycA)
  (needforassociation_cycA_cdk1p1p3_cdk1p1p3cycA)
  (prodbyassociation_cdk1p1p3_cycA_cdk1p1p3cycA)
  (needforcatalyzedassociation_cdk1p1p3cycA_Wee1_cdk1p1p2p3cycA)
  (needforcatalyzedassociation_Wee1_cdk1p1p3cycA_cdk1p1p2p3cycA)
  (prodbycatalyzedassociation_cdk1p1p3cycA_Wee1_cdk1p1p2p3cycA)
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
  (needforcatalyzedassociation_cdk1p2p3cycA_cdc25Cp1_cdk1p3cycA)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p2p3cycA_cdk1p3cycA)
  (prodbycatalyzedassociation_cdk1p2p3cycA_cdc25Cp1_cdk1p3cycA)
  (needforcatalyzedassociation_cdk1p2p3cycA_cdc25Cp1p2_cdk1p3cycA)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p2p3cycA_cdk1p3cycA)
  (prodbycatalyzedassociation_cdk1p2p3cycA_cdc25Cp1p2_cdk1p3cycA)
  (needforassociation_cdk1p2p3_cycA_cdk1p2p3cycA)
  (needforassociation_cycA_cdk1p2p3_cdk1p2p3cycA)
  (prodbyassociation_cdk1p2p3_cycA_cdk1p2p3cycA)
  (needforcatalyzedassociation_cdk1p2p3cycB_cdc25Cp1_cdk1p3cycB)
  (needforcatalyzedassociation_cdc25Cp1_cdk1p2p3cycB_cdk1p3cycB)
  (prodbycatalyzedassociation_cdk1p2p3cycB_cdc25Cp1_cdk1p3cycB)
  (needforcatalyzedassociation_cdk1p2p3cycB_cdc25Cp1p2_cdk1p3cycB)
  (needforcatalyzedassociation_cdc25Cp1p2_cdk1p2p3cycB_cdk1p3cycB)
  (prodbycatalyzedassociation_cdk1p2p3cycB_cdc25Cp1p2_cdk1p3cycB)
  (needforassociation_cdk1p2p3_cycB_cdk1p2p3cycB)
  (needforassociation_cycB_cdk1p2p3_cdk1p2p3cycB)
  (prodbyassociation_cdk1p2p3_cycB_cdk1p2p3cycB)
  (needforassociation_cdk1p2p3_Gadd45_cdk1p2p3Gadd45)
  (needforassociation_Gadd45_cdk1p2p3_cdk1p2p3Gadd45)
  (prodbyassociation_cdk1p2p3_Gadd45_cdk1p2p3Gadd45)
  (needforassociation_cdk1p3_cks1_cdk1p3cks1)
  (needforassociation_cks1_cdk1p3_cdk1p3cks1)
  (prodbyassociation_cdk1p3_cks1_cdk1p3cks1)
  (needforassociation_cdk1p3_cycA_cdk1p3cycA)
  (needforassociation_cycA_cdk1p3_cdk1p3cycA)
  (prodbyassociation_cdk1p3_cycA_cdk1p3cycA)
  (needforcatalyzedassociation_cdk1p3cycA_Wee1_cdk1p2p3cycA)
  (needforcatalyzedassociation_Wee1_cdk1p3cycA_cdk1p2p3cycA)
  (prodbycatalyzedassociation_cdk1p3cycA_Wee1_cdk1p2p3cycA)
  (needforassociation_cdk1p3_cycB_cdk1p3cycB)
  (needforassociation_cycB_cdk1p3_cdk1p3cycB)
  (prodbyassociation_cdk1p3_cycB_cdk1p3cycB)
  (needforcatalyzedassociation_cdk1p3cycB_Wee1_cdk1p2p3cycB)
  (needforcatalyzedassociation_Wee1_cdk1p3cycB_cdk1p2p3cycB)
  (prodbycatalyzedassociation_cdk1p3cycB_Wee1_cdk1p2p3cycB)
  (needforassociation_cdk1p3_Gadd45_cdk1p3Gadd45)
  (needforassociation_Gadd45_cdk1p3_cdk1p3Gadd45)
  (prodbyassociation_cdk1p3_Gadd45_cdk1p3Gadd45)
  (needforcatalyzedassociation_cdk2p1_cdk7cycH_cdk2p1p2)
  (needforcatalyzedassociation_cdk7cycH_cdk2p1_cdk2p1p2)
  (prodbycatalyzedassociation_cdk2p1_cdk7cycH_cdk2p1p2)
  (needforassociation_cdk2p1_cks1_cdk2p1cks1)
  (needforassociation_cks1_cdk2p1_cdk2p1cks1)
  (prodbyassociation_cdk2p1_cks1_cdk2p1cks1)
  (needforassociation_cdk2p1_cycA_cdk2p1cycA)
  (needforassociation_cycA_cdk2p1_cdk2p1cycA)
  (prodbyassociation_cdk2p1_cycA_cdk2p1cycA)
  (needforcatalyzedassociation_cdk2p1cycA_cdk7cycH_cdk2p1p2cycA)
  (needforcatalyzedassociation_cdk7cycH_cdk2p1cycA_cdk2p1p2cycA)
  (prodbycatalyzedassociation_cdk2p1cycA_cdk7cycH_cdk2p1p2cycA)
  (needforassociation_cdk2p1cycA_E2F13_cdk2p1cycAE2F13)
  (needforassociation_E2F13_cdk2p1cycA_cdk2p1cycAE2F13)
  (prodbyassociation_cdk2p1cycA_E2F13_cdk2p1cycAE2F13)
  (needforassociation_cdk2p1_cycE_cdk2p1cycE)
  (needforassociation_cycE_cdk2p1_cdk2p1cycE)
  (prodbyassociation_cdk2p1_cycE_cdk2p1cycE)
  (needforcatalyzedassociation_cdk2p1cycE_cdk7cycH_cdk2p1p2cycE)
  (needforcatalyzedassociation_cdk7cycH_cdk2p1cycE_cdk2p1p2cycE)
  (prodbycatalyzedassociation_cdk2p1cycE_cdk7cycH_cdk2p1p2cycE)
  (needforassociation_cdk2p1_cycEp1_cdk2p1cycEp1)
  (needforassociation_cycEp1_cdk2p1_cdk2p1cycEp1)
  (prodbyassociation_cdk2p1_cycEp1_cdk2p1cycEp1)
  (needforcatalyzedassociation_cdk2p1cycEp1_cdk7cycH_cdk2p1p2cycEp1)
  (needforcatalyzedassociation_cdk7cycH_cdk2p1cycEp1_cdk2p1p2cycEp1)
  (prodbycatalyzedassociation_cdk2p1cycEp1_cdk7cycH_cdk2p1p2cycEp1)
  (needforassociation_cdk2p1p2_cks1_cdk2p1p2cks1)
  (needforassociation_cks1_cdk2p1p2_cdk2p1p2cks1)
  (prodbyassociation_cdk2p1p2_cks1_cdk2p1p2cks1)
  (needforassociation_cdk2p1p2_cycA_cdk2p1p2cycA)
  (needforassociation_cycA_cdk2p1p2_cdk2p1p2cycA)
  (prodbyassociation_cdk2p1p2_cycA_cdk2p1p2cycA)
  (needforassociation_cdk2p1p2cycA_E2F13_cdk2p1p2cycAE2F13)
  (needforassociation_E2F13_cdk2p1p2cycA_cdk2p1p2cycAE2F13)
  (prodbyassociation_cdk2p1p2cycA_E2F13_cdk2p1p2cycAE2F13)
  (needforassociation_cdk2p1p2_cycE_cdk2p1p2cycE)
  (needforassociation_cycE_cdk2p1p2_cdk2p1p2cycE)
  (prodbyassociation_cdk2p1p2_cycE_cdk2p1p2cycE)
  (needforassociation_cdk2p1p2_cycEp1_cdk2p1p2cycEp1)
  (needforassociation_cycEp1_cdk2p1p2_cdk2p1p2cycEp1)
  (prodbyassociation_cdk2p1p2_cycEp1_cdk2p1p2cycEp1)
  (needforcatalyzedassociation_cdk2p2cycB_Wee1_cdk2p1p2cycB)
  (needforcatalyzedassociation_Wee1_cdk2p2cycB_cdk2p1p2cycB)
  (prodbycatalyzedassociation_cdk2p2cycB_Wee1_cdk2p1p2cycB)
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
  (needforassociation_cMyc_AP2_cMycAP2)
  (needforassociation_AP2_cMyc_cMycAP2)
  (prodbyassociation_cMyc_AP2_cMycAP2)
  (needforassociation_cMyc_Max_cMycMax)
  (needforassociation_Max_cMyc_cMycMax)
  (prodbyassociation_cMyc_Max_cMycMax)
  (needforcatalyzedassociation_cycB_APCp1_APCp1)
  (needforcatalyzedassociation_APCp1_cycB_APCp1)
  (prodbycatalyzedassociation_cycB_APCp1_APCp1)
  (needforcatalyzedassociation_DMP1_cdk46p3cycDp1_DMP1p1)
  (needforcatalyzedassociation_cdk46p3cycDp1_DMP1_DMP1p1)
  (prodbycatalyzedassociation_DMP1_cdk46p3cycDp1_DMP1p1)
  (needforassociation_DMP1_cycD_DMP1cycD)
  (needforassociation_cycD_DMP1_DMP1cycD)
  (prodbyassociation_DMP1_cycD_DMP1cycD)
  (needforassociation_DMP1_cycDp1_DMP1cycDp1)
  (needforassociation_cycDp1_DMP1_DMP1cycDp1)
  (prodbyassociation_DMP1_cycDp1_DMP1cycDp1)
  (needforassociation_DMP1_gp19ARF_DMP1gp19ARF)
  (needforassociation_gp19ARF_DMP1_DMP1gp19ARF)
  (prodbyassociation_DMP1_gp19ARF_DMP1gp19ARF)
  (needforassociation_DMP1p1_cycD_DMP1p1cycD)
  (needforassociation_cycD_DMP1p1_DMP1p1cycD)
  (prodbyassociation_DMP1p1_cycD_DMP1p1cycD)
  (needforassociation_DMP1p1_cycDp1_DMP1p1cycDp1)
  (needforassociation_cycDp1_DMP1p1_DMP1p1cycDp1)
  (prodbyassociation_DMP1p1_cycDp1_DMP1p1cycDp1)
  (needforassociation_DMP1p1_gp19ARF_DMP1p1gp19ARF)
  (needforassociation_gp19ARF_DMP1p1_DMP1p1gp19ARF)
  (prodbyassociation_DMP1p1_gp19ARF_DMP1p1gp19ARF)
  (needforsynthesis_DMP1p1gp19ARF_p19ARF)
  (prodbysynthesis_DMP1p1gp19ARF_p19ARF)
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
  (needforassociation_HDAC1p107E2F4p1DP12_gE2_HDAC1p107E2F4p1DP12gE2)
  (needforassociation_gE2_HDAC1p107E2F4p1DP12_HDAC1p107E2F4p1DP12gE2)
  (prodbyassociation_HDAC1p107E2F4p1DP12_gE2_HDAC1p107E2F4p1DP12gE2)
  (needforassociation_HDAC1p130E2F4p1DP12_gE2_HDAC1p130E2F4p1DP12gE2)
  (needforassociation_gE2_HDAC1p130E2F4p1DP12_HDAC1p130E2F4p1DP12gE2)
  (prodbyassociation_HDAC1p130E2F4p1DP12_gE2_HDAC1p130E2F4p1DP12gE2)
  (needforassociation_HDAC1pRbE2F13DP12_gE2_HDAC1pRbE2F13DP12gE2)
  (needforassociation_gE2_HDAC1pRbE2F13DP12_HDAC1pRbE2F13DP12gE2)
  (prodbyassociation_HDAC1pRbE2F13DP12_gE2_HDAC1pRbE2F13DP12gE2)
  (needforassociation_HDAC1_pRbE2F13DP12_HDAC1pRbE2F13DP12)
  (needforassociation_pRbE2F13DP12_HDAC1_HDAC1pRbE2F13DP12)
  (prodbyassociation_HDAC1_pRbE2F13DP12_HDAC1pRbE2F13DP12)
  (needforassociation_HDAC1_pRbE2F13DP12p1_HDAC1pRbE2F13DP12p1)
  (needforassociation_pRbE2F13DP12p1_HDAC1_HDAC1pRbE2F13DP12p1)
  (prodbyassociation_HDAC1_pRbE2F13DP12p1_HDAC1pRbE2F13DP12p1)
  (needforassociation_HDAC1pRbE2F13p1DP12_gE2_HDAC1pRbE2F13p1DP12gE2)
  (needforassociation_gE2_HDAC1pRbE2F13p1DP12_HDAC1pRbE2F13p1DP12gE2)
  (prodbyassociation_HDAC1pRbE2F13p1DP12_gE2_HDAC1pRbE2F13p1DP12gE2)
  (needforassociation_HDAC1_pRbE2F13p1DP12_HDAC1pRbE2F13p1DP12)
  (needforassociation_pRbE2F13p1DP12_HDAC1_HDAC1pRbE2F13p1DP12)
  (prodbyassociation_HDAC1_pRbE2F13p1DP12_HDAC1pRbE2F13p1DP12)
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
  (needforsynthesis_JuncFosgERCC1_ERCC1)
  (prodbysynthesis_JuncFosgERCC1_ERCC1)
  (needforassociation_JuncFos_gERCC1_JuncFosgERCC1)
  (needforassociation_gERCC1_JuncFos_JuncFosgERCC1)
  (prodbyassociation_JuncFos_gERCC1_JuncFosgERCC1)
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
  (needforassociation_p21_cdk2p1cycA_p21cdk2p1cycA)
  (needforassociation_cdk2p1cycA_p21_p21cdk2p1cycA)
  (prodbyassociation_p21_cdk2p1cycA_p21cdk2p1cycA)
  (needforassociation_p21_cdk2p1cycEp1_p21cdk2p1cycEp1)
  (needforassociation_cdk2p1cycEp1_p21_p21cdk2p1cycEp1)
  (prodbyassociation_p21_cdk2p1cycEp1_p21cdk2p1cycEp1)
  (needforassociation_p21_cdk2p1cycE_p21cdk2p1cycE)
  (needforassociation_cdk2p1cycE_p21_p21cdk2p1cycE)
  (prodbyassociation_p21_cdk2p1cycE_p21cdk2p1cycE)
  (needforassociation_p21_cdk2p1p2cycA_p21cdk2p1p2cycA)
  (needforassociation_cdk2p1p2cycA_p21_p21cdk2p1p2cycA)
  (prodbyassociation_p21_cdk2p1p2cycA_p21cdk2p1p2cycA)
  (needforassociation_p21_cdk2p1p2cycEp1_p21cdk2p1p2cycEp1)
  (needforassociation_cdk2p1p2cycEp1_p21_p21cdk2p1p2cycEp1)
  (prodbyassociation_p21_cdk2p1p2cycEp1_p21cdk2p1p2cycEp1)
  (needforassociation_p21_cdk2p1p2cycE_p21cdk2p1p2cycE)
  (needforassociation_cdk2p1p2cycE_p21_p21cdk2p1p2cycE)
  (prodbyassociation_p21_cdk2p1p2cycE_p21cdk2p1p2cycE)
  (needforassociation_p21_Gadd45_p21Gadd45)
  (needforassociation_Gadd45_p21_p21Gadd45)
  (prodbyassociation_p21_Gadd45_p21Gadd45)
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
  (needforsynthesis_p53_cFos)
  (prodbysynthesis_p53_cFos)
  (needforsynthesis_p53_Gadd45)
  (prodbysynthesis_p53_Gadd45)
  (needforsynthesis_p53_Mdm2)
  (prodbysynthesis_p53_Mdm2)
  (needforsynthesis_p53p1_cFos)
  (prodbysynthesis_p53p1_cFos)
  (needforsynthesis_p53p1_Gadd45)
  (prodbysynthesis_p53p1_Gadd45)
  (needforsynthesis_p53p1_Mdm2)
  (prodbysynthesis_p53p1_Mdm2)
  (needforsynthesis_p53p1_p21)
  (prodbysynthesis_p53p1_p21)
  (needforsynthesis_p53_p21)
  (prodbysynthesis_p53_p21)
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
  (needforassociation_pRbE2F4p1DP12_gE2_pRbE2F4p1DP12gE2)
  (needforassociation_gE2_pRbE2F4p1DP12_pRbE2F4p1DP12gE2)
  (prodbyassociation_pRbE2F4p1DP12_gE2_pRbE2F4p1DP12gE2)
  (needforsynthesis_pRbJuncFosgERCC1_ERCC1)
  (prodbysynthesis_pRbJuncFosgERCC1_ERCC1)
  (needforassociation_pRbJuncFos_gERCC1_pRbJuncFosgERCC1)
  (needforassociation_gERCC1_pRbJuncFos_pRbJuncFosgERCC1)
  (prodbyassociation_pRbJuncFos_gERCC1_pRbJuncFosgERCC1)
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
  (needforsynthesis_pRbp1JuncFosgERCC1_ERCC1)
  (prodbysynthesis_pRbp1JuncFosgERCC1_ERCC1)
  (needforassociation_pRbp1JuncFos_gERCC1_pRbp1JuncFosgERCC1)
  (needforassociation_gERCC1_pRbp1JuncFos_pRbp1JuncFosgERCC1)
  (prodbyassociation_pRbp1JuncFos_gERCC1_pRbp1JuncFosgERCC1)
  (needforassociation_pRbp1Jun_cFos_pRbp1JuncFos)
  (needforassociation_cFos_pRbp1Jun_pRbp1JuncFos)
  (prodbyassociation_pRbp1Jun_cFos_pRbp1JuncFos)
  (needforassociation_pRbp1_Jun_pRbp1Jun)
  (needforassociation_Jun_pRbp1_pRbp1Jun)
  (prodbyassociation_pRbp1_Jun_pRbp1Jun)
  (needforassociation_RPA_cycA_RPAcycA)
  (needforassociation_cycA_RPA_RPAcycA)
  (prodbyassociation_RPA_cycA_RPAcycA)
  (needforassociation_Skp2_cdk2p1cycA_Skp2cdk2p1cycA)
  (needforassociation_cdk2p1cycA_Skp2_Skp2cdk2p1cycA)
  (prodbyassociation_Skp2_cdk2p1cycA_Skp2cdk2p1cycA)
  (needforassociation_Skp2_cdk2p1p2cycA_Skp2cdk2p1p2cycA)
  (needforassociation_cdk2p1p2cycA_Skp2_Skp2cdk2p1p2cycA)
  (prodbyassociation_Skp2_cdk2p1p2cycA_Skp2cdk2p1p2cycA)
  (needforassociation_SP1_E2F13_SP1E2F13)
  (needforassociation_E2F13_SP1_SP1E2F13)
  (prodbyassociation_SP1_E2F13_SP1E2F13)
  (needforassociation_SP1_p107p1_SP1p107p1)
  (needforassociation_p107p1_SP1_SP1p107p1)
  (prodbyassociation_SP1_p107p1_SP1p107p1)
  (needforassociation_SP1_p107_SP1p107)
  (needforassociation_p107_SP1_SP1p107)
  (prodbyassociation_SP1_p107_SP1p107)
  (needforcatalyzedassociation_Wee1_cdk1p3cycA_Wee1p1)
  (needforcatalyzedassociation_cdk1p3cycA_Wee1_Wee1p1)
  (prodbycatalyzedassociation_Wee1_cdk1p3cycA_Wee1p1)
  (needforcatalyzedassociation_Wee1_cdk1p3cycB_Wee1p1)
  (needforcatalyzedassociation_cdk1p3cycB_Wee1_Wee1p1)
  (prodbycatalyzedassociation_Wee1_cdk1p3cycB_Wee1p1)
)
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
			(increase (numsubs) 1.0)			(not (possible_cycB))			(chosen_cycB)
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
(:action choose__gE2
	:parameters ()
	:precondition (and  (possible_gE2))
	:effect (and 
			(increase (numsubs) 1.0)			(not (possible_gE2))			(chosen_gE2)
))
(:action choose__gEc
	:parameters ()
	:precondition (and  (possible_gEc))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_gEc)			(not (possible_gEc))
))
(:action choose__gERCC1
	:parameters ()
	:precondition (and  (possible_gERCC1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_gERCC1)			(not (possible_gERCC1))
))
(:action choose__gp19ARF
	:parameters ()
	:precondition (and  (possible_gp19ARF))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_gp19ARF)			(not (possible_gp19ARF))
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
			(increase (numsubs) 1.0)			(not (possible_cdk1p1p2))			(chosen_cdk1p1p2)
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
(:action choose__Chk1
	:parameters ()
	:precondition (and  (possible_Chk1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_Chk1)			(not (possible_Chk1))
))
(:action choose__Wee1
	:parameters ()
	:precondition (and  (possible_Wee1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_Wee1)			(not (possible_Wee1))
))
(:action choose__HDAC1p130E2F4p1DP12
	:parameters ()
	:precondition (and  (possible_HDAC1p130E2F4p1DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_HDAC1p130E2F4p1DP12)			(not (possible_HDAC1p130E2F4p1DP12))
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
			(increase (numsubs) 1.0)			(not (possible_Max))			(chosen_Max)
))
(:action choose__p27
	:parameters ()
	:precondition (and  (possible_p27))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p27)			(not (possible_p27))
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
(:action choose__RPA
	:parameters ()
	:precondition (and  (possible_RPA))
	:effect (and 
			(increase (numsubs) 1.0)			(not (possible_RPA))			(chosen_RPA)
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
(:action initialize__RPA
	:parameters ()
	:precondition (and  (chosen_RPA))
	:effect (and 
			(increase (available_RPA) 1.0)
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
(:action initialize__p27
	:parameters ()
	:precondition (and  (chosen_p27))
	:effect (and 
			(increase (available_p27) 1.0)
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
(:action initialize__gp19ARF
	:parameters ()
	:precondition (and  (chosen_gp19ARF))
	:effect (and 
			(increase (available_gp19ARF) 1.0)
))
(:action initialize__gERCC1
	:parameters ()
	:precondition (and  (chosen_gERCC1))
	:effect (and 
			(increase (available_gERCC1) 1.0)
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
(:action associatewithcatalyze__cdk2p2cycB__Wee1__cdk2p1p2cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p2cycB) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Wee1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1p2cycB) 1.0)			(decrease (available_cdk2p2cycB) 2.0)
))
(:action associatewithcatalyze__cdc25C__Plk1__cdc25Cp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25C) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Plk1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25Cp1) 3.0)			(decrease (available_cdc25C) 3.0)
))
(:action associate__E2F13p1DP12__gE2__E2F13p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13p1DP12) 3.0)			(decrease (available_gE2) 2.0)			(increase (available_E2F13p1DP12gE2) 1.0)
))
(:action associate__cdk2p1__cks1__cdk2p1cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 2.0)			(increase (available_cdk2p1cks1) 3.0)			(decrease (available_cdk2p1) 1.0)
))
(:action associate__HDAC1p130E2F4p1DP12__gE2__HDAC1p130E2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1p130E2F4p1DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1p130E2F4p1DP12) 2.0)			(decrease (available_gE2) 4.0)			(increase (available_HDAC1p130E2F4p1DP12gE2) 3.0)
))
(:action associatewithcatalyze__DMP1__cdk46p3cycDp1__DMP1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_DMP1p1) 3.0)			(decrease (available_DMP1) 1.0)
))
(:action associatewithcatalyze__pRb__cdk46p3cycDp1__pRbp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p3cycDp1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRb) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1) 2.0)			(decrease (available_pRb) 2.0)
))
(:action associate__cdk7__cycH__cdk7cycH
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycH) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk7) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cycH) 4.0)			(decrease (available_cdk7) 3.0)			(increase (available_cdk7cycH) 2.0)
))
(:action associate__HDAC1pRbp1E2F13DP12__gE2__HDAC1pRbp1E2F13DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1pRbp1E2F13DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(increase (available_HDAC1pRbp1E2F13DP12gE2) 2.0)			(decrease (available_HDAC1pRbp1E2F13DP12) 4.0)
))
(:action associatewithcatalyze__APC__Plk1__APCp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_APC) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Plk1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_APC) 3.0)			(increase (available_APCp1) 2.0)
))
(:action associate__cdk1p1p2__cks1__cdk1p1p2cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2) 4.0)			(increase (available_cdk1p1p2cks1) 1.0)			(decrease (available_cks1) 3.0)
))
(:action associate__E2F13DP12__gE2__E2F13DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(decrease (available_E2F13DP12) 1.0)			(increase (available_E2F13DP12gE2) 3.0)
))
(:action associate__pRb__E2F13DP12__pRbE2F13DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F13DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRb) 3.0)			(decrease (available_E2F13DP12) 3.0)			(increase (available_pRbE2F13DP12) 3.0)
))
(:action associate__cAbl__pRb__cAblpRb
	:parameters ()
	:precondition (and (>= (+ (*   (available_cAbl) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRb) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cAblpRb) 3.0)			(decrease (available_cAbl) 1.0)			(decrease (available_pRb) 2.0)
))
(:action associate__pRb__Jun__pRbJun
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Jun) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_Jun) 2.0)			(increase (available_pRbJun) 3.0)			(decrease (available_pRb) 1.0)
))
(:action associate__HDAC1p107E2F4p1DP12__gE2__HDAC1p107E2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1p107E2F4p1DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 1.0)			(increase (available_HDAC1p107E2F4p1DP12gE2) 1.0)			(decrease (available_HDAC1p107E2F4p1DP12) 2.0)
))
(:action synthesize__p53__cFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cFos) 2.0)
))
(:action associate__pRbE2F4p1DP12__gE2__pRbE2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbE2F4p1DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pRbE2F4p1DP12gE2) 1.0)			(decrease (available_gE2) 4.0)			(decrease (available_pRbE2F4p1DP12) 4.0)
))
(:action associate__pRb__E2F13p1DP12p1__pRbE2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pRbE2F13p1DP12p1) 2.0)			(decrease (available_E2F13p1DP12p1) 3.0)			(decrease (available_pRb) 2.0)
))
(:action associatewithcatalyze__cdc25C__CTAK1__cdc25Cp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25C) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_CTAK1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25C) 2.0)			(increase (available_cdc25Cp2) 1.0)
))
(:action synthesize__p53__Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Gadd45) 1.0)
))
(:action synthesize__p53p1__cFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cFos) 2.0)
))
(:action synthesize__p53__Mdm2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Mdm2) 1.0)
))
(:action synthesize__p53__p21
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p21) 2.0)
))
(:action synthesize__p53p1__Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Gadd45) 3.0)
))
(:action synthesize__p53p1__Mdm2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Mdm2) 3.0)
))
(:action associate__pRb__AP2__pRbAP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_AP2) 2.0)			(increase (available_pRbAP2) 4.0)			(decrease (available_pRb) 4.0)
))
(:action associate__HDAC1__pRbE2F4p1DP12__HDAC1pRbE2F4p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbE2F4p1DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1pRbE2F4p1DP12) 1.0)			(decrease (available_pRbE2F4p1DP12) 4.0)			(decrease (available_HDAC1) 4.0)
))
(:action associate__pRb__E2F13DP12p1__pRbE2F13DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRb) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pRbE2F13DP12p1) 3.0)			(decrease (available_E2F13DP12p1) 3.0)			(decrease (available_pRb) 4.0)
))
(:action synthesize__p53p1__p21
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p21) 3.0)
))
(:action associatewithcatalyze__cdc25C__Chk1__cdc25Cp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Chk1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25C) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25Cp2) 3.0)			(decrease (available_cdc25C) 4.0)
))
(:action associate__AP2__gEc__AP2gEc
	:parameters ()
	:precondition (and (>= (+ (*   (available_AP2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gEc) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_AP2gEc) 1.0)			(decrease (available_AP2) 4.0)			(decrease (available_gEc) 1.0)
))
(:action associate__pRb__E2F13p1DP12__pRbE2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13p1DP12) 4.0)			(increase (available_pRbE2F13p1DP12) 4.0)			(decrease (available_pRb) 4.0)
))
(:action associate__SP1__E2F13__SP1E2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F13) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_SP1) 3.0)			(decrease (available_E2F13) 1.0)			(increase (available_SP1E2F13) 4.0)
))
(:action associate__DMP1__gp19ARF__DMP1gp19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gp19ARF) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_gp19ARF) 3.0)			(increase (available_DMP1gp19ARF) 4.0)			(decrease (available_DMP1) 4.0)
))
(:action associate__HDAC1pRbp1E2F13p1DP12__gE2__HDAC1pRbp1E2F13p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1pRbp1E2F13p1DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 1.0)			(decrease (available_HDAC1pRbp1E2F13p1DP12) 3.0)			(increase (available_HDAC1pRbp1E2F13p1DP12gE2) 3.0)
))
(:action associate__pRbE2F13p1DP12p1__gE2__pRbE2F13p1DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbE2F13p1DP12p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbE2F13p1DP12p1) 3.0)			(increase (available_pRbE2F13p1DP12p1gE2) 1.0)			(decrease (available_gE2) 3.0)
))
(:action associate__pRbp1__E2F13DP12__pRbp1E2F13DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F13DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1E2F13DP12) 4.0)			(decrease (available_pRbp1) 3.0)			(decrease (available_E2F13DP12) 2.0)
))
(:action associatewithcatalyze__cdc25Cp2__Plk1__cdc25Cp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25Cp2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Plk1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25Cp2) 4.0)			(increase (available_cdc25Cp1p2) 4.0)
))
(:action associate__pRbp1__AP2__pRbp1AP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1AP2) 2.0)			(decrease (available_pRbp1) 2.0)			(decrease (available_AP2) 3.0)
))
(:action associate__pRbp1__E2F13DP12p1__pRbp1E2F13DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13DP12p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13DP12p1) 3.0)			(decrease (available_pRbp1) 4.0)			(increase (available_pRbp1E2F13DP12p1) 3.0)
))
(:action associate__pRbE2F13DP12__gE2__pRbE2F13DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbE2F13DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 2.0)			(increase (available_pRbE2F13DP12gE2) 2.0)			(decrease (available_pRbE2F13DP12) 1.0)
))
(:action associate__Mdm2__E2F13DP12p1__Mdm2E2F13DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_E2F13DP12p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13DP12p1) 4.0)			(decrease (available_Mdm2) 2.0)			(increase (available_Mdm2E2F13DP12p1) 2.0)
))
(:action associate__HDAC1__pRbE2F13p1DP12p1__HDAC1pRbE2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbE2F13p1DP12p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1pRbE2F13p1DP12p1) 2.0)			(decrease (available_HDAC1) 3.0)			(decrease (available_pRbE2F13p1DP12p1) 1.0)
))
(:action associate__Mdm2__E2F13p1DP12__Mdm2E2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Mdm2E2F13p1DP12) 1.0)			(decrease (available_E2F13p1DP12) 1.0)			(decrease (available_Mdm2) 2.0)
))
(:action associate__pRbp1__E2F13p1DP12__pRbp1E2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13p1DP12) 1.0)			(increase (available_pRbp1E2F13p1DP12) 2.0)			(decrease (available_pRbp1) 1.0)
))
(:action associate__m1433__cdc25Cp2__m1433cdc25Cp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_m1433) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25Cp2) 1.0)			(increase (available_m1433cdc25Cp2) 3.0)			(decrease (available_m1433) 4.0)
))
(:action associate__pRbAP2__gEc__pRbAP2gEc
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbAP2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gEc) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbAP2) 2.0)			(decrease (available_gEc) 3.0)			(increase (available_pRbAP2gEc) 4.0)
))
(:action associate__pRbE2F13p1DP12__gE2__pRbE2F13p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbE2F13p1DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 2.0)			(increase (available_pRbE2F13p1DP12gE2) 1.0)			(decrease (available_pRbE2F13p1DP12) 1.0)
))
(:action associatewithcatalyze__cdk2p1__cdk7cycH__cdk2p1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk7cycH) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1p2) 3.0)			(decrease (available_cdk2p1) 2.0)
))
(:action associate__Mdm2__E2F13DP12__Mdm2E2F13DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F13DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Mdm2E2F13DP12) 4.0)			(decrease (available_Mdm2) 3.0)			(decrease (available_E2F13DP12) 3.0)
))
(:action associate__pRbp1__E2F13p1DP12p1__pRbp1E2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1E2F13p1DP12p1) 4.0)			(decrease (available_E2F13p1DP12p1) 3.0)			(decrease (available_pRbp1) 4.0)
))
(:action associatewithcatalyze__cycB__APCp1__APCp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycB) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_APCp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_APCp1) 4.0)			(decrease (available_cycB) 2.0)
))
(:action associate__HDAC1__pRbE2F13p1DP12__HDAC1pRbE2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRbE2F13p1DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1pRbE2F13p1DP12) 1.0)			(decrease (available_pRbE2F13p1DP12) 4.0)			(decrease (available_HDAC1) 2.0)
))
(:action associate__pRbJun__cFos__pRbJuncFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_cFos) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbJun) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbJun) 3.0)			(increase (available_pRbJuncFos) 4.0)			(decrease (available_cFos) 1.0)
))
(:action selfassociatewithcatalyze__cdk7cycH__cdk7p1cycH
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk7cycH) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk7p1cycH) 3.0)			(decrease (available_cdk7cycH) 3.0)
))
(:action associatewithcatalyze__cdc25Cp1__Chk1__cdc25Cp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25Cp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Chk1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25Cp1p2) 2.0)			(decrease (available_cdc25Cp1) 2.0)
))
(:action associatewithcatalyze__cdk1p1p2__cdc25Cp1__cdk1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2) 2.0)			(increase (available_cdk1p1) 1.0)
))
(:action associate__Mdm2__E2F13p1DP12p1__Mdm2E2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13p1DP12p1) 1.0)			(increase (available_Mdm2E2F13p1DP12p1) 4.0)			(decrease (available_Mdm2) 2.0)
))
(:action associate__HDAC1__pRbE2F13DP12__HDAC1pRbE2F13DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbE2F13DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1pRbE2F13DP12) 3.0)			(decrease (available_pRbE2F13DP12) 1.0)			(decrease (available_HDAC1) 1.0)
))
(:action associate__HDAC1__pRbE2F13DP12p1__HDAC1pRbE2F13DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbE2F13DP12p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_HDAC1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1pRbE2F13DP12p1) 1.0)			(decrease (available_HDAC1) 3.0)			(decrease (available_pRbE2F13DP12p1) 3.0)
))
(:action associatewithcatalyze__cdk1p1p2__cdc25Cp1__cdk1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2) 1.0)			(increase (available_cdk1p2) 4.0)
))
(:action associate__cAbl__pRbp1__cAblpRbp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cAbl) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRbp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cAblpRbp1) 1.0)			(decrease (available_cAbl) 2.0)			(decrease (available_pRbp1) 4.0)
))
(:action associate__Mdm2__pRb__Mdm2pRb
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRb) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Mdm2pRb) 3.0)			(decrease (available_pRb) 3.0)			(decrease (available_Mdm2) 1.0)
))
(:action associatewithcatalyze__cdk1p1p2__cdk7cycH__cdk1p1p2p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk7cycH) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk1p1p2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2) 1.0)			(increase (available_cdk1p1p2p3) 3.0)
))
(:action synthesize__E2F13p1DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 2.0)
))
(:action associate__p21__Gadd45__p21Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p21) 3.0)			(increase (available_p21Gadd45) 2.0)			(decrease (available_Gadd45) 4.0)
))
(:action synthesize__E2F13p1DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 3.0)
))
(:action synthesize__E2F13p1DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 4.0)
))
(:action synthesize__E2F13p1DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 4.0)
))
(:action synthesize__E2F13p1DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 2.0)
))
(:action synthesize__E2F13p1DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 3.0)
))
(:action synthesize__E2F13p1DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 3.0)
))
(:action synthesize__E2F13p1DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 3.0)
))
(:action synthesize__E2F13p1DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 2.0)
))
(:action synthesize__E2F13p1DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 3.0)
))
(:action associate__Mdm2__pRbp1__Mdm2pRbp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Mdm2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Mdm2pRbp1) 2.0)			(decrease (available_Mdm2) 1.0)			(decrease (available_pRbp1) 1.0)
))
(:action synthesize__E2F13DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 4.0)
))
(:action synthesize__E2F13DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 1.0)
))
(:action associate__pRbp1__Jun__pRbp1Jun
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Jun) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1Jun) 2.0)			(decrease (available_Jun) 1.0)			(decrease (available_pRbp1) 2.0)
))
(:action synthesize__E2F13DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 2.0)
))
(:action synthesize__E2F13DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 2.0)
))
(:action synthesize__E2F13DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 4.0)
))
(:action associate__pRbE2F13DP12p1__gE2__pRbE2F13DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbE2F13DP12p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbE2F13DP12p1) 4.0)			(decrease (available_gE2) 3.0)			(increase (available_pRbE2F13DP12p1gE2) 2.0)
))
(:action synthesize__E2F13DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 4.0)
))
(:action synthesize__E2F13DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 4.0)
))
(:action synthesize__E2F13DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 1.0)
))
(:action synthesize__E2F13DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 2.0)
))
(:action synthesize__E2F13DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 4.0)
))
(:action associatewithcatalyze__cdk7__cdk7cycH__cdk7p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk7) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk7p1) 2.0)			(decrease (available_cdk7) 1.0)
))
(:action associate__Jun__cFos__JuncFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_cFos) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Jun) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_Jun) 2.0)			(decrease (available_cFos) 2.0)			(increase (available_JuncFos) 1.0)
))
(:action associate__DMP1p1__gp19ARF__DMP1p1gp19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gp19ARF) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gp19ARF) 1.0)			(decrease (available_DMP1p1) 4.0)			(increase (available_DMP1p1gp19ARF) 3.0)
))
(:action associatewithcatalyze__cdc25Cp1__CTAK1__cdc25Cp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25Cp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_CTAK1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25Cp1) 3.0)			(increase (available_cdc25Cp1p2) 1.0)
))
(:action synthesize__AP2gEc__Ecadherin
	:parameters ()
	:precondition (and (>= (+ (*   (available_AP2gEc) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Ecadherin) 1.0)
))
(:action associate__cdk1p1p2__Gadd45__cdk1p1p2Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2) 1.0)			(decrease (available_Gadd45) 3.0)			(increase (available_cdk1p1p2Gadd45) 4.0)
))
(:action associate__pRbJuncFos__gERCC1__pRbJuncFosgERCC1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbJuncFos) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gERCC1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gERCC1) 4.0)			(decrease (available_pRbJuncFos) 2.0)			(increase (available_pRbJuncFosgERCC1) 1.0)
))
(:action associate__cdk2p1p2__cycE__cdk2p1p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1p2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycE) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1p2) 2.0)			(decrease (available_cycE) 4.0)			(increase (available_cdk2p1p2cycE) 4.0)
))
(:action associatewithcatalyze__cdk1p1__cdk7cycH__cdk1p1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1) 2.0)			(increase (available_cdk1p1p3) 3.0)
))
(:action associate__cdk2p1p2__cycA__cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1p2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cycA) 3.0)			(decrease (available_cdk2p1p2) 1.0)			(increase (available_cdk2p1p2cycA) 3.0)
))
(:action associatewithcatalyze__cdk1p1__cdc25Cp1__cdk1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1) 2.0)			(decrease (available_cdk1p1) 1.0)
))
(:action associate__m1433__cdc25Cp1p2__m1433cdc25Cp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_m1433) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25Cp1p2) 4.0)			(decrease (available_m1433) 2.0)			(increase (available_m1433cdc25Cp1p2) 3.0)
))
(:action associate__HDAC1pRbE2F13DP12__gE2__HDAC1pRbE2F13DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1pRbE2F13DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 1.0)			(decrease (available_HDAC1pRbE2F13DP12) 3.0)			(increase (available_HDAC1pRbE2F13DP12gE2) 1.0)
))
(:action associatewithcatalyze__cdk1p2__cdk7cycH__cdk1p2p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p2) 3.0)			(increase (available_cdk1p2p3) 2.0)
))
(:action associate__pRbp1E2F13DP12p1__gE2__pRbp1E2F13DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1E2F13DP12p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(decrease (available_pRbp1E2F13DP12p1) 1.0)			(increase (available_pRbp1E2F13DP12p1gE2) 4.0)
))
(:action associate__cMyc__Max__cMycMax
	:parameters ()
	:precondition (and (>= (+ (*   (available_cMyc) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Max) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cMyc) 4.0)			(decrease (available_Max) 4.0)			(increase (available_cMycMax) 1.0)
))
(:action associate__pRbp1Jun__cFos__pRbp1JuncFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1Jun) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cFos) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cFos) 3.0)			(decrease (available_pRbp1Jun) 2.0)			(increase (available_pRbp1JuncFos) 2.0)
))
(:action associate__cdk1p1p2p3__cks1__cdk1p1p2p3cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 4.0)			(decrease (available_cdk1p1p2p3) 2.0)			(increase (available_cdk1p1p2p3cks1) 2.0)
))
(:action associate__cdk7p1__cycH__cdk7p1cycH
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk7p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycH) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk7p1cycH) 3.0)			(decrease (available_cycH) 4.0)			(decrease (available_cdk7p1) 3.0)
))
(:action associate__cdk1p1p2p3__cycA__cdk1p1p2p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2p3) 2.0)			(increase (available_cdk1p1p2p3cycA) 2.0)			(decrease (available_cycA) 2.0)
))
(:action associatewithcatalyze__cdk1p1__cdc25Cp1p2__cdk1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1) 3.0)			(decrease (available_cdk1p1) 1.0)
))
(:action associate__cdk1p1__Gadd45__cdk1p1Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1Gadd45) 4.0)			(decrease (available_Gadd45) 3.0)			(decrease (available_cdk1p1) 4.0)
))
(:action associate__cdk1p2__cks1__cdk1p2cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 3.0)			(decrease (available_cdk1p2) 4.0)			(increase (available_cdk1p2cks1) 1.0)
))
(:action associate__RPA__cycA__RPAcycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_RPA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_RPA) 1.0)			(increase (available_RPAcycA) 2.0)			(decrease (available_cycA) 4.0)
))
(:action associate__DMP1p1__cycDp1__DMP1p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycDp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_DMP1p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_DMP1p1cycDp1) 4.0)			(decrease (available_cycDp1) 2.0)			(decrease (available_DMP1p1) 2.0)
))
(:action associate__JuncFos__gERCC1__JuncFosgERCC1
	:parameters ()
	:precondition (and (>= (+ (*   (available_JuncFos) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gERCC1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_JuncFosgERCC1) 1.0)			(decrease (available_gERCC1) 2.0)			(decrease (available_JuncFos) 2.0)
))
(:action associate__cdk2p1__cycEp1__cdk2p1cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycEp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1cycEp1) 2.0)			(decrease (available_cycEp1) 2.0)			(decrease (available_cdk2p1) 2.0)
))
(:action associate__pRbp1E2F13p1DP12p1__gE2__pRbp1E2F13p1DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1E2F13p1DP12p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1E2F13p1DP12p1gE2) 3.0)			(decrease (available_gE2) 3.0)			(decrease (available_pRbp1E2F13p1DP12p1) 4.0)
))
(:action associatewithcatalyze__cdk1p1p2p3__cdc25Cp1__cdk1p2p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2p3) 1.0)			(increase (available_cdk1p2p3) 2.0)
))
(:action associate__DMP1p1__cycD__DMP1p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cycD) 1.0)			(decrease (available_DMP1p1) 1.0)			(increase (available_DMP1p1cycD) 3.0)
))
(:action associatewithcatalyze__cdk1p1p2p3__cdc25Cp1__cdk1p1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p3) 2.0)			(decrease (available_cdk1p1p2p3) 3.0)
))
(:action associate__cdk2p1__cycE__cdk2p1cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycE) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cycE) 2.0)			(increase (available_cdk2p1cycE) 3.0)			(decrease (available_cdk2p1) 2.0)
))
(:action associate__cdk2p1p2__cks1__cdk2p1p2cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1p2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1p2) 4.0)			(decrease (available_cks1) 1.0)			(increase (available_cdk2p1p2cks1) 4.0)
))
(:action associate__pRbp1AP2__gEc__pRbp1AP2gEc
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1AP2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gEc) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1AP2) 2.0)			(increase (available_pRbp1AP2gEc) 2.0)			(decrease (available_gEc) 2.0)
))
(:action associate__pRbp1E2F13DP12__gE2__pRbp1E2F13DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1E2F13DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 1.0)			(increase (available_pRbp1E2F13DP12gE2) 3.0)			(decrease (available_pRbp1E2F13DP12) 4.0)
))
(:action associate__cMyc__AP2__cMycAP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cMyc) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cMyc) 1.0)			(decrease (available_AP2) 4.0)			(increase (available_cMycAP2) 3.0)
))
(:action associatewithcatalyze__cdk1p2__cdc25Cp1__cdk1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1) 1.0)			(decrease (available_cdk1p2) 2.0)
))
(:action associate__cdk1p1p2p3__cycB__cdk1p1p2p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycB) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2p3) 4.0)			(decrease (available_cycB) 2.0)			(increase (available_cdk1p1p2p3cycB) 4.0)
))
(:action associate__cdk1p1__cks1__cdk1p1cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cks1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk1p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 1.0)			(decrease (available_cdk1p1) 3.0)			(increase (available_cdk1p1cks1) 2.0)
))
(:action associate__SP1__p107p1__SP1p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p107p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p107p1) 4.0)			(decrease (available_SP1) 2.0)			(increase (available_SP1p107p1) 4.0)
))
(:action synthesize__pRbAP2gEc__Ecadherin
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbAP2gEc) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Ecadherin) 3.0)
))
(:action associate__cdk2p1p2__cycEp1__cdk2p1p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1p2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycEp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1p2) 2.0)			(increase (available_cdk2p1p2cycEp1) 4.0)			(decrease (available_cycEp1) 4.0)
))
(:action associate__cdk1p1p2p3__Gadd45__cdk1p1p2p3Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2p3) 2.0)			(decrease (available_Gadd45) 3.0)			(increase (available_cdk1p1p2p3Gadd45) 2.0)
))
(:action associatewithcatalyze__cdk1p1p2p3__cdc25Cp1p2__cdk1p2p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2p3) 2.0)			(increase (available_cdk1p2p3) 2.0)
))
(:action associatewithcatalyze__cdk1p1p2p3__cdc25Cp1p2__cdk1p1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p3) 4.0)			(decrease (available_cdk1p1p2p3) 3.0)
))
(:action associatewithcatalyze__cdk1p1p2__cdc25Cp1p2__cdk1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p2) 2.0)			(decrease (available_cdk1p1p2) 4.0)
))
(:action associate__SP1__p107__SP1p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_p107) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_SP1p107) 4.0)			(decrease (available_p107) 3.0)			(decrease (available_SP1) 4.0)
))
(:action synthesize__DMP1p1gp19ARF__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1p1gp19ARF) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 1.0)
))
(:action associate__cdk1p2__Gadd45__cdk1p2Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p2Gadd45) 2.0)			(decrease (available_cdk1p2) 1.0)			(decrease (available_Gadd45) 2.0)
))
(:action associate__HDAC1pRbE2F13p1DP12__gE2__HDAC1pRbE2F13p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1pRbE2F13p1DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1pRbE2F13p1DP12) 1.0)			(increase (available_HDAC1pRbE2F13p1DP12gE2) 3.0)			(decrease (available_gE2) 3.0)
))
(:action associate__pRbp1E2F13p1DP12__gE2__pRbp1E2F13p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbp1E2F13p1DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1E2F13p1DP12) 1.0)			(increase (available_pRbp1E2F13p1DP12gE2) 1.0)			(decrease (available_gE2) 3.0)
))
(:action associate__DMP1__cycDp1__DMP1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_DMP1cycDp1) 1.0)			(decrease (available_DMP1) 4.0)			(decrease (available_cycDp1) 3.0)
))
(:action associatewithcatalyze__cdk1p1p2__cdc25Cp1p2__cdk1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2) 4.0)			(increase (available_cdk1p1) 1.0)
))
(:action associate__cdk2p1__cycA__cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1cycA) 1.0)			(decrease (available_cycA) 1.0)			(decrease (available_cdk2p1) 2.0)
))
(:action associatewithcatalyze__cdk1p2__cdc25Cp1p2__cdk1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1) 1.0)			(decrease (available_cdk1p2) 2.0)
))
(:action associate__DMP1__cycD__DMP1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cycD) 2.0)			(increase (available_DMP1cycD) 2.0)			(decrease (available_DMP1) 4.0)
))
(:action associate__p27__cdk2p1cycE__p27cdk2p1cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycE) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p27cdk2p1cycE) 4.0)			(decrease (available_p27) 1.0)			(decrease (available_cdk2p1cycE) 2.0)
))
(:action associate__cdk2p1cycA__E2F13__cdk2p1cycAE2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycA) 4.0)			(increase (available_cdk2p1cycAE2F13) 4.0)			(decrease (available_E2F13) 1.0)
))
(:action associate__cdk1p2p3__cycB__cdk1p2p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycB) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk1p2p3) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p2p3cycB) 3.0)			(decrease (available_cycB) 3.0)			(decrease (available_cdk1p2p3) 4.0)
))
(:action associatewithcatalyze__cdk1p2p3__cdc25Cp1__cdk1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25Cp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk1p2p3) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p3) 1.0)			(decrease (available_cdk1p2p3) 1.0)
))
(:action associate__p27__cdk2p1cycEp1__p27cdk2p1cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycEp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycEp1) 1.0)			(increase (available_p27cdk2p1cycEp1) 4.0)			(decrease (available_p27) 3.0)
))
(:action associatewithcatalyze__cdk2p1cycE__cdk7cycH__cdk2p1p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycE) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1p2cycE) 3.0)			(decrease (available_cdk2p1cycE) 4.0)
))
(:action associate__p27__cdk2p1p2cycE__p27cdk2p1p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycE) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1p2cycE) 1.0)			(increase (available_p27cdk2p1p2cycE) 2.0)			(decrease (available_p27) 3.0)
))
(:action associatewithcatalyze__cdk1__cdk7cycH__cdk1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk7cycH) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p3) 1.0)			(decrease (available_cdk1) 3.0)
))
(:action associate__cdk1__cks1__cdk1cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 2.0)			(increase (available_cdk1cks1) 2.0)			(decrease (available_cdk1) 2.0)
))
(:action associate__p27__cdk2p1p2cycEp1__p27cdk2p1p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycEp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p27cdk2p1p2cycEp1) 3.0)			(decrease (available_cdk2p1p2cycEp1) 3.0)			(decrease (available_p27) 4.0)
))
(:action associatewithcatalyze__cdk1p1p2p3cycA__cdc25Cp1p2__cdk1p2p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25Cp1p2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk1p1p2p3cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2p3cycA) 2.0)			(increase (available_cdk1p2p3cycA) 3.0)
))
(:action associate__cdk1p2p3__cks1__cdk1p2p3cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 4.0)			(increase (available_cdk1p2p3cks1) 3.0)			(decrease (available_cdk1p2p3) 1.0)
))
(:action associatewithcatalyze__cdk1p1p2p3cycA__cdc25Cp1p2__cdk1p1p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2p3cycA) 4.0)			(increase (available_cdk1p1p3cycA) 1.0)
))
(:action associatewithcatalyze__cdk2p1cycEp1__cdk7cycH__cdk2p1p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycEp1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycEp1) 4.0)			(increase (available_cdk2p1p2cycEp1) 2.0)
))
(:action associatewithcatalyze__cdk1p2p3__cdc25Cp1p2__cdk1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p2p3) 1.0)			(increase (available_cdk1p3) 3.0)
))
(:action associate__p57__cdk2p1p2cycA__p57cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p57) 1.0)			(increase (available_p57cdk2p1p2cycA) 4.0)			(decrease (available_cdk2p1p2cycA) 2.0)
))
(:action associate__p21__cdk2p1p2cycA__p21cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p21cdk2p1p2cycA) 4.0)			(decrease (available_cdk2p1p2cycA) 3.0)			(decrease (available_p21) 1.0)
))
(:action associate__cdk1__Gadd45__cdk1Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1) 3.0)			(increase (available_cdk1Gadd45) 3.0)			(decrease (available_Gadd45) 1.0)
))
(:action synthesize__pRbJuncFosgERCC1__ERCC1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbJuncFosgERCC1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_ERCC1) 1.0)
))
(:action associate__p21__cdk2p1cycA__p21cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p21) 3.0)			(decrease (available_cdk2p1cycA) 2.0)			(increase (available_p21cdk2p1cycA) 3.0)
))
(:action associate__p57__cdk2p1cycA__p57cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p57) 1.0)			(decrease (available_cdk2p1cycA) 4.0)			(increase (available_p57cdk2p1cycA) 1.0)
))
(:action associate__cdk2p1p2cycA__E2F13__cdk2p1p2cycAE2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1p2cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13) 3.0)			(increase (available_cdk2p1p2cycAE2F13) 4.0)			(decrease (available_cdk2p1p2cycA) 4.0)
))
(:action associate__pRbp1JuncFos__gERCC1__pRbp1JuncFosgERCC1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1JuncFos) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gERCC1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gERCC1) 1.0)			(increase (available_pRbp1JuncFosgERCC1) 3.0)			(decrease (available_pRbp1JuncFos) 3.0)
))
(:action associatewithcatalyze__cdk1p1p2p3cycB__cdc25Cp1p2__cdk1p1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3cycB) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p3cycB) 1.0)			(decrease (available_cdk1p1p2p3cycB) 3.0)
))
(:action associatewithcatalyze__cdk1p1p2p3cycB__cdc25Cp1p2__cdk1p2p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3cycB) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2p3cycB) 3.0)			(increase (available_cdk1p2p3cycB) 4.0)
))
(:action associate__cdk1p1p3__Gadd45__cdk1p1p3Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p3) 4.0)			(increase (available_cdk1p1p3Gadd45) 1.0)			(decrease (available_Gadd45) 4.0)
))
(:action associatewithcatalyze__cdk1p1p3__cdc25Cp1p2__cdk1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p3) 4.0)			(increase (available_cdk1p3) 3.0)
))
(:action associate__p57__cdk2p1p2cycE__p57cdk2p1p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycE) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2p1p2cycE) 1.0)			(decrease (available_cdk2p1p2cycE) 4.0)			(decrease (available_p57) 1.0)
))
(:action associate__p21__cdk2p1p2cycE__p21cdk2p1p2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycE) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p21cdk2p1p2cycE) 1.0)			(decrease (available_cdk2p1p2cycE) 3.0)			(decrease (available_p21) 2.0)
))
(:action associate__cdk1p1p3__cycA__cdk1p1p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cycA) 3.0)			(decrease (available_cdk1p1p3) 1.0)			(increase (available_cdk1p1p3cycA) 2.0)
))
(:action associatewithcatalyze__cdk1p1p2p3cycA__cdc25Cp1__cdk1p1p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3cycA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2p3cycA) 2.0)			(increase (available_cdk1p1p3cycA) 4.0)
))
(:action associatewithcatalyze__cdk1p1p2p3cycA__cdc25Cp1__cdk1p2p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3cycA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2p3cycA) 2.0)			(increase (available_cdk1p2p3cycA) 4.0)
))
(:action associate__p57__cdk2p1p2cycEp1__p57cdk2p1p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycEp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1p2cycEp1) 3.0)			(increase (available_p57cdk2p1p2cycEp1) 1.0)			(decrease (available_p57) 3.0)
))
(:action associate__Skp2__cdk2p1p2cycA__Skp2cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2cdk2p1p2cycA) 1.0)			(decrease (available_cdk2p1p2cycA) 1.0)			(decrease (available_Skp2) 1.0)
))
(:action associate__p21__cdk2p1p2cycEp1__p21cdk2p1p2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycEp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p21) 3.0)			(decrease (available_cdk2p1p2cycEp1) 1.0)			(increase (available_p21cdk2p1p2cycEp1) 2.0)
))
(:action synthesize__JuncFosgERCC1__ERCC1
	:parameters ()
	:precondition (and (>= (+ (*   (available_JuncFosgERCC1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_ERCC1) 3.0)
))
(:action synthesize__pRbp1AP2gEc__Ecadherin
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1AP2gEc) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Ecadherin) 4.0)
))
(:action associate__cdk1p2p3__Gadd45__cdk1p2p3Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p2p3) 4.0)			(increase (available_cdk1p2p3Gadd45) 1.0)			(decrease (available_Gadd45) 4.0)
))
(:action associatewithcatalyze__cdk1p1p2p3cycB__cdc25Cp1__cdk1p1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3cycB) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p3cycB) 2.0)			(decrease (available_cdk1p1p2p3cycB) 1.0)
))
(:action associatewithcatalyze__cdk1p1p2p3cycB__cdc25Cp1__cdk1p2p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2p3cycB) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p2p3cycB) 4.0)			(decrease (available_cdk1p1p2p3cycB) 2.0)
))
(:action associatewithcatalyze__cdk1p1p3__cdc25Cp1__cdk1p3
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p3) 4.0)			(decrease (available_cdk1p1p3) 1.0)
))
(:action associate__cdk1p1p3__cycB__cdk1p1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycB) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p3cycB) 3.0)			(decrease (available_cycB) 4.0)			(decrease (available_cdk1p1p3) 3.0)
))
(:action associate__p21__cdk2p1cycE__p21cdk2p1cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycE) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p21) 3.0)			(increase (available_p21cdk2p1cycE) 4.0)			(decrease (available_cdk2p1cycE) 4.0)
))
(:action associate__Skp2__cdk2p1cycA__Skp2cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Skp2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycA) 2.0)			(increase (available_Skp2cdk2p1cycA) 4.0)			(decrease (available_Skp2) 4.0)
))
(:action associate__p57__cdk2p1cycE__p57cdk2p1cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycE) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_p57) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2p1cycE) 1.0)			(decrease (available_p57) 2.0)			(decrease (available_cdk2p1cycE) 4.0)
))
(:action associate__p27__cdk2p1p2cycA__p27cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p1p2cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 2.0)			(decrease (available_cdk2p1p2cycA) 4.0)			(increase (available_p27cdk2p1p2cycA) 1.0)
))
(:action associate__p21__cdk2p1cycEp1__p21cdk2p1cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycEp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p21) 3.0)			(increase (available_p21cdk2p1cycEp1) 4.0)			(decrease (available_cdk2p1cycEp1) 3.0)
))
(:action associate__p57__cdk2p1cycEp1__p57cdk2p1cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycEp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p57) 1.0)			(increase (available_p57cdk2p1cycEp1) 1.0)			(decrease (available_cdk2p1cycEp1) 1.0)
))
(:action associatewithcatalyze__cdk2p1cycA__cdk7cycH__cdk2p1p2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk7cycH) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycA) 4.0)			(increase (available_cdk2p1p2cycA) 4.0)
))
(:action associate__cdk1p1p3__cks1__cdk1p1p3cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cks1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk1p1p3) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p3cks1) 4.0)			(decrease (available_cks1) 4.0)			(decrease (available_cdk1p1p3) 1.0)
))
(:action associate__cdk1p2p3__cycA__cdk1p2p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p2p3cycA) 2.0)			(decrease (available_cdk1p2p3) 2.0)			(decrease (available_cycA) 1.0)
))
(:action associate__p27__cdk2p1cycA__p27cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_p27) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycA) 1.0)			(increase (available_p27cdk2p1cycA) 2.0)			(decrease (available_p27) 3.0)
))
(:action associatewithcatalyze__cdk1p1p3cycA__cdc25Cp1__cdk1p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3cycA) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p3cycA) 2.0)			(decrease (available_cdk1p1p3cycA) 3.0)
))
(:action associate__cdk1p3__Gadd45__cdk1p3Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p3) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p3Gadd45) 2.0)			(decrease (available_cdk1p3) 1.0)			(decrease (available_Gadd45) 2.0)
))
(:action associatewithcatalyze__cdk1p1p3cycB__cdc25Cp1__cdk1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3cycB) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p3cycB) 1.0)			(increase (available_cdk1p3cycB) 4.0)
))
(:action associate__cdk1p3__cycA__cdk1p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p3) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p3cycA) 3.0)			(decrease (available_cdk1p3) 1.0)			(decrease (available_cycA) 4.0)
))
(:action associatewithcatalyze__cdk1p1p3cycA__Wee1__cdk1p1p2p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Wee1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p3cycA) 4.0)			(increase (available_cdk1p1p2p3cycA) 1.0)
))
(:action associatewithcatalyze__cdk1p2p3cycA__cdc25Cp1__cdk1p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p3cycA) 3.0)			(decrease (available_cdk1p2p3cycA) 4.0)
))
(:action associatewithcatalyze__cdk1p2p3cycA__cdc25Cp1p2__cdk1p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3cycA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p2p3cycA) 2.0)			(increase (available_cdk1p3cycA) 2.0)
))
(:action associatewithcatalyze__cdk1p1p3cycB__Wee1__cdk1p1p2p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3cycB) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Wee1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p1p2p3cycB) 3.0)			(decrease (available_cdk1p1p3cycB) 1.0)
))
(:action associatewithcatalyze__cdk1p2p3cycB__cdc25Cp1__cdk1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3cycB) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p2p3cycB) 2.0)			(increase (available_cdk1p3cycB) 4.0)
))
(:action associatewithcatalyze__cdk1p1p3cycA__cdc25Cp1p2__cdk1p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25Cp1p2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk1p1p3cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p3cycA) 4.0)			(increase (available_cdk1p3cycA) 2.0)
))
(:action synthesize__pRbp1JuncFosgERCC1__ERCC1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1JuncFosgERCC1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_ERCC1) 2.0)
))
(:action associate__cdk1p3__cks1__cdk1p3cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p3) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cks1) 4.0)			(decrease (available_cdk1p3) 1.0)			(increase (available_cdk1p3cks1) 2.0)
))
(:action associatewithcatalyze__cdk1p2p3cycB__cdc25Cp1p2__cdk1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p2p3cycB) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p2p3cycB) 3.0)			(increase (available_cdk1p3cycB) 1.0)
))
(:action associate__cdk1p3__cycB__cdk1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p3) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycB) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p3) 2.0)			(decrease (available_cycB) 4.0)			(increase (available_cdk1p3cycB) 2.0)
))
(:action associatewithcatalyze__cdk1p1p3cycB__cdc25Cp1p2__cdk1p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p3cycB) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp1p2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p3cycB) 4.0)			(increase (available_cdk1p3cycB) 1.0)
))
(:action associatewithcatalyze__cdk1p3cycB__Wee1__cdk1p2p3cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p3cycB) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Wee1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk1p2p3cycB) 1.0)			(decrease (available_cdk1p3cycB) 4.0)
))
(:action associatewithcatalyze__cdc25Cp2__cdk1p3cycA__cdc25Cp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25Cp2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk1p3cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25Cp1p2) 2.0)			(decrease (available_cdc25Cp2) 3.0)
))
(:action associatewithcatalyze__Wee1__cdk1p3cycA__Wee1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Wee1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk1p3cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_Wee1) 4.0)			(increase (available_Wee1p1) 4.0)
))
(:action associatewithcatalyze__Wee1__cdk1p3cycB__Wee1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Wee1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk1p3cycB) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_Wee1) 2.0)			(increase (available_Wee1p1) 4.0)
))
(:action associatewithcatalyze__cdc25C__cdk1p3cycB__cdc25Cp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25C) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk1p3cycB) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25Cp1) 1.0)			(decrease (available_cdc25C) 1.0)
))
(:action associatewithcatalyze__cdc25Cp2__cdk1p3cycB__cdc25Cp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25Cp2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk1p3cycB) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25Cp2) 3.0)			(increase (available_cdc25Cp1p2) 3.0)
))
(:action associatewithcatalyze__cdc25C__cdk1p3cycA__cdc25Cp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25C) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk1p3cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25Cp1) 4.0)			(decrease (available_cdc25C) 3.0)
))
(:action associatewithcatalyze__cdk1p3cycA__Wee1__cdk1p2p3cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p3cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Wee1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p3cycA) 4.0)			(increase (available_cdk1p2p3cycA) 3.0)
))


)