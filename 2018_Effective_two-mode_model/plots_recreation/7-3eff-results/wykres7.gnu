set border lw 3

set term pngcairo enhanced dashed size 800,1000 font ",20"
set output "Wykres7.png"
set multiplot
set xrange [0.0:320]
set xtics 64
set format x ''
set ytics 1

set dashtype 222 (12,6)

set tmargin 0
set bmargin 0

set label 4 'Normalized time ({/=16 @^{/Symbol=24 -}{/=20 h}}/J_0)' at screen 0.40,0.05 front
set label 20 "Fidelity" font ",26" rotate by 90 at -36,-0.7 center

set obj 1 rect from 0,0.38 to 72,0.85 front lw 3
set label 1 at 5,0.72 "N = 3" front offset 0,0 font ",24"
set label 3 at 5,0.72 "g = -0.4" front offset 0.0,-1.2 font ",24"
set origin 0.05,0.62
set size 0.97,0.25
set key horizontal at 150,1.4 center
set yrange [-0.1:1.1]
plot 'Fidelity.p=3.a=1.0.g=-0.40.w=0.0.h=0.0.dt=1.maxt=377' u 1:4 every 10 w l dt 222 lw 3 lc rgb "red" title "two-mode", 'Fidelity.p=3.a=1.0.g=-0.40.w=-0.0496.h=0.0036.dt=1.maxt=377' u 1:4 every 10 w l ls 1 lw 3 lc rgb "blue" title "eff. 3-body"
unset label 20
unset key

set yrange [-0.1:1.1]
set obj 1 from 0,0.38 to 72,0.85 lw 3
set label 1 at 5,0.72 "N = 3"
set label 3 at 5,0.72 "g = 0.4"
set origin 0.05,0.37
plot 'Fidelity.p=3.a=1.0.g=0.40.w=0.0.h=0.0.dt=1.maxt=377' u 1:4 every 10 w l notitle dt 222 lw 3 lc rgb "red", 'Fidelity.p=3.a=1.0.g=0.40.w=-0.0486.h=0.0026.dt=1.maxt=377' u 1:4 every 10 w l notitle ls 1 lw 3 lc rgb "blue"

set yrange [-0.1:1.1]
set obj 1 from 0,0.38 to 72,0.85 lw 3
set label 1 at 5,0.72 "N = 3"
set label 3 at 5,0.72 "g = 0.7"
set format x "% g"
set origin 0.05,0.12
plot 'Fidelity.p=3.a=1.0.g=0.70.w=0.0.h=0.0.dt=1.maxt=377' u 1:4 every 10 w l notitle dt 222 lw 3 lc rgb "red", 'Fidelity.p=3.a=1.0.g=0.70.w=-0.1465.h=0.0068.dt=1.maxt=377' u 1:4 every 10 w l notitle ls 1 lw 3 lc rgb "blue"
