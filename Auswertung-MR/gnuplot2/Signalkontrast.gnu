#png
# set terminal png size 1024,720
# set output "pngplots/SignalkontrastT2.png"


set terminal epslatex
set output "plots/SignalkontrastT2.tex"

set datafile separator ","
x_min = 1800
x_max = 1900

y_min = 0
y_max = 18000
dataPTH250 = "Messwerte2/3_1/spectrum.txt"
dataPTH500  = "Messwerte2/4_1/spectrum.txt"
dataPTH1000 = "Messwerte2/5_1/spectrum.txt"

load "jet.pal"

set ylabel "Amplitude in willk\\\"urlicher Enheit"
set xlabel "Frequenz in $\\si{\\hertz}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]


#plot dataPTH using 1:2 ls 2 ps 3 lw 3 notitle
plot dataPTH250 using 1:2 lt 5 lc 15 w lines title "Signal von $Cu^{2+}$ $T_{2}$ mit $\\SI{250}{\\micro\\mole}$", dataPTH500 using 1:2 lt 6 w lines title "Signal von $Cu^{2+}$ $T_{2}$ mit $\\SI{500}{\\micro\\mole}$", dataPTH1000 using 1:2 lt 5 lc 1 w lines title "Signal von $Cu^{2+}$ $T_{2}$ mit $\\SI{1000}{\\micro\\mole}$"
#png
# set terminal png size 1024,720
# set output "pngplots/SignalkonstrastT1.png"

set terminal epslatex
set output "plots/SignalkontrastT1.tex"

set datafile separator ","
x_min = 1830
x_max = 1860

y_min = 0
y_max = 80
dataPTH = "Messwerte2/1_1/spektrum.txt"
dataPTH2 = "Messwerte2/3_2/complexspectrum.txt"
dataPTH3 = "Messwerte2/4_2/complexspektrum.txt"

set ylabel "Amplitude in $\\si{\\frac{\\mu \\volt}{\\hertz}}$"
set xlabel "Frequenz in $\\si{\\hertz}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]


#plot dataPTH using 1:2 ls 2 ps 3 lw 3 notitle
plot dataPTH2 using 1:2 lt 5 lc 15 w lines title "Puls and Collect Signal von $Cu^{2+}$ $\\SI{250}{\\micro\\mole}$", dataPTH3 using 1:2 lt 6 w lines title "Puls and collect Signal von $Cu^{2+}$ $\\SI{500}{\\micro\\mole}$", dataPTH using 1:2 lt 5 lc 1 w lines title "Puls and Collect Signal von Wasser"
