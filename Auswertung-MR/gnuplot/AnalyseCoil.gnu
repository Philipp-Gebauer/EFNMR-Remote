#png
# set terminal png size 1024,720
# set output "pngplots/Coilanalyse.png"

#epslatex
set terminal epslatex
set output "plots/Coilanalyse.tex"


x_min = 4.4
x_max = 17.2

y_min = 0
y_max = 12
dataPTH = "Messwerte/TXT/2AnalyseCoil/Analyse Coil.txt"

load "jet.pal"

set ylabel "Frequency $\\si{\\hertz}$"
set xlabel "Capacity in $\\si{\\nano \\farad}$"
set xrange [x_min:x_max]
# set yrange [y_min:y_max]
set label at 13.58, 1841.4 "    lamor frequency" point ls 5 lc 15 ps 3 lw 3
set arrow from 4.4,1841.4 to 17.15,1841.4 nohead
set arrow from 13.58,1500 to 13.58,3750 nohead


 f(x) = 1/(sqrt(L*x*10**(-9))*2*pi)
  L = 0.417

# fit [x_min:x_max] f(x) dataPTH using 1:2 via L

plot dataPTH using 1:2 lt 5 lc 15 w lines title "measured resonance frequency", f(x) lt 6 title "calculated resonance frequency"