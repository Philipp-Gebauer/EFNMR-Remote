#png
set terminal png size 1024,720
set output "pngplots/T2.png"

#epslatex
#set terminal epslatex
#set output "plots/T2.tex"

x_min = 0
x_max = 7500

y_min = 0
y_max = 1
dataPTH = "Messwerte/TXT/6T2/T2_single_nophasecycle.txt"

load "jet.pal"

set ylabel "$\\frac{E}{E_0}$"
set xlabel "t in $\\SI{\\mili \\sec}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]

M(x) = M_0 * exp(-x/T_2)
M_0 = 1
T_2 = 2700
fit [x_min:x_max] M(x) dataPTH using 1:2 via T_2, M_0

plot dataPTH using 1:2 ls 2 ps 3 lw 3 title "the spin-spin relacation dependent from the time", M(x) ls 8 lw 3 title "\\textsc{Keine Ahnung}-Fit $M(x)=M_0 * exp(-x/T_2)$ with $T_2=\\SI[2691.06][\mili\sec]$"