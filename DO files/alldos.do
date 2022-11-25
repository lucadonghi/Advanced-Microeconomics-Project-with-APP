import excel "C:\Users\lizzy\Desktop\Universita\Micro\prj\d3.xlsx", sheet("d1") firstrow
twoway (scatter indice_Z tempo, sort)
twoway (scatter costo_indice_Z tempo, sort mcolor(yellow))
twoway (scatter costo_indice_Z tempo if costo_indice_Z < 60, sort mcolor(gold))
xtreg costo_indice_Z tempo
avplot indice_Z
avplots
twoway (lfit costo_indice_Z tempo if costo_indice_Z < 60&tempo<0)
twoway (lfit costo_indice_Z tempo if costo_indice_Z < 60&tempo<0) (lfit costo_indice_Z tempo if costo_indice_Z < 60 & tempo >=0)
twoway (lfit indice_Z tempo if tempo <0) (lfit indice_Z tempo if tempo >= 0)
twoway (scatter indice_Z tempo, sort)
drop in 43
drop in 43
drop in 54/55
drop in 70/76
drop in 72/76
drop in 79/80
twoway (scatter indice_Z tempo, sort)
twoway (lfit indice_Z tempo if tempo <0) (lfit indice_Z tempo if tempo >= 0)
twoway (lfit costo_indice_Z tempo if costo_indice_Z < 60&tempo<0) (lfit costo_indice_Z tempo if costo_indice_Z < 60 & tempo >=0)
twoway (lfit costo_indice_Z tempo if costo_indice_Z < 60&tempo<0) (lfit costo_indice_Z tempo if costo_indice_Z < 60 & tempo >=0)
twoway (scatter indice_Z tempo, sort)
twoway (scatter costo_indice_Z tempo if costo_indice_Z < 60, sort mcolor(gold))
twoway (scatter costo_indice_Z tempo if costo_indice_Z < 20, sort mcolor(gold))
twoway (lfit costo_indice_Z tempo if costo_indice_Z < 20&tempo<0) (lfit costo_indice_Z tempo if costo_indice_Z < 20 & tempo >=0)
twoway (lfit costo_indice_Z tempo if costo_indice_Z < 20&tempo<0&tempo>-1000) (lfit costo_indice_Z tempo if costo_indice_Z < 20 & tempo >=0)
twoway (lfit costo_indice_Z tempo if costo_indice_Z < 20&tempo<0&tempo>-1000) (lfit costo_indice_Z tempo if costo_indice_Z < 20 & tempo >=0)
import excel "C:\Users\lizzy\Desktop\Universita\Micro\prj\d4_cut.xlsx", sheet("Foglio1") firstrow clear
twoway (scatter indice_Z tempo, sort)
twoway (scatter indice_Z tempo, sort)
twoway (scatter costo_indice_Z tempo, sort mcolor(yellow))
twoway (lfit costo_indice_Z tempo if costo_indice_Z < 20&tempo<0&tempo>-1000) (lfit costo_indice_Z tempo if costo_indice_Z < 20 & tempo >=0)
twoway (scatter costo_indice_Z tempo if costo_indice_Z < 20, sort mcolor(gold))
twoway (lfit costo_indice_Z tempo if tempo<0) (lfit costo_indice_Z tempo if  tempo >=0)
twoway (lfit costo_indice_Z tempo if costo_indice_Z < 20&tempo<0) (lfit costo_indice_Z tempo if costo_indice_Z < 20 & tempo >=0)
twoway (scatter costo_indice_Z_gigax2 tempo, sort)
twoway (lfit costo_indice_Z_gigax2 tempo if costo_indice_Z_gigax2 < 20&tempo<0) (lfit costo_indice_Z_gigax2 tempo if costo_indice_Z_gigax2 < 20 & tempo >=0)
twoway (lfit indice_Z_gigax2 tempo if indice_Z_gigax2 < 20&tempo<0) (lfit indice_Z_gigax2 tempo if indice_Z_gigax2 < 20 & tempo >=0)
regress costo_indice_Z tempo entrata_iliad
drop in 150
twoway (scatter indice_Z tempo, sort)
twoway (scatter costo_indice_Z tempo, sort)
drop if costo_indice_Z > 20
regress costo_indice_Z tempo entrata_iliad
twoway (scatter costo_indice_Z tempo, sort)
twoway (lfit costo_indice_Z tempo ) (lfit costo_indice_Z tempo)
twoway (lfit costo_indice_Z tempo if tempo < 0 ) (lfit costo_indice_Z tempo if tempo>=0)
regress costo_indice_Z tempo
import excel "C:\Users\lizzy\Desktop\Universita\Micro\prj\d5_cut.xlsx", sheet("Foglio1") firstrow clear
regress costo_indice_Z tempo entrata_iliad fusione_wind_tre whatsapp_norm smartphone business extra_italia winback G T music_movies
regress costo_indice_Z tempo entrata_iliad fusione_wind_tre whatsapp_norm smartphone business extra_italia winback G T music_movies
regress costo_indice_Z tempo entrata_iliad fusione_wind_tre
regress costo_indice_Z tempo entrata_iliad whatsapp_norm
regress messaggi_giornalieri_norm whatsapp_norm
regress costo_indice_Z tempo entrata_iliad smartphone
regress costo_indice_Z tempo entrata_iliad smartphone business
regress costo_indice_Z tempo entrata_iliad extra_italia winback G T music_movies
regress costo_indice_Z tempo entrata_iliad extra_italia
regress costo_indice_Z tempo entrata_iliad if extra_italia == 0
twoway (scatter costo_indice_Z tempo if extra_italia == 0)
regress costo_indice_Z extra_italia
import excel "C:\Users\lizzy\Desktop\Universita\Micro\prj\d6_cut.xlsx", sheet("Foglio1") firstrow clear
regress costo_indice_Z extra_italia
regress costo_indice_Z tempo entrata_iliad
regress costo_indice_Z tempo entrata_iliad extra_italia
regress costo_indice_Z tempo entrata_iliad fusione_wind_tre extra_italia
regress costo_indice_Z tempo entrata_iliad whatsapp_norm extra_italia
regress costo_messaggi_giornalieri whatsapp_norm
regress costo_messaggi_giornalieri whatsapp_norm
regress costo_indice_Z tempo entrata_iliad extra_italia G T
regress costo_indice_Z tempo entrata_iliad extra_italia T G
regress costo_indice_Z tempo entrata_iliad T
regress costo_indice_Z tempo entrata_iliad G
regress costo_indice_Z tempo entrata_iliad extra_italia business
twoway (scatter costo_indice_Z tempo if business == 0) (scatter costo_indice_Z tempo if business == 1, mcolor(gold))
twoway (scatter indice_Z tempo if business == 0) (scatter indice_Z tempo if business == 1, mcolor(gold))
twoway (scatter costo_indice_Z tempo if smartphone == 0) (scatter costo_indice_Z tempo if smartphone == 1, mcolor(gold))
 regress costo_indice_Z tempo entrata_iliad extra_italia business if costo_indice_Z <20
import excel "C:\Users\lizzy\Desktop\Universita\Micro\prj\d6_cut.xlsx", sheet("Foglio1") firstrow clear
 regress costo_indice_Z tempo entrata_iliad extra_italia business
 regress costo_indice_Z tempo entrata_iliad extra_italia smartphone
 regress costo_indice_Z tempo entrata_iliad extra_italia winback
 regress costo_indice_Z tempo entrata_iliad extra_italia
import excel "C:\Users\lizzy\Desktop\Universita\Micro\prj\no_iliad_0.xlsx", sheet("Foglio1") firstrow clear
 regress costo_indice_Z music_movies business smartphone extra_italia winback G T fusione_wind_tre tempo whatsapp_norm
 regress costo_indice_Z music_movies business smartphone extra_italia winback T fusione_wind_tre tempo whatsapp_norm
import excel "C:\Users\lizzy\Desktop\Universita\Micro\prj\d6.xlsx", sheet("Foglio1") firstrow clear
import excel "C:\Users\lizzy\Desktop\Universita\Micro\prj\no_iliad_0.xlsx",firstrow clear
 regress costo_indice_Z music_movies business smartphone extra_italia winback T fusione_wind_tre tempo whatsapp_norm
 regress costo_indice_Z music_movies business smartphone extra_italia winback T fusione_wind_tre tempo whatsapp_norm G entrata_iliad
import excel "C:\Users\lizzy\Desktop\Universita\Micro\prj\d6.xlsx", sheet("d1") firstrow clear
 regress costo_indice_Z music_movies business smartphone extra_italia winback T fusione_wind_tre tempo whatsapp_norm G entrata_iliad
 regress costo_indice_Z T tempo if entrata_iliad==0
 regress costo_indice_Z music_movies business smartphone extra_italia winback T fusione_wind_tre tempo whatsapp_norm G if  entrata_iliad==1
regress costo_indice_Z tempo entrata_iliad fusione_wind_tre extra_italia
