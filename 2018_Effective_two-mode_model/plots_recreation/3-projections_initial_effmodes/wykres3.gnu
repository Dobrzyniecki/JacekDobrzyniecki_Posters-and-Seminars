yoffset = 0.1
xoffset = 0.1
rowspacing = 0.1
plotwidth = 1.1
plotheight = 2.0
imagewidth = 2.5
imageheight = 2.6
lip = 0.1
plotwrel = plotwidth/imagewidth
plothrel = plotheight/imageheight

set term pngcairo enhanced size 800,653 font ",20"
set encoding utf8
set output "Wykres3.png"
set multiplot
set xrange [0.0:2.5]
set yrange [-0.01:0.80]
set xtics 0.5
set ytics 0.2
set key autotitle columnhead
unset key
set border lw 3

set label 20 '||{/Symbol \341} {/Courier k} | {/Courier ini} {/Symbol \361}||^2' at screen 0.02,0.4 front rotate font ",20"
set label 20 '||{/Symbol \341} {/Courier k} | {/Courier initial state} {/Symbol \361}||^2' at screen 0.02,0.25 front rotate font ",20"
set label 22 'Interaction g' at screen 0.250,0.04 front
set label 23 'Interaction g' at screen 0.690,0.04 front

set rmargin 2
set lmargin 2
set tmargin 1
set bmargin 0

set size 0.45,0.85
set origin 0.1,0.15

set label 2 '|1{/Symbol \361}' font "Courier,20" at 0.3,0.55
set label 3 '|2{/Symbol \361}' font "Courier,20" at 0.5,0.39
set label 10 at 1.0,0.70 "N = 2" front offset 0,0 font ",40"

plot 'RRStateDecomposition.p=2.a=4.0' u 1:($3**2) w l ls 1 lw 2 lc rgb 'red', \
'' u 1:($4**2) w l ls 1 lw 2 lc rgb 'red'


set xrange [0.0:1.5]
set label 10 "N = 3" at 0.6,0.70 
set format y ''
set size 0.45,0.85
set origin 0.55,0.15
unset label 2
set label 3 at 0.5,0.52
set label 4 '|3{/Symbol \361}' font "Courier,20" at 0.4,0.35

plot 'RRStateDecomposition.p=3.a=4.0' u 1:($4**2) w l ls 1 lw 2 lc rgb 'red', \
'' u 1:($5**2) w l ls 1 lw 2 lc rgb 'red'
