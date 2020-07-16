#png
# set terminal png size 1024,720
# set output "pngplots/Pulsandcollect138_delay_25_gauss.png"

#epslatex
set terminal epslatex
set output "plots/Pulsandcollect138_delay_25_gauss.tex"

#keine Ahnung warum das zwei Peaks entstehen 
#wenn man von -5000 bis 5000 misst
#vllt hat es wegen dem +- omega zu tun...
# hab jetzt nur den Plot von 0 bis 500 mal gemacht


x_min = 1830
x_max = 1845

y_min = 0
y_max = 90
dataPTH = "Messwerte/TXT/3PulsandCollect/138_puls_and_collect_number_of_delay25ms_Pulseduration1_35ms.txt"

load "jet.pal"

set ylabel "Amplitude"
set xlabel "Frequency in $\\si{\\hertz}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]




f(x) = (1/((2*pi)**(1./2)*s)) * b * exp(-(x-d)**2/(2*s**2)) + a
a=4
s=0.8
d=1837
b=118

fit [1800:1900] f(x) dataPTH using 1:2 via a,s,d,b



# #hiermüsstest du dein maximum auswählen. Hier ist es hat mit der Standardabweichung s gemacht
set arrow from d-(s*(2*log(2))**(1.0/2)),f(d-(s*(2*log(2))**(1.0/2))) to d+(s*(2*log(2))**(1.0/2)),f(d+(s*(2*log(2))**(1.0/2))) heads
set label sprintf("FWHM $= \\SI{%3.2f \\pm %3.2f}{\\degree}$",(2*(2*log(2))**(1.0/2)*s),(2*(2*log(2))**(1.0/2)*s_err)) at 1840,40





set arrow from d,f(s+d) to s+d,f(s+d) heads
set label sprintf("$\\sigma =  \\SI{%4.3f \\pm %4.3f}{\\degree}$",s,s_err) at 1840,50
set arrow from d,0 to d,90 nohead


#plot dataPTH using 1:2 ls 2 ps 3 lw 3 notitle
plot dataPTH using 1:2 lt 5 lc 15 w lines title "magnitude spectrum", [1800:1900] f(x) lt 6 title "\\textsc{Gauss}-Fit"