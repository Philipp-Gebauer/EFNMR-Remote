#png
set terminal png size 1024,720
set output "pngplots/Relaxativitat.png"

# epslatex
#  set terminal epslatex
#  set output "plots/Relaxativitat.tex"

# set datafile separator ","

# x_min = 0.000001
# x_max = 0.002

# y_min = 430
# y_max = 1400
 dataPTH0 = "Messwerte2/T1T2konzentration/KupferT1.txt"
# load "jet.pal"

# set ylabel "Dämpfung $\\frac{\\text{E}}{\\text{E}_0}$"
# set xlabel "Zeit in $\\si{\\milli \\second}$"
# set xrange [x_min:x_max]
# set yrange [y_min:y_max]
# set logscale x
# set logscale y


# M(x) = M_0 * exp(-x/T_2)
# M_0 = 1
# T_2 = 2700
# fit [x_min:x_max] M(x) dataPTH1 using 1:2 via T_2, M_0

plot dataPTH0 using (log($2)):(log($1)) ls 2 ps 3 lw 3 title "gemessene Datenpunkte f\\\"ur Wasser"#, M(x) ls 8 lw 3 title "Dämpfungsfit Fit"