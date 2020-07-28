# Messung des 2D MRI
#png
set terminal png size 1024,720
set output "pngplots/2DMRI.png"

# #epslatex
# set terminal epslatex
# set output "plots/2DMRI.tex"

# x_min = 0
# x_max = 120

# y_min = 0
# y_max = 120

# z_min = 0
# z_max = 120
load "jet.pal"


# set ylabel "Z in $\\si{\\milli \\meter}$"
# set xlabel "Y in $\\si\\milli \\meter$"
# set xrange [x_min:x_max]
# set yrange [y_min:y_max]
# set zrange [z_min:z_max]
dataPTH1 = "Messwerte2/14_2_erstemessung/scan2phase.txt"
dataPTH600 = "Messwerte2/14_2_600ms/scan1.txt"
dataPTH1300 = "Messwerte2/14_2_1300ms/scan.txt"
dataPTH2100 = "Messwerte2/14_2_2100ms/scan.txt"
dataPTH2800 = "Messwerte2/14_2_2800ms/scan.txt"
set autoscale xfix
set autoscale yfix
 set autoscale cbfix
 set autoscale zfix
#plot dataPTH matrix nonuniform with image notitle

 set pm3d map
 splot dataPTH1 matrix
