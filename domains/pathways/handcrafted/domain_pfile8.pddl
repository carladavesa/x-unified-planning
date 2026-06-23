(define (domain PathwaysMetric)
(:predicates  (chosen_HDAC1pRbp1E2F4DP12)
 (chosen_HDAC1pRbp1E2F13p1DP12)
 (possible_SP1)
 (chosen_HDAC1pRbp1E2F13DP12)
 (possible_Skp2)
 (possible_Skp1)
 (chosen_HDAC1)
 (possible_RPA)
 (possible_Raf1)
 (chosen_gp19ARF)
 (possible_pRbp2)
 (possible_pRbp1E2F4p1DP12)
 (chosen_gE2)
 (possible_pRbE2F4p1DP12)
 (possible_Plk1)
 (chosen_gcdc25A)
 (possible_p57p1)
 (possible_p57)
 (chosen_E2F6DP12p1)
 (possible_p27)
 (possible_p130E2F5p1DP12)
 (chosen_E2F5)
 (possible_p130E2F4p1DP12)
 (possible_p130)
 (chosen_E2F4DP12p1)
 (possible_Max)
 (possible_Jun)
 (chosen_E2F4)
 (possible_HDAC1pRbp1E2F4DP12)
 (possible_HDAC1pRbp1E2F13p1DP12)
 (chosen_E2F3)
 (possible_HDAC1pRbp1E2F13DP12)
 (possible_HDAC1)
 (chosen_E2F13p1DP12)
 (possible_gp19ARF)
 (possible_gE2)
 (chosen_E2F13DP12)
 (possible_gcdc25A)
 (possible_E2F6DP12p1)
 (chosen_E2F13)
 (possible_E2F5)
 (possible_E2F4DP12p1)
 (chosen_E2F1)
 (possible_E2F4)
 (possible_E2F3)
 (chosen_DP12)
 (possible_E2F13p1DP12)
 (possible_E2F13DP12)
 (chosen_DMP1)
 (possible_E2F13)
 (possible_E2F1)
 (chosen_cdk46p3cycD)
 (possible_DP12)
 (possible_DMP1)
 (chosen_cdk46p1)
 (possible_cdk46p3cycD)
 (possible_cdk46p1)
 (chosen_cdk2p1)
 (possible_cdk2p1)
 (possible_APC)
 (chosen_APC)
 (chosen_SP1)
 (chosen_Skp2)
 (chosen_Skp1)
 (chosen_RPA)
 (chosen_Raf1)
 (chosen_pRbp2)
 (chosen_pRbp1E2F4p1DP12)
 (chosen_pRbE2F4p1DP12)
 (chosen_Plk1)
 (chosen_p57p1)
 (chosen_p57)
 (chosen_p27)
 (chosen_p130E2F5p1DP12)
 (chosen_p130E2F4p1DP12)
 (chosen_p130)
 (chosen_Max)
 (chosen_Jun)
)
(:functions   (numsubs)
  (available_SP1)
  (available_Skp2)
  (available_Skp1)
  (available_RPA)
  (available_Raf1)
  (available_pRbp2)
  (available_pRbp1E2F4p1DP12)
  (available_pRbE2F4p1DP12)
  (available_Plk1)
  (available_p57p1)
  (available_p57)
  (available_p27)
  (available_p130E2F5p1DP12)
  (available_p130E2F4p1DP12)
  (available_p130)
  (available_Max)
  (available_Jun)
  (available_HDAC1pRbp1E2F4DP12)
  (available_HDAC1pRbp1E2F13p1DP12)
  (available_HDAC1pRbp1E2F13DP12)
  (available_HDAC1)
  (available_gp19ARF)
  (available_gE2)
  (available_gcdc25A)
  (available_E2F6DP12p1)
  (available_E2F5)
  (available_E2F4DP12p1)
  (available_E2F4)
  (available_E2F3)
  (available_E2F13p1DP12)
  (available_E2F13DP12)
  (available_E2F13)
  (available_E2F1)
  (available_DP12)
  (available_DMP1)
  (available_cdk46p3cycD)
  (available_cdk46p1)
  (available_cdk2p1)
  (available_APC)
  (available_cdk2cycAE2F13)
  (available_cdk2p1cycAE2F13)
  (available_cMycMaxgcdc25A)
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
  (available_E2F1DP12)
  (available_E2F3DP12)
  (available_E2F4DP12gE2)
  (available_E2F5DP12gE2)
  (available_E2F6DP12p1gE2)
  (available_HDAC1p107E2F4DP12gE2)
  (available_HDAC1p107E2F4DP12)
  (available_HDAC1p107E2F4DP12p1)
  (available_HDAC1p130E2F4DP12gE2)
  (available_HDAC1p130E2F4DP12)
  (available_HDAC1p130E2F4DP12p1)
  (available_HDAC1p130E2F5DP12gE2)
  (available_HDAC1p130E2F5DP12)
  (available_HDAC1pRbE2F4p1DP12)
  (available_HDAC1pRbp1E2F13DP12gE2)
  (available_HDAC1pRbp1E2F13p1DP12gE2)
  (available_HDAC1pRbp1E2F4DP12gE2)
  (available_p107E2F4DP12gE2)
  (available_p107E2F4DP12)
  (available_p107E2F4DP12p1gE2)
  (available_p107E2F4DP12p1)
  (available_p130E2F4DP12gE2)
  (available_p130E2F4DP12p1gE2)
  (available_p130E2F4DP12p1)
  (available_p130E2F5DP12gE2)
  (available_E2F5DP12)
  (available_cdk46)
  (available_p27cdk2cycA)
  (available_p27cdk2cycEp1)
  (available_p27cdk2cycE)
  (available_p27cdk2p1cycA)
  (available_p27cdk2p1cycEp1)
  (available_p27cdk2p1cycE)
  (available_p27cdk46cycDp1)
  (available_p27cdk46cycD)
  (available_p27cdk46p1cycDp1)
  (available_p27cdk46p1cycD)
  (available_p57cdk2cycA)
  (available_p57cdk2cycEp1)
  (available_p57cdk2cycE)
  (available_p57cdk2p1cycA)
  (available_p57cdk2p1cycEp1)
  (available_p57cdk2p1cycE)
  (available_p57cdk46cycDp1)
  (available_p57cdk46cycD)
  (available_p57cdk46p1cycDp1)
  (available_p57cdk46p1cycD)
  (available_p57p1cdk46cycDp1)
  (available_p57p1cdk46cycD)
  (available_p57p1cdk46p1cycDp1)
  (available_p57p1cdk46p1cycD)
  (available_cdk2cycEp1)
  (available_cdk2cycE)
  (available_cdk2p1cycEp1)
  (available_cdk2p1cycE)
  (available_cdk46cycDp1)
  (available_cdk46cycD)
  (available_cdk46p1cycDp1)
  (available_cdk46p1cycD)
  (available_pRbE2F4p1DP12gE2)
  (available_E2F4DP12)
  (available_pRbp1E2F4p1DP12gE2)
  (available_pRbp1p2Jun)
  (available_pRbp1p2)
  (available_pRbp2Jun)
  (available_Raf1cdc25Ap1)
  (available_cdc25Ap1)
  (available_Raf1cdc25A)
  (available_cdc25A)
  (available_Raf1p130E2F4DP12gE2)
  (available_Raf1p130E2F4DP12)
  (available_p130E2F4DP12)
  (available_Raf1p130E2F4p1DP12gE2)
  (available_Raf1p130E2F4p1DP12)
  (available_Raf1p130E2F5DP12gE2)
  (available_Raf1p130E2F5DP12)
  (available_p130E2F5DP12)
  (available_Raf1p130E2F5p1DP12gE2)
  (available_Raf1p130E2F5p1DP12)
  (available_Raf1pRbE2F4p1DP12gE2)
  (available_Raf1pRbE2F4p1DP12)
  (available_Raf1pRbp1E2F4p1DP12gE2)
  (available_Raf1pRbp1E2F4p1DP12)
  (available_RPAcycA)
  (available_Skp2cdk2cycA)
  (available_Skp2cdk2p1cycA)
  (available_Skp2Skp1cdk2cycA)
  (available_Skp2Skp1cdk2p1cycA)
  (available_cdk2cycA)
  (available_cdk2p1cycA)
  (available_Skp2Skp1)
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
  (needforcatalyzedassociation_APC_Plk1_APCp1)
  (needforcatalyzedassociation_Plk1_APC_APCp1)
  (prodbycatalyzedassociation_APC_Plk1_APCp1)
  (needforcatalyzedassociation_cdc25A_Raf1_cdc25Ap1)
  (needforcatalyzedassociation_Raf1_cdc25A_cdc25Ap1)
  (prodbycatalyzedassociation_cdc25A_Raf1_cdc25Ap1)
  (needforassociation_cdk2cycA_E2F13_cdk2cycAE2F13)
  (needforassociation_E2F13_cdk2cycA_cdk2cycAE2F13)
  (prodbyassociation_cdk2cycA_E2F13_cdk2cycAE2F13)
  (needforcatalyzedassociation_cdk2p1cycA_cdc25Ap1_cdk2cycA)
  (needforcatalyzedassociation_cdc25Ap1_cdk2p1cycA_cdk2cycA)
  (prodbycatalyzedassociation_cdk2p1cycA_cdc25Ap1_cdk2cycA)
  (needforassociation_cdk2p1_cycA_cdk2p1cycA)
  (needforassociation_cycA_cdk2p1_cdk2p1cycA)
  (prodbyassociation_cdk2p1_cycA_cdk2p1cycA)
  (needforassociation_cdk2p1cycA_E2F13_cdk2p1cycAE2F13)
  (needforassociation_E2F13_cdk2p1cycA_cdk2p1cycAE2F13)
  (prodbyassociation_cdk2p1cycA_E2F13_cdk2p1cycAE2F13)
  (needforcatalyzedassociation_cdk2p1cycE_cdc25Ap1_cdk2cycE)
  (needforcatalyzedassociation_cdc25Ap1_cdk2p1cycE_cdk2cycE)
  (prodbycatalyzedassociation_cdk2p1cycE_cdc25Ap1_cdk2cycE)
  (needforassociation_cdk2p1_cycE_cdk2p1cycE)
  (needforassociation_cycE_cdk2p1_cdk2p1cycE)
  (prodbyassociation_cdk2p1_cycE_cdk2p1cycE)
  (needforcatalyzedassociation_cdk2p1cycEp1_cdc25Ap1_cdk2cycEp1)
  (needforcatalyzedassociation_cdc25Ap1_cdk2p1cycEp1_cdk2cycEp1)
  (prodbycatalyzedassociation_cdk2p1cycEp1_cdc25Ap1_cdk2cycEp1)
  (needforassociation_cdk2p1_cycEp1_cdk2p1cycEp1)
  (needforassociation_cycEp1_cdk2p1_cdk2p1cycEp1)
  (prodbyassociation_cdk2p1_cycEp1_cdk2p1cycEp1)
  (needforassociation_cdk46_cycD_cdk46cycD)
  (needforassociation_cycD_cdk46_cdk46cycD)
  (prodbyassociation_cdk46_cycD_cdk46cycD)
  (needforassociation_cdk46_cycDp1_cdk46cycDp1)
  (needforassociation_cycDp1_cdk46_cdk46cycDp1)
  (prodbyassociation_cdk46_cycDp1_cdk46cycDp1)
  (needforcatalyzedassociation_cdk46p1_cdc25Ap1_cdk46)
  (needforcatalyzedassociation_cdc25Ap1_cdk46p1_cdk46)
  (prodbycatalyzedassociation_cdk46p1_cdc25Ap1_cdk46)
  (needforassociation_cdk46p1_cycD_cdk46p1cycD)
  (needforassociation_cycD_cdk46p1_cdk46p1cycD)
  (prodbyassociation_cdk46p1_cycD_cdk46p1cycD)
  (needforassociation_cdk46p1_cycDp1_cdk46p1cycDp1)
  (needforassociation_cycDp1_cdk46p1_cdk46p1cycDp1)
  (prodbyassociation_cdk46p1_cycDp1_cdk46p1cycDp1)
  (needforassociation_cMyc_Max_cMycMax)
  (needforassociation_Max_cMyc_cMycMax)
  (prodbyassociation_cMyc_Max_cMycMax)
  (needforsynthesis_cMycMaxgcdc25A_cdc25A)
  (prodbysynthesis_cMycMaxgcdc25A_cdc25A)
  (needforassociation_cMycMax_gcdc25A_cMycMaxgcdc25A)
  (needforassociation_gcdc25A_cMycMax_cMycMaxgcdc25A)
  (prodbyassociation_cMycMax_gcdc25A_cMycMaxgcdc25A)
  (needforcatalyzedassociation_cycA_Skp2Skp1_Skp2Skp1)
  (needforcatalyzedassociation_Skp2Skp1_cycA_Skp2Skp1)
  (prodbycatalyzedassociation_cycA_Skp2Skp1_Skp2Skp1)
  (needforcatalyzedassociation_DMP1_cdk46p3cycD_DMP1p1)
  (needforcatalyzedassociation_cdk46p3cycD_DMP1_DMP1p1)
  (prodbycatalyzedassociation_DMP1_cdk46p3cycD_DMP1p1)
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
  (needforassociation_E2F1_DP12_E2F1DP12)
  (needforassociation_DP12_E2F1_E2F1DP12)
  (prodbyassociation_E2F1_DP12_E2F1DP12)
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
  (needforassociation_HDAC1p130E2F4DP12_gE2_HDAC1p130E2F4DP12gE2)
  (needforassociation_gE2_HDAC1p130E2F4DP12_HDAC1p130E2F4DP12gE2)
  (prodbyassociation_HDAC1p130E2F4DP12_gE2_HDAC1p130E2F4DP12gE2)
  (needforassociation_HDAC1_p130E2F4DP12_HDAC1p130E2F4DP12)
  (needforassociation_p130E2F4DP12_HDAC1_HDAC1p130E2F4DP12)
  (prodbyassociation_HDAC1_p130E2F4DP12_HDAC1p130E2F4DP12)
  (needforassociation_HDAC1_p130E2F4DP12p1_HDAC1p130E2F4DP12p1)
  (needforassociation_p130E2F4DP12p1_HDAC1_HDAC1p130E2F4DP12p1)
  (prodbyassociation_HDAC1_p130E2F4DP12p1_HDAC1p130E2F4DP12p1)
  (needforassociation_HDAC1p130E2F5DP12_gE2_HDAC1p130E2F5DP12gE2)
  (needforassociation_gE2_HDAC1p130E2F5DP12_HDAC1p130E2F5DP12gE2)
  (prodbyassociation_HDAC1p130E2F5DP12_gE2_HDAC1p130E2F5DP12gE2)
  (needforassociation_HDAC1_p130E2F5DP12_HDAC1p130E2F5DP12)
  (needforassociation_p130E2F5DP12_HDAC1_HDAC1p130E2F5DP12)
  (prodbyassociation_HDAC1_p130E2F5DP12_HDAC1p130E2F5DP12)
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
  (needforassociation_p130E2F4DP12_gE2_p130E2F4DP12gE2)
  (needforassociation_gE2_p130E2F4DP12_p130E2F4DP12gE2)
  (prodbyassociation_p130E2F4DP12_gE2_p130E2F4DP12gE2)
  (needforassociation_p130_E2F4DP12_p130E2F4DP12)
  (needforassociation_E2F4DP12_p130_p130E2F4DP12)
  (prodbyassociation_p130_E2F4DP12_p130E2F4DP12)
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
  (needforassociation_pRbE2F4p1DP12_gE2_pRbE2F4p1DP12gE2)
  (needforassociation_gE2_pRbE2F4p1DP12_pRbE2F4p1DP12gE2)
  (prodbyassociation_pRbE2F4p1DP12_gE2_pRbE2F4p1DP12gE2)
  (needforassociation_pRbp1E2F4p1DP12_gE2_pRbp1E2F4p1DP12gE2)
  (needforassociation_gE2_pRbp1E2F4p1DP12_pRbp1E2F4p1DP12gE2)
  (prodbyassociation_pRbp1E2F4p1DP12_gE2_pRbp1E2F4p1DP12gE2)
  (needforassociation_pRbp1p2_Jun_pRbp1p2Jun)
  (needforassociation_Jun_pRbp1p2_pRbp1p2Jun)
  (prodbyassociation_pRbp1p2_Jun_pRbp1p2Jun)
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
  (needforsynthesis_Raf1p130E2F4DP12gE2_cMyc)
  (prodbysynthesis_Raf1p130E2F4DP12gE2_cMyc)
  (needforsynthesis_Raf1p130E2F4DP12gE2_cycA)
  (prodbysynthesis_Raf1p130E2F4DP12gE2_cycA)
  (needforsynthesis_Raf1p130E2F4DP12gE2_cycD)
  (prodbysynthesis_Raf1p130E2F4DP12gE2_cycD)
  (needforsynthesis_Raf1p130E2F4DP12gE2_cycDp1)
  (prodbysynthesis_Raf1p130E2F4DP12gE2_cycDp1)
  (needforsynthesis_Raf1p130E2F4DP12gE2_cycE)
  (prodbysynthesis_Raf1p130E2F4DP12gE2_cycE)
  (needforsynthesis_Raf1p130E2F4DP12gE2_cycEp1)
  (prodbysynthesis_Raf1p130E2F4DP12gE2_cycEp1)
  (needforsynthesis_Raf1p130E2F4DP12gE2_p107)
  (prodbysynthesis_Raf1p130E2F4DP12gE2_p107)
  (needforsynthesis_Raf1p130E2F4DP12gE2_p107p1)
  (prodbysynthesis_Raf1p130E2F4DP12gE2_p107p1)
  (needforsynthesis_Raf1p130E2F4DP12gE2_p19ARF)
  (prodbysynthesis_Raf1p130E2F4DP12gE2_p19ARF)
  (needforsynthesis_Raf1p130E2F4DP12gE2_pol)
  (prodbysynthesis_Raf1p130E2F4DP12gE2_pol)
  (needforassociation_Raf1p130E2F4DP12_gE2_Raf1p130E2F4DP12gE2)
  (needforassociation_gE2_Raf1p130E2F4DP12_Raf1p130E2F4DP12gE2)
  (prodbyassociation_Raf1p130E2F4DP12_gE2_Raf1p130E2F4DP12gE2)
  (needforassociation_Raf1_p130E2F4DP12_Raf1p130E2F4DP12)
  (needforassociation_p130E2F4DP12_Raf1_Raf1p130E2F4DP12)
  (prodbyassociation_Raf1_p130E2F4DP12_Raf1p130E2F4DP12)
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
  (needforassociation_Skp2_cdk2cycA_Skp2cdk2cycA)
  (needforassociation_cdk2cycA_Skp2_Skp2cdk2cycA)
  (prodbyassociation_Skp2_cdk2cycA_Skp2cdk2cycA)
  (needforassociation_Skp2_cdk2p1cycA_Skp2cdk2p1cycA)
  (needforassociation_cdk2p1cycA_Skp2_Skp2cdk2p1cycA)
  (prodbyassociation_Skp2_cdk2p1cycA_Skp2cdk2p1cycA)
  (needforassociation_Skp2Skp1_cdk2cycA_Skp2Skp1cdk2cycA)
  (needforassociation_cdk2cycA_Skp2Skp1_Skp2Skp1cdk2cycA)
  (prodbyassociation_Skp2Skp1_cdk2cycA_Skp2Skp1cdk2cycA)
  (needforassociation_Skp2Skp1_cdk2p1cycA_Skp2Skp1cdk2p1cycA)
  (needforassociation_cdk2p1cycA_Skp2Skp1_Skp2Skp1cdk2p1cycA)
  (prodbyassociation_Skp2Skp1_cdk2p1cycA_Skp2Skp1cdk2p1cycA)
  (needforassociation_Skp2_Skp1_Skp2Skp1)
  (needforassociation_Skp1_Skp2_Skp2Skp1)
  (prodbyassociation_Skp2_Skp1_Skp2Skp1)
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
(:action choose__E2F13p1DP12
	:parameters ()
	:precondition (and  (possible_E2F13p1DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_E2F13p1DP12)			(not (possible_E2F13p1DP12))
))
(:action choose__E2F3
	:parameters ()
	:precondition (and  (possible_E2F3))
	:effect (and 
			(increase (numsubs) 1.0)			(not (possible_E2F3))			(chosen_E2F3)
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
			(increase (numsubs) 1.0)			(not (possible_HDAC1))			(chosen_HDAC1)
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
(:action choose__APC
	:parameters ()
	:precondition (and  (possible_APC))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_APC)			(not (possible_APC))
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
			(increase (numsubs) 1.0)			(not (possible_cdk46p1))			(chosen_cdk46p1)
))
(:action choose__cdk46p3cycD
	:parameters ()
	:precondition (and  (possible_cdk46p3cycD))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cdk46p3cycD)			(not (possible_cdk46p3cycD))
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
(:action choose__SP1
	:parameters ()
	:precondition (and  (possible_SP1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_SP1)			(not (possible_SP1))
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
			(increase (numsubs) 1.0)			(not (possible_p130E2F4p1DP12))			(chosen_p130E2F4p1DP12)
))
(:action choose__p130E2F5p1DP12
	:parameters ()
	:precondition (and  (possible_p130E2F5p1DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p130E2F5p1DP12)			(not (possible_p130E2F5p1DP12))
))
(:action choose__p27
	:parameters ()
	:precondition (and  (possible_p27))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p27)			(not (possible_p27))
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
(:action choose__Plk1
	:parameters ()
	:precondition (and  (possible_Plk1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_Plk1)			(not (possible_Plk1))
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
(:action initialize__Plk1
	:parameters ()
	:precondition (and  (chosen_Plk1))
	:effect (and 
			(increase (available_Plk1) 1.0)
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
(:action initialize__p27
	:parameters ()
	:precondition (and  (chosen_p27))
	:effect (and 
			(increase (available_p27) 1.0)
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
(:action initialize__E2F13p1DP12
	:parameters ()
	:precondition (and  (chosen_E2F13p1DP12))
	:effect (and 
			(increase (available_E2F13p1DP12) 1.0)
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
(:action initialize__APC
	:parameters ()
	:precondition (and  (chosen_APC))
	:effect (and 
			(increase (available_APC) 1.0)
))
(:action associatewithcatalyze__pRbp2__cdk46p3cycD__pRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1p2) 1.0)			(decrease (available_pRbp2) 4.0)
))
(:action associate__pRbp2__Jun__pRbp2Jun
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Jun) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_Jun) 4.0)			(increase (available_pRbp2Jun) 3.0)			(decrease (available_pRbp2) 4.0)
))
(:action associate__Raf1__p130E2F4p1DP12__Raf1p130E2F4p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_p130E2F4p1DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_Raf1) 4.0)			(decrease (available_p130E2F4p1DP12) 1.0)			(increase (available_Raf1p130E2F4p1DP12) 3.0)
))
(:action associate__E2F13DP12__gE2__E2F13DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 2.0)			(increase (available_E2F13DP12gE2) 2.0)			(decrease (available_E2F13DP12) 1.0)
))
(:action associate__pRbE2F4p1DP12__gE2__pRbE2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbE2F4p1DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pRbE2F4p1DP12gE2) 3.0)			(decrease (available_gE2) 2.0)			(decrease (available_pRbE2F4p1DP12) 4.0)
))
(:action associate__E2F3__DP12__E2F3DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F3) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F3) 3.0)			(decrease (available_DP12) 2.0)			(increase (available_E2F3DP12) 1.0)
))
(:action associatewithcatalyze__APC__Plk1__APCp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_APC) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Plk1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_APCp1) 1.0)			(decrease (available_APC) 3.0)
))
(:action associate__HDAC1pRbp1E2F4DP12__gE2__HDAC1pRbp1E2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1pRbp1E2F4DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1pRbp1E2F4DP12) 3.0)			(decrease (available_gE2) 4.0)			(increase (available_HDAC1pRbp1E2F4DP12gE2) 4.0)
))
(:action associate__Skp2__Skp1__Skp2Skp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Skp2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_Skp1) 3.0)			(decrease (available_Skp2) 4.0)			(increase (available_Skp2Skp1) 1.0)
))
(:action associate__E2F6DP12p1__gE2__E2F6DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F6DP12p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_E2F6DP12p1gE2) 3.0)			(decrease (available_gE2) 4.0)			(decrease (available_E2F6DP12p1) 2.0)
))
(:action associate__Raf1__p130E2F5p1DP12__Raf1p130E2F5p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_p130E2F5p1DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1p130E2F5p1DP12) 3.0)			(decrease (available_p130E2F5p1DP12) 1.0)			(decrease (available_Raf1) 3.0)
))
(:action associate__HDAC1pRbp1E2F13DP12__gE2__HDAC1pRbp1E2F13DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1pRbp1E2F13DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1pRbp1E2F13DP12gE2) 2.0)			(decrease (available_HDAC1pRbp1E2F13DP12) 3.0)			(decrease (available_gE2) 3.0)
))
(:action associate__Raf1__pRbp1E2F4p1DP12__Raf1pRbp1E2F4p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_pRbp1E2F4p1DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp1E2F4p1DP12) 2.0)			(decrease (available_Raf1) 4.0)			(increase (available_Raf1pRbp1E2F4p1DP12) 3.0)
))
(:action associate__HDAC1__pRbE2F4p1DP12__HDAC1pRbE2F4p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRbE2F4p1DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbE2F4p1DP12) 2.0)			(decrease (available_HDAC1) 2.0)			(increase (available_HDAC1pRbE2F4p1DP12) 3.0)
))
(:action associate__E2F5__DP12__E2F5DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F5) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F5) 1.0)			(increase (available_E2F5DP12) 4.0)			(decrease (available_DP12) 1.0)
))
(:action associate__HDAC1pRbp1E2F13p1DP12__gE2__HDAC1pRbp1E2F13p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1pRbp1E2F13p1DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1pRbp1E2F13p1DP12gE2) 1.0)			(decrease (available_gE2) 3.0)			(decrease (available_HDAC1pRbp1E2F13p1DP12) 1.0)
))
(:action associate__Raf1__pRbE2F4p1DP12__Raf1pRbE2F4p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbE2F4p1DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbE2F4p1DP12) 4.0)			(decrease (available_Raf1) 3.0)			(increase (available_Raf1pRbE2F4p1DP12) 2.0)
))
(:action associate__SP1__E2F13__SP1E2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_SP1) 4.0)			(increase (available_SP1E2F13) 2.0)			(decrease (available_E2F13) 4.0)
))
(:action associate__E2F1__DP12__E2F1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F1) 2.0)			(increase (available_E2F1DP12) 3.0)			(decrease (available_DP12) 4.0)
))
(:action associate__DMP1__gp19ARF__DMP1gp19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gp19ARF) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_gp19ARF) 3.0)			(increase (available_DMP1gp19ARF) 3.0)			(decrease (available_DMP1) 1.0)
))
(:action associate__E2F4__DP12__E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F4) 3.0)			(increase (available_E2F4DP12) 1.0)			(decrease (available_DP12) 1.0)
))
(:action associate__E2F13p1DP12__gE2__E2F13p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(increase (available_E2F13p1DP12gE2) 2.0)			(decrease (available_E2F13p1DP12) 1.0)
))
(:action associate__pRbp1E2F4p1DP12__gE2__pRbp1E2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1E2F4p1DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(decrease (available_pRbp1E2F4p1DP12) 4.0)			(increase (available_pRbp1E2F4p1DP12gE2) 3.0)
))
(:action associatewithcatalyze__DMP1__cdk46p3cycD__DMP1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_DMP1p1) 4.0)			(decrease (available_DMP1) 3.0)
))
(:action associate__p130__E2F4DP12p1__p130E2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F4DP12p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p130) 4.0)			(increase (available_p130E2F4DP12p1) 1.0)			(decrease (available_E2F4DP12p1) 3.0)
))
(:action synthesize__E2F13DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 3.0)
))
(:action synthesize__E2F13DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 3.0)
))
(:action synthesize__E2F13DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 3.0)
))
(:action synthesize__E2F13DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 2.0)
))
(:action synthesize__E2F13DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 4.0)
))
(:action synthesize__E2F13DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 1.0)
))
(:action synthesize__E2F13DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 2.0)
))
(:action synthesize__E2F13DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 3.0)
))
(:action synthesize__E2F13DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 1.0)
))
(:action synthesize__E2F13DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 2.0)
))
(:action associate__E2F4DP12__gE2__E2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_E2F4DP12gE2) 4.0)			(decrease (available_E2F4DP12) 4.0)			(decrease (available_gE2) 3.0)
))
(:action associate__DMP1p1__gp19ARF__DMP1p1gp19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gp19ARF) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_DMP1p1) 2.0)			(decrease (available_gp19ARF) 1.0)			(increase (available_DMP1p1gp19ARF) 4.0)
))
(:action associate__p130__E2F4DP12__p130E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F4DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F4DP12) 4.0)			(decrease (available_p130) 4.0)			(increase (available_p130E2F4DP12) 2.0)
))
(:action associate__Raf1p130E2F5p1DP12__gE2__Raf1p130E2F5p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(increase (available_Raf1p130E2F5p1DP12gE2) 3.0)			(decrease (available_Raf1p130E2F5p1DP12) 3.0)
))
(:action synthesize__E2F13p1DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 2.0)
))
(:action synthesize__E2F13p1DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 3.0)
))
(:action synthesize__E2F13p1DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -4.0 ) 0.0))
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
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 2.0)
))
(:action synthesize__E2F13p1DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 2.0)
))
(:action synthesize__E2F13p1DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 2.0)
))
(:action synthesize__E2F13p1DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 3.0)
))
(:action synthesize__E2F13p1DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 3.0)
))
(:action synthesize__E2F13p1DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 3.0)
))
(:action associate__p130E2F4DP12p1__gE2__p130E2F4DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130E2F4DP12p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 1.0)			(increase (available_p130E2F4DP12p1gE2) 3.0)			(decrease (available_p130E2F4DP12p1) 2.0)
))
(:action associate__Raf1p130E2F4p1DP12__gE2__Raf1p130E2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 2.0)			(increase (available_Raf1p130E2F4p1DP12gE2) 4.0)			(decrease (available_Raf1p130E2F4p1DP12) 4.0)
))
(:action associate__p130__E2F5DP12__p130E2F5DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p130) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p130E2F5DP12) 3.0)			(decrease (available_p130) 1.0)			(decrease (available_E2F5DP12) 2.0)
))
(:action associate__HDAC1__p130E2F4DP12p1__HDAC1p130E2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130E2F4DP12p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_HDAC1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1) 2.0)			(increase (available_HDAC1p130E2F4DP12p1) 2.0)			(decrease (available_p130E2F4DP12p1) 4.0)
))
(:action associate__Raf1pRbE2F4p1DP12__gE2__Raf1pRbE2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 1.0)			(increase (available_Raf1pRbE2F4p1DP12gE2) 4.0)			(decrease (available_Raf1pRbE2F4p1DP12) 4.0)
))
(:action associate__E2F5DP12__gE2__E2F5DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_E2F5DP12gE2) 4.0)			(decrease (available_gE2) 1.0)			(decrease (available_E2F5DP12) 2.0)
))
(:action associate__Raf1pRbp1E2F4p1DP12__gE2__Raf1pRbp1E2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 1.0)			(increase (available_Raf1pRbp1E2F4p1DP12gE2) 4.0)			(decrease (available_Raf1pRbp1E2F4p1DP12) 3.0)
))
(:action associate__pRbp1p2__Jun__pRbp1p2Jun
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1p2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_Jun) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pRbp1p2Jun) 3.0)			(decrease (available_Jun) 3.0)			(decrease (available_pRbp1p2) 3.0)
))
(:action associate__SP1__p107p1__SP1p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p107p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_SP1) 2.0)			(increase (available_SP1p107p1) 3.0)			(decrease (available_p107p1) 2.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 2.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 1.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 3.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 4.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 1.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 2.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 2.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 3.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 3.0)
))
(:action associate__p130E2F5DP12__gE2__p130E2F5DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130E2F5DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p130E2F5DP12gE2) 4.0)			(decrease (available_p130E2F5DP12) 1.0)			(decrease (available_gE2) 3.0)
))
(:action synthesize__DMP1p1gp19ARF__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1p1gp19ARF) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 4.0)
))
(:action associate__Raf1__p130E2F5DP12__Raf1p130E2F5DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_p130E2F5DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p130E2F5DP12) 3.0)			(increase (available_Raf1p130E2F5DP12) 1.0)			(decrease (available_Raf1) 3.0)
))
(:action associate__cdk2p1__cycA__cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cycA) 3.0)			(increase (available_cdk2p1cycA) 3.0)			(decrease (available_cdk2p1) 2.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 1.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 1.0)
))
(:action associate__cdk46p1__cycDp1__cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk46p1cycDp1) 2.0)			(decrease (available_cdk46p1) 3.0)			(decrease (available_cycDp1) 3.0)
))
(:action associate__SP1__p107__SP1p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_SP1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p107) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_SP1p107) 4.0)			(decrease (available_SP1) 2.0)			(decrease (available_p107) 4.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 1.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 4.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 2.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 2.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 1.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 1.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 1.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 2.0)
))
(:action associate__RPA__cycA__RPAcycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_RPA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_RPA) 4.0)			(increase (available_RPAcycA) 2.0)			(decrease (available_cycA) 1.0)
))
(:action associate__cdk2p1__cycEp1__cdk2p1cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycEp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cycEp1) 2.0)			(decrease (available_cdk2p1) 4.0)			(increase (available_cdk2p1cycEp1) 3.0)
))
(:action associate__cdk46p1__cycD__cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycD) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cycD) 2.0)			(increase (available_cdk46p1cycD) 4.0)			(decrease (available_cdk46p1) 3.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 1.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 1.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 4.0)
))
(:action associate__cdk2p1__cycE__cdk2p1cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycE) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1cycE) 2.0)			(decrease (available_cdk2p1) 4.0)			(decrease (available_cycE) 1.0)
))
(:action synthesize__E2F4DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 1.0)
))
(:action synthesize__E2F4DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 2.0)
))
(:action synthesize__E2F4DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 1.0)
))
(:action synthesize__E2F4DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 2.0)
))
(:action synthesize__E2F4DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 1.0)
))
(:action synthesize__E2F4DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 1.0)
))
(:action synthesize__E2F4DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 4.0)
))
(:action synthesize__E2F4DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 2.0)
))
(:action synthesize__E2F4DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 4.0)
))
(:action synthesize__E2F4DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 2.0)
))
(:action associate__p107__E2F4DP12p1__p107E2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p107) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F4DP12p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F4DP12p1) 1.0)			(increase (available_p107E2F4DP12p1) 2.0)			(decrease (available_p107) 4.0)
))
(:action associate__HDAC1__p130E2F5DP12__HDAC1p130E2F5DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p130E2F5DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1) 2.0)			(increase (available_HDAC1p130E2F5DP12) 3.0)			(decrease (available_p130E2F5DP12) 2.0)
))
(:action synthesize__Raf1pRbp1E2F4p1DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbp1E2F4p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 1.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 1.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 2.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 3.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 1.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 3.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 1.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 1.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 2.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 1.0)
))
(:action synthesize__Raf1p130E2F4p1DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 1.0)
))
(:action associate__DMP1p1__cycDp1__DMP1p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycDp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_DMP1p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_DMP1p1) 3.0)			(increase (available_DMP1p1cycDp1) 4.0)			(decrease (available_cycDp1) 3.0)
))
(:action associate__Raf1__p130E2F4DP12__Raf1p130E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130E2F4DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1p130E2F4DP12) 3.0)			(decrease (available_p130E2F4DP12) 4.0)			(decrease (available_Raf1) 3.0)
))
(:action associate__p130E2F4DP12__gE2__p130E2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130E2F4DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p130E2F4DP12gE2) 1.0)			(decrease (available_gE2) 3.0)			(decrease (available_p130E2F4DP12) 1.0)
))
(:action synthesize__E2F5DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 1.0)
))
(:action synthesize__E2F5DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 4.0)
))
(:action synthesize__E2F5DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 2.0)
))
(:action synthesize__E2F5DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 1.0)
))
(:action synthesize__E2F5DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 4.0)
))
(:action synthesize__E2F5DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 3.0)
))
(:action synthesize__E2F5DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 4.0)
))
(:action synthesize__E2F5DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 3.0)
))
(:action synthesize__E2F5DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 3.0)
))
(:action synthesize__E2F5DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 1.0)
))
(:action associate__cMyc__Max__cMycMax
	:parameters ()
	:precondition (and (>= (+ (*   (available_cMyc) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Max) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cMycMax) 4.0)			(decrease (available_cMyc) 1.0)			(decrease (available_Max) 2.0)
))
(:action associate__HDAC1__p130E2F4DP12__HDAC1p130E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p130E2F4DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1p130E2F4DP12) 1.0)			(decrease (available_HDAC1) 2.0)			(decrease (available_p130E2F4DP12) 1.0)
))
(:action associatewithcatalyze__cycA__Skp2Skp1__Skp2Skp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Skp2Skp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2Skp1) 1.0)			(decrease (available_cycA) 4.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 3.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 4.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 2.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 4.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 1.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 4.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 2.0)
))
(:action associate__DMP1__cycDp1__DMP1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cycDp1) 4.0)			(increase (available_DMP1cycDp1) 3.0)			(decrease (available_DMP1) 4.0)
))
(:action associate__p107__E2F4DP12__p107E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_p107) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F4DP12) 3.0)			(increase (available_p107E2F4DP12) 2.0)			(decrease (available_p107) 2.0)
))
(:action associate__DMP1__cycD__DMP1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cycD) 4.0)			(increase (available_DMP1cycD) 4.0)			(decrease (available_DMP1) 4.0)
))
(:action associate__DMP1p1__cycD__DMP1p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cycD) 4.0)			(decrease (available_DMP1p1) 2.0)			(increase (available_DMP1p1cycD) 1.0)
))
(:action associate__p57__cdk46p1cycDp1__p57cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p57) 1.0)			(decrease (available_cdk46p1cycDp1) 2.0)			(increase (available_p57cdk46p1cycDp1) 1.0)
))
(:action associate__p27__cdk46p1cycD__p27cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycD) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 3.0)			(increase (available_p27cdk46p1cycD) 4.0)			(decrease (available_cdk46p1cycD) 1.0)
))
(:action associate__p57__cdk2p1cycA__p57cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p57) 2.0)			(decrease (available_cdk2p1cycA) 1.0)			(increase (available_p57cdk2p1cycA) 3.0)
))
(:action associate__Skp2__cdk2p1cycA__Skp2cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2cdk2p1cycA) 2.0)			(decrease (available_Skp2) 1.0)			(decrease (available_cdk2p1cycA) 1.0)
))
(:action associate__p57p1__cdk46p1cycDp1__p57p1cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p57p1) 4.0)			(increase (available_p57p1cdk46p1cycDp1) 3.0)			(decrease (available_cdk46p1cycDp1) 4.0)
))
(:action associate__p107E2F4DP12__gE2__p107E2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p107E2F4DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 1.0)			(decrease (available_p107E2F4DP12) 4.0)			(increase (available_p107E2F4DP12gE2) 4.0)
))
(:action associate__p57__cdk46p1cycD__p57cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p57) 4.0)			(increase (available_p57cdk46p1cycD) 2.0)			(decrease (available_cdk46p1cycD) 4.0)
))
(:action associate__p57__cdk2p1cycEp1__p57cdk2p1cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycEp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2p1cycEp1) 4.0)			(decrease (available_p57) 1.0)			(decrease (available_cdk2p1cycEp1) 1.0)
))
(:action associate__cMycMax__gcdc25A__cMycMaxgcdc25A
	:parameters ()
	:precondition (and (>= (+ (*   (available_cMycMax) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gcdc25A) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gcdc25A) 2.0)			(increase (available_cMycMaxgcdc25A) 1.0)			(decrease (available_cMycMax) 3.0)
))
(:action associate__Skp2Skp1__cdk2p1cycA__Skp2Skp1cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2Skp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycA) 3.0)			(decrease (available_Skp2Skp1) 3.0)			(increase (available_Skp2Skp1cdk2p1cycA) 1.0)
))
(:action associate__p27__cdk2p1cycE__p27cdk2p1cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycE) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 4.0)			(decrease (available_cdk2p1cycE) 1.0)			(increase (available_p27cdk2p1cycE) 2.0)
))
(:action associate__cdk2p1cycA__E2F13__cdk2p1cycAE2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycA) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F13) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1cycAE2F13) 4.0)			(decrease (available_cdk2p1cycA) 3.0)			(decrease (available_E2F13) 2.0)
))
(:action associate__p27__cdk46p1cycDp1__p27cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycDp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 4.0)			(increase (available_p27cdk46p1cycDp1) 3.0)			(decrease (available_cdk46p1cycDp1) 1.0)
))
(:action associate__p107E2F4DP12p1__gE2__p107E2F4DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p107E2F4DP12p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p107E2F4DP12p1) 4.0)			(decrease (available_gE2) 4.0)			(increase (available_p107E2F4DP12p1gE2) 3.0)
))
(:action associate__p57__cdk2p1cycE__p57cdk2p1cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycE) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_p57) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycE) 4.0)			(increase (available_p57cdk2p1cycE) 4.0)			(decrease (available_p57) 3.0)
))
(:action associate__Raf1p130E2F4DP12__gE2__Raf1p130E2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 2.0)			(decrease (available_Raf1p130E2F4DP12) 4.0)			(increase (available_Raf1p130E2F4DP12gE2) 3.0)
))
(:action associate__HDAC1p130E2F5DP12__gE2__HDAC1p130E2F5DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1p130E2F5DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1p130E2F5DP12gE2) 3.0)			(decrease (available_HDAC1p130E2F5DP12) 2.0)			(decrease (available_gE2) 3.0)
))
(:action associate__p27__cdk2p1cycA__p27cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 3.0)			(increase (available_p27cdk2p1cycA) 4.0)			(decrease (available_cdk2p1cycA) 1.0)
))
(:action associate__HDAC1__p107E2F4DP12p1__HDAC1p107E2F4DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p107E2F4DP12p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p107E2F4DP12p1) 1.0)			(increase (available_HDAC1p107E2F4DP12p1) 3.0)			(decrease (available_HDAC1) 2.0)
))
(:action associate__p27__cdk2p1cycEp1__p27cdk2p1cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycEp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p27cdk2p1cycEp1) 2.0)			(decrease (available_cdk2p1cycEp1) 2.0)			(decrease (available_p27) 4.0)
))
(:action associate__p57p1__cdk46p1cycD__p57p1cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1cycD) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_p57p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p57p1) 2.0)			(decrease (available_cdk46p1cycD) 1.0)			(increase (available_p57p1cdk46p1cycD) 3.0)
))
(:action associate__HDAC1p130E2F4DP12__gE2__HDAC1p130E2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1p130E2F4DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1p130E2F4DP12) 3.0)			(decrease (available_gE2) 3.0)			(increase (available_HDAC1p130E2F4DP12gE2) 3.0)
))
(:action associate__Raf1p130E2F5DP12__gE2__Raf1p130E2F5DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_Raf1p130E2F5DP12) 1.0)			(decrease (available_gE2) 1.0)			(increase (available_Raf1p130E2F5DP12gE2) 2.0)
))
(:action associate__HDAC1__p107E2F4DP12__HDAC1p107E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_p107E2F4DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1p107E2F4DP12) 1.0)			(decrease (available_HDAC1) 1.0)			(decrease (available_p107E2F4DP12) 3.0)
))
(:action associate__HDAC1p107E2F4DP12__gE2__HDAC1p107E2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1p107E2F4DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(decrease (available_HDAC1p107E2F4DP12) 1.0)			(increase (available_HDAC1p107E2F4DP12gE2) 3.0)
))
(:action synthesize__Raf1p130E2F4DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 2.0)
))
(:action synthesize__Raf1p130E2F4DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 3.0)
))
(:action synthesize__Raf1p130E2F4DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 3.0)
))
(:action synthesize__Raf1p130E2F4DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 1.0)
))
(:action synthesize__Raf1p130E2F4DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 4.0)
))
(:action synthesize__Raf1p130E2F4DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 3.0)
))
(:action synthesize__Raf1p130E2F4DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 3.0)
))
(:action synthesize__Raf1p130E2F4DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 3.0)
))
(:action synthesize__Raf1p130E2F4DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 2.0)
))
(:action synthesize__Raf1p130E2F4DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 3.0)
))
(:action synthesize__cMycMaxgcdc25A__cdc25A
	:parameters ()
	:precondition (and (>= (+ (*   (available_cMycMaxgcdc25A) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25A) 1.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 3.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 4.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 1.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 4.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 4.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 2.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 4.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 1.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 4.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 3.0)
))
(:action associatewithcatalyze__cdc25A__Raf1__cdc25Ap1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25A) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Raf1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25A) 2.0)			(increase (available_cdc25Ap1) 1.0)
))
(:action associate__Raf1__cdc25A__Raf1cdc25A
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdc25A) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1cdc25A) 2.0)			(decrease (available_cdc25A) 1.0)			(decrease (available_Raf1) 2.0)
))
(:action associatewithcatalyze__cdk46p1__cdc25Ap1__cdk46
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Ap1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1) 4.0)			(increase (available_cdk46) 2.0)
))
(:action associatewithcatalyze__cdk2p1cycE__cdc25Ap1__cdk2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycE) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Ap1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycE) 4.0)			(increase (available_cdk2cycE) 2.0)
))
(:action associatewithcatalyze__cdk2p1cycEp1__cdc25Ap1__cdk2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25Ap1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycEp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycEp1) 1.0)			(increase (available_cdk2cycEp1) 3.0)
))
(:action associatewithcatalyze__cdk2p1cycA__cdc25Ap1__cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Ap1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2cycA) 1.0)			(decrease (available_cdk2p1cycA) 1.0)
))
(:action associate__Raf1__cdc25Ap1__Raf1cdc25Ap1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Ap1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_Raf1) 1.0)			(increase (available_Raf1cdc25Ap1) 2.0)			(decrease (available_cdc25Ap1) 3.0)
))
(:action associate__cdk2cycA__E2F13__cdk2cycAE2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2cycA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F13) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13) 3.0)			(increase (available_cdk2cycAE2F13) 4.0)			(decrease (available_cdk2cycA) 1.0)
))
(:action associate__Skp2__cdk2cycA__Skp2cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_Skp2) 3.0)			(decrease (available_cdk2cycA) 2.0)			(increase (available_Skp2cdk2cycA) 4.0)
))
(:action associate__cdk46__cycD__cdk46cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cycD) 4.0)			(increase (available_cdk46cycD) 1.0)			(decrease (available_cdk46) 4.0)
))
(:action associate__p27__cdk2cycA__p27cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p27cdk2cycA) 3.0)			(decrease (available_cdk2cycA) 1.0)			(decrease (available_p27) 4.0)
))
(:action associate__p57__cdk2cycE__p57cdk2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2cycE) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2cycE) 3.0)			(decrease (available_cdk2cycE) 3.0)			(decrease (available_p57) 3.0)
))
(:action associate__p57__cdk2cycA__p57cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycA) 1.0)			(increase (available_p57cdk2cycA) 4.0)			(decrease (available_p57) 1.0)
))
(:action associate__cdk46__cycDp1__cdk46cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cycDp1) 2.0)			(decrease (available_cdk46) 4.0)			(increase (available_cdk46cycDp1) 4.0)
))
(:action associate__p27__cdk2cycEp1__p27cdk2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2cycEp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 3.0)			(increase (available_p27cdk2cycEp1) 1.0)			(decrease (available_cdk2cycEp1) 2.0)
))
(:action associate__p57__cdk2cycEp1__p57cdk2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2cycEp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2cycEp1) 2.0)			(decrease (available_cdk2cycEp1) 3.0)			(decrease (available_p57) 3.0)
))
(:action associate__Skp2Skp1__cdk2cycA__Skp2Skp1cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2Skp1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2Skp1cdk2cycA) 1.0)			(decrease (available_cdk2cycA) 2.0)			(decrease (available_Skp2Skp1) 2.0)
))
(:action associate__p27__cdk2cycE__p27cdk2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2cycE) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycE) 2.0)			(decrease (available_p27) 1.0)			(increase (available_p27cdk2cycE) 4.0)
))
(:action associate__p57p1__cdk46cycDp1__p57p1cdk46cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p57p1cdk46cycDp1) 2.0)			(decrease (available_p57p1) 3.0)			(decrease (available_cdk46cycDp1) 4.0)
))
(:action associate__p57__cdk46cycD__p57cdk46cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk46cycD) 1.0)			(decrease (available_p57) 1.0)			(decrease (available_cdk46cycD) 3.0)
))
(:action associate__p57p1__cdk46cycD__p57p1cdk46cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46cycD) 2.0)			(decrease (available_p57p1) 3.0)			(increase (available_p57p1cdk46cycD) 4.0)
))
(:action associate__p27__cdk46cycDp1__p27cdk46cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 1.0)			(increase (available_p27cdk46cycDp1) 2.0)			(decrease (available_cdk46cycDp1) 2.0)
))
(:action associate__p57__cdk46cycDp1__p57cdk46cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46cycDp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p57) 4.0)			(increase (available_p57cdk46cycDp1) 1.0)			(decrease (available_cdk46cycDp1) 1.0)
))
(:action associate__p27__cdk46cycD__p27cdk46cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46cycD) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_p27) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 3.0)			(increase (available_p27cdk46cycD) 1.0)			(decrease (available_cdk46cycD) 1.0)
))


)