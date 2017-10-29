#
# Directed graph - k-core nodes. G(7115, 103406). (Sun Oct 29 16:39:27 2017)
#

set title "Directed graph - k-core nodes. G(7115, 103406)."
set key bottom right
set logscale y 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "k-Core"
set ylabel "Number of nodes in the k-Core"
set tics scale 2
set terminal png font arial 10 size 1000,800
set output 'coreNodes.EUC.png'
plot 	"coreNodes.EUC.tab" using 1:2 title "" with linespoints pt 6
