#png
# set terminal png size 1024,720
# set output "pngplots/PulsandcollectValesignal.png"

#epslatex
set terminal epslatex
set output "plots/PulsandcollectValesignal.tex"

x_min = 0   
x_max = 1.5

y_min = -80
y_max = 80
dataPTH = "Messwerte/TXT/3PulsandCollect/Valesignalvorfourie.txt"

load "jet.pal"

set ylabel "Amplitude in $\\si{}{\\mu V}$"
set xlabel "Time in $\\si{}{s}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]


#plot dataPTH using 1:2 ls 2 ps 3 lw 3 notitle
plot dataPTH using 1:2 lt 5 lc 15 w lines title "FID data"