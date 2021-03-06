#png
# set terminal png size 1024,720
# set output "pngplots/B1dauer.png"

#epslatex
set terminal epslatex
set output "plots/B1dauer.tex"

x_min = 0
x_max = 3.4

y_min = 60
y_max = 160
dataPTH = "Messwerte/TXT/3B1/B1 Duration 027 duration.txt"

load "jet.pal"

set ylabel "FID amplitude in $\\si{\\mu \\volt}$"
set xlabel "$B_1$ pulse in $\\si{\\milli \\second}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]


plot dataPTH using 1:2 ls 5 lc 15 ps 3 lw 3 title "measured resonance amplitude", dataPTH using 1:2 lt 6 w lines notitle