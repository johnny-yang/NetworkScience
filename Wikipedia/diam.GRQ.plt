#
# Directed graph - shortest path. G(7050, 103565). Diam: avg:3.33  eff:3.95  max:10 (Sat Oct 28 14:22:06 2017)
#

set title "Directed graph - shortest path. G(7050, 103565). Diam: avg:3.33  eff:3.95  max:10"
set key bottom right
set logscale y 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Number of hops"
set ylabel "Number of shortest paths"
set tics scale 2
set terminal png font arial 10 size 1000,800
set output 'diam.GRQ.png'
plot 	"diam.GRQ.tab" using 1:2 title "" with linespoints pt 6
