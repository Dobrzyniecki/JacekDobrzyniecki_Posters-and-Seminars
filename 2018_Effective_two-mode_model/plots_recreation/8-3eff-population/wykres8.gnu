set border lw 3

set term pngcairo enhanced dashed size 1000,1000 font ",20"
set output "Wykres8.png"
set multiplot
set xrange [0.0:32.0]
set xtics 4
set format x ''
set ytics 1

set tmargin 0
set bmargin 0

set label 4 'Normalized time ({/=16 @^{/Symbol=24 -}{/=20 h}}/J_0)' at screen 0.40,0.05 front
set label 20 "Right well population" font ",26" rotate by 90 at -3.0,-2.0 center

set dashtype 222 (12,6)

set obj 1 rect from 26.6,1.75 to 32,3.3 front lw 3
set label 1 at 27.0,2.82 "N = 3" front offset 0,0 font ",24"
set label 3 at 27.0,2.82 "g = 1.4" front offset 0.0,-1.2 font ",24"
set origin 0.05,0.62
set size 0.97,0.25
set key horizontal at 14,4.1 center
set yrange [-0.25:3.25]
plot 'ExactDynamics.p=3.g=1.40.a=1.0.n=30' u 1:14 w l ls 1 lw 2 lc rgb "black" title "exact", 'Fidelity.p=3.a=1.0.g=1.40.w=0.0.h=0.0.dt=0.1.maxt=37.7' u 1:2 w l dt 222 lw 3 lc rgb "red" title "two-mode", 'Fidelity.p=3.a=1.0.g=1.40.w=-0.5594.h=0.01877.dt=0.1.maxt=37.7' u 1:2 w l dt 222 lw 3 lc rgb "blue" title "eff. 3-body"
unset label 20
unset key

set yrange [-0.25:3.25]
set obj 1 from 26.6,1.75 to 32,3.3 lw 3
set label 1 at 27.0,2.82 "N = 3" front offset 0,0
set label 3 at 27.0,2.82 "g = -0.7"
set origin 0.05,0.37
plot 'ExactDynamics.p=3.g=-0.70.a=1.0.n=30' u 1:14 w l notitle ls 1 lw 2 lc rgb "black", 'Fidelity.p=3.a=1.0.g=-0.70.w=0.0.h=0.0.dt=0.1.maxt=37.7' u 1:2 w l notitle dt 222 lw 3 lc rgb "red", 'Fidelity.p=3.a=1.0.g=-0.70.w=-0.1535.h=0.0121.dt=0.1.maxt=37.7' u 1:2 w l notitle dt 222 lw 3 lc rgb "blue"

set yrange [-0.3:4.3]
set obj 1 from 26.6,2.3 to 32,4.3 lw 3
set label 1 at 27.0,3.72 "N = 4" front offset 0,0
set label 3 at 27.0,3.72 "g = 0.7"
set format x "% g"
set origin 0.05,0.12
plot 'ExactDynamics.p=4.g=0.70.a=1.0.n=30' u 1:17 w l notitle ls 1 lw 2 lc rgb "black", 'Fidelity.p=4.a=1.0.g=0.70.w=0.0.h=0.0.dt=0.1.maxt=37.7' u 1:2 w l notitle dt 222 lw 3 lc rgb "red", 'Fidelity.p=4.a=1.0.g=0.70.w=-0.1006.h=0.0040.dt=0.1.maxt=37.7' u 1:2 w l notitle dt 222 lw 3 lc rgb "blue"
