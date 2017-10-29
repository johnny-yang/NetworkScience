#
# Directed graph - wcc distribution. G(7050, 103565). Largest component has 0.993050 nodes (Sat Oct 28 14:22:01 2017)
#

set title "Directed graph - wcc distribution. G(7050, 103565). Largest component has 0.993050 nodes"
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
