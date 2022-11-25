import excel "C:\Users\lucad\OneDrive\Desktop\ADVANCED MICROECONOMICS\Microeconomic project\d8_unique.xlsx", sheet("without_outliers") firstrow clear
//DESCRIPTIVE STATISTICS
twoway (scatter giga time_from_iliad_entry if virtual == 1)
twoway (scatter calls_mins time_from_iliad_entry if virtual == 1)
twoway (scatter sms time_from_iliad_entry if virtual == 1)
twoway (scatter fee time_from_iliad_entry if virtual == 1)
twoway (scatter daily_cost time_from_iliad_entry if daily_cost<1 & virtual == 1)
twoway (scatter giga_norm time_from_iliad_entry if virtual == 1)
twoway (scatter calls_mins_norm time_from_iliad_entry if virtual == 1)
twoway (scatter sms_norm time_from_iliad_entry if virtual == 1)
twoway (scatter daily_cost_norm time_from_iliad_entry if daily_cost_norm < 0.2 & virtual == 1)
twoway (scatter daily_giga time_from_iliad_entry if virtual == 1)
twoway (scatter daily_calls_mins time_from_iliad_entry if virtual == 1)
twoway (scatter daily_sms time_from_iliad_entry if virtual == 1)
//-------------------------------------------------------
twoway (scatter daily_giga_cost time_from_iliad_entry if virtual == 1)
twoway (scatter daily_calls_mins_cost time_from_iliad_entry if virtual == 1)
twoway (scatter daily_sms_cost time_from_iliad_entry if virtual == 1)
//
twoway (scatter daily_giga_norm time_from_iliad_entry if virtual == 1)
twoway (scatter daily_calls_mins_norm time_from_iliad_entry if virtual == 1)
twoway (scatter daily_sms_norm time_from_iliad_entry if virtual == 1)
twoway (scatter aggregated_index time_from_iliad_entry if virtual == 1)
//-------------------------------------------------------
twoway (scatter aggregated_index_cost time_from_iliad_entry if virtual == 1)
//
twoway (scatter a_i_cost_g2_c2_s1 time_from_iliad_entry if virtual == 1)
twoway (scatter a_i_cost_g04_c04_s02 time_from_iliad_entry if virtual == 1)
twoway (scatter a_i_cost_g1_c1 time_from_iliad_entry if virtual == 1) if a_i_cost_g1_c1 < 3
//AGGREGATED REGRESSIONS
rdplot aggregated_index_cost time_from_iliad_entry if virtual == 1
rdrobust aggregated_index_cost time_from_iliad_entry if virtual == 1
reg aggregated_index_cost time_from_iliad_entry iliad_entry if virtual == 1
reg aggregated_index_cost time_from_iliad_entry iliad_entry business if virtual == 1
reg aggregated_index_cost time_from_iliad_entry iliad_entry business wind_tre_mno if virtual == 1
reg aggregated_index_cost time_from_iliad_entry iliad_entry business vodafone_mno if virtual == 1
reg aggregated_index_cost time_from_iliad_entry iliad_entry business tim_mno if virtual == 1
//DISAGGREGATED REGRESSIONS
reg daily_giga_cost time_from_iliad_entry iliad_entry business if virtual == 1
reg daily_calls_mins_cost time_from_iliad_entry iliad_entry business if virtual == 1
reg daily_sms_cost time_from_iliad_entry iliad_entry business if virtual == 1
//REGRESSION DISCONTINUITY FOR DIFFERENT EVENTS
reg aggregated_index_cost time_from_iliad_entry kena_entry business if virtual == 1
reg aggregated_index_cost time_from_iliad_entry ho_entry business if virtual == 1
reg aggregated_index_cost time_from_iliad_entry spusu_entry business if virtual == 1
reg aggregated_index_cost time_from_iliad_entry very_entry business if virtual == 1
reg aggregated_index_cost time_from_iliad_entry wind_tre_foundation business if virtual == 1
reg aggregated_index_cost time_from_iliad_entry G business if virtual == 1
//CHECK ON AGGREGATED INDEX WHEIGTS
reg aggregated_index_cost time_from_iliad_entry iliad_entry business if virtual == 1
mean aggregated_index_cost if iliad_entry==0 & virtual == 1
display -.2371964/.4755197
reg a_i_cost_g2_c2_s1 time_from_iliad_entry iliad_entry business if virtual == 1
mean a_i_cost_g2_c2_s1 if iliad_entry==0 & virtual == 1
display -.1447141/.2973243
reg a_i_cost_g04_c04_s02 time_from_iliad_entry iliad_entry business if virtual == 1
mean a_i_cost_g04_c04_s02 if iliad_entry==0 & virtual == 1
display -.7235705/1.486621