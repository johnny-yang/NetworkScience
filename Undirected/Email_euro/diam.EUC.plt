#
# Directed graph - shortest path. G(1005, 16706). Diam: avg:2.58  eff:2.95  max:7 (Sun Oct 29 16:33:57 2017)
#

set title "Directed graph - shortest path. G(1005, 16706). Diam: avg:2.58  eff:2.95  max:7"
set key bottom right
set logscale y 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Number of hops"
set ylabel "Number of shortest paths"
set tics scale 2
set terminal png font arial 10 size 1000,800
set output 'diam.EUC.png'
plot 	"diam.EUC.tab" using 1:2 title "" with linespoints pt 6
