#png
set terminal png size 1024,720
set output "pngplots/Hahnecho0shimming.png"

#epslatex
#set terminal epslatex
#set output "plots/Hahnecho0shimming.tex"

x_min = 1400
x_max = 2300

y_min = 0
y_max = 20
dataPTH = "Messwerte/TXT/7HahnEcho/SpinEcho_4scans_ideal_Repetitiontime_0_shimming.txt"

load "jet.pal"

set ylabel "FID amplitude"
set xlabel "Frequency in $\\si{\\hertz}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]


plot dataPTH using 1:2 lt 5 lc 15 w lines title "magnitude spectrum"