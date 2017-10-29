#
# Directed graph - out-degree Distribution. G(7050, 103565). 870 (0.1234) nodes with out-deg > avg deg (29.4), 462 (0.0655) with >2*avg.deg (Sat Oct 28 14:22:01 2017)
#

set title "Directed graph - out-degree Distribution. G(7050, 103565). 870 (0.1234) nodes with out-deg > avg deg (29.4), 462 (0.0655) with >2*avg.deg"
set key bottom right
set logscale xy 10
set format x "10^{%L}"
set mxtics 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Out-degree"
set ylabel "Count"
set tics scale 2
set terminal png font arial 10 size 1000,800
set output 'outDeg.GRQ.png'
plot 	"outDeg.GRQ.tab" using 1:2 title "" with linespoints pt 6
