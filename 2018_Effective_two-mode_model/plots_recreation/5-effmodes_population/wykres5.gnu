set border lw 3

set term pngcairo enhanced dashed size 1000,1000 font ",20"
set output "Wykres5.png"
set multiplot
set xrange [0.0:32.0]
set yrange [-0.2:2.2]
set xtics 4
set format x ''
set ytics 1

set dashtype 222 (12,6)

set tmargin 0
set bmargin 0

set label 4 'Normalized time ({/=16 @^{/Symbol=24 -}{/=20 h}}/J_0)' at screen 0.40,0.05 front
set label 20 "Right well population" font ",26" rotate by 90 at -3.0,-1.3 center

set obj 1 rect from 27,1.2 to 32,2.3 front lw 3
set label 1 at 27.4,1.9 "N = 2" front offset 0,0 font ",24"
set label 3 at 27.4,1.9 "g = 1.1" front offset 0.0,-1.2 font ",24"
set origin 0.05,0.62
set size 0.97,0.25
set key horizontal at 14,2.8 center
plot 'Population3Models.p=2.a=4.0.g=1.10.n=30.dt=0.02.tstart=0.0.maxt=32.0' u 1:2 w l ls 1 lw 2 lc rgb "black" title "exact", '' u 1:4 w l dt 222 lw 3 lc rgb "red" title "two-mode", '' u 1:6 w l ls 1 lw 3 lc rgb "blue" title "eff. modes"
unset label 20
unset key

set yrange [-0.25:3.25]
set obj 1 from 27,1.75 to 32,3.3 lw 3
set label 1 at 27.4,2.82 "N = 3" front offset 0,0
set label 3 at 27.4,2.82 "g = 0.5"
set origin 0.05,0.37
plot 'Population3Models.p=3.a=4.0.g=0.50.n=30.dt=0.02.tstart=0.0.maxt=32.0' u 1:2 w l notitle ls 1 lw 2 lc rgb "black", '' u 1:4 w l notitle dt 222 lw 3 lc rgb "red", '' u 1:6 w l notitle ls 1 lw 3 lc rgb "blue"

set yrange [-0.3:4.3]
set obj 1 from 27,2.3 to 32,4.3 lw 3
set label 1 at 27.4,3.72 "N = 4" front offset 0,0
set label 3 at 27.4,3.72 "g = 0.4"
set format x "% g"
set origin 0.05,0.12
plot 'Population3Models.p=4.a=4.0.g=0.40.n=30.dt=0.02.tstart=0.0.maxt=32.0' u 1:2 w l notitle ls 1 lw 2 lc rgb "black", '' u 1:4 w l notitle dt 222 lw 3 lc rgb "red", '' u 1:6 w l notitle ls 1 lw 3 lc rgb "blue"
