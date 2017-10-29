#
# Directed graph - wcc distribution. G(5242, 14496). Largest component has 0.793209 nodes (Sun Oct 29 16:33:37 2017)
#

set title "Directed graph - wcc distribution. G(5242, 14496). Largest component has 0.793209 nodes"
set key bottom right
set logscale xy 10
set format x "10^{%L}"
set mxtics 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Size of weakly connected component"
set ylabel "Number of components"
set tics scale 2
set terminal png font arial 10 size 1000,800
set output 'wcc.GRQ.png'
plot 	"wcc.GRQ.tab" using 1:2 title "" with linespoints pt 6
