#png
# set terminal png size 1024,720
# set output "pngplots/1DMRI.png"

# #epslatex
set terminal epslatex
set output "plots/1DMRI.tex"

# Peak bei alllen 50 Hz enstehen durch Steckdose
set datafile separator ","
x_min = -32
x_max = 32

y_min = 0
y_max = 35000
dataPTH = "Messwerte2/9_2/9_2_magnitudespectrum.txt"
dataPTH1 = "Messwerte2/9_2_echozeithoeher_fovhoeher/magnitude_image.txt"
load "jet.pal"

set ylabel "Amplitude in $\\si{\\milli \\second}$"
set xlabel "Frequenz in $\\si{\\hertz}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]


#plot dataPTH using 1:2 ls 2 ps 3 lw 3 notitle
plot dataPTH1 using 1:2 lt 5 lc 15 w lines title "angepasste 1D-MRI Messung in x-Richtung"

# in y-Richtung
#png
# set terminal png size 1024,720
# set output "pngplots/1DMRIy.png"

# #epslatex
set terminal epslatex
set output "plots/1DMRIy.tex"

# Peak bei alllen 50 Hz enstehen durch Steckdose

set datafile separator ","
x1_min = -17
x1_max = 17

y1_min = 0
y1_max = 37000
dataPTH2 = "Messwerte2/9_4/magnitude_spectrum.txt"
dataPTH3 = "Messwerte2/9_4_bandbreite/magnitude_image.txt"
load "jet.pal"

set ylabel "Amplitude in $\\si{\\milli \\second}$"
set xlabel "Frequenz in $\\si{\\hertz}$"
set xrange [x1_min:x1_max]
set yrange [y1_min:y1_max]


#plot dataPTH using 1:2 ls 2 ps 3 lw 3 notitle
plot dataPTH2 using 1:2 lt 5 lc 15 w lines title "angepasste 1D MRI Messung in y-Richtung"