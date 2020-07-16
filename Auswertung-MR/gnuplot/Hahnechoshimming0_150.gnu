#png
# set terminal png size 1024,720
# set output "pngplots/SpinEcho_4scans_ideal_Repetitiontime_0_shimming_150echo.png"

#epslatex
set terminal epslatex
set output "plots/SpinEcho_4scans_ideal_Repetitiontime_0_shimming_150echo.tex"

x_min = 1800
x_max = 1880

y_min = 0
y_max = 15
dataPTH = "Messwerte/TXT/7HahnEcho/SpinEcho_4scans_ideal_Repetitiontime_0_shimming_150echo.txt"
dataPTH1 = "Messwerte/TXT/7HahnEcho/SpinEcho_4scans_ideal_Repetitiontime_495xshimming.txt"

load "jet.pal"

set ylabel "FID amplitude"
set xlabel "Frequency in $\\si{\\hertz}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]


plot dataPTH using 1:2 lt 5 lc 15 w lines title "shimmin value \\SI{0}{x}", dataPTH1 using 1:2 lt 6 w lines title "shimmin value \\SI{4.95}{x}"