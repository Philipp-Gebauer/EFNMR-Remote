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
 dataPTH1 = "Messwerte2/T1T2konzentration/KupferT2.txt"
 dataPTH2 = "Messwerte2/T1T2konzentration/MnT1.txt"
 dataPTH3 = "Messwerte2/T1T2konzentration/MnT2.txt"
 dataPTH4 = "Messwerte2/T1T2konzentration/T1Kupferanders.txt"
 load "jet.pal"

# set ylabel "Dämpfung $\\frac{\\text{E}}{\\text{E}_0}$"
# set xlabel "Zeit in $\\si{\\milli \\second}$"
# set xrange [x_min:x_max]
# set yrange [y_min:y_max]
# set logscale x
# set logscale y


# M(x) = a*x+b
# a = 0.1
# b = 7
# fit M(x) dataPTH0 using 2:1 via a, b

 plot dataPTH0 using (log($2)):(log($1)) ls 2 ps 3 lw 3 title "gemessene Datenpunkte f\\\"ur Kupfer T1 in abhängigkeit von der Konzentration",# M(x) ls 8 lw 3 title "Konzentrationsfit für r"

# plot dataPTH1 using (log($2)):(log($1)) ls 2 ps 3 lw 3 title "gemessene Datenpunkte f\\\"ur Kupfer T2 in abhängigkeit von der Konzentration"
# plot dataPTH2 using (log($2)):(log($1)) ls 2 ps 3 lw 3 title "gemessene Datenpunkte f\\\"ur Mangan T1 in abhängigkeit von der Konzentration"
# plot dataPTH3 using (log($2)):(log($1)) ls 2 ps 3 lw 3 title "gemessene Datenpunkte f\\\"ur Mangan T1 in abhängigkeit von der Konzentration"
