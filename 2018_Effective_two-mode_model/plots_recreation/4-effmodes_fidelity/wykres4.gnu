set border lw 3

set bmargin 0
set tmargin 0
set lmargin 0
set rmargin 3

set dashtype 222 (12,6)

set term pngcairo enhanced dashed size 800,1100 font ",24"
set output "Wykres4.png"
set multiplot
set xrange [0.0:2.0]
set yrange [-0.05:1.05]
set xtics 0.5

set label 20 "Minimum fidelity" font ",30" rotate at -0.4,-0.05 center
set label 22 'Interaction g' at screen 0.58,0.025 front center

set format x ''
set size 0.8,0.40

set origin 0.2,0.50
set label 1 at 1.44,0.93 "N = 2" front offset 0,0 font ",36"
set key at 1.66,1.28
plot 'trad.2.4' u 1:2 w l dt 222 lw 3 lc rgb "red" title "traditional model", 'fid.2.4' u 1:2 w l ls 1 lw 3 lc rgb "blue" title "effective modes"
unset key

set origin 0.2,0.1
set format x "% g"
set label 1 "N = 3"
unset label 20
plot 'fid.3.4' u 1:2 w l notitle ls 1 lw 3 lc rgb "blue", 'trad.3.4' u 1:2 w l notitle dt 222 lw 3 lc rgb "red"
