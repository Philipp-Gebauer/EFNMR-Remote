#png
set terminal png size 1024,720
set output "pngplots/Relaxivitat_MnT1.png"

# epslatex
  # set terminal epslatex
  # set output "plots/Relaxivitat_MnT1.tex"

dataPTH = "Messwerte2/T1T2konzentration/t1_Mn.txt"
load "jet.pal"

x_min = 0
x_max = 0.5
y_min = 0.0
y_max = 0.01
set xrange [x_min:x_max]
set yrange [y_min:y_max]

set xlabel "Konzentration in  $\\si{\\mol \\per \\meter \\tothe{3} }$"
set ylabel "Kehrwert der Zeit in $\\si{\\per \\second}$"

# set logscale y
set format y "$%2.0t*10^{%L}$"
set ytics 0.001
# set logscale x
# set format x "$10^{%L}$"

#FIT:

#exponentiell:
# f(x) = a*(exp(b*x)) + c
# a = 0.159393
# b = 0.00282329
# c = -0.158847
# fit [0.5:4] f(x) dataPTH using 3:1 via a, b, c

#linear:
f(x) = a*x + b
a = 0.0136523
b = 0.000174718
fit [0:5] f(x) dataPTH using 3:1 via a, b

plot dataPTH using 3:1:2 w yerrorbars ls 2 ps 3 lw 3 title "Kehrwert der longitudinalen Relaxationszeit von Mangan in Abh\\\"angigkeit von der Konzentration", f(x) ls 8 lw 3 title "linearer Fit f\\\"ur (1/T)"