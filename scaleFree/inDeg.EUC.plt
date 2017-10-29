#
# Directed graph - in-degree Distribution. G(5242, 15726). 569 (0.1085) nodes with in-deg > avg deg (6.0), 237 (0.0452) with >2*avg.deg (Sun Oct 29 17:10:47 2017)
#

set title "Directed graph - in-degree Distribution. G(5242, 15726). 569 (0.1085) nodes with in-deg > avg deg (6.0), 237 (0.0452) with >2*avg.deg"
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
