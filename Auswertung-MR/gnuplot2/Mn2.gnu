# Die Relaxationszeit von Mn2+ T1 und T2


# T_1 Mangan 25:

#png
# set terminal png size 1024,720
# set output "pngplots/T1Mangan25.png"

#epslatex
set terminal epslatex
set output "plots/T1Mangan25.tex"

set datafile separator ","

x_min = 0
x_max = 4750

y_min = 0
y_max = 1
dataPTH = "Messwerte2/7_4/T1.txt"

load "jet.pal"

set ylabel "Dämpfung $\\frac{\\text{E}}{\\text{E}_0}$"
set xlabel "Zeit zwischen den Pulsen $t$ in $\\si{\\milli \\second}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]

S(x) = S_0 * (1-exp(-x/T_1))
S_0 = 1.11
T_1 = 2750
fit [x_min:x_max] S(x) dataPTH using 1:2 via T_1, S_0
plot dataPTH using 1:2 ls 2 ps 3 lw 3 title "Gemessenen Datenpunkte für $Mn^{2+} \\SI{25}{\\micro\\mole}$" , S(x) ls 8 lw 3 title "Dämpfungsfit"


# #T_2 Mangan 25:

#png
#set terminal png size 1024,720
#set output "pngplots/T2Mangan25.png"

# epslatex
 set terminal epslatex
 set output "plots/T2Mangan25.tex"

set datafile separator ","

x_min = 0
x_max = 6000

y_min = 0
y_max = 1
dataPTH1 = "Messwerte2/7_3/T2.txt"

load "jet.pal"

set ylabel "Dämpfung $\\frac{\\text{E}}{\\text{E}_0}$"
set xlabel "Zeit in $\\si{\\milli \\second}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]

M(x) = M_0 * exp(-x/T_2)
M_0 = 1
T_2 = 2700
fit [x_min:x_max] M(x) dataPTH1 using 1:2 via T_2, M_0

plot dataPTH1 using 1:2 ls 2 ps 3 lw 3 title "gemessene Datenpunkte für $Mn^{2+} \\SI{25}{\\micro\\mole}$", M(x) ls 8 lw 3 title "Dämpfungsfit Fit"





# # T1_1 Mangan 50:

#png
# set terminal png size 1024,720
# set output "pngplots/T1Mangan25.png"

#epslatex
set terminal epslatex
set output "plots/T1Mangan50.tex"

set datafile separator ","

x1_min = 0
x1_max = 4150

y1_min = 0
y1_max = 1
dataPTH2 = "Messwerte2/7_6/T1.txt"

load "jet.pal"

set ylabel "Dämpfung $\\frac{\\text{E}}{\\text{E}_0}$"
set xlabel "Zeit zwischen den Pulsen $t$ in $\\si{\\milli \\second}$"
set xrange [x1_min:x1_max]
set yrange [y1_min:y1_max]

S1(x) = S1_0 * (1-exp(-x/T1_1))
S1_0 = 2
T1_1 = 2750
fit [x_min:x_max] S1(x) dataPTH2 using 1:2 via T1_1, S1_0
plot dataPTH2 using 1:2 ls 2 ps 3 lw 3 title "Gemessenen Datenpunkte für $Mn^{2+} \\SI{50}{\\micro\\mole}$" , S1(x) ls 8 lw 3 title "Dämpfungsfit"


# #T1_2 Mangan:

#png
#set terminal png size 1024,720
#set output "pngplots/T2Mangan25.png"

# epslatex
 set terminal epslatex
 set output "plots/T2Mangan25.tex"

set datafile separator ","

x2_min = 0
x2_max = 3000

y2_min = 0
y2_max = 1
dataPTH3 = "Messwerte2/7_5/T2.txt"

load "jet.pal"

set ylabel "Dämpfung $\\frac{\\text{E}}{\\text{E}_0}$"
set xlabel "Zeit in $\\si{\\milli \\second}$"
set xrange [x2_min:x2_max]
set yrange [y2_min:y2_max]

M1(x) = M1_0 * exp(-x/T1_2)
M1_0 = 1
T1_2 = 2700
fit [x_min:x_max] M1(x) dataPTH3 using 1:2 via T1_2, M1_0

plot dataPTH3 using 1:2 ls 2 ps 3 lw 3 title "gemessene Datenpunkte für $Mn^{2+} \\SI{25}{\\micro\\mole}$", M1(x) ls 8 lw 3 title "Dämpfungsfit Fit"

# # T2_1 Mangan 100:

#png
# set terminal png size 1024,720
# set output "pngplots/T1Mangan25.png"

#epslatex
set terminal epslatex
set output "plots/T1Mangan100.tex"

set datafile separator ","

x3_min = 0
x3_max = 2150

y3_min = 0
y3_max = 1
dataPTH4 = "Messwerte2/7_8/T1.txt"

load "jet.pal"

set ylabel "Dämpfung $\\frac{\\text{E}}{\\text{E}_0}$"
set xlabel "Zeit zwischen den Pulsen $t$ in $\\si{\\milli \\second}$"
set xrange [x3_min:x3_max]
set yrange [y3_min:y3_max]

S2(x) = S2_0 * (1-exp(-x/T2_1))
S2_0 = 1.11
T2_1 = 2750
fit [x_min:x_max] S2(x) dataPTH4 using 1:2 via T2_1, S2_0
plot dataPTH4 using 1:2 ls 2 ps 3 lw 3 title "Gemessenen Datenpunkte für $Mn^{2+} \\SI{100}{\\micro\\mole}$" , S2(x) ls 8 lw 3 title "Dämpfungsfit"


# #T2_2 Mn 100:

#png
#set terminal png size 1024,720
#set output "pngplots/T2Mangan25.png"

# epslatex
 set terminal epslatex
 set output "plots/T2Mangan100.tex"

set datafile separator ","

x4_min = 0
x4_max = 3000

y4_min = 0
y4_max = 1
dataPTH5 = "Messwerte2/7_7/T2.txt"

load "jet.pal"

set ylabel "Dämpfung $\\frac{\\text{E}}{\\text{E}_0}$"
set xlabel "Zeit in $\\si{\\milli \\second}$"
set xrange [x4_min:x4_max]
set yrange [y4_min:y4_max]

M2(x) = M2_0 * exp(-x/T2_2)
M2_0 = 1
T2_2 = 2700
fit [x_min:x_max] M2(x) dataPTH5 using 1:2 via T2_2, M2_0

plot dataPTH5 using 1:2 ls 2 ps 3 lw 3 title "gemessene Datenpunkte für $Mn^{2+} \\SI{100}{\\micro\\mole}$", M2(x) ls 8 lw 3 title "Dämpfungsfit Fit"

# # T2_1 Mangan 200:

#png
# set terminal png size 1024,720
# set output "pngplots/T1Mangan200.png"

#epslatex
set terminal epslatex
set output "plots/T1Mangan200.tex"

set datafile separator ","

x8_min = 0
x8_max = 1300

y8_min = 0
y8_max = 1
dataPTH8 = "Messwerte2/7_10/T1.txt"

load "jet.pal"

set ylabel "Dämpfung $\\frac{\\text{E}}{\\text{E}_0}$"
set xlabel "Zeit zwischen den Pulsen $t$ in $\\si{\\milli \\second}$"
set xrange [x8_min:x8_max]
set yrange [y8_min:y8_max]

S8(x) = S8_0 * (1-exp(-x/T8_1))
S8_0 = 1.11
T8_1 = 2750
fit [x8_min:x8_max] S8(x) dataPTH8 using 1:2 via T8_1, S8_0
plot dataPTH4 using 1:2 ls 2 ps 3 lw 3 title "Gemessenen Datenpunkte für $Mn^{2+} \\SI{200}{\\micro\\mole}$" , S8(x) ls 8 lw 3 title "Dämpfungsfit"


# #T2_2 Mn 100:

#png
#set terminal png size 1024,720
#set output "pngplots/T2Mangan200.png"

# epslatex
 set terminal epslatex
 set output "plots/T2Mangan200.tex"

set datafile separator ","

x9_min = 0
x9_max = 1400

y9_min = 0
y9_max = 1
dataPTH9 = "Messwerte2/7_9_niedrigererDwelluEcho/T2.txt"

load "jet.pal"

set ylabel "Dämpfung $\\frac{\\text{E}}{\\text{E}_0}$"
set xlabel "Zeit in $\\si{\\milli \\second}$"
set xrange [x9_min:x9_max]
set yrange [y9_min:y9_max]

M9(x) = M9_0 * exp(-x/T9_2)
M9_0 = 1
T9_2 = 2700
fit [x9_min:x9_max] M9(x) dataPTH9 using 1:2 via T9_2, M9_0

plot dataPTH9 using 1:2 ls 2 ps 3 lw 3 title "gemessene Datenpunkte für $Mn^{2+} \\SI{200}{\\micro\\mole}$", M9(x) ls 8 lw 3 title "Dämpfungsfit Fit"


    # Die Relaxationszeit von Wasser T1 und T2

# T1 Wasser:

#png
# set terminal png size 1024,720
# set output "pngplots/T1Wasser.png"

#epslatex
set terminal epslatex
set output "plots/T1Wasser.tex"

set datafile separator ","

x5_min = 0
x5_max = 4100

y5_min = 0
y5_max = 1
dataPTH6 = "Messwerte2/1_3/t1.txt"

load "jet.pal"

set ylabel "Dämpfung $\\frac{\\text{E}}{\\text{E}_0}$"
set xlabel "Zeit zwischen den Pulsen $t$ in $\\si{\\milli \\second}$"
set xrange [x5_min:x5_max]
set yrange [y5_min:y5_max]

S3(x) = S3_0 * (1-exp(-x/T7_3))
S3_0 = 1.11
T7_3 = 2750
fit [x_min:x_max] S3(x) dataPTH6 using 1:2 via T7_3, S3_0
plot dataPTH6 using 1:2 ls 2 ps 3 lw 3 title "Gemessenen Datenpunkte für Wasser" , S3(x) ls 8 lw 3 title "Dämpfungsfit"


#T2 Wasser:

#png
#set terminal png size 1024,720
#set output "pngplots/T2Wasser.png"

# epslatex
 set terminal epslatex
 set output "plots/T2Wasser.tex"

set datafile separator ","

x6_min = 0
x6_max = 6000

y6_min = 0
y6_max = 1
dataPTH7 = "Messwerte2/1_4/T2.txt"

load "jet.pal"

set ylabel "Dämpfung $\\frac{\\text{E}}{\\text{E}_0}$"
set xlabel "Zeit in $\\si{\\milli \\second}$"
set xrange [x6_min:x6_max]
set yrange [y6_min:y6_max]

M3(x) = M3_0 * exp(-x/T7_4)
M3_0 = 1
T7_4 = 2700
fit [x_min:x_max] M3(x) dataPTH7 using 1:2 via T7_4, M3_0

plot dataPTH7 using 1:2 ls 2 ps 3 lw 3 title "gemessene Datenpunkte für Wasser", M3(x) ls 8 lw 3 title "Dämpfungsfit Fit"





#Alle Plots von T1 und T2 für Co2+
#png
# set terminal png size 1024,720
# set output "pngplots/T1Manganalle.png"

# epslatex
 set terminal epslatex
 set output "plots/ManganalleT1.tex"
set ylabel "Dämpfung $\\frac{\\text{E}}{\\text{E}_0}$"
set xlabel "Zeit in $\\si{\\milli \\second}$"

x7_min = 0
x7_max = 6000

y7_min = 0
y7_max = 1
set xrange [x7_min:x7_max]
set yrange [y7_min:y7_max]

plot dataPTH using 1:2 ls 10 ps 3 lw 3 title "$Mn^{2+} \\SI{25}{\\micro\\mole}$" , S(x) ls 8 lw 3 notitle,  dataPTH2 using 1:2 ls 7 ps 3 lw 3 title "$Mn^{2+} \\SI{50}{\\micro\\mole}$" , S1(x) ls 8 lw 3 notitle,  dataPTH4 using 1:2 ls 8 ps 3 lw 3 title "$Mn^{2+} \\SI{100}{\\micro\\mole}$" , S2(x) ls 8 lw 3 notitle, dataPTH8 using 1:2 ls 15 ps 3 lw 3 title "$Mn^{2+} \\SI{200}{\\micro\\mole}$" , S8(x) ls 8 lw 3 notitle, dataPTH6 using 1:2 ls 2 ps 3 lw 3 title "Wasser" , S3(x) ls 8 lw 3 notitle

#Alle Plots von T1 und T2 für Co2+
#png
#set terminal png size 1024,720
#set output "pngplots/T2Manganalle.png"

# epslatex
 set terminal epslatex
 set output "plots/ManganalleT2.tex"

x8_min = 0
x8_max = 6000

y8_min = 0
y8_max = 1
set xrange [x8_min:x8_max]
set yrange [y_min:y8_max]

plot dataPTH1 using 1:2 ls 10 ps 3 lw 3 title "$Mn^{2+} \\SI{25}{\\micro\\mole}$", M(x) ls 8 lw 3 notitle,dataPTH5 using 1:2 ls 7 ps 3 lw 3 title "$Mn^{2+} \\SI{100}{\\micro\\mole}$", M2(x) ls 8 lw 3 notitle, dataPTH3 using 1:2 ls 8 ps 3 lw 3 title "$Mn^{2+} \\SI{25}{\\micro\\mole}$", M1(x) ls 8 lw 3 notitle,dataPTH9 using 1:2 ls 15 ps 3 lw 3 title "$Mn^{2+} \\SI{200}{\\micro\\mole}$", M9(x) ls 8 lw 3 notitle, dataPTH7 using 1:2 ls 2 ps 3 lw 3 title "Wasser", M3(x) ls 8 lw 3 notitle