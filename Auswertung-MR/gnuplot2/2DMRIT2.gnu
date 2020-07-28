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

dataPTH200 = "Messwerte2/15_2/signal.txt"
dataPTH250 = "Messwerte2/15_3/scan.txt"
dataPTH300 = "Messwerte2/15_4/scan.txt"
dataPTH450 = "Messwerte2/15_5/scan.txt"
dataPTH550 = "Messwerte2/15_6/scan.txt"
set pm3d map
#erste Messung

    #png
    # set terminal png size 1024,720
    # set output "pngplots/2DMRI200.png"

    #epslatex
    set terminal epslatex
    set output "plots/2DMRI200.tex"
    splot dataPTH200   matrix using (1+$1*7.5):(2+$2*7.5):3   notitle 'erste 2D MRI Messung mit einer 32*32 Matrix'

#Messung 250ms
    #png
    # set terminal png size 1024,720
    # set output "pngplots/2DMRI250.png"

    #epslatex
    set terminal epslatex
    set output "plots/2DMRI250.tex"
    splot dataPTH250   matrix using (1+$1*7.5):(2+$2*7.5):3   notitle 'polarisationszeit $\\SI{250}{\\milli\\second}$'

#Messung 300ms
    #png
    # set terminal png size 1024,720
    # set output "pngplots/2DMRI300.png"

    #epslatex
    set terminal epslatex
    set output "plots/2DMRI300.tex"
    splot dataPTH300   matrix using (1+$1*7.5):(2+$2*7.5):3  notitle 'polarisationszeit $\\SI{300}{\\milli\\second}$'

#Messung 450ms
    #png
    # set terminal png size 1024,720
    # set output "pngplots/2DMRI450.png"

    #epslatex
    set terminal epslatex
    set output "plots/2DMRI450.tex"
    splot dataPTH450   matrix using (1+$1*7.5):(2+$2*7.5):3  notitle 'polarisationszeit $\\SI{450}{\\milli\\second}$'
#Messung 550ms
    #png
    # set terminal png size 1024,720
    # set output "pngplots/2DMRI2300.png"

    #epslatex
    set terminal epslatex
    set output "plots/2DMRI550.tex"
    splot dataPTH550   matrix using (1+$1*7.5):(2+$2*7.5):3 notitle 'polarisationszeit $\\SI{550}{\\milli\\second}$'



#  set autoscale xfix
#  set autoscale yfix
#   set autoscale cbfix
#   set autoscale zfix
#plot dataPTH matrix nonuniform with image notitle


# Matrix ist befhel um ein 2D Bild zu plotten, welches aus Matrixelementen besteht.
# (1+$1*7.5) das ist die Skalierung,
# um von einer Matrix mit 16 Elementen ein Bild mit einer Skala von 120 zu bekommen