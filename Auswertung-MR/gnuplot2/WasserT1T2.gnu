# Die Relaxationszeit von Wasser T1 und T2

# T1 Wasser:

#png
# set terminal png size 1024,720
# set output "pngplots/T1Wasser.png"

#epslatex
set terminal epslatex
set output "plots/T1Wasser.tex"

set datafile separator ","

x_min = 0
x_max = 4100

y_min = 0
y_max = 1
dataPTH = "Messwerte2/1_3/t1.txt"

load "jet.pal"

set ylabel "D\\\"ampfung $\\frac{\\text{E}}{\\text{E}_0}$"
set xlabel "Zeit zwischen den Pulsen $t$ in $\\si{\\milli \\second}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]

S(x) = S_0 * (1-exp(-x/T_1))
S_0 = 1.11
T_1 = 2750
fit [x_min:x_max] S(x) dataPTH using 1:2 via T_1, S_0
plot dataPTH using 1:2 ls 2 ps 3 lw 3 title "Gemessenen Datenpunkte f\\\"ur Wasser" , S(x) ls 8 lw 3 title "D\\\"ampfungsfit"


#T2 Wasser:

#png
#set terminal png size 1024,720
#set output "pngplots/T2Wasser.png"

# epslatex
 set terminal epslatex
 set output "plots/T2Wasser.tex"

set datafile separator ","

x_min = 0
x_max = 6000

y_min = 0
y_max = 1
dataPTH1 = "Messwerte2/1_4/T2.txt"

load "jet.pal"

set ylabel "D\\\"ampfung $\\frac{\\text{E}}{\\text{E}_0}$"
set xlabel "Zeit in $\\si{\\milli \\second}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]

M(x) = M_0 * exp(-x/T_2)
M_0 = 1
T_2 = 2700
fit [x_min:x_max] M(x) dataPTH1 using 1:2 via T_2, M_0

plot dataPTH1 using 1:2 ls 2 ps 3 lw 3 title "gemessene Datenpunkte f\\\"ur Wasser", M(x) ls 8 lw 3 title "D\\\"ampfungsfit Fit"