(define (domain PathwaysMetric)
(:predicates  (possible_Wee1)
 (possible_SP1)
 (possible_Skp2)
 (possible_RPA)
 (possible_Raf1)
 (possible_pRbp2)
 (possible_pRbp1E2F4p1DP12)
 (possible_pRbE2F4p1DP12)
 (possible_pRb)
 (possible_pCAF)
 (possible_p57p1)
 (possible_p57)
 (possible_p300)
 (possible_p16)
 (possible_p130E2F5p1DP12)
 (possible_p130)
 (possible_Jun)
 (possible_HDAC1)
 (possible_gP)
 (possible_gEc)
 (possible_E2F6)
 (possible_E2F5)
 (possible_E2F4)
 (possible_E2F13p1DP12p1)
 (possible_E2F13p1DP12)
 (possible_E2F13DP12p1)
 (possible_E2F13DP12)
 (possible_DP12)
 (possible_cks1)
 (possible_cdk46p3cycDp1)
 (possible_cdk46p3cycD)
 (possible_cdk46p1)
 (possible_cdk2p2cycB)
 (possible_cdk2p1)
 (possible_AP2)
 (chosen_HDAC1)
 (chosen_gP)
 (chosen_gEc)
 (chosen_E2F6)
 (chosen_E2F5)
 (chosen_E2F4)
 (chosen_E2F13p1DP12p1)
 (chosen_E2F13p1DP12)
 (chosen_E2F13DP12p1)
 (chosen_E2F13DP12)
 (chosen_DP12)
 (chosen_cks1)
 (chosen_cdk46p3cycDp1)
 (chosen_cdk46p3cycD)
 (chosen_cdk46p1)
 (chosen_cdk2p2cycB)
 (chosen_cdk2p1)
 (chosen_AP2)
 (chosen_Wee1)
 (chosen_SP1)
 (chosen_Skp2)
 (chosen_RPA)
 (chosen_Raf1)
 (chosen_pRbp2)
 (chosen_pRbp1E2F4p1DP12)
 (chosen_pRbE2F4p1DP12)
 (chosen_pRb)
 (chosen_pCAF)
 (chosen_p57p1)
 (chosen_p57)
 (chosen_p300)
 (chosen_p16)
 (chosen_p130E2F5p1DP12)
 (chosen_p130)
 (chosen_Jun)
)
(:functions   (numsubs)
  (available_Wee1)
  (available_SP1)
  (available_Skp2)
  (available_RPA)
  (available_Raf1)
  (available_pRbp2)
  (available_pRbp1E2F4p1DP12)
  (available_pRbE2F4p1DP12)
  (available_pRb)
  (available_pCAF)
  (available_p57p1)
  (available_p57)
  (available_p300)
  (available_p16)
  (available_p130E2F5p1DP12)
  (available_p130)
  (available_Jun)
  (available_HDAC1)
  (available_gP)
  (available_gEc)
  (available_E2F6)
  (available_E2F5)
  (available_E2F4)
  (available_E2F13p1DP12p1)
  (available_E2F13p1DP12)
  (available_E2F13DP12p1)
  (available_E2F13DP12)
  (available_DP12)
  (available_cks1)
  (available_cdk46p3cycDp1)
  (available_cdk46p3cycD)
  (available_cdk46p1)
  (available_cdk2p2cycB)
  (available_cdk2p1)
  (available_AP2)
  (available_AP2gEc)
  (available_cdk2p1cks1)
  (available_cdk2p1p2cycB)
  (available_cMycAP2)
  (available_E2F6DP12)
  (available_HDAC1p107E2F4DP12)
  (available_HDAC1p130E2F4DP12)
  (available_HDAC1p130E2F5DP12)
  (available_HDAC1pRbE2F13DP12)
  (available_HDAC1pRbE2F13DP12p1)
  (available_HDAC1pRbE2F13p1DP12)
  (available_HDAC1pRbE2F13p1DP12p1)
  (available_HDAC1pRbE2F4DP12)
  (available_HDAC1pRbE2F4p1DP12)
  (available_p107E2F4DP12)
  (available_E2F5DP12)
  (available_p16cdk46p1)
  (available_p57cdk2p1cycA)
  (available_p57cdk2p1cycEp1)
  (available_p57cdk2p1cycE)
  (available_p57cdk46p1cycDp1)
  (available_p57cdk46p1cycD)
  (available_p57p1cdk46p1cycDp1)
  (available_p57p1cdk46p1cycD)
  (available_pCAFp300)
  (available_cdk2p1cycEp1)
  (available_cdk2p1cycE)
  (available_cdk46p1cycDp1)
  (available_cdk46p1cycD)
  (available_pRbAP2gEc)
  (available_pRbAP2)
  (available_pRbJun)
  (available_pRbp1AP2gEc)
  (available_pRbp1AP2)
  (available_E2F4DP12)
  (available_pRbp1Jun)
  (available_pRbp1)
  (available_pRbp1p2AP2gEc)
  (available_pRbp1p2AP2)
  (available_pRbp1p2Jun)
  (available_Ecadherin)
  (available_pRbp2AP2gEc)
  (available_pRbp2AP2)
  (available_pRbp1p2)
  (available_pRbp2Jun)
  (available_Raf1p130E2F4DP12)
  (available_p130E2F4DP12)
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
  (available_Raf1pRbE2F4p1DP12)
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
  (available_RPAcycA)
  (available_Skp2cdk2p1cycA)
  (available_cdk2p1cycA)
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
  (needforassociation_AP2_gEc_AP2gEc)
  (needforassociation_gEc_AP2_AP2gEc)
  (prodbyassociation_AP2_gEc_AP2gEc)
  (needforsynthesis_AP2gEc_Ecadherin)
  (prodbysynthesis_AP2gEc_Ecadherin)
  (needforassociation_cdk2p1_cks1_cdk2p1cks1)
  (needforassociation_cks1_cdk2p1_cdk2p1cks1)
  (prodbyassociation_cdk2p1_cks1_cdk2p1cks1)
  (needforassociation_cdk2p1_cycA_cdk2p1cycA)
  (needforassociation_cycA_cdk2p1_cdk2p1cycA)
  (prodbyassociation_cdk2p1_cycA_cdk2p1cycA)
  (needforassociation_cdk2p1_cycE_cdk2p1cycE)
  (needforassociation_cycE_cdk2p1_cdk2p1cycE)
  (prodbyassociation_cdk2p1_cycE_cdk2p1cycE)
  (needforassociation_cdk2p1_cycEp1_cdk2p1cycEp1)
  (needforassociation_cycEp1_cdk2p1_cdk2p1cycEp1)
  (prodbyassociation_cdk2p1_cycEp1_cdk2p1cycEp1)
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
  (needforassociation_E2F4_DP12_E2F4DP12)
  (needforassociation_DP12_E2F4_E2F4DP12)
  (prodbyassociation_E2F4_DP12_E2F4DP12)
  (needforassociation_E2F5_DP12_E2F5DP12)
  (needforassociation_DP12_E2F5_E2F5DP12)
  (prodbyassociation_E2F5_DP12_E2F5DP12)
  (needforassociation_E2F6_DP12_E2F6DP12)
  (needforassociation_DP12_E2F6_E2F6DP12)
  (prodbyassociation_E2F6_DP12_E2F6DP12)
  (needforassociation_HDAC1_p107E2F4DP12_HDAC1p107E2F4DP12)
  (needforassociation_p107E2F4DP12_HDAC1_HDAC1p107E2F4DP12)
  (prodbyassociation_HDAC1_p107E2F4DP12_HDAC1p107E2F4DP12)
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
  (needforassociation_HDAC1_pRbE2F4p1DP12_HDAC1pRbE2F4p1DP12)
  (needforassociation_pRbE2F4p1DP12_HDAC1_HDAC1pRbE2F4p1DP12)
  (prodbyassociation_HDAC1_pRbE2F4p1DP12_HDAC1pRbE2F4p1DP12)
  (needforassociation_p107_E2F4DP12_p107E2F4DP12)
  (needforassociation_E2F4DP12_p107_p107E2F4DP12)
  (prodbyassociation_p107_E2F4DP12_p107E2F4DP12)
  (needforassociation_p130_E2F4DP12_p130E2F4DP12)
  (needforassociation_E2F4DP12_p130_p130E2F4DP12)
  (prodbyassociation_p130_E2F4DP12_p130E2F4DP12)
  (needforassociation_p130_E2F5DP12_p130E2F5DP12)
  (needforassociation_E2F5DP12_p130_p130E2F5DP12)
  (prodbyassociation_p130_E2F5DP12_p130E2F5DP12)
  (needforassociation_p16_cdk46p1_p16cdk46p1)
  (needforassociation_cdk46p1_p16_p16cdk46p1)
  (prodbyassociation_p16_cdk46p1_p16cdk46p1)
  (needforassociation_p57_cdk2p1cycA_p57cdk2p1cycA)
  (needforassociation_cdk2p1cycA_p57_p57cdk2p1cycA)
  (prodbyassociation_p57_cdk2p1cycA_p57cdk2p1cycA)
  (needforassociation_p57_cdk2p1cycEp1_p57cdk2p1cycEp1)
  (needforassociation_cdk2p1cycEp1_p57_p57cdk2p1cycEp1)
  (prodbyassociation_p57_cdk2p1cycEp1_p57cdk2p1cycEp1)
  (needforassociation_p57_cdk2p1cycE_p57cdk2p1cycE)
  (needforassociation_cdk2p1cycE_p57_p57cdk2p1cycE)
  (prodbyassociation_p57_cdk2p1cycE_p57cdk2p1cycE)
  (needforassociation_p57_cdk46p1cycDp1_p57cdk46p1cycDp1)
  (needforassociation_cdk46p1cycDp1_p57_p57cdk46p1cycDp1)
  (prodbyassociation_p57_cdk46p1cycDp1_p57cdk46p1cycDp1)
  (needforassociation_p57_cdk46p1cycD_p57cdk46p1cycD)
  (needforassociation_cdk46p1cycD_p57_p57cdk46p1cycD)
  (prodbyassociation_p57_cdk46p1cycD_p57cdk46p1cycD)
  (needforassociation_p57p1_cdk46p1cycDp1_p57p1cdk46p1cycDp1)
  (needforassociation_cdk46p1cycDp1_p57p1_p57p1cdk46p1cycDp1)
  (prodbyassociation_p57p1_cdk46p1cycDp1_p57p1cdk46p1cycDp1)
  (needforassociation_p57p1_cdk46p1cycD_p57p1cdk46p1cycD)
  (needforassociation_cdk46p1cycD_p57p1_p57p1cdk46p1cycD)
  (prodbyassociation_p57p1_cdk46p1cycD_p57p1cdk46p1cycD)
  (needforassociation_pCAF_p300_pCAFp300)
  (needforassociation_p300_pCAF_pCAFp300)
  (prodbyassociation_pCAF_p300_pCAFp300)
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
  (needforassociation_pRbp2_Jun_pRbp2Jun)
  (needforassociation_Jun_pRbp2_pRbp2Jun)
  (prodbyassociation_pRbp2_Jun_pRbp2Jun)
  (needforassociation_Raf1_p130E2F4DP12_Raf1p130E2F4DP12)
  (needforassociation_p130E2F4DP12_Raf1_Raf1p130E2F4DP12)
  (prodbyassociation_Raf1_p130E2F4DP12_Raf1p130E2F4DP12)
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
  (needforassociation_Raf1_pRbE2F4p1DP12_Raf1pRbE2F4p1DP12)
  (needforassociation_pRbE2F4p1DP12_Raf1_Raf1pRbE2F4p1DP12)
  (prodbyassociation_Raf1_pRbE2F4p1DP12_Raf1pRbE2F4p1DP12)
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
  (needforassociation_RPA_cycA_RPAcycA)
  (needforassociation_cycA_RPA_RPAcycA)
  (prodbyassociation_RPA_cycA_RPAcycA)
  (needforassociation_Skp2_cdk2p1cycA_Skp2cdk2p1cycA)
  (needforassociation_cdk2p1cycA_Skp2_Skp2cdk2p1cycA)
  (prodbyassociation_Skp2_cdk2p1cycA_Skp2cdk2p1cycA)
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
			(increase (numsubs) 1.0)			(not (possible_cdk46p3cycDp1))			(chosen_cdk46p3cycDp1)
))
(:action choose__cks1
	:parameters ()
	:precondition (and  (possible_cks1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cks1)			(not (possible_cks1))
))
(:action choose__DP12
	:parameters ()
	:precondition (and  (possible_DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_DP12)			(not (possible_DP12))
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
			(increase (numsubs) 1.0)			(not (possible_E2F5))			(chosen_E2F5)
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
(:action choose__AP2
	:parameters ()
	:precondition (and  (possible_AP2))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_AP2)			(not (possible_AP2))
))
(:action choose__cdk2p1
	:parameters ()
	:precondition (and  (possible_cdk2p1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cdk2p1)			(not (possible_cdk2p1))
))
(:action choose__Wee1
	:parameters ()
	:precondition (and  (possible_Wee1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_Wee1)			(not (possible_Wee1))
))
(:action choose__Jun
	:parameters ()
	:precondition (and  (possible_Jun))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_Jun)			(not (possible_Jun))
))
(:action choose__p130
	:parameters ()
	:precondition (and  (possible_p130))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p130)			(not (possible_p130))
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
			(increase (numsubs) 1.0)			(not (possible_p57p1))			(chosen_p57p1)
))
(:action choose__pCAF
	:parameters ()
	:precondition (and  (possible_pCAF))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_pCAF)			(not (possible_pCAF))
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
(:action choose__Skp2
	:parameters ()
	:precondition (and  (possible_Skp2))
	:effect (and 
			(increase (numsubs) 1.0)			(not (possible_Skp2))			(chosen_Skp2)
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
(:action initialize__p130
	:parameters ()
	:precondition (and  (chosen_p130))
	:effect (and 
			(increase (available_p130) 1.0)
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
(:action initialize__gP
	:parameters ()
	:precondition (and  (chosen_gP))
	:effect (and 
			(increase (available_gP) 1.0)
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
(:action initialize__DP12
	:parameters ()
	:precondition (and  (chosen_DP12))
	:effect (and 
			(increase (available_DP12) 1.0)
))
(:action initialize__cks1
	:parameters ()
	:precondition (and  (chosen_cks1))
	:effect (and 
			(increase (available_cks1) 1.0)
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
(:action initialize__AP2
	:parameters ()
	:precondition (and  (chosen_AP2))
	:effect (and 
			(increase (available_AP2) 1.0)
))
(:action associate__Raf1__pRbE2F4p1DP12__Raf1pRbE2F4p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRbE2F4p1DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbE2F4p1DP12) 2.0)			(decrease (available_Raf1) 2.0)			(increase (available_Raf1pRbE2F4p1DP12) 2.0)
))
(:action associate__pRbp2__AP2__pRbp2AP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp2AP2) 1.0)			(decrease (available_pRbp2) 4.0)			(decrease (available_AP2) 2.0)
))
(:action associate__pRb__Jun__pRbJun
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Jun) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_Jun) 1.0)			(decrease (available_pRb) 4.0)			(increase (available_pRbJun) 4.0)
))
(:action associatewithcatalyze__pRbp2__cdk46p3cycDp1__pRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycDp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1p2) 4.0)			(decrease (available_pRbp2) 3.0)
))
(:action associate__E2F4__DP12__E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F4) 4.0)			(increase (available_E2F4DP12) 3.0)			(decrease (available_DP12) 1.0)
))
(:action associate__Raf1__pRbp1E2F4p1DP12__Raf1pRbp1E2F4p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRbp1E2F4p1DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1E2F4p1DP12) 4.0)			(decrease (available_Raf1) 2.0)			(increase (available_Raf1pRbp1E2F4p1DP12) 2.0)
))
(:action associate__pRb__E2F13p1DP12p1__pRbE2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13p1DP12p1) 4.0)			(decrease (available_pRb) 4.0)			(increase (available_pRbE2F13p1DP12p1) 3.0)
))
(:action associate__AP2__gEc__AP2gEc
	:parameters ()
	:precondition (and (>= (+ (*   (available_AP2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gEc) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_AP2) 3.0)			(increase (available_AP2gEc) 1.0)			(decrease (available_gEc) 3.0)
))
(:action associatewithcatalyze__pRbp2__cdk46p3cycD__pRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycD) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1p2) 2.0)			(decrease (available_pRbp2) 4.0)
))
(:action associate__E2F6__DP12__E2F6DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F6) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_E2F6DP12) 2.0)			(decrease (available_E2F6) 4.0)			(decrease (available_DP12) 2.0)
))
(:action associate__pRb__E2F13DP12__pRbE2F13DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F13DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pRbE2F13DP12) 1.0)			(decrease (available_pRb) 1.0)			(decrease (available_E2F13DP12) 3.0)
))
(:action associate__pCAF__p300__pCAFp300
	:parameters ()
	:precondition (and (>= (+ (*   (available_pCAF) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p300) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pCAFp300) 4.0)			(decrease (available_pCAF) 2.0)			(decrease (available_p300) 1.0)
))
(:action associatewithcatalyze__pRb__cdk46p3cycDp1__pRbp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p3cycDp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRb) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1) 4.0)			(decrease (available_pRb) 2.0)
))
(:action associate__pRb__E2F13DP12p1__pRbE2F13DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F13DP12p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13DP12p1) 1.0)			(decrease (available_pRb) 1.0)			(increase (available_pRbE2F13DP12p1) 4.0)
))
(:action associate__SP1__gP__SP1gP
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_SP1gP) 3.0)			(decrease (available_SP1) 1.0)			(decrease (available_gP) 2.0)
))
(:action associate__pRb__AP2__pRbAP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRb) 3.0)			(increase (available_pRbAP2) 4.0)			(decrease (available_AP2) 2.0)
))
(:action associate__cdk2p1__cks1__cdk2p1cks1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cks1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1cks1) 4.0)			(decrease (available_cdk2p1) 2.0)			(decrease (available_cks1) 4.0)
))
(:action associate__pRb__E2F13p1DP12__pRbE2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRb) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRb) 2.0)			(decrease (available_E2F13p1DP12) 1.0)			(increase (available_pRbE2F13p1DP12) 1.0)
))
(:action associate__E2F5__DP12__E2F5DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_E2F5DP12) 3.0)			(decrease (available_DP12) 1.0)			(decrease (available_E2F5) 2.0)
))
(:action associate__p16__cdk46p1__p16cdk46p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p16) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p16cdk46p1) 1.0)			(decrease (available_cdk46p1) 2.0)			(decrease (available_p16) 3.0)
))
(:action associatewithcatalyze__pRb__cdk46p3cycD__pRbp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1) 4.0)			(decrease (available_pRb) 2.0)
))
(:action associate__pRbp2__Jun__pRbp2Jun
	:parameters ()
	:precondition (and (>= (+ (*   (available_Jun) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbp2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_Jun) 3.0)			(increase (available_pRbp2Jun) 1.0)			(decrease (available_pRbp2) 4.0)
))
(:action associate__Raf1__p130E2F5p1DP12__Raf1p130E2F5p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_p130E2F5p1DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1p130E2F5p1DP12) 4.0)			(decrease (available_Raf1) 1.0)			(decrease (available_p130E2F5p1DP12) 1.0)
))
(:action associatewithcatalyze__cdk2p2cycB__Wee1__cdk2p1p2cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p2cycB) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Wee1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p2cycB) 2.0)			(increase (available_cdk2p1p2cycB) 4.0)
))
(:action associate__HDAC1__pRbE2F4p1DP12__HDAC1pRbE2F4p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbE2F4p1DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1) 3.0)			(decrease (available_pRbE2F4p1DP12) 1.0)			(increase (available_HDAC1pRbE2F4p1DP12) 2.0)
))
(:action synthesize__SP1gP__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 2.0)
))
(:action associate__Raf1__pRbE2F13p1DP12p1__Raf1pRbE2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbE2F13p1DP12p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_Raf1) 1.0)			(decrease (available_pRbE2F13p1DP12p1) 4.0)			(increase (available_Raf1pRbE2F13p1DP12p1) 4.0)
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
			(increase (available_p19ARF) 1.0)
))
(:action synthesize__SP1gP__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 4.0)
))
(:action synthesize__SP1gP__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 4.0)
))
(:action synthesize__SP1gP__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 1.0)
))
(:action synthesize__SP1gP__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 3.0)
))
(:action synthesize__SP1gP__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 3.0)
))
(:action associate__pRbp1__E2F4DP12__pRbp1E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F4DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1) 1.0)			(decrease (available_E2F4DP12) 3.0)			(increase (available_pRbp1E2F4DP12) 4.0)
))
(:action synthesize__SP1gP__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 1.0)
))
(:action associate__pRbp1p2__AP2__pRbp1p2AP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1p2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1p2AP2) 1.0)			(decrease (available_pRbp1p2) 1.0)			(decrease (available_AP2) 1.0)
))
(:action synthesize__SP1gP__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1gP) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 4.0)
))
(:action associate__HDAC1__pRbE2F13p1DP12__HDAC1pRbE2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbE2F13p1DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1) 3.0)			(decrease (available_pRbE2F13p1DP12) 3.0)			(increase (available_HDAC1pRbE2F13p1DP12) 2.0)
))
(:action associate__pRbp1__E2F13DP12__pRbp1E2F13DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F13DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1E2F13DP12) 3.0)			(decrease (available_E2F13DP12) 1.0)			(decrease (available_pRbp1) 3.0)
))
(:action associate__Raf1__pRbE2F13p1DP12__Raf1pRbE2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbE2F13p1DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbE2F13p1DP12) 1.0)			(decrease (available_pRbE2F13p1DP12) 4.0)			(decrease (available_Raf1) 3.0)
))
(:action synthesize__AP2gEc__Ecadherin
	:parameters ()
	:precondition (and (>= (+ (*   (available_AP2gEc) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Ecadherin) 3.0)
))
(:action associate__HDAC1__pRbE2F13DP12p1__HDAC1pRbE2F13DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRbE2F13DP12p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbE2F13DP12p1) 4.0)			(decrease (available_HDAC1) 2.0)			(increase (available_HDAC1pRbE2F13DP12p1) 4.0)
))
(:action associate__pRbp1__Jun__pRbp1Jun
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Jun) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1Jun) 3.0)			(decrease (available_pRbp1) 1.0)			(decrease (available_Jun) 3.0)
))
(:action associate__Raf1__pRbE2F13DP12p1__Raf1pRbE2F13DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbE2F13DP12p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbE2F13DP12p1) 1.0)			(decrease (available_Raf1) 1.0)			(increase (available_Raf1pRbE2F13DP12p1) 3.0)
))
(:action associate__pRb__E2F4DP12__pRbE2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRb) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F4DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pRbE2F4DP12) 2.0)			(decrease (available_pRb) 4.0)			(decrease (available_E2F4DP12) 2.0)
))
(:action associate__p130__E2F5DP12__p130E2F5DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F5DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F5DP12) 3.0)			(increase (available_p130E2F5DP12) 4.0)			(decrease (available_p130) 1.0)
))
(:action associate__pRbp1__E2F13p1DP12p1__pRbp1E2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1) 4.0)			(decrease (available_E2F13p1DP12p1) 4.0)			(increase (available_pRbp1E2F13p1DP12p1) 3.0)
))
(:action associate__pRbp2AP2__gEc__pRbp2AP2gEc
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2AP2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gEc) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gEc) 2.0)			(increase (available_pRbp2AP2gEc) 3.0)			(decrease (available_pRbp2AP2) 2.0)
))
(:action associate__HDAC1__pRbE2F13DP12__HDAC1pRbE2F13DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbE2F13DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1pRbE2F13DP12) 4.0)			(decrease (available_HDAC1) 3.0)			(decrease (available_pRbE2F13DP12) 4.0)
))
(:action associate__pRbAP2__gEc__pRbAP2gEc
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbAP2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gEc) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gEc) 2.0)			(increase (available_pRbAP2gEc) 3.0)			(decrease (available_pRbAP2) 2.0)
))
(:action associate__Raf1__pRbE2F13DP12__Raf1pRbE2F13DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbE2F13DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbE2F13DP12) 3.0)			(decrease (available_Raf1) 1.0)			(increase (available_Raf1pRbE2F13DP12) 3.0)
))
(:action associate__pRbp1p2__Jun__pRbp1p2Jun
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1p2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Jun) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_Jun) 4.0)			(decrease (available_pRbp1p2) 3.0)			(increase (available_pRbp1p2Jun) 3.0)
))
(:action associate__pRbp1__E2F13DP12p1__pRbp1E2F13DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13DP12p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13DP12p1) 2.0)			(decrease (available_pRbp1) 4.0)			(increase (available_pRbp1E2F13DP12p1) 3.0)
))
(:action associate__p130__E2F4DP12__p130E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_p130) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p130E2F4DP12) 2.0)			(decrease (available_p130) 3.0)			(decrease (available_E2F4DP12) 3.0)
))
(:action associate__HDAC1__pRbE2F13p1DP12p1__HDAC1pRbE2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbE2F13p1DP12p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1pRbE2F13p1DP12p1) 1.0)			(decrease (available_pRbE2F13p1DP12p1) 1.0)			(decrease (available_HDAC1) 1.0)
))
(:action associate__pRbp1__AP2__pRbp1AP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1AP2) 1.0)			(decrease (available_pRbp1) 3.0)			(decrease (available_AP2) 2.0)
))
(:action associate__pRbp1__E2F13p1DP12__pRbp1E2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1) 2.0)			(decrease (available_E2F13p1DP12) 1.0)			(increase (available_pRbp1E2F13p1DP12) 3.0)
))
(:action associate__SP1__p107__SP1p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_p107) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_SP1p107) 1.0)			(decrease (available_SP1) 1.0)			(decrease (available_p107) 4.0)
))
(:action associate__cdk46p1__cycD__cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycD) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cycD) 1.0)			(increase (available_cdk46p1cycD) 2.0)			(decrease (available_cdk46p1) 1.0)
))
(:action associate__cMyc__AP2__cMycAP2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cMyc) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_AP2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cMyc) 3.0)			(increase (available_cMycAP2) 4.0)			(decrease (available_AP2) 4.0)
))
(:action associate__RPA__cycA__RPAcycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_RPA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_RPAcycA) 1.0)			(decrease (available_RPA) 4.0)			(decrease (available_cycA) 4.0)
))
(:action associate__Raf1__p130E2F4DP12__Raf1p130E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_p130E2F4DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1p130E2F4DP12) 3.0)			(decrease (available_Raf1) 1.0)			(decrease (available_p130E2F4DP12) 2.0)
))
(:action associate__Raf1__pRbp1E2F13DP12p1__Raf1pRbp1E2F13DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbp1E2F13DP12p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbp1E2F13DP12p1) 4.0)			(decrease (available_pRbp1E2F13DP12p1) 1.0)			(decrease (available_Raf1) 3.0)
))
(:action associate__Raf1__pRbp1E2F4DP12__Raf1pRbp1E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbp1E2F4DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1E2F4DP12) 4.0)			(decrease (available_Raf1) 4.0)			(increase (available_Raf1pRbp1E2F4DP12) 3.0)
))
(:action synthesize__pRbp2AP2gEc__Ecadherin
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2AP2gEc) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Ecadherin) 1.0)
))
(:action associate__HDAC1__pRbE2F4DP12__HDAC1pRbE2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbE2F4DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1) 1.0)			(decrease (available_pRbE2F4DP12) 4.0)			(increase (available_HDAC1pRbE2F4DP12) 1.0)
))
(:action associate__Raf1__p130E2F5DP12__Raf1p130E2F5DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_p130E2F5DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p130E2F5DP12) 2.0)			(decrease (available_Raf1) 3.0)			(increase (available_Raf1p130E2F5DP12) 4.0)
))
(:action associate__Raf1__pRbp1E2F13DP12__Raf1pRbp1E2F13DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_pRbp1E2F13DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1E2F13DP12) 1.0)			(decrease (available_Raf1) 3.0)			(increase (available_Raf1pRbp1E2F13DP12) 1.0)
))
(:action associate__cdk46p1__cycDp1__cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cycDp1) 2.0)			(increase (available_cdk46p1cycDp1) 3.0)			(decrease (available_cdk46p1) 4.0)
))
(:action associate__cdk2p1__cycA__cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1cycA) 2.0)			(decrease (available_cdk2p1) 2.0)			(decrease (available_cycA) 2.0)
))
(:action associate__Raf1__pRbE2F4DP12__Raf1pRbE2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbE2F4DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbE2F4DP12) 1.0)			(decrease (available_pRbE2F4DP12) 2.0)			(decrease (available_Raf1) 3.0)
))
(:action associate__HDAC1__p130E2F4DP12__HDAC1p130E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_p130E2F4DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p130E2F4DP12) 3.0)			(decrease (available_HDAC1) 1.0)			(increase (available_HDAC1p130E2F4DP12) 2.0)
))
(:action associate__pRbp1p2AP2__gEc__pRbp1p2AP2gEc
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1p2AP2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gEc) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1p2AP2gEc) 4.0)			(decrease (available_pRbp1p2AP2) 2.0)			(decrease (available_gEc) 3.0)
))
(:action associate__Raf1__pRbp1E2F13p1DP12p1__Raf1pRbp1E2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbp1E2F13p1DP12p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbp1E2F13p1DP12p1) 2.0)			(decrease (available_Raf1) 1.0)			(decrease (available_pRbp1E2F13p1DP12p1) 3.0)
))
(:action associate__SP1__p107p1__SP1p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_p107p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_SP1p107p1) 2.0)			(decrease (available_SP1) 1.0)			(decrease (available_p107p1) 3.0)
))
(:action associate__cdk2p1__cycEp1__cdk2p1cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycEp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cycEp1) 2.0)			(decrease (available_cdk2p1) 4.0)			(increase (available_cdk2p1cycEp1) 4.0)
))
(:action associate__HDAC1__p130E2F5DP12__HDAC1p130E2F5DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130E2F5DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_HDAC1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p130E2F5DP12) 2.0)			(increase (available_HDAC1p130E2F5DP12) 4.0)			(decrease (available_HDAC1) 4.0)
))
(:action associate__p107__E2F4DP12__p107E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_p107) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F4DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107E2F4DP12) 3.0)			(decrease (available_p107) 1.0)			(decrease (available_E2F4DP12) 4.0)
))
(:action associate__cdk2p1__cycE__cdk2p1cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycE) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1cycE) 4.0)			(decrease (available_cdk2p1) 4.0)			(decrease (available_cycE) 4.0)
))
(:action synthesize__pRbAP2gEc__Ecadherin
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbAP2gEc) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Ecadherin) 1.0)
))
(:action associate__Raf1__pRbp1E2F13p1DP12__Raf1pRbp1E2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbp1E2F13p1DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbp1E2F13p1DP12) 3.0)			(decrease (available_pRbp1E2F13p1DP12) 4.0)			(decrease (available_Raf1) 4.0)
))
(:action associate__pRbp1AP2__gEc__pRbp1AP2gEc
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1AP2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gEc) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1AP2) 1.0)			(increase (available_pRbp1AP2gEc) 4.0)			(decrease (available_gEc) 3.0)
))
(:action associate__p57p1__cdk46p1cycDp1__p57p1cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1cycDp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p57p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p57p1) 2.0)			(increase (available_p57p1cdk46p1cycDp1) 2.0)			(decrease (available_cdk46p1cycDp1) 2.0)
))
(:action associate__Skp2__cdk2p1cycA__Skp2cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycA) 2.0)			(decrease (available_Skp2) 3.0)			(increase (available_Skp2cdk2p1cycA) 4.0)
))
(:action associate__p57__cdk46p1cycD__p57cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk46p1cycD) 2.0)			(decrease (available_p57) 2.0)			(decrease (available_cdk46p1cycD) 4.0)
))
(:action associate__SP1p107__gP__SP1p107gP
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1p107) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gP) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_SP1p107gP) 2.0)			(decrease (available_gP) 3.0)			(decrease (available_SP1p107) 4.0)
))
(:action associate__p57p1__cdk46p1cycD__p57p1cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1cycD) 3.0)			(increase (available_p57p1cdk46p1cycD) 2.0)			(decrease (available_p57p1) 3.0)
))
(:action synthesize__pRbp1AP2gEc__Ecadherin
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1AP2gEc) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Ecadherin) 2.0)
))
(:action associate__p57__cdk2p1cycEp1__p57cdk2p1cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycEp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2p1cycEp1) 3.0)			(decrease (available_p57) 1.0)			(decrease (available_cdk2p1cycEp1) 1.0)
))
(:action associate__p57__cdk2p1cycA__p57cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2p1cycA) 4.0)			(decrease (available_cdk2p1cycA) 4.0)			(decrease (available_p57) 2.0)
))
(:action synthesize__pRbp1p2AP2gEc__Ecadherin
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1p2AP2gEc) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Ecadherin) 1.0)
))
(:action associate__p57__cdk46p1cycDp1__p57cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk46p1cycDp1) 2.0)			(decrease (available_p57) 1.0)			(decrease (available_cdk46p1cycDp1) 4.0)
))
(:action associate__SP1p107p1__gP__SP1p107p1gP
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1p107p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gP) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_SP1p107p1gP) 4.0)			(decrease (available_SP1p107p1) 4.0)			(decrease (available_gP) 4.0)
))
(:action associate__p57__cdk2p1cycE__p57cdk2p1cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycE) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycE) 4.0)			(decrease (available_p57) 4.0)			(increase (available_p57cdk2p1cycE) 2.0)
))
(:action associate__HDAC1__p107E2F4DP12__HDAC1p107E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_p107E2F4DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1) 3.0)			(decrease (available_p107E2F4DP12) 3.0)			(increase (available_HDAC1p107E2F4DP12) 3.0)
))


)