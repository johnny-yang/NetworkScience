#
# Directed graph - scc distribution. G(1005, 16706). Largest component has 0.981095 nodes (Sun Oct 29 16:33:57 2017)
#

set title "Directed graph - scc distribution. G(1005, 16706). Largest component has 0.981095 nodes"
set key bottom right
set logscale xy 10
set format x "10^{%L}"
set mxtics 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Size of strongly connected component"
set ylabel "Number of components"
set tics scale 2
set terminal png font arial 10 size 1000,800
set output 'scc.EUC.png'
plot 	"scc.EUC.tab" using 1:2 title "" with linespoints pt 6
