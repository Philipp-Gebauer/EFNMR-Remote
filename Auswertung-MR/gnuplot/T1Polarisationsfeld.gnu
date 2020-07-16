#png
# set terminal png size 1024,720
# set output "pngplots/T1Polarisationsfeld.png"

#epslatex
set terminal epslatex
set output "plots/T1Polarisationsfeldfeld.tex"

x_min = 0
x_max = 4100

y_min = 0
y_max = 1
dataPTH = "Messwerte/TXT/5T1/T1Bp.txt"

load "jet.pal"

set ylabel "Attenuation $\\frac{\\text{E}}{\\text{E}_0}$"
set xlabel "Time in $\\si{\\milli \\second}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]

#f(x) = (1/((2*pi)**(1./2)*s)) * b * exp(-(x-d)**2/(2*s**2)) + a
#a = 312.002
#s = 2.38898
#d = 0.983662
#b = 905.336
#fit [x_min:x_max] f(x) dataPTH using 1:4 via a, s, d, b

S(x) = S_0 *(1- exp(-x/T_1))
S_0 = 1.11
T_1 = 2912
fit [x_min:x_max] S(x) dataPTH using 1:2 via T_1, S_0
plot dataPTH using 1:2 ls 2 ps 3 lw 3 title "measured values$ " , S(x) ls 8 lw 3 title "attenuation-Fit"