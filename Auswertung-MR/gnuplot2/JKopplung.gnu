# für die J-J-Kopplung das fine tuning
#png
set terminal png size 1024,720
set output "pngplots/JKopplung.png"

# #epslatex
# set terminal epslatex
# set output "plots/JKopplung.tex"

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
set key at graph 0.985,0.975

#Lorentz
# f(x) = a1/((x**2-b1**2)**2+(c1**2)*(b1**2)) + d1
# a1 = 1.3e+07      #Höhe des Maximums
# b1 = 1724      #Position des Peaks
# c1 = 2.5     #Breite des Peaks
# d1 = 0.1          #Untergrund
# fit [1720:1728] f(x) dataPTH using 1:2 via a1, b1, c1, d1

#Gauss
# f(x) = (1/((2*pi)**(1./2)*s1)) * b1 * exp(-(x-d1)**2/(2*s1**2)) + a1
# a1 = 0.22
# s1 = 1
# d1 = 1724
# b1 = 1.5
# fit [1720:1728] f(x) dataPTH using 1:2 via a1, s1, d1, b1

# f(x) = (1/((2*pi)**(1./2)*s2)) * b2 * exp(-(x-d2)**2/(2*s2**2)) + a2
# a2 = 0.27
# s2 = 1.14
# d2 = 1730
# b2 = 2
# fit [1726:1734] f(x) dataPTH using 1:2 via a2, s2, d2, b2

# f(x) = (1/((2*pi)**(1./2)*s3)) * b3 * exp(-(x-d3)**2/(2*s3**2)) + a3
# a3 = 0.25
# s3 = 1
# d3 = 1736.0
# b3 = 1.3
# fit [1732:1740] f(x) dataPTH using 1:2 via a3, s3, d3, b3

# g(x) = (1/((2*pi)**(1./2)*s5)) * b5 * exp(-(x-d5)**2/(2*s5**2)) + a5
# a5 = 0.59
# s5 = 0.67
# d5 = 1834
# b5 = 2.5
# fit [1830:1837] g(x) dataPTH using 1:2 via  a5, s5, d5, b5

# g(x) = (1/((2*pi)**(1./2)*s4)) * b4 * exp(-(x-d4)**2/(2*s4**2)) + a4
# a4 = 0.58
# s4 = 0.81
# d4 = 1840
# b4 = 6
# fit [1836:1844] g(x) dataPTH using 1:2 via  a4, s4, d4, b4

# g(x) = (1/((2*pi)**(1./2)*s6)) * b6 * exp(-(x-d6)**2/(2*s6**2)) + a6
# a6 = 0.42
# s6 = 0.65
# d6 = 1846
# b6 = 2.1
# fit [1844:1849] g(x) dataPTH using 1:2 via  a6, s6, d6, b6


###-----------FINAL-------------###

f(x) = a + (1/((2*pi)**(1./2)*s1)) * b1 * exp(-(x-d1)**2/(2*s1**2)) + (1/((2*pi)**(1./2)*s2)) * b2 * exp(-(x-d2)**2/(2*s2**2)) + (1/((2*pi)**(1./2)*s3)) * b3 * exp(-(x-d3)**2/(2*s3**2))
a = 0.20
s1 = 1
d1 = 1724
b1 = 1.3
s2 = 1.14
d2 = 1730
b2 = 2.0
a3 = 0.25
s3 = 1
d3 = 1736.0
b3 = 1.3
fit [1720:1740] f(x) dataPTH using 1:2 via a, s1, d1, b1, s2, d2, b2, s3, d3, b3

g(x) = a5 + (1/((2*pi)**(1./2)*s5)) * b5 * exp(-(x-d5)**2/(2*s5**2)) + (1/((2*pi)**(1./2)*s4)) * b4 * exp(-(x-d4)**2/(2*s4**2)) + (1/((2*pi)**(1./2)*s6)) * b6 * exp(-(x-d6)**2/(2*s6**2))
a5 = 0.50
s5 = 0.67
d5 = 1834
b5 = 2.5
s4 = 0.81
d4 = 1840
b4 = 6
s6 = 0.65
d6 = 1846
b6 = 2.1
fit [1830:1849] g(x) dataPTH using 1:2 via  a5, s4, d4, b4, s5, d5, b5, s6, d6, b6
set arrow from 1724,0 to 1724,4 nohead
set arrow from 1730,0 to 1730,4 nohead
set arrow from 1737,0 to 1737,4 nohead
set arrow from 1834,0 to 1834,4 nohead
set arrow from 1840,0 to 1840,4 nohead
set arrow from 1846,0 to 1846,4 nohead




#plot dataPTH using 1:2 ls 2 ps 3 lw 3 notitle
plot dataPTH using 1:2 lt 5 lc 15 w lines title "Messung zur J-Kopplung", [1720:1740] f(x) ls 2 lw 3 title "\\textsc{Gauss}-Fits der Fluor-Peaks", [1830:1849] g(x) ls 7 lw 3 title "\\textsc{Gauss}-Fits der Wasserstoff-Peaks"
set label sprintf("FWHM $= \\SI{%4.3f \\pm %4.3f}{\\hertz}$",(2*(2*log(2))**(1.0/2)*s),(2*(2*log(2))**(1.0/2)*s_err)) at 1838.5,35