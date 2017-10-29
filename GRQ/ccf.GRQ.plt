#
# Directed graph - clustering coefficient. G(5242, 14496). Average clustering: 0.5304  OpenTriads: 85079 (0.6379)  ClosedTriads: 48285 (0.3621) (Thu Oct 26 17:46:53 2017)
#

set title "Directed graph - clustering coefficient. G(5242, 14496). Average clustering: 0.5304  OpenTriads: 85079 (0.6379)  ClosedTriads: 48285 (0.3621)"
set key bottom right
set logscale xy 10
set format x "10^{%L}"
set mxtics 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Node degree"
set ylabel "Average clustering coefficient"
set tics scale 2
set terminal png font arial 10 size 1000,800
set output 'ccf.GRQ.png'
plot 	"ccf.GRQ.tab" using 1:2 title "" with linespoints pt 6
