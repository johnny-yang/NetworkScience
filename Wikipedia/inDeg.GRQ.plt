#
# Directed graph - in-degree Distribution. G(7050, 103565). 1319 (0.1871) nodes with in-deg > avg deg (29.4), 616 (0.0874) with >2*avg.deg (Thu Oct 26 17:50:36 2017)
#

set title "Directed graph - in-degree Distribution. G(7050, 103565). 1319 (0.1871) nodes with in-deg > avg deg (29.4), 616 (0.0874) with >2*avg.deg"
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
set output 'inDeg.GRQ.png'
plot 	"inDeg.GRQ.tab" using 1:2 title "" with linespoints pt 6
