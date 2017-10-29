#
# Directed graph - k-core nodes. G(5242, 14496). (Thu Oct 26 17:46:57 2017)
#

set title "Directed graph - k-core nodes. G(5242, 14496)."
set key bottom right
set logscale y 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "k-Core"
set ylabel "Number of nodes in the k-Core"
set tics scale 2
set terminal png font arial 10 size 1000,800
set output 'coreNodes.GRQ.png'
plot 	"coreNodes.GRQ.tab" using 1:2 title "" with linespoints pt 6
