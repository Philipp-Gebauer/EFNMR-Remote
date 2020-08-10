#png
set terminal png size 1024,720
set output "pngplots/Relaxativitat_neu.png"

# epslatex
#  set terminal epslatex
#  set output "plots/Relaxativitat.tex"

x_min = 0.0
x_max = 5

y_min = 0.0001
y_max = 0.001

dataPTH0 = "Messwerte2/T1T2konzentration/r1_Cu.txt"
dataPTH1 = "Messwerte2/T1T2konzentration/r2_Cu.txt"
dataPTH2 = "Messwerte2/T1T2konzentration/r1_Mn.txt"
dataPTH3 = "Messwerte2/T1T2konzentration/r2_Mn.txt"

load "jet.pal"

# set ylabel "Dämpfung $\\frac{\\text{E}}{\\text{E}_0}$"
# set xlabel "Zeit in $\\si{\\milli \\second}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]

set logscale y
set format y "10^{%L}"

# M(x) = a*x+b
# a = 0.1
# b = 7
# fit M(x) dataPTH0 using 2:1 via a, b

plot dataPTH0 using 3:1:2 w yerrorbars ls 2 ps 3 lw 3 title "gemessene Datenpunkte f\\\"ur Kupfer T1 in abhängigkeit von der Konzentration",
#plot dataPTH0 using (log($2)):(log($1)) ls 2 ps 3 lw 3 title "gemessene Datenpunkte f\\\"ur Kupfer T1 in abhängigkeit von der Konzentration",# M(x) ls 8 lw 3 title "Konzentrationsfit für r"