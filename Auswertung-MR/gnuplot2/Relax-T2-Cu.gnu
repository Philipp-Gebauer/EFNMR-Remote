#png
# set terminal png size 1024,720
# set output "pngplots/Relaxivitat_CuT2.png"

# epslatex
  set terminal epslatex
  set output "plots/Relaxivitat_CuT2.tex"

dataPTH = "Messwerte2/T1T2konzentration/t2_Cu.txt"
load "jet.pal"

x_min = 0
x_max = 5
y_min = 0.0
y_max = 4
set xrange [x_min:x_max]
set yrange [y_min:y_max]
set key at graph 0.985,0.975

set xlabel "Konzentration in  $\\si{\\frac{\\mol}{\\meter \\tothe{3}}}$"
set ylabel "Kehrwert der Zeit in $\\si{\\frac{1}{\\second}}$"

# set logscale y
# set format y "$%3.1t*10^{%L}$"
# set ytics 0.0005
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
a = 0.616607
b = 0.349363
fit [0:5] f(x) dataPTH using 3:1 via a, b

plot dataPTH using 3:1:2 w yerrorbars ls 2 ps 3 lw 3 title "$1/T_{\\text{2}}\\left([\\ce{Cu^2+}]\\right)$", f(x) ls 8 lw 3 title "linearer Fit"