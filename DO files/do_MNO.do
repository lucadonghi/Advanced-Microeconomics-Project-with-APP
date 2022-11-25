import excel "C:\Users\lucad\OneDrive\Desktop\ADVANCED MICROECONOMICS\Microeconomic project\d8_unique.xlsx", sheet("without_outliers") firstrow clear
//DESCRIPTIVE STATISTICS
twoway (scatter giga time_from_iliad_entry) if virtual == 0
twoway (scatter calls_mins time_from_iliad_entry) if virtual == 0
twoway (scatter sms time_from_iliad_entry) if virtual == 0
twoway (scatter fee time_from_iliad_entry) if virtual == 0
twoway (scatter daily_cost time_from_iliad_entry if daily_cost<2.5) if virtual == 0
twoway (scatter giga_norm time_from_iliad_entry) if virtual == 0
twoway (scatter calls_mins_norm time_from_iliad_entry) if virtual == 0
twoway (scatter sms_norm time_from_iliad_entry) if virtual == 0
twoway (scatter daily_cost_norm time_from_iliad_entry if daily_cost_norm < 0.6) if virtual == 0
twoway (scatter daily_giga time_from_iliad_entry) if virtual == 0
twoway (scatter daily_calls_mins time_from_iliad_entry) if virtual == 0
twoway (scatter daily_sms time_from_iliad_entry) if virtual == 0
//-------------------------------------------------------
twoway (scatter daily_giga_cost time_from_iliad_entry) if virtual == 0
twoway (scatter daily_calls_mins_cost time_from_iliad_entry) if virtual == 0
twoway (scatter daily_sms_cost time_from_iliad_entry if daily_sms_cost < 1000) if virtual == 0
//
twoway (scatter daily_giga_norm time_from_iliad_entry) if virtual == 0
twoway (scatter daily_calls_mins_norm time_from_iliad_entry) if virtual == 0
twoway (scatter daily_sms_norm time_from_iliad_entry) if virtual == 0
twoway (scatter aggregated_index time_from_iliad_entry) if virtual == 0
//-------------------------------------------------------
twoway (scatter aggregated_index_cost time_from_iliad_entry) if virtual == 0
//
twoway (scatter a_i_cost_g2_c2_s1 time_from_iliad_entry) if virtual == 0
twoway (scatter a_i_cost_g04_c04_s02 time_from_iliad_entry) if virtual == 0
twoway (scatter a_i_cost_g1_c1 time_from_iliad_entry) if virtual == 0 & a_i_cost_g1_c1 < 0.015
//AGGREGATED REGRESSIONS
rdplot aggregated_index_cost time_from_iliad_entry if virtual == 0
rdrobust aggregated_index_cost time_from_iliad_entry if virtual == 0
reg aggregated_index_cost time_from_iliad_entry iliad_entry if virtual == 0
reg aggregated_index_cost time_from_iliad_entry iliad_entry music_movies if virtual == 0
reg aggregated_index_cost time_from_iliad_entry iliad_entry music_movies business if virtual == 0
reg aggregated_index_cost time_from_iliad_entry iliad_entry music_movies business smartphone if virtual == 0
reg aggregated_index_cost time_from_iliad_entry iliad_entry music_movies business smartphone winback if virtual == 0
//DISAGGREGATED REGRESSIONS
reg daily_giga_cost time_from_iliad_entry iliad_entry business if virtual == 0
mean daily_giga_cost if iliad_entry==0 & virtual == 0
display 1.579741/.4767445
reg daily_calls_mins_cost time_from_iliad_entry iliad_entry business if virtual == 0
mean daily_calls_mins_cost if iliad_entry==0 & virtual == 0
display 206.6887/158.5101
reg daily_sms_cost time_from_iliad_entry iliad_entry business if virtual == 0
//REGRESSION DISCONTINUITY FOR DIFFERENT EVENTS
reg aggregated_index_cost time_from_iliad_entry kena_entry business if virtual == 0
reg aggregated_index_cost time_from_iliad_entry ho_entry business if virtual == 0
reg aggregated_index_cost time_from_iliad_entry spusu_entry business if virtual == 0
reg aggregated_index_cost time_from_iliad_entry very_entry business if virtual == 0
reg aggregated_index_cost time_from_iliad_entry wind_tre_foundation business if virtual == 0
reg aggregated_index_cost time_from_iliad_entry G business if virtual == 0
//CHECK ON AGGREGATED INDEX WHEIGTS
reg aggregated_index_cost time_from_iliad_entry iliad_entry business if virtual == 0
mean aggregated_index_cost if iliad_entry==0 & virtual == 0
display-.3193923/.4677356
reg a_i_cost_g2_c2_s1 time_from_iliad_entry iliad_entry business if virtual == 0
mean a_i_cost_g2_c2_s1 if iliad_entry==0 & virtual == 0
display -.2016492/.2940755
reg a_i_cost_g04_c04_s02 time_from_iliad_entry iliad_entry business if virtual == 0
mean a_i_cost_g04_c04_s02 if iliad_entry==0 & virtual == 0
display-1.008246/1.470378