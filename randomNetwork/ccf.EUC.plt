#
# Directed graph - clustering coefficient. G(7115, 103406). Average clustering: 0.0040  OpenTriads: 2993134 (0.9987)  ClosedTriads: 3997 (0.0013) (Sun Oct 29 09:51:26 2017)
#

set title "Directed graph - clustering coefficient. G(7115, 103406). Average clustering: 0.0040  OpenTriads: 2993134 (0.9987)  ClosedTriads: 3997 (0.0013)"
set key bottom right
set logscale xy 10
set format x "10^{%L}"
set mxtics 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Node degree"
set ylabel "Average clustering coefficient"
set tics scale 2
set terminal png font arial 10 size 1000,800
set output 'ccf.EUC.png'
plot 	"ccf.EUC.tab" using 1:2 title "" with linespoints pt 6
