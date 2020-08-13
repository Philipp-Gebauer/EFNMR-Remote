#png
set terminal png size 1024,720
set output "pngplots/LorentzTest.png"

x_min = 0
x_max = 101
y_min = 0
y_max = 110
set xrange [x_min:x_max]
set yrange [y_min:y_max]

dataPTH = "Messwerte2/Test.txt"
load "jet.pal"

f(x) = a1/((x**2-b1**2)**2+(c1**2)*(b1**2))
a1 = 400000      #Höhe des Maximums
b1 = 50       #Position des Peaks
c1 = 9        #Breite des Peaks
fit [1:100] f(x) dataPTH using 1:2 via  a1, b1, c1

plot dataPTH using 1:2 lt 5 lc 15 w lines title "Test", [1:100] f(x) ls 8 lw 3 title "\\textsc{Lorentz}-Fit"