#png
# set terminal png size 1024,720
# set output "pngplots/Difussion.png"

#epslatex
set terminal epslatex
set output "plots/Diffusion.tex"

set datafile separator ","
# set datafile separator ","
x_min = 0
x_max = 6e8

# y_min = 0
# y_max = 1
dataPTH = "Messwerte2/16_2/Luc.txt"

load "jet.pal"

set ylabel "Abd\\\"ampfung $\\frac{E}{E_0}$"
set xlabel "$\\gamma^2 g^2 \\delta^2 (\\Delta-\\frac{\\delta}{3})$$\\left[\\frac{\\si{\\s}}{\\si{\\m^2}}\\right]$"
set xrange [x_min:x_max]
# set yrange [y_min:y_max]
f(x) = exp(-a*x)
a = 1e-9

fit f(x) dataPTH using ($1*1e9):2 via a
set logscale y

# set format y "$10^{%L}$"
#  set autoscale xmax
#  set autoscale ymax
set ytics(0, 0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1)
# set xtics (0,1e8,3e8,5e8,6e8)
set xtics (0,1e8,2e8,3e8,4e8,5e8,6e8)
# set format x "$10^{%L}$"
#plot dataPTH using 1:2 ls 2 ps 3 lw 3 notitle
plot dataPTH using ($1*1e9):2 ls 2 ps 3 w p title "Polarisationszeit $\\SI{4}{\\second}$",\
f(x) ls 8 lw 3 title"Exponentieller-Fit"
# plot dataPTH using 1:2 ls 2 ps 3 w p title "Polarisationszeit $\\SI{4}{\\second}$",\
# f(x) ls 8 lw 3
# Diffusionskoeffizient 3e-9