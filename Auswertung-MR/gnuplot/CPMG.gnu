#png
set terminal png size 1024,720
set output "pngplots/CPMG0.45shimming.png"

#epslatex
#set terminal epslatex
#set output "plots/CPMG0.45shimming.tex"


x_min = 200
x_max = 6000

y_min = 0
y_max = 1
dataPTH = "Messwerte/TXT/8CPMG/CPMG_12_withouttimedomainfilter shimmx_0.45.txt"

load "jet.pal"

set ylabel "Amplitude $\\frac{E}{E_0}$"
set xlabel "time in $\\SI{\\mili \\sec}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]
M(x) = M_0 * exp(-x/T_2)
M_0 = 1
T_2 = 2700
fit [x_min:x_max] M(x) dataPTH using 1:2 via T_2, M_0

plot dataPTH using 1:2 ls 2 ps 3 lw 3 title "the spin-spin relacation dependent from the time with an inhomogene field", M(x) ls 8 lw 3 title "\\textsc{Keine Ahnung}-Fit $M(x)=M_0 * exp(-x/T_2)$ with $T_2=\\SI[2317.76][\mili\sec]$"