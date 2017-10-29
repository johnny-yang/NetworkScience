#
# Directed graph - in-degree Distribution. G(1005, 16706). 348 (0.3463) nodes with in-deg > avg deg (33.2), 135 (0.1343) with >2*avg.deg (Sun Oct 29 16:33:57 2017)
#

set title "Directed graph - in-degree Distribution. G(1005, 16706). 348 (0.3463) nodes with in-deg > avg deg (33.2), 135 (0.1343) with >2*avg.deg"
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
