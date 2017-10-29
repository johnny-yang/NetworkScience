#
# Directed graph - clustering coefficient. G(5242, 15726). Average clustering: 0.0097  OpenTriads: 274459 (0.9982)  ClosedTriads: 495 (0.0018) (Sun Oct 29 09:52:12 2017)
#

set title "Directed graph - clustering coefficient. G(5242, 15726). Average clustering: 0.0097  OpenTriads: 274459 (0.9982)  ClosedTriads: 495 (0.0018)"
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
