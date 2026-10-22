set term pngcairo enhanced dashed size 1020,556 font ",20"
set output "Wykres2.png"
set multiplot layout 3,1
set xrange [0.0:16.0]
set yrange [-0.1:2.1]
set xtics 4
set format x ''
set ytics 1 font ",14"
set border lw 3

set dashtype 222 (12,6)

set tmargin 0
set bmargin 1
set lmargin 7
set rmargin 4

set y2label 'U/J = 0.1'
set origin 0,0.61
set size 1,0.30

set key horizontal width 9 at 6,2.5 center
plot 'Dynamics.p=2.a=3.0.g=0.0272053.n=30.dt=0.05.maxt=32' u 1:2 w l ls 1 lw 2 lc rgb "black" title "exact", \
'Dynamics.p=2.a=3.0.g=0.0272053.n=2.dt=0.05.maxt=32' u 1:2 w l dt 222 lw 3 lc rgb "red" title "two-mode"
set label 1 "Right well population" font ",26" rotate by 90 at -1.4,1 center
unset key 

set y2label 'U/J = 1'
set origin 0,0.34
set size 1,0.30
plot 'Dynamics.p=2.a=3.0.g=0.272053.n=30.dt=0.05.maxt=32' u 1:2 w l ls 1 lw 2 lc rgb "black", \
'Dynamics.p=2.a=3.0.g=0.272053.n=2.dt=0.05.maxt=32' u 1:2 w l dt 222 lw 3 lc rgb "red"
unset label 1


set y2label 'U/J = 12'
set xlabel 'Normalized time ({/=16 @^{/Symbol=24 -}{/=20 h}}/J_0)' offset 0,1.2
set origin 0,0.07
set size 1,0.30
set xtics font ",14" offset 0,0.4
set format x
plot 'Dynamics.p=2.a=3.0.g=3.2646316.n=30.dt=0.05.maxt=32' u 1:2 w l ls 1 lw 2 lc rgb "black", \
'Dynamics.p=2.a=3.0.g=3.2646316.n=2.dt=0.05.maxt=32' u 1:2 w l dt 222 lw 3 lc rgb "red"
