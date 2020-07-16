#png
# set terminal png size 1024,720
# set output "pngplots/timedomain.png"

#epslatex
set terminal epslatex
set output "plots/timedomain.tex"

# x_min = 0   
# x_max = 1.5

# y_min = -60
# y_max = 60
dataPTH = "Messwerte/TXT/timedomainoff.txt"
dataPTH1 = "Messwerte/TXT/timedomainon.txt"

load "jet.pal"

set datafile separator ","
set ylabel "Amplitude in $\\si{}{\\mu V}$"
set xlabel "Time in $\\si{}{s}$"
# set xrange [x_min:x_max]
# set yrange [y_min:y_max]


#plot dataPTH using 1:2 ls 2 ps 3 lw 3 notitle
plot dataPTH using 1:2 lt 5 lc 15 w lines title "time domain off", dataPTH1 using 1:2 lt 6 w lines title "time domain on"