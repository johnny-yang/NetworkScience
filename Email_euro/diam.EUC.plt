#
# Directed graph - shortest path. G(1005, 25571). Diam: avg:2.65  eff:2.99  max:7 (Thu Oct 26 17:47:22 2017)
#

set title "Directed graph - shortest path. G(1005, 25571). Diam: avg:2.65  eff:2.99  max:7"
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
