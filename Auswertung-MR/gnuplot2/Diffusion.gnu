#png
set terminal png size 1024,720
set output "pngplots/Difussion.png"

#epslatex
# set terminal epslatex
# set output "plots/Diffusion.tex"


# set datafile separator ","
x_min = 5
x_max = 40

y_min = 0
y_max = 1
dataPTH = "Messwerte2/16_2/test.txt"

load "jet.pal"

set ylabel "$\\frac{E}{E_0}$"
set xlabel ""
set xrange [x_min:x_max]
set yrange [y_min:y_max]


#plot dataPTH using 1:2 ls 2 ps 3 lw 3 notitle
plot dataPTH using 1:2 lt 5 lc 15 w lines title "Polarisationszeit $\\SI{4}{\\second}$"