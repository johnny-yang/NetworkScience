#
# Directed graph - in-degree Distribution. G(7115, 103406). 3232 (0.4543) nodes with in-deg > avg deg (29.1), 0 (0.0000) with >2*avg.deg (Sun Oct 29 16:38:56 2017)
#

set title "Directed graph - in-degree Distribution. G(7115, 103406). 3232 (0.4543) nodes with in-deg > avg deg (29.1), 0 (0.0000) with >2*avg.deg"
set key bottom right
set logscale xy 10
set format x "10^{%L}"
set mxtics 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "In-degree"
set ylabel "Count"
set tics scale 2
set terminal png font arial 10 size 1000,800
set output 'inDeg.EUC.png'
plot 	"inDeg.EUC.tab" using 1:2 title "" with linespoints pt 6
