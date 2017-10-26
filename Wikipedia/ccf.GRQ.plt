#
# Directed graph - clustering coefficient. G(7050, 103565). Average clustering: 0.1420  OpenTriads: 12711791 (0.9543)  ClosedTriads: 608324 (0.0457) (Thu Oct 26 14:32:17 2017)
#

set title "Directed graph - clustering coefficient. G(7050, 103565). Average clustering: 0.1420  OpenTriads: 12711791 (0.9543)  ClosedTriads: 608324 (0.0457)"
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
set output 'ccf.GRQ.png'
plot 	"ccf.GRQ.tab" using 1:2 title "" with linespoints pt 6
