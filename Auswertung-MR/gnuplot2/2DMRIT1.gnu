# Messung des 2D MRI
x_min = 0
x_max = 120

y_min = 0
y_max = 120

#  z_min = 0
#  z_max = 120
load "jet.pal"

set ylabel "Z in $\\si{\\milli \\meter}$"
set xlabel "Y in $\\si{\\milli \\meter}$"
set xrange [x_min:x_max]
set yrange [y_min:y_max]
#set zrange [z_min:z_max]

dataPTH1 = "Messwerte2/14_2_erstemessung/scan2phase.txt"
dataPTH600 = "Messwerte2/14_2_600ms/scan1.txt"
dataPTH1300 = "Messwerte2/14_2_1300ms/scan.txt"
dataPTH2100 = "Messwerte2/14_2_2100ms/scan.txt"
dataPTH2800 = "Messwerte2/14_2_2800ms/scan.txt"
set pm3d map
#erste Messung

    #png
    # set terminal png size 1024,720
    # set output "pngplots/2DMRIerste.png"

    #epslatex
    set terminal epslatex
    set output "plots/2DMRIerste.tex"
    splot dataPTH1   matrix using (1+$1*3.75):(2+$2*3.75):3   notitle 'erste 2D MRI Messung mit einer 32*32 Matrix'

#Messung 600ms
    #png
    # set terminal png size 1024,720
    # set output "pngplots/2DMRI600.png"

    #epslatex
    set terminal epslatex
    set output "plots/2DMRI600.tex"
    splot dataPTH600   matrix using (1+$1*7.5):(2+$2*7.5):3   notitle 'polarisationszeit $\\SI{600}{\\milli\\second}$'

#Messung 1300ms
    #png
    # set terminal png size 1024,720
    # set output "pngplots/2DMRI1300.png"

    #epslatex
    set terminal epslatex
    set output "plots/2DMRI1300.tex"
    splot dataPTH1300   matrix using (1+$1*7.5):(2+$2*7.5):3  notitle 'polarisationszeit $\\SI{1300}{\\milli\\second}$'

#Messung 2100ms
    #png
    # set terminal png size 1024,720
    # set output "pngplots/2DMRI2100.png"

    #epslatex
    set terminal epslatex
    set output "plots/2DMRI2100.tex"
    splot dataPTH2100   matrix using (1+$1*7.5):(2+$2*7.5):3  notitle 'polarisationszeit $\\SI{2100}{\\milli\\second}$'
#Messung 2800ms
    #png
    # set terminal png size 1024,720
    # set output "pngplots/2DMRI2300.png"

    #epslatex
    set terminal epslatex
    set output "plots/2DMRI2800.tex"
    splot dataPTH2800   matrix using (1+$1*7.5):(2+$2*7.5):3 notitle 'polarisationszeit $\\SI{2800}{\\milli\\second}$'



#  set autoscale xfix
#  set autoscale yfix
#   set autoscale cbfix
#   set autoscale zfix
#plot dataPTH matrix nonuniform with image notitle


# Matrix ist befhel um ein 2D Bild zu plotten, welches aus Matrixelementen besteht.
# (1+$1*7.5) das ist die Skalierung,
# um von einer Matrix mit 16 Elementen ein Bild mit einer Skala von 120 zu bekommen