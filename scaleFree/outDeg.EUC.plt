#
# Directed graph - out-degree Distribution. G(5242, 15726). 0 (0.0000) nodes with out-deg > avg deg (6.0), 0 (0.0000) with >2*avg.deg (Sun Oct 29 09:52:12 2017)
#

set title "Directed graph - out-degree Distribution. G(5242, 15726). 0 (0.0000) nodes with out-deg > avg deg (6.0), 0 (0.0000) with >2*avg.deg"
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
set output 'outDeg.EUC.png'
plot 	"outDeg.EUC.tab" using 1:2 title "" with linespoints pt 6
