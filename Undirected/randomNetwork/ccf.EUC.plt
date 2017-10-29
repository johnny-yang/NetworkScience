#
# Directed graph - clustering coefficient. G(7051, 100326). Average clustering: 0.0040  OpenTriads: 2843517 (0.9986)  ClosedTriads: 3846 (0.0014) (Sun Oct 29 17:12:53 2017)
#

set title "Directed graph - clustering coefficient. G(7051, 100326). Average clustering: 0.0040  OpenTriads: 2843517 (0.9986)  ClosedTriads: 3846 (0.0014)"
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
