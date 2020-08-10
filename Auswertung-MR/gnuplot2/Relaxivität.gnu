#png
# set terminal png size 1024,720
# set output "pngplots/Relaxivitat_MnT1.png"

# epslatex
  set terminal epslatex
  set output "plots/Relaxivitat_MnT2.tex"

#Kupfer:

# x_min = 0.0
# x_max = 5

# y_min = 0.0001
# y_max = 0.001

#Mangan:

x_min = 0.0
x_max = 0.5
y_min = 0.001
y_max = 0.1

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
set format y "$10^{%L}$"
# FORMAT unbedingt noch anpassen


 M(x) = a*x+b
 a = 1
 b = -0.8
 fit M(x) dataPTH3 using 3:1 via a, b

plot dataPTH3 using 3:1:2 w yerrorbars ls 2 ps 3 lw 3 title "gemessene Datenpunkte f\\\"ur Mangan T2 in Abh\\\"angigkeit von der Konzentration", M(x) ls 8 lw 3 title "Konzentrationsfit für r"
#plot dataPTH0 using (log($2)):(log($1)) ls 2 ps 3 lw 3 title "gemessene Datenpunkte f\\\"ur Kupfer T1 in abhängigkeit von der Konzentration",# M(x) ls 8 lw 3 title "Konzentrationsfit für r"