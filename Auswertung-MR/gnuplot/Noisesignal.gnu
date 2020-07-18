#png
# set terminal png size 1024,720
# set output "pngplots/noise.png"

#epslatex
set terminal epslatex
set output "plots/noise.tex"

x_min = 0   
x_max = 1.5

y_min = -40
y_max = 40
dataPTH = "Messwerte/TXT/noise.txt"

load "jet.pal"

set datafile separator ","
set ylabel "Amplitude in $\\si{\\mu \\volt}$"
set xlabel "Time in $\\si{\\second}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]


#plot dataPTH using 1:2 ls 2 ps 3 lw 3 notitle
plot dataPTH using 1:2 lt 5 lc 15 w lines title "noise signal"