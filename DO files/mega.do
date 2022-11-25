import excel "C:\Users\lizzy\Desktop\Universita\Micro\prj\d3.xlsx", sheet("d1") firstrow
drop in 43
drop in 43
drop in 54/55
drop in 70/76
drop in 72/76
drop in 79/80
twoway (lfit costo_indice_Z tempo if costo_indice_Z < 20&tempo<0&tempo>-1000) (lfit costo_indice_Z tempo if costo_indice_Z < 20 & tempo >=0)

 