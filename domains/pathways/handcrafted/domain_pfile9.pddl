(define (domain PathwaysMetric)
(:predicates  (chosen_HDAC1p130E2F5p1DP12)
 (chosen_HDAC1p130E2F4p1DP12)
 (chosen_gp19ARF)
 (chosen_gE2)
 (chosen_gcdc25A)
 (chosen_E2F6DP12p1)
 (chosen_E2F6)
 (chosen_E2F5DP12p1)
 (chosen_E2F5)
 (chosen_E2F4)
 (chosen_E2F3)
 (chosen_E2F2)
 (chosen_E2F13p1DP12p1)
 (chosen_E2F13p1DP12)
 (chosen_E2F13DP12p1)
 (chosen_E2F13DP12)
 (chosen_E2F13)
 (chosen_E2F1)
 (chosen_DP12)
 (chosen_DMP1)
 (chosen_CTAK1)
 (chosen_Chk1)
 (chosen_cdk46p3cycDp1)
 (chosen_cdk46p1)
 (chosen_cdk2p2cycB)
 (chosen_cdk2)
 (chosen_cdk1p1p2)
 (chosen_cdc25C)
 (chosen_cAbl)
 (chosen_Wee1)
 (chosen_Skp2)
 (chosen_Skp1)
 (chosen_Raf1)
 (chosen_pRbp2)
 (chosen_pRbE2F4p1DP12)
 (possible_Wee1)
 (possible_Skp2)
 (chosen_PCNA)
 (possible_Skp1)
 (possible_Raf1)
 (chosen_pCAF)
 (possible_pRbp2)
 (possible_pRbE2F4p1DP12)
 (chosen_p57)
 (possible_PCNA)
 (possible_pCAF)
 (chosen_p53p1)
 (possible_p57)
 (possible_p53p1)
 (chosen_p300)
 (possible_p300)
 (possible_p27)
 (chosen_p27)
 (possible_p130E2F5p1DP12)
 (possible_p130)
 (chosen_p130E2F5p1DP12)
 (possible_Max)
 (possible_m1433)
 (chosen_p130)
 (possible_Jun)
 (possible_HDAC1pRbp1E2F4DP12)
 (chosen_Max)
 (possible_HDAC1pRbp1E2F13p1DP12)
 (possible_HDAC1p130E2F5p1DP12)
 (chosen_m1433)
 (possible_HDAC1p130E2F4p1DP12)
 (possible_gp19ARF)
 (chosen_Jun)
 (possible_gE2)
 (possible_gcdc25A)
 (possible_E2F6DP12p1)
 (possible_E2F6)
 (possible_E2F5DP12p1)
 (possible_E2F5)
 (possible_E2F4)
 (possible_E2F3)
 (possible_E2F2)
 (possible_E2F13p1DP12p1)
 (possible_E2F13p1DP12)
 (possible_E2F13DP12p1)
 (possible_E2F13DP12)
 (possible_E2F13)
 (possible_E2F1)
 (possible_DP12)
 (possible_DMP1)
 (possible_CTAK1)
 (possible_Chk1)
 (possible_cdk46p3cycDp1)
 (possible_cdk46p1)
 (possible_cdk2p2cycB)
 (possible_cdk2)
 (possible_cdk1p1p2)
 (possible_cdc25C)
 (possible_cAbl)
 (chosen_HDAC1pRbp1E2F4DP12)
 (chosen_HDAC1pRbp1E2F13p1DP12)
)
(:functions   (numsubs)
  (available_Wee1)
  (available_Skp2)
  (available_Skp1)
  (available_Raf1)
  (available_pRbp2)
  (available_pRbE2F4p1DP12)
  (available_PCNA)
  (available_pCAF)
  (available_p57)
  (available_p53p1)
  (available_p300)
  (available_p27)
  (available_p130E2F5p1DP12)
  (available_p130)
  (available_Max)
  (available_m1433)
  (available_Jun)
  (available_HDAC1pRbp1E2F4DP12)
  (available_HDAC1pRbp1E2F13p1DP12)
  (available_HDAC1p130E2F5p1DP12)
  (available_HDAC1p130E2F4p1DP12)
  (available_gp19ARF)
  (available_gE2)
  (available_gcdc25A)
  (available_E2F6DP12p1)
  (available_E2F6)
  (available_E2F5DP12p1)
  (available_E2F5)
  (available_E2F4)
  (available_E2F3)
  (available_E2F2)
  (available_E2F13p1DP12p1)
  (available_E2F13p1DP12)
  (available_E2F13DP12p1)
  (available_E2F13DP12)
  (available_E2F13)
  (available_E2F1)
  (available_DP12)
  (available_DMP1)
  (available_CTAK1)
  (available_Chk1)
  (available_cdk46p3cycDp1)
  (available_cdk46p1)
  (available_cdk2p2cycB)
  (available_cdk2)
  (available_cdk1p1p2)
  (available_cdc25C)
  (available_cAbl)
  (available_cAblpRbp1p2)
  (available_cAblpRbp2)
  (available_cdk1p1p2Gadd45)
  (available_cdk2cycAE2F13)
  (available_cdk2p1cycAE2F13)
  (available_cdk2p1p2cycB)
  (available_cMycMaxgcdc25A)
  (available_cMycMax)
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
  (available_E2F2DP12)
  (available_E2F3DP12)
  (available_E2F4DP12gE2)
  (available_E2F5DP12gE2)
  (available_E2F6DP12gE2)
  (available_E2F6DP12)
  (available_E2F6DP12p1gE2)
  (available_HDAC1p130E2F4p1DP12gE2)
  (available_HDAC1p130E2F5p1DP12gE2)
  (available_HDAC1pRbp1E2F13p1DP12gE2)
  (available_HDAC1pRbp1E2F4DP12gE2)
  (available_JuncFos)
  (available_m1433cdc25Cp2)
  (available_cdc25Cp2)
  (available_Mdm2E2F13DP12)
  (available_Mdm2E2F13DP12p1)
  (available_Mdm2E2F13p1DP12)
  (available_Mdm2E2F13p1DP12p1)
  (available_Mdm2pRbp1p2)
  (available_Mdm2pRbp2)
  (available_p107E2F4DP12gE2)
  (available_p107E2F4DP12)
  (available_p130E2F4DP12gE2)
  (available_p130E2F5DP12gE2)
  (available_E2F5DP12)
  (available_p130E2F5DP12p1gE2)
  (available_p130E2F5DP12p1)
  (available_cdk46)
  (available_p21cdk2cycA)
  (available_p21cdk2cycEp1)
  (available_p21cdk2cycE)
  (available_p21cdk2p1cycA)
  (available_p21cdk46cycDp1)
  (available_p21cdk46cycD)
  (available_p21cdk46p1cycDp1)
  (available_p21cdk46p1cycD)
  (available_p21Gadd45)
  (available_p27cdk2cycA)
  (available_p27cdk2cycEp1)
  (available_p27cdk2cycE)
  (available_p27cdk2p1cycA)
  (available_p27cdk46cycDp1)
  (available_p27cdk46cycD)
  (available_p27cdk46p1cycDp1)
  (available_p27cdk46p1cycD)
  (available_p53p1DP12)
  (available_Mdm2)
  (available_p57cdk2cycA)
  (available_p57cdk2cycEp1)
  (available_p57cdk2cycE)
  (available_p57cdk2p1cycA)
  (available_p57cdk46cycDp1)
  (available_p57cdk46cycD)
  (available_p57cdk46p1cycDp1)
  (available_p57cdk46p1cycD)
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
  (available_PCNAp21cdk46cycDp1)
  (available_cdk46cycDp1)
  (available_PCNAp21cdk46cycD)
  (available_cdk46cycD)
  (available_PCNAp21cdk46p1cycDp1)
  (available_cdk46p1cycDp1)
  (available_PCNAp21cdk46p1cycD)
  (available_cdk46p1cycD)
  (available_PCNAp21)
  (available_p21)
  (available_pRbE2F4p1DP12gE2)
  (available_E2F4DP12)
  (available_pRbp1p2JuncFos)
  (available_pRbp1p2Jun)
  (available_pRbp1p2)
  (available_pRbp2JuncFos)
  (available_cFos)
  (available_pRbp2Jun)
  (available_Raf1cdc25Ap1)
  (available_cdc25Ap1)
  (available_Raf1cdc25A)
  (available_cdc25A)
  (available_Raf1p130E2F4DP12gE2)
  (available_Raf1p130E2F4DP12)
  (available_p130E2F4DP12)
  (available_Raf1p130E2F5DP12gE2)
  (available_Raf1p130E2F5DP12)
  (available_p130E2F5DP12)
  (available_Raf1p130E2F5p1DP12gE2)
  (available_Raf1p130E2F5p1DP12)
  (available_Raf1pRbE2F4p1DP12gE2)
  (available_Raf1pRbE2F4p1DP12)
  (available_Skp2cdk2cycA)
  (available_Skp2cdk2p1cycA)
  (available_Skp2Skp1cdk2cycA)
  (available_Skp2Skp1cdk2p1cycA)
  (available_cdk2cycA)
  (available_cdk2p1cycA)
  (available_Skp2Skp1)
  (available_cMyc)
  (available_cycA)
  (available_cycD)
  (available_cycDp1)
  (available_cycE)
  (available_cycEp1)
  (available_p19ARF)
  (available_pol)
  (available_p107p1)
  (available_p107)
  (needforassociation_cAbl_pRbp1p2_cAblpRbp1p2)
  (needforassociation_pRbp1p2_cAbl_cAblpRbp1p2)
  (prodbyassociation_cAbl_pRbp1p2_cAblpRbp1p2)
  (needforassociation_cAbl_pRbp2_cAblpRbp2)
  (needforassociation_pRbp2_cAbl_cAblpRbp2)
  (prodbyassociation_cAbl_pRbp2_cAblpRbp2)
  (needforcatalyzedassociation_cdc25A_Raf1_cdc25Ap1)
  (needforcatalyzedassociation_Raf1_cdc25A_cdc25Ap1)
  (prodbycatalyzedassociation_cdc25A_Raf1_cdc25Ap1)
  (needforcatalyzedassociation_cdc25C_Chk1_cdc25Cp2)
  (needforcatalyzedassociation_Chk1_cdc25C_cdc25Cp2)
  (prodbycatalyzedassociation_cdc25C_Chk1_cdc25Cp2)
  (needforcatalyzedassociation_cdc25C_CTAK1_cdc25Cp2)
  (needforcatalyzedassociation_CTAK1_cdc25C_cdc25Cp2)
  (prodbycatalyzedassociation_cdc25C_CTAK1_cdc25Cp2)
  (needforassociation_cdk1p1p2_Gadd45_cdk1p1p2Gadd45)
  (needforassociation_Gadd45_cdk1p1p2_cdk1p1p2Gadd45)
  (prodbyassociation_cdk1p1p2_Gadd45_cdk1p1p2Gadd45)
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
  (needforcatalyzedassociation_cdk2p1cycA_cdc25Ap1_cdk2cycA)
  (needforcatalyzedassociation_cdc25Ap1_cdk2p1cycA_cdk2cycA)
  (prodbycatalyzedassociation_cdk2p1cycA_cdc25Ap1_cdk2cycA)
  (needforassociation_cdk2p1cycA_E2F13_cdk2p1cycAE2F13)
  (needforassociation_E2F13_cdk2p1cycA_cdk2p1cycAE2F13)
  (prodbyassociation_cdk2p1cycA_E2F13_cdk2p1cycAE2F13)
  (needforcatalyzedassociation_cdk2p2cycB_Wee1_cdk2p1p2cycB)
  (needforcatalyzedassociation_Wee1_cdk2p2cycB_cdk2p1p2cycB)
  (prodbycatalyzedassociation_cdk2p2cycB_Wee1_cdk2p1p2cycB)
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
  (needforassociation_HDAC1p130E2F4p1DP12_gE2_HDAC1p130E2F4p1DP12gE2)
  (needforassociation_gE2_HDAC1p130E2F4p1DP12_HDAC1p130E2F4p1DP12gE2)
  (prodbyassociation_HDAC1p130E2F4p1DP12_gE2_HDAC1p130E2F4p1DP12gE2)
  (needforassociation_HDAC1p130E2F5p1DP12_gE2_HDAC1p130E2F5p1DP12gE2)
  (needforassociation_gE2_HDAC1p130E2F5p1DP12_HDAC1p130E2F5p1DP12gE2)
  (prodbyassociation_HDAC1p130E2F5p1DP12_gE2_HDAC1p130E2F5p1DP12gE2)
  (needforassociation_HDAC1pRbp1E2F13p1DP12_gE2_HDAC1pRbp1E2F13p1DP12gE2)
  (needforassociation_gE2_HDAC1pRbp1E2F13p1DP12_HDAC1pRbp1E2F13p1DP12gE2)
  (prodbyassociation_HDAC1pRbp1E2F13p1DP12_gE2_HDAC1pRbp1E2F13p1DP12gE2)
  (needforassociation_HDAC1pRbp1E2F4DP12_gE2_HDAC1pRbp1E2F4DP12gE2)
  (needforassociation_gE2_HDAC1pRbp1E2F4DP12_HDAC1pRbp1E2F4DP12gE2)
  (prodbyassociation_HDAC1pRbp1E2F4DP12_gE2_HDAC1pRbp1E2F4DP12gE2)
  (needforassociation_Jun_cFos_JuncFos)
  (needforassociation_cFos_Jun_JuncFos)
  (prodbyassociation_Jun_cFos_JuncFos)
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
  (needforassociation_p130E2F4DP12_gE2_p130E2F4DP12gE2)
  (needforassociation_gE2_p130E2F4DP12_p130E2F4DP12gE2)
  (prodbyassociation_p130E2F4DP12_gE2_p130E2F4DP12gE2)
  (needforassociation_p130_E2F4DP12_p130E2F4DP12)
  (needforassociation_E2F4DP12_p130_p130E2F4DP12)
  (prodbyassociation_p130_E2F4DP12_p130E2F4DP12)
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
  (needforsynthesis_p53p1_cFos)
  (prodbysynthesis_p53p1_cFos)
  (needforassociation_p53p1_DP12_p53p1DP12)
  (needforassociation_DP12_p53p1_p53p1DP12)
  (prodbyassociation_p53p1_DP12_p53p1DP12)
  (needforsynthesis_p53p1_Gadd45)
  (prodbysynthesis_p53p1_Gadd45)
  (needforsynthesis_p53p1_Mdm2)
  (prodbysynthesis_p53p1_Mdm2)
  (needforsynthesis_p53p1_p21)
  (prodbysynthesis_p53p1_p21)
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
  (needforassociation_PCNA_p21_PCNAp21)
  (needforassociation_p21_PCNA_PCNAp21)
  (prodbyassociation_PCNA_p21_PCNAp21)
  (needforassociation_pRbE2F4p1DP12_gE2_pRbE2F4p1DP12gE2)
  (needforassociation_gE2_pRbE2F4p1DP12_pRbE2F4p1DP12gE2)
  (prodbyassociation_pRbE2F4p1DP12_gE2_pRbE2F4p1DP12gE2)
  (needforassociation_pRbp1p2Jun_cFos_pRbp1p2JuncFos)
  (needforassociation_cFos_pRbp1p2Jun_pRbp1p2JuncFos)
  (prodbyassociation_pRbp1p2Jun_cFos_pRbp1p2JuncFos)
  (needforassociation_pRbp1p2_Jun_pRbp1p2Jun)
  (needforassociation_Jun_pRbp1p2_pRbp1p2Jun)
  (prodbyassociation_pRbp1p2_Jun_pRbp1p2Jun)
  (needforcatalyzedassociation_pRbp2_cdk46p3cycDp1_pRbp1p2)
  (needforcatalyzedassociation_cdk46p3cycDp1_pRbp2_pRbp1p2)
  (prodbycatalyzedassociation_pRbp2_cdk46p3cycDp1_pRbp1p2)
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
)
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
(:action choose__gp19ARF
	:parameters ()
	:precondition (and  (possible_gp19ARF))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_gp19ARF)			(not (possible_gp19ARF))
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
(:action choose__cdk46p3cycDp1
	:parameters ()
	:precondition (and  (possible_cdk46p3cycDp1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_cdk46p3cycDp1)			(not (possible_cdk46p3cycDp1))
))
(:action choose__Chk1
	:parameters ()
	:precondition (and  (possible_Chk1))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_Chk1)			(not (possible_Chk1))
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
(:action choose__p27
	:parameters ()
	:precondition (and  (possible_p27))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p27)			(not (possible_p27))
))
(:action choose__p300
	:parameters ()
	:precondition (and  (possible_p300))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_p300)			(not (possible_p300))
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
(:action choose__pRbE2F4p1DP12
	:parameters ()
	:precondition (and  (possible_pRbE2F4p1DP12))
	:effect (and 
			(increase (numsubs) 1.0)			(chosen_pRbE2F4p1DP12)			(not (possible_pRbE2F4p1DP12))
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
(:action initialize__Wee1
	:parameters ()
	:precondition (and  (chosen_Wee1))
	:effect (and 
			(increase (available_Wee1) 1.0)
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
(:action initialize__pCAF
	:parameters ()
	:precondition (and  (chosen_pCAF))
	:effect (and 
			(increase (available_pCAF) 1.0)
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
(:action initialize__CTAK1
	:parameters ()
	:precondition (and  (chosen_CTAK1))
	:effect (and 
			(increase (available_CTAK1) 1.0)
))
(:action initialize__Chk1
	:parameters ()
	:precondition (and  (chosen_Chk1))
	:effect (and 
			(increase (available_Chk1) 1.0)
))
(:action initialize__cdk46p3cycDp1
	:parameters ()
	:precondition (and  (chosen_cdk46p3cycDp1))
	:effect (and 
			(increase (available_cdk46p3cycDp1) 1.0)
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
(:action associate__cAbl__pRbp2__cAblpRbp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cAbl) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbp2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cAblpRbp2) 2.0)			(decrease (available_pRbp2) 2.0)			(decrease (available_cAbl) 1.0)
))
(:action associatewithcatalyze__cdk2p2cycB__Wee1__cdk2p1p2cycB
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p2cycB) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Wee1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p2cycB) 2.0)			(increase (available_cdk2p1p2cycB) 4.0)
))
(:action associatewithcatalyze__cdc25C__CTAK1__cdc25Cp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25C) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_CTAK1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25C) 2.0)			(increase (available_cdc25Cp2) 1.0)
))
(:action associate__pRbp2__Jun__pRbp2Jun
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Jun) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp2) 2.0)			(decrease (available_Jun) 3.0)			(increase (available_pRbp2Jun) 4.0)
))
(:action associatewithcatalyze__cdc25C__Chk1__cdc25Cp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25C) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Chk1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25Cp2) 3.0)			(decrease (available_cdc25C) 2.0)
))
(:action associate__DMP1__gp19ARF__DMP1gp19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gp19ARF) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_DMP1gp19ARF) 2.0)			(decrease (available_DMP1) 3.0)			(decrease (available_gp19ARF) 2.0)
))
(:action associatewithcatalyze__DMP1__cdk46p3cycDp1__DMP1p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_DMP1) 1.0)			(increase (available_DMP1p1) 2.0)
))
(:action associate__E2F2__DP12__E2F2DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F2) 3.0)			(decrease (available_DP12) 2.0)			(increase (available_E2F2DP12) 4.0)
))
(:action associate__Raf1__p130E2F5p1DP12__Raf1p130E2F5p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_p130E2F5p1DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1p130E2F5p1DP12) 2.0)			(decrease (available_Raf1) 3.0)			(decrease (available_p130E2F5p1DP12) 1.0)
))
(:action associate__HDAC1pRbp1E2F4DP12__gE2__HDAC1pRbp1E2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1pRbp1E2F4DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(decrease (available_HDAC1pRbp1E2F4DP12) 4.0)			(increase (available_HDAC1pRbp1E2F4DP12gE2) 4.0)
))
(:action associate__p53p1__DP12__p53p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p53p1) 4.0)			(increase (available_p53p1DP12) 2.0)			(decrease (available_DP12) 1.0)
))
(:action associate__Skp2__Skp1__Skp2Skp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Skp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2Skp1) 4.0)			(decrease (available_Skp2) 4.0)			(decrease (available_Skp1) 1.0)
))
(:action associate__E2F6__DP12__E2F6DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F6) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_E2F6DP12) 1.0)			(decrease (available_DP12) 3.0)			(decrease (available_E2F6) 3.0)
))
(:action associate__E2F13p1DP12__gE2__E2F13p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13p1DP12) 1.0)			(decrease (available_gE2) 1.0)			(increase (available_E2F13p1DP12gE2) 1.0)
))
(:action associate__E2F6DP12p1__gE2__E2F6DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F6DP12p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_E2F6DP12p1gE2) 2.0)			(decrease (available_gE2) 1.0)			(decrease (available_E2F6DP12p1) 2.0)
))
(:action associate__HDAC1p130E2F5p1DP12__gE2__HDAC1p130E2F5p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1p130E2F5p1DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_HDAC1p130E2F5p1DP12) 1.0)			(increase (available_HDAC1p130E2F5p1DP12gE2) 1.0)			(decrease (available_gE2) 3.0)
))
(:action associate__E2F5__DP12__E2F5DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_E2F5DP12) 1.0)			(decrease (available_E2F5) 1.0)			(decrease (available_DP12) 4.0)
))
(:action synthesize__p53p1__p21
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p21) 3.0)
))
(:action associate__E2F4__DP12__E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F4) 3.0)			(increase (available_E2F4DP12) 2.0)			(decrease (available_DP12) 4.0)
))
(:action synthesize__p53p1__cFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cFos) 3.0)
))
(:action associatewithcatalyze__pRbp2__cdk46p3cycDp1__pRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p3cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_pRbp2) 4.0)			(increase (available_pRbp1p2) 1.0)
))
(:action associate__Raf1__pRbE2F4p1DP12__Raf1pRbE2F4p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_pRbE2F4p1DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1pRbE2F4p1DP12) 3.0)			(decrease (available_Raf1) 2.0)			(decrease (available_pRbE2F4p1DP12) 4.0)
))
(:action associate__HDAC1pRbp1E2F13p1DP12__gE2__HDAC1pRbp1E2F13p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1pRbp1E2F13p1DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_HDAC1pRbp1E2F13p1DP12gE2) 4.0)			(decrease (available_gE2) 1.0)			(decrease (available_HDAC1pRbp1E2F13p1DP12) 3.0)
))
(:action associate__E2F13DP12__gE2__E2F13DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(increase (available_E2F13DP12gE2) 3.0)			(decrease (available_E2F13DP12) 1.0)
))
(:action synthesize__p53p1__Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53p1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Gadd45) 2.0)
))
(:action synthesize__p53p1__Mdm2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p53p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Mdm2) 3.0)
))
(:action associate__p130__E2F5DP12p1__p130E2F5DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F5DP12p1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p130) 4.0)			(increase (available_p130E2F5DP12p1) 1.0)			(decrease (available_E2F5DP12p1) 3.0)
))
(:action associate__E2F3__DP12__E2F3DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F3) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_E2F3DP12) 3.0)			(decrease (available_E2F3) 3.0)			(decrease (available_DP12) 1.0)
))
(:action associate__pRbE2F4p1DP12__gE2__pRbE2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbE2F4p1DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(increase (available_pRbE2F4p1DP12gE2) 3.0)			(decrease (available_pRbE2F4p1DP12) 2.0)
))
(:action associate__HDAC1p130E2F4p1DP12__gE2__HDAC1p130E2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_HDAC1p130E2F4p1DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 4.0)			(increase (available_HDAC1p130E2F4p1DP12gE2) 1.0)			(decrease (available_HDAC1p130E2F4p1DP12) 3.0)
))
(:action associate__pCAF__p300__pCAFp300
	:parameters ()
	:precondition (and (>= (+ (*   (available_pCAF) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_p300) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_pCAF) 4.0)			(decrease (available_p300) 2.0)			(increase (available_pCAFp300) 1.0)
))
(:action associate__E2F1__DP12__E2F1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F1) 2.0)			(increase (available_E2F1DP12) 3.0)			(decrease (available_DP12) 4.0)
))
(:action associate__Mdm2__pRbp2__Mdm2pRbp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbp2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_Mdm2) 1.0)			(decrease (available_pRbp2) 2.0)			(increase (available_Mdm2pRbp2) 4.0)
))
(:action associate__Raf1pRbE2F4p1DP12__gE2__Raf1pRbE2F4p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_Raf1pRbE2F4p1DP12) 2.0)			(decrease (available_gE2) 2.0)			(increase (available_Raf1pRbE2F4p1DP12gE2) 2.0)
))
(:action associate__E2F6DP12__gE2__E2F6DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F6DP12) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 1.0)			(increase (available_E2F6DP12gE2) 1.0)			(decrease (available_E2F6DP12) 3.0)
))
(:action synthesize__E2F13p1DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 3.0)
))
(:action synthesize__E2F13p1DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 3.0)
))
(:action synthesize__E2F13p1DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 3.0)
))
(:action synthesize__E2F13p1DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 1.0)
))
(:action synthesize__E2F13p1DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 4.0)
))
(:action synthesize__E2F13p1DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 4.0)
))
(:action synthesize__E2F13p1DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 1.0)
))
(:action synthesize__E2F13p1DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 2.0)
))
(:action synthesize__E2F13p1DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 4.0)
))
(:action synthesize__E2F13p1DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 1.0)
))
(:action associate__Mdm2__E2F13DP12p1__Mdm2E2F13DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F13DP12p1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Mdm2E2F13DP12p1) 2.0)			(decrease (available_Mdm2) 3.0)			(decrease (available_E2F13DP12p1) 1.0)
))
(:action associate__E2F5DP12__gE2__E2F5DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 1.0)			(decrease (available_E2F5DP12) 1.0)			(increase (available_E2F5DP12gE2) 2.0)
))
(:action associate__p130__E2F4DP12__p130E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F4DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F4DP12) 3.0)			(decrease (available_p130) 1.0)			(increase (available_p130E2F4DP12) 2.0)
))
(:action associate__Mdm2__E2F13p1DP12__Mdm2E2F13p1DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_Mdm2) 3.0)			(decrease (available_E2F13p1DP12) 3.0)			(increase (available_Mdm2E2F13p1DP12) 2.0)
))
(:action associate__pRbp1p2__Jun__pRbp1p2Jun
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1p2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Jun) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_Jun) 2.0)			(increase (available_pRbp1p2Jun) 4.0)			(decrease (available_pRbp1p2) 1.0)
))
(:action associate__Mdm2__E2F13DP12__Mdm2E2F13DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F13DP12) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_Mdm2) 1.0)			(decrease (available_E2F13DP12) 3.0)			(increase (available_Mdm2E2F13DP12) 4.0)
))
(:action associate__p21__Gadd45__p21Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p21) 4.0)			(increase (available_p21Gadd45) 2.0)			(decrease (available_Gadd45) 3.0)
))
(:action associate__cdk1p1p2__Gadd45__cdk1p1p2Gadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk1p1p2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk1p1p2) 2.0)			(decrease (available_Gadd45) 3.0)			(increase (available_cdk1p1p2Gadd45) 4.0)
))
(:action associate__Jun__cFos__JuncFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_Jun) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cFos) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_Jun) 4.0)			(decrease (available_cFos) 1.0)			(increase (available_JuncFos) 2.0)
))
(:action associate__m1433__cdc25Cp2__m1433cdc25Cp2
	:parameters ()
	:precondition (and (>= (+ (*   (available_m1433) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Cp2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_m1433cdc25Cp2) 2.0)			(decrease (available_cdc25Cp2) 2.0)			(decrease (available_m1433) 4.0)
))
(:action associate__PCNA__Gadd45__PCNAGadd45
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Gadd45) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_PCNA) 4.0)			(decrease (available_Gadd45) 2.0)			(increase (available_PCNAGadd45) 2.0)
))
(:action associate__PCNA__p21__PCNAp21
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_p21) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_PCNA) 1.0)			(decrease (available_p21) 1.0)			(increase (available_PCNAp21) 2.0)
))
(:action associate__Mdm2__E2F13p1DP12p1__Mdm2E2F13p1DP12p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_E2F13p1DP12p1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_Mdm2E2F13p1DP12p1) 3.0)			(decrease (available_Mdm2) 4.0)			(decrease (available_E2F13p1DP12p1) 4.0)
))
(:action associate__Mdm2__pRbp1p2__Mdm2pRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Mdm2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbp1p2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_Mdm2) 1.0)			(increase (available_Mdm2pRbp1p2) 2.0)			(decrease (available_pRbp1p2) 2.0)
))
(:action associate__p130E2F5DP12p1__gE2__p130E2F5DP12p1gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130E2F5DP12p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p130E2F5DP12p1gE2) 2.0)			(decrease (available_gE2) 4.0)			(decrease (available_p130E2F5DP12p1) 3.0)
))
(:action associate__cAbl__pRbp1p2__cAblpRbp1p2
	:parameters ()
	:precondition (and (>= (+ (*   (available_cAbl) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_pRbp1p2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cAblpRbp1p2) 4.0)			(decrease (available_cAbl) 1.0)			(decrease (available_pRbp1p2) 2.0)
))
(:action associate__p130__E2F5DP12__p130E2F5DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F5DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_p130) 1.0)			(decrease (available_E2F5DP12) 1.0)			(increase (available_p130E2F5DP12) 4.0)
))
(:action associate__E2F4DP12__gE2__E2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 3.0)			(decrease (available_E2F4DP12) 1.0)			(increase (available_E2F4DP12gE2) 3.0)
))
(:action associate__DMP1p1__gp19ARF__DMP1p1gp19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gp19ARF) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_DMP1p1gp19ARF) 4.0)			(decrease (available_DMP1p1) 1.0)			(decrease (available_gp19ARF) 2.0)
))
(:action synthesize__E2F13DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 2.0)
))
(:action synthesize__E2F13DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 2.0)
))
(:action synthesize__E2F13DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 4.0)
))
(:action synthesize__E2F13DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 1.0)
))
(:action synthesize__E2F13DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 2.0)
))
(:action synthesize__E2F13DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 4.0)
))
(:action synthesize__E2F13DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 1.0)
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
			(increase (available_cycA) 2.0)
))
(:action synthesize__E2F13DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F13DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 2.0)
))
(:action associate__Raf1p130E2F5p1DP12__gE2__Raf1p130E2F5p1DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1p130E2F5p1DP12gE2) 2.0)			(decrease (available_Raf1p130E2F5p1DP12) 2.0)			(decrease (available_gE2) 3.0)
))
(:action associate__pRbp2Jun__cFos__pRbp2JuncFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp2Jun) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cFos) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cFos) 4.0)			(increase (available_pRbp2JuncFos) 1.0)			(decrease (available_pRbp2Jun) 2.0)
))
(:action associate__cdk46p1__cycDp1__cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cycDp1) 3.0)			(decrease (available_cdk46p1) 2.0)			(increase (available_cdk46p1cycDp1) 2.0)
))
(:action associate__Raf1__p130E2F5DP12__Raf1p130E2F5DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_p130E2F5DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_Raf1) 2.0)			(increase (available_Raf1p130E2F5DP12) 4.0)			(decrease (available_p130E2F5DP12) 4.0)
))
(:action associate__cdk46p1__cycD__cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk46p1cycD) 2.0)			(decrease (available_cdk46p1) 1.0)			(decrease (available_cycD) 3.0)
))
(:action associate__p107__E2F4DP12__p107E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_p107) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F4DP12) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107E2F4DP12) 4.0)			(decrease (available_p107) 1.0)			(decrease (available_E2F4DP12) 4.0)
))
(:action associate__Raf1__p130E2F4DP12__Raf1p130E2F4DP12
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_p130E2F4DP12) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_Raf1) 3.0)			(increase (available_Raf1p130E2F4DP12) 3.0)			(decrease (available_p130E2F4DP12) 1.0)
))
(:action associatewithcatalyze__cycA__Skp2Skp1__Skp2Skp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cycA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Skp2Skp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2Skp1) 1.0)			(decrease (available_cycA) 1.0)
))
(:action associate__p130E2F4DP12__gE2__p130E2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130E2F4DP12) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p130E2F4DP12gE2) 4.0)			(decrease (available_gE2) 4.0)			(decrease (available_p130E2F4DP12) 4.0)
))
(:action associate__cdk2__cycA__cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2cycA) 2.0)			(decrease (available_cdk2) 2.0)			(decrease (available_cycA) 1.0)
))
(:action associate__cdk2__cycEp1__cdk2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycEp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cycEp1) 2.0)			(increase (available_cdk2cycEp1) 4.0)			(decrease (available_cdk2) 2.0)
))
(:action synthesize__E2F5DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 4.0)
))
(:action synthesize__E2F5DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 1.0)
))
(:action synthesize__E2F5DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 2.0)
))
(:action synthesize__E2F5DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 1.0)
))
(:action synthesize__E2F5DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -2.0 ) 0.0))
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
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 3.0)
))
(:action synthesize__E2F5DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 3.0)
))
(:action synthesize__E2F5DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 4.0)
))
(:action synthesize__E2F5DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 2.0)
))
(:action associate__cdk2__cycE__cdk2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycE) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cycE) 2.0)			(decrease (available_cdk2) 1.0)			(increase (available_cdk2cycE) 2.0)
))
(:action associate__pRbp1p2Jun__cFos__pRbp1p2JuncFos
	:parameters ()
	:precondition (and (>= (+ (*   (available_pRbp1p2Jun) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cFos) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cFos) 4.0)			(increase (available_pRbp1p2JuncFos) 4.0)			(decrease (available_pRbp1p2Jun) 4.0)
))
(:action synthesize__E2F4DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 3.0)
))
(:action synthesize__E2F4DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 2.0)
))
(:action synthesize__E2F4DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 3.0)
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
			(increase (available_cycEp1) 4.0)
))
(:action synthesize__E2F4DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 2.0)
))
(:action synthesize__E2F4DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 2.0)
))
(:action synthesize__E2F4DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 4.0)
))
(:action synthesize__E2F4DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 4.0)
))
(:action synthesize__E2F4DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_E2F4DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 1.0)
))
(:action associate__DMP1p1__cycDp1__DMP1p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1p1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cycDp1) 1.0)			(increase (available_DMP1p1cycDp1) 4.0)			(decrease (available_DMP1p1) 3.0)
))
(:action associate__DMP1p1__cycD__DMP1p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1p1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_DMP1p1cycD) 2.0)			(decrease (available_DMP1p1) 1.0)			(decrease (available_cycD) 3.0)
))
(:action associate__PCNA__cycDp1__PCNAcycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_PCNA) 2.0)			(increase (available_PCNAcycDp1) 1.0)			(decrease (available_cycDp1) 1.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 1.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 2.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 4.0)
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
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 2.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 4.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 1.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 3.0)
))
(:action synthesize__Raf1pRbE2F4p1DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1pRbE2F4p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 3.0)
))
(:action synthesize__DMP1p1gp19ARF__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1p1gp19ARF) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 4.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 1.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 4.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 3.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 2.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 1.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 1.0)
))
(:action associate__DMP1__cycDp1__DMP1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_DMP1) 2.0)			(increase (available_DMP1cycDp1) 2.0)			(decrease (available_cycDp1) 1.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 2.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 4.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 3.0)
))
(:action associate__PCNA__cycD__PCNAcycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_PCNAcycD) 2.0)			(decrease (available_PCNA) 4.0)			(decrease (available_cycD) 2.0)
))
(:action synthesize__Raf1p130E2F5p1DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5p1DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 3.0)
))
(:action associate__p130E2F5DP12__gE2__p130E2F5DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p130E2F5DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p130E2F5DP12gE2) 4.0)			(decrease (available_gE2) 3.0)			(decrease (available_p130E2F5DP12) 2.0)
))
(:action associate__DMP1__cycD__DMP1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_DMP1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_DMP1cycD) 2.0)			(decrease (available_cycD) 2.0)			(decrease (available_DMP1) 3.0)
))
(:action associate__cMyc__Max__cMycMax
	:parameters ()
	:precondition (and (>= (+ (*   (available_cMyc) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_Max) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_Max) 3.0)			(decrease (available_cMyc) 1.0)			(increase (available_cMycMax) 3.0)
))
(:action associate__p21__cdk2cycEp1__p21cdk2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2cycEp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p21cdk2cycEp1) 3.0)			(decrease (available_p21) 4.0)			(decrease (available_cdk2cycEp1) 3.0)
))
(:action associate__p27__cdk2cycEp1__p27cdk2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2cycEp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycEp1) 4.0)			(increase (available_p27cdk2cycEp1) 2.0)			(decrease (available_p27) 1.0)
))
(:action associate__Raf1p130E2F4DP12__gE2__Raf1p130E2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 2.0)			(increase (available_Raf1p130E2F4DP12gE2) 4.0)			(decrease (available_Raf1p130E2F4DP12) 1.0)
))
(:action associate__Skp2Skp1__cdk2cycA__Skp2Skp1cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2Skp1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2Skp1cdk2cycA) 3.0)			(decrease (available_cdk2cycA) 2.0)			(decrease (available_Skp2Skp1) 3.0)
))
(:action associate__cdk2cycA__E2F13__cdk2cycAE2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2cycA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_E2F13) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13) 1.0)			(increase (available_cdk2cycAE2F13) 2.0)			(decrease (available_cdk2cycA) 1.0)
))
(:action associate__p57__cdk46p1cycDp1__p57cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycDp1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1cycDp1) 2.0)			(increase (available_p57cdk46p1cycDp1) 4.0)			(decrease (available_p57) 4.0)
))
(:action associate__PCNAp21__cdk2cycEp1__PCNAp21cdk2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2cycEp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycEp1) 4.0)			(decrease (available_PCNAp21) 3.0)			(increase (available_PCNAp21cdk2cycEp1) 4.0)
))
(:action associate__p27__cdk2cycE__p27cdk2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2cycE) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycE) 3.0)			(decrease (available_p27) 2.0)			(increase (available_p27cdk2cycE) 4.0)
))
(:action associate__cMycMax__gcdc25A__cMycMaxgcdc25A
	:parameters ()
	:precondition (and (>= (+ (*   (available_cMycMax) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_gcdc25A) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gcdc25A) 1.0)			(decrease (available_cMycMax) 4.0)			(increase (available_cMycMaxgcdc25A) 4.0)
))
(:action associate__p21__cdk2cycE__p21cdk2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2cycE) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p21cdk2cycE) 3.0)			(decrease (available_p21) 3.0)			(decrease (available_cdk2cycE) 4.0)
))
(:action associate__p57__cdk46p1cycD__p57cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycD) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk46p1cycD) 4.0)			(decrease (available_cdk46p1cycD) 1.0)			(decrease (available_p57) 2.0)
))
(:action associate__Skp2__cdk2cycA__Skp2cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_Skp2cdk2cycA) 1.0)			(decrease (available_cdk2cycA) 2.0)			(decrease (available_Skp2) 1.0)
))
(:action associate__PCNAp21__cdk46p1cycDp1__PCNAp21cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_PCNAp21cdk46p1cycDp1) 1.0)			(decrease (available_cdk46p1cycDp1) 4.0)			(decrease (available_PCNAp21) 1.0)
))
(:action associate__p27__cdk46p1cycD__p27cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycD) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p27cdk46p1cycD) 4.0)			(decrease (available_p27) 1.0)			(decrease (available_cdk46p1cycD) 2.0)
))
(:action associatewithcatalyze__cdk2cycA__Wee1__cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2cycA) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Wee1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2p1cycA) 3.0)			(decrease (available_cdk2cycA) 4.0)
))
(:action associate__PCNAp21__cdk46p1cycD__PCNAp21cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycD) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_PCNAp21cdk46p1cycD) 1.0)			(decrease (available_cdk46p1cycD) 1.0)			(decrease (available_PCNAp21) 1.0)
))
(:action associate__p57__cdk2cycA__p57cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2cycA) 1.0)			(decrease (available_cdk2cycA) 2.0)			(decrease (available_p57) 2.0)
))
(:action associate__p21__cdk46p1cycDp1__p21cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1cycDp1) 4.0)			(increase (available_p21cdk46p1cycDp1) 2.0)			(decrease (available_p21) 2.0)
))
(:action associate__p57__cdk2cycE__p57cdk2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2cycE) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p57cdk2cycE) 3.0)			(decrease (available_p57) 1.0)			(decrease (available_cdk2cycE) 4.0)
))
(:action associate__p21__cdk46p1cycD__p21cdk46p1cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycD) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p21cdk46p1cycD) 3.0)			(decrease (available_p21) 1.0)			(decrease (available_cdk46p1cycD) 1.0)
))
(:action associate__PCNAp21__cdk2cycA__PCNAp21cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_PCNAp21cdk2cycA) 2.0)			(decrease (available_cdk2cycA) 2.0)			(decrease (available_PCNAp21) 4.0)
))
(:action associate__Raf1p130E2F5DP12__gE2__Raf1p130E2F5DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 2.0)			(decrease (available_Raf1p130E2F5DP12) 1.0)			(increase (available_Raf1p130E2F5DP12gE2) 3.0)
))
(:action associate__p27__cdk46p1cycDp1__p27cdk46p1cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46p1cycDp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46p1cycDp1) 1.0)			(increase (available_p27cdk46p1cycDp1) 4.0)			(decrease (available_p27) 2.0)
))
(:action associate__PCNAp21__cdk2cycE__PCNAp21cdk2cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2cycE) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_PCNAp21cdk2cycE) 3.0)			(decrease (available_PCNAp21) 2.0)			(decrease (available_cdk2cycE) 2.0)
))
(:action associate__p107E2F4DP12__gE2__p107E2F4DP12gE2
	:parameters ()
	:precondition (and (>= (+ (*   (available_p107E2F4DP12) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_gE2) 1.0)			(decrease (available_p107E2F4DP12) 2.0)			(increase (available_p107E2F4DP12gE2) 4.0)
))
(:action associate__p21__cdk2cycA__p21cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycA) 3.0)			(increase (available_p21cdk2cycA) 2.0)			(decrease (available_p21) 2.0)
))
(:action associate__p27__cdk2cycA__p27cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p27cdk2cycA) 4.0)			(decrease (available_p27) 1.0)			(decrease (available_cdk2cycA) 2.0)
))
(:action associate__p57__cdk2cycEp1__p57cdk2cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdk2cycEp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2cycEp1) 1.0)			(decrease (available_p57) 4.0)			(increase (available_p57cdk2cycEp1) 1.0)
))
(:action associate__Skp2Skp1__cdk2p1cycA__Skp2Skp1cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2Skp1) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycA) 2.0)			(decrease (available_Skp2Skp1) 1.0)			(increase (available_Skp2Skp1cdk2p1cycA) 3.0)
))
(:action synthesize__Raf1p130E2F4DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4DP12gE2) 1.0) -4.0 ) 0.0))
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
			(increase (available_cycD) 4.0)
))
(:action synthesize__Raf1p130E2F4DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 3.0)
))
(:action synthesize__Raf1p130E2F4DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 1.0)
))
(:action synthesize__cMycMaxgcdc25A__cdc25A
	:parameters ()
	:precondition (and (>= (+ (*   (available_cMycMaxgcdc25A) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdc25A) 4.0)
))
(:action associate__p57__cdk2p1cycA__p57cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p57) 3.0)			(increase (available_p57cdk2p1cycA) 4.0)			(decrease (available_cdk2p1cycA) 3.0)
))
(:action associate__Skp2__cdk2p1cycA__Skp2cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Skp2) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_Skp2) 1.0)			(decrease (available_cdk2p1cycA) 3.0)			(increase (available_Skp2cdk2p1cycA) 4.0)
))
(:action associate__cdk2p1cycA__E2F13__cdk2p1cycAE2F13
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycA) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_E2F13) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_E2F13) 1.0)			(decrease (available_cdk2p1cycA) 2.0)			(increase (available_cdk2p1cycAE2F13) 2.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 1.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 4.0)
))
(:action associate__p27__cdk2p1cycA__p27cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycA) 1.0)			(increase (available_p27cdk2p1cycA) 4.0)			(decrease (available_p27) 1.0)
))
(:action associate__p21__cdk2p1cycA__p21cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycA) 4.0)			(increase (available_p21cdk2p1cycA) 3.0)			(decrease (available_p21) 3.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -2.0 ) 0.0))
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
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 1.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__cycE
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycE) 4.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycDp1) 3.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cycD) 3.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_cycA) 3.0)
))
(:action synthesize__Raf1p130E2F5DP12gE2__cMyc
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F5DP12gE2) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cMyc) 4.0)
))
(:action associate__PCNAp21__cdk2p1cycA__PCNAp21cdk2p1cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk2p1cycA) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk2p1cycA) 4.0)			(increase (available_PCNAp21cdk2p1cycA) 1.0)			(decrease (available_PCNAp21) 2.0)
))
(:action synthesize__Raf1p130E2F4DP12gE2__p107
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_p107) 2.0)
))
(:action synthesize__Raf1p130E2F4DP12gE2__p107p1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4DP12gE2) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_p107p1) 1.0)
))
(:action synthesize__Raf1p130E2F4DP12gE2__pol
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_pol) 2.0)
))
(:action synthesize__Raf1p130E2F4DP12gE2__p19ARF
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4DP12gE2) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_p19ARF) 2.0)
))
(:action synthesize__Raf1p130E2F4DP12gE2__cycEp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1p130E2F4DP12gE2) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cycEp1) 3.0)
))
(:action associatewithcatalyze__cdc25A__Raf1__cdc25Ap1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdc25A) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_Raf1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(decrease (available_cdc25A) 4.0)			(increase (available_cdc25Ap1) 1.0)
))
(:action associate__Raf1__cdc25A__Raf1cdc25A
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdc25A) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_Raf1cdc25A) 4.0)			(decrease (available_cdc25A) 1.0)			(decrease (available_Raf1) 3.0)
))
(:action associatewithcatalyze__cdk2p1cycA__cdc25Ap1__cdk2cycA
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk2p1cycA) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdc25Ap1) 1.0) -2.0 ) 0.0))
	:effect (and 
			(increase (available_cdk2cycA) 1.0)			(decrease (available_cdk2p1cycA) 1.0)
))
(:action associate__Raf1__cdc25Ap1__Raf1cdc25Ap1
	:parameters ()
	:precondition (and (>= (+ (*   (available_Raf1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Ap1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_Raf1) 4.0)			(decrease (available_cdc25Ap1) 4.0)			(increase (available_Raf1cdc25Ap1) 4.0)
))
(:action associatewithcatalyze__cdk46p1__cdc25Ap1__cdk46
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46p1) 1.0) -4.0 ) 0.0)(>= (+ (*   (available_cdc25Ap1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(increase (available_cdk46) 2.0)			(decrease (available_cdk46p1) 4.0)
))
(:action associate__cdk46__cycDp1__cdk46cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycDp1) 1.0) -1.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46) 1.0)			(decrease (available_cycDp1) 1.0)			(increase (available_cdk46cycDp1) 2.0)
))
(:action associate__cdk46__cycD__cdk46cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_cdk46) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(increase (available_cdk46cycD) 4.0)			(decrease (available_cdk46) 1.0)			(decrease (available_cycD) 4.0)
))
(:action associate__p57__cdk46cycDp1__p57cdk46cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_p57) 3.0)			(increase (available_p57cdk46cycDp1) 1.0)			(decrease (available_cdk46cycDp1) 4.0)
))
(:action associate__p57__cdk46cycD__p57cdk46cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p57) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p57) 3.0)			(increase (available_p57cdk46cycD) 2.0)			(decrease (available_cdk46cycD) 3.0)
))
(:action associate__PCNAp21__cdk46cycDp1__PCNAp21cdk46cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46cycDp1) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_PCNAp21) 3.0)			(increase (available_PCNAp21cdk46cycDp1) 3.0)			(decrease (available_cdk46cycDp1) 4.0)
))
(:action associate__p27__cdk46cycD__p27cdk46cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46cycD) 1.0) -4.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46cycD) 4.0)			(decrease (available_p27) 1.0)			(increase (available_p27cdk46cycD) 2.0)
))
(:action associate__PCNAp21__cdk46cycD__PCNAp21cdk46cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_PCNAp21) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46cycD) 1.0) -1.0 ) 0.0))
	:effect (and 
			(increase (available_PCNAp21cdk46cycD) 3.0)			(decrease (available_cdk46cycD) 1.0)			(decrease (available_PCNAp21) 2.0)
))
(:action associate__p21__cdk46cycDp1__p21cdk46cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -2.0 ) 0.0)(>= (+ (*   (available_cdk46cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_cdk46cycDp1) 3.0)			(decrease (available_p21) 2.0)			(increase (available_p21cdk46cycDp1) 2.0)
))
(:action associate__p21__cdk46cycD__p21cdk46cycD
	:parameters ()
	:precondition (and (>= (+ (*   (available_p21) 1.0) -1.0 ) 0.0)(>= (+ (*   (available_cdk46cycD) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p21) 1.0)			(increase (available_p21cdk46cycD) 4.0)			(decrease (available_cdk46cycD) 3.0)
))
(:action associate__p27__cdk46cycDp1__p27cdk46cycDp1
	:parameters ()
	:precondition (and (>= (+ (*   (available_p27) 1.0) -3.0 ) 0.0)(>= (+ (*   (available_cdk46cycDp1) 1.0) -3.0 ) 0.0))
	:effect (and 
			(decrease (available_p27) 3.0)			(decrease (available_cdk46cycDp1) 3.0)			(increase (available_p27cdk46cycDp1) 3.0)
))


)