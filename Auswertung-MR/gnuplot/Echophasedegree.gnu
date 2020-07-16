#png
# set terminal png size 1024,720
# set output "pngplots/180pulsephasedegree.png"

#epslatex
set terminal epslatex
set output "plots/180pulsephasedegree.tex"

x_min = 0   
x_max = 7000

# y_min = -60
# y_max = 60
dataPTH = "Messwerte/TXT/180pulsephasedegree270t.txt"
dataPTH1 = "Messwerte/TXT/180pulsephasedegree90.txt"

load "jet.pal"

set datafile separator ","
set ylabel "Amplitude in $\\si{\\mu \\volt}$"
set xlabel "Time in $\\si{\\second}$"
set xrange [x_min:x_max]
# set yrange [y_min:y_max]


#plot dataPTH using 1:2 ls 2 ps 3 lw 3 notitle
plot dataPTH using 1:2 lt 6 w lines title "180 pulse phase \\SI{270}{\\degree}", dataPTH1 using 1:2  lt 5 lc 15 w lines title "180 pulse phase \\SI{90}{\\degree}"