# für die J-J-Kopplung das fine tuning
#png
set terminal png size 1024,720
set output "pngplots/Tunensignalpulsandcollect.png"

# #epslatex
# set terminal epslatex
# set output "plots/Tunensignalpulsandcollect.tex"

# Peak bei alllen 50 Hz enstehen durch Steckdose

set datafile separator ","
x_min = 1700
x_max = 1900

y_min = 0
y_max = 4
dataPTH = "Messwerte2/12_1/spectrum.txt"
load "jet.pal"

set ylabel "Amplitude in $\\si{\\milli \\second}$"
set xlabel "Frequenz in $\\si{\\hertz}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]

f(x) = (1/((2*pi)**(1./2)*s1)) * b1 * exp(-(x-d1)**2/(2*s1**2)) + a1
a1 = 0.2
s1 = 0.8
d1 = 1724.5
b1 = 1.1
fit [1722:1726] f(x) dataPTH using 1:2 via a1, s1, d1, b1

# g(x) = (1/((2*pi)**(1./2)*s2)) * b2 * exp(-(x-d2)**2/(2*s2**2)) + a2
# a2 = 0.03
# s2 = 0.1
# d2 = 1730
# b2 = 1.5
# fit [s2:e2] g(x) dataPTH using 1:2 via s2, d2, b2


#plot dataPTH using 1:2 ls 2 ps 3 lw 3 notitle
plot dataPTH using 1:2 lt 5 lc 15 w lines title "Messung zur J-Kopplung", [1722:1727] f(x) ls 8 lw 3 title "\\textsc{Gauss}-Fit"#, [s2:e2] g(x) ls 8 lw 3 title "\\textsc{Gauss}-Fit"
#range1:
