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
x_min = -4000
x_max = 4000

y_min = 0
y_max = 5
dataPTH = "Messwerte/TXT/Noise/1MonitorNoise_13.8.txt"

load "jet.pal"

set ylabel "Amplitude mykrovolt"
set xlabel "t in $\\SI{\\mili \\sec}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]


plot dataPTH using 1:2 lt 5 lc 15 w lines title "noisemeasurement $\\SI{13.8}{\nano\farad}$"