#png
# set terminal png size 1024,720
# set output "pngplots/CPMG045shimming.png"

#epslatex
set terminal epslatex
set output "plots/CPMG045shimming.tex"


x_min = 200
x_max = 6000

y_min = 0
y_max = 1
dataPTH = "Messwerte/TXT/8CPMG/CPMG_12_withouttimedomainfilter shimmx_045.txt"

load "jet.pal"

set ylabel "Amplitude $\\frac{\\text{E}}{\\text{E}_0}$"
set xlabel "Time in $\\si{\\milli \\second}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]
M(x) = M_0 * exp(-x/T_2)
M_0 = 1
T_2 = 2700
fit [x_min:x_max] M(x) dataPTH using 1:2 via T_2, M_0

plot dataPTH using 1:2 ls 2 ps 3 lw 3 title "measured data", M(x) ls 8 lw 3 title "attenuation-Fit"