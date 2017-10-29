#
# Directed graph - shortest path. G(1000, 2000). Diam: avg:3.88  eff:4.63  max:7 (Sun Oct 29 16:38:30 2017)
#

set title "Directed graph - shortest path. G(1000, 2000). Diam: avg:3.88  eff:4.63  max:7"
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
