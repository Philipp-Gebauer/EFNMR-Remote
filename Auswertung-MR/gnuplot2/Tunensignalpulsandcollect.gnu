# für die J-J-Kopplung das fine tuning
#png
# set terminal png size 1024,720
# set output "pngplots/Tunensignalpulsandcollect.png"

# #epslatex
set terminal epslatex
set output "plots/Tunensignalpulsandcollect.tex"

# Peak bei alllen 50 Hz enstehen durch Steckdose

set datafile separator ","
x_min = 1700
x_max = 1900

y_min = 0
y_max = 10
dataPTH = "Messwerte2/12_1/spectrum.txt"
load "jet.pal"

set ylabel "Amplitude in $\\si{\\milli \\second}$"
set xlabel "Frequenz in $\\si{\\hertz}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]


#plot dataPTH using 1:2 ls 2 ps 3 lw 3 notitle
plot dataPTH using 1:2 lt 5 lc 15 w lines title "Puls and Collect Experiment zur Feinjustierung der 2D Messung"