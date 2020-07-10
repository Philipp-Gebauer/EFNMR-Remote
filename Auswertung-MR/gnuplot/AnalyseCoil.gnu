#png
set terminal png size 1024,720
set output "pngplots/Coilanalyse.png"

#epslatex
#set terminal epslatex
#set output "plots/Coilanalyse.tex"

x_min = 4
x_max = 17.5

y_min = 1650
y_max = 2700
dataPTH = "Messwerte/TXT/2AnalyseCoil/Analyse Coil.txt"

load "jet.pal"

set ylabel "frequency $\\SI{\hertz}$"
set xlabel "capacity in $\\SI{\\nano \\farad}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]


plot dataPTH using 1:2 lt 5 lc 15 w lines title "the resonancefrequency dependent from the Capacity in the LCR-circuit"