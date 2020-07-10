#png
set terminal png size 1024,720
set output "pngplots/MonitorNoise13,8.png"

#epslatex
#set terminal epslatex
#set output "plots/MonitorNoise13,8.tex"
#
# Habs einmal einfach geüplottet aber keinen raff was das hier sein soll
#
#
x_min = 1400
x_max = 2300

y_min = 0
y_max = 18
dataPTH = "Messwerte/TXT/1Noise/MonitorNoise_13.8.txt"

load "jet.pal"

set ylabel "Amplitude $\\SI{\\mycro \\volt}$"
set xlabel "frequency in $\\SI{\\hertz}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]


plot dataPTH using 1:2 lt 5 lc 15 w lines title "noisemagnitude spectrum"