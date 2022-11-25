import excel "C:\Users\lucad\OneDrive\Desktop\ADVANCED MICROECONOMICS\Microeconomic project\d8_unique.xlsx", sheet("without_outliers") firstrow clear
//DESCRIPTIVE STATISTICS
twoway (scatter giga time_from_iliad_entry)
twoway (scatter calls_mins time_from_iliad_entry)
twoway (scatter sms time_from_iliad_entry)
twoway (scatter fee time_from_iliad_entry)
twoway (scatter daily_cost time_from_iliad_entry if daily_cost<2.5)
twoway (scatter giga_norm time_from_iliad_entry)
twoway (scatter calls_mins_norm time_from_iliad_entry)
twoway (scatter sms_norm time_from_iliad_entry)
twoway (scatter daily_cost_norm time_from_iliad_entry if daily_cost_norm < 0.6)
twoway (scatter daily_giga time_from_iliad_entry)
twoway (scatter daily_calls_mins time_from_iliad_entry)
twoway (scatter daily_sms time_from_iliad_entry)
//-------------------------------------------------------
twoway (scatter daily_giga_cost time_from_iliad_entry)
twoway (scatter daily_calls_mins_cost time_from_iliad_entry)
twoway (scatter daily_sms_cost time_from_iliad_entry if daily_sms_cost < 1000)
//
twoway (scatter daily_giga_norm time_from_iliad_entry)
twoway (scatter daily_calls_mins_norm time_from_iliad_entry)
twoway (scatter daily_sms_norm time_from_iliad_entry)
twoway (scatter aggregated_index time_from_iliad_entry)
//-------------------------------------------------------
twoway (scatter aggregated_index_cost time_from_iliad_entry)
//
twoway (scatter a_i_cost_g2_c2_s1 time_from_iliad_entry)
twoway (scatter a_i_cost_g04_c04_s02 time_from_iliad_entry)
twoway (scatter a_i_cost_g1_c1 time_from_iliad_entry if a_i_cost_g1_c1)
//AGGREGATED REGRESSIONS
rdplot aggregated_index_cost time_from_iliad_entry
rdrobust aggregated_index_cost time_from_iliad_entry
reg aggregated_index_cost time_from_iliad_entry iliad_entry
reg aggregated_index_cost time_from_iliad_entry iliad_entry music_movies
reg aggregated_index_cost time_from_iliad_entry iliad_entry music_movies business
reg aggregated_index_cost time_from_iliad_entry iliad_entry music_movies business smartphone
reg aggregated_index_cost time_from_iliad_entry iliad_entry music_movies business smartphone winback
//DISAGGREGATED REGRESSIONS
reg daily_giga_cost time_from_iliad_entry iliad_entry business
mean daily_giga_cost if iliad_entry==0
display 1.301809/.45428
reg daily_calls_mins_cost time_from_iliad_entry iliad_entry business
mean daily_calls_mins_cost if iliad_entry==0
display 204.2225/142.6964
reg daily_sms_cost time_from_iliad_entry iliad_entry business
//REGRESSION DISCONTINUITY FOR DIFFERENT EVENTS
reg aggregated_index_cost time_from_iliad_entry kena_entry business
reg aggregated_index_cost time_from_iliad_entry ho_entry business
reg aggregated_index_cost time_from_iliad_entry spusu_entry business
reg aggregated_index_cost time_from_iliad_entry very_entry business
reg aggregated_index_cost time_from_iliad_entry wind_tre_foundation business
reg aggregated_index_cost time_from_iliad_entry G business
//CHECK ON AGGREGATED INDEX WHEIGTS
reg aggregated_index_cost time_from_iliad_entry iliad_entry business
mean aggregated_index_cost if iliad_entry==0
display -0.2919465/0.4696816
reg a_i_cost_g2_c2_s1 time_from_iliad_entry iliad_entry business
mean a_i_cost_g2_c2_s1 if iliad_entry==0
display -0.1844522/.2948877
reg a_i_cost_g04_c04_s02 time_from_iliad_entry iliad_entry business
mean a_i_cost_g04_c04_s02 if iliad_entry==0
