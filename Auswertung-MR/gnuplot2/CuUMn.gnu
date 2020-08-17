# set terminal png size 1024,720
# set output "pngplots/CuMnVgl.png"

# epslatex
set terminal epslatex
set output "plots/CuMnVgl.tex"

load "jet.pal"

set datafile separator ","

dataPTH = "Messwerte2/3_2/T1.txt"
dataPTH6 = "Messwerte2/1_3/t1.txt"
dataPTH8 = "Messwerte2/6_2/T1.txt"
dataPTH2 = "Messwerte2/7_4/T1.txt"
dataPTH4 = "Messwerte2/7_10/T1.txt"

x_min = 0
x_max = 6000
y_min = 0
y_max = 1
set xrange [x_min:x_max]
set yrange [y_min:y_max]

set ylabel "D\\\"ampfung $\\frac{\\text{E}}{\\text{E}_0}$"
set xlabel "Zeit in $\\si{\\milli \\second}$"
set key at graph 0.985,0.75


S(x) = S_0 * (1-exp(-x/T_1))
S_0 = 1.11
T_1 = 2750
fit [0:4750] S(x) dataPTH using 1:2 via T_1, S_0

S3(x) = S3_0 * (1-exp(-x/T3_1))
S3_0 = 1.11
T3_1 = 2750
fit [0:4100] S3(x) dataPTH6 using 1:2 via T3_1, S3_0

S8(x) = S8_0 * (1-exp(-x/T8_1))
S8_0 = 1.11
T8_1 = 2750
fit [0:1300] S8(x) dataPTH8 using 1:2 via T8_1, S8_0

S2(x) = S2_0 * (1-exp(-x/T2_1))
S2_0 = 1.11
T2_1 = 2750
fit [0:4750] S2(x) dataPTH2 using 1:2 via T2_1, S2_0

S4(x) = S4_0 * (1-exp(-x/T4_1))
S4_0 = 1.11
T4_1 = 2750
fit [0:1300] S4(x) dataPTH4 using 1:2 via T4_1, S4_0

plot dataPTH6 using 1:2 ls 2 ps 3 lw 3 title "Wasser" , S3(x) ls 8 lw 2 notitle, dataPTH using 1:2 ls 5 ps 3 lw 3 title "$Cu^{2+}$ $\\SI{250}{\\micro\\mole}$" , S(x) ls 8 lw 2 notitle,  dataPTH2 using 1:2 ls 7  ps 3 lw 3 title "$Mn^{2+}$ $\\SI{25}{\\micro\\mole}$" , S2(x) ls 8 lw 2 notitle,  dataPTH8 using 1:2 ls 8 ps 3 lw 3 title "$Cu^{2+}$ $\\SI{2000}{\\micro\\mole}$" , S8(x) ls 8 lw 2 notitle,dataPTH4 using 1:2 ls 15 ps 3 lw 3 title "$Mn^{2+}$ $\\SI{200}{\\micro\\mole}$" , S4(x) ls 8 lw 2 notitle