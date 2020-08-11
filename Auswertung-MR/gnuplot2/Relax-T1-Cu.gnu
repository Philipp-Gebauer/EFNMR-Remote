#png
set terminal png size 1024,720
set output "pngplots/Relaxivitat_CuT1.png"

# epslatex
  # set terminal epslatex
  # set output "plots/Relaxivitat_CuT1.tex"

dataPTH = "Messwerte2/T1T2konzentration/t1_Cu.txt"
load "jet.pal"

x_min = 0
x_max = 5
y_min = 0.0
y_max = 0.003
set xrange [x_min:x_max]
set yrange [y_min:y_max]

set xlabel "Konzentration in  $\\si{\\mol \\per \\meter \\tothe{3} }$"
set ylabel "Kehrwert der Zeit in $\\si{\\per \\second}$"

# set logscale y
set format y "$%3.1t*10^{%L}$"
set ytics 0.0005
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
a = 0.00045395
b = 0.000543404
fit [0:5] f(x) dataPTH using 3:1 via a, b

plot dataPTH using 3:1:2 w yerrorbars ls 2 ps 3 lw 3 title "Kehrwert der longitudinalen Relaxationszeit von Kupfer in Abh\\\"angigkeit von der Konzentration", f(x) ls 8 lw 3 title "Exponential-Fit f\\\"ur (1/T)"