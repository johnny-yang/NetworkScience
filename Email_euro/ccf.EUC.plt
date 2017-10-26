#
# Directed graph - clustering coefficient. G(1005, 25571). Average clustering: 0.3994  OpenTriads: 866833 (0.8915)  ClosedTriads: 105461 (0.1085) (Thu Oct 26 17:47:22 2017)
#

set title "Directed graph - clustering coefficient. G(1005, 25571). Average clustering: 0.3994  OpenTriads: 866833 (0.8915)  ClosedTriads: 105461 (0.1085)"
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
