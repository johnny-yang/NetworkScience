#
# Directed graph - clustering coefficient. G(1005, 16706). Average clustering: 0.5390  OpenTriads: 853178 (0.8775)  ClosedTriads: 119087 (0.1225) (Sun Oct 29 16:33:57 2017)
#

set title "Directed graph - clustering coefficient. G(1005, 16706). Average clustering: 0.5390  OpenTriads: 853178 (0.8775)  ClosedTriads: 119087 (0.1225)"
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
set output 'ccf.EUC.png'
plot 	"ccf.EUC.tab" using 1:2 title "" with linespoints pt 6
