#
# Directed graph - wcc distribution. G(7050, 103565). Largest component has 0.183688 nodes (Thu Oct 26 13:44:03 2017)
#

set title "Directed graph - wcc distribution. G(7050, 103565). Largest component has 0.183688 nodes"
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
set output 'scc.GRQ.png'
plot 	"scc.GRQ.tab" using 1:2 title "" with linespoints pt 6
