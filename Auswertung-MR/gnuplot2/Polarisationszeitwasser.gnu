#png
 set terminal png size 1024,720
 set output "pngplots/Polarisationszeit.png"

#epslatex
#set terminal epslatex
#set output "plots/Polarisationszeit.tex"

# Peak bei alllen 50 Hz enstehen durch Steckdose

set datafile separator ","
x_min = 1820
x_max = 1860

y_min = 0
y_max = 70
dataPTH = "Messwerte2/1_1/spektrum.txt"
dataPTH1 = "Messwerte2/1_2/spektrum.txt"

load "jet.pal"

set ylabel "Amplitude in $\\si{\\mu \\volt}$"
set xlabel "Frequency in $\\si{\\hertz}$"
#set key at graph 0.5,0.5
set xrange [x_min:x_max]
set yrange [y_min:y_max]


#plot dataPTH using 1:2 ls 2 ps 3 lw 3 notitle
plot dataPTH using 1:2 lt 5 lc 15 w lines title "Polarisationszeit $\\SI{4}{\\second}$", dataPTH1 using 1:2 lt 6 w lines title "Polarisationszeit$\\SI{500}{\\milli \\second}$"