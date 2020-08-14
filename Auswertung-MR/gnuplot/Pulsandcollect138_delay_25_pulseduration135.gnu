#png
# set terminal png size 1024,720
# set output "pngplots/138_puls_and_collect_number_of_delay25ms_Pulseduration1_35ms.png"

#epslatex
set terminal epslatex
set output "plots/138_puls_and_collect_number_of_delay25ms_Pulseduration1_35ms.tex"

#keine Ahnung warum das zwei Peaks entstehen 
#wenn man von -5000 bis 5000 misst
#vllt hat es wegen dem +- omega zu tun...
# hab jetzt nur den Plot von 0 bis 500 mal gemacht


x_min = 1800
x_max = 1900

y_min = 0
y_max = 90
dataPTH = "Messwerte/TXT/3PulsandCollect/138_puls_and_collect_number_of_delay25ms_Pulseduration1_35ms.txt"


load "jet.pal"

set ylabel "Amplitude"
set xlabel "Frequency in $\\si\\hertz}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]


#plot dataPTH using 1:2 ls 2 ps 3 lw 3 notitle
plot dataPTH using 1:2 lt 5 lc 15 w lines title "magnitude spectrum"