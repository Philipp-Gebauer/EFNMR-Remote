#png
set terminal png size 1024,720
set output "pngplots/T1Erdmagnetfeld.png"

#epslatex
#set terminal epslatex
#set output "plots/T1Erdmagnetfeld.tex"

x_min = 0
x_max = 4100

y_min = 0
y_max = 1
dataPTH = "Messwerte/TXT/T1Be.txt"

load "jet.pal"

set ylabel "$\\frac{E}{E_0}"
set xlabel "t in $\\SI{\\mili \\sec$}"
set xrange [x_min:x_max]
set yrange [y_min:y_max]

#f(x) = (1/((2*pi)**(1./2)*s)) * b * exp(-(x-d)**2/(2*s**2)) + a
#a = 312.002
#s = 2.38898
#d = 0.983662
#b = 905.336
#fit [x_min:x_max] f(x) dataPTH using 1:4 via a, s, d, b

S(x) = S_0 * exp(-x/T_1)
S_0 = 1.11
T_1 = 2750
fit [x_min:x_max] S(x) dataPTH using 1:2 via T_1, S_0
plot dataPTH using 1:2 ls 2 ps 3 lw 3 title "measured values from the $T_{1,B_E}$ " , S(x) ls 8 lw 3 title "\\textsc{Keine Ahnung}-Fit $S_0 * exp(-x/T_1)$ with $T_1=\\SI[2753.05][\mili\sec]$"