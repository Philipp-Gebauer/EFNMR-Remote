#png
set terminal png size 1024,720
set output "pngplots/SpinEcho_4scans_ideal_Repetitiontime_4.95xshimming.png"

#epslatex
#set terminal epslatex
#set output "plots/SpinEcho_4scans_ideal_Repetitiontime_4.95xshimming.tex"

x_min = 1800
x_max = 1880

y_min = 0
y_max = 15
dataPTH = "Messwerte/TXT/7HahnEcho/SpinEcho_4scans_ideal_Repetitiontime_4.95xshimming.txt"

load "jet.pal"

set ylabel "FID amplitude"
set xlabel "frequency in $\\SI{\\hertz}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]


plot dataPTH using 1:2 lt 5 lc 15 w lines title "Magnitude spectrum"