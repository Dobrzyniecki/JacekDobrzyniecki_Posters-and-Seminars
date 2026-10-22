set term pngcairo enhanced dashed size 2000,550 lw 5 ps 2 font ",42"
set output 'LinearPotential.png'
set key at screen 0.7,0.98 samplen 2

set xzeroaxis
set xrange [-15:136]
set yrange [-0.7:0.9]
set ytics 0.5

potential_up(x) = (x>=1 && x<=120) ? beta * (x-x0) + w * (x-x0)**2 : 999
potential_down(x) = (x>=1 && x<=120) ? -beta * (x-x0) + w * (x-x0)**2 : 999
x0 = 60.5

set tmargin 0.1
set bmargin 2.5
set lmargin 5
set rmargin 2

beta = 1

set xlabel 'site j' offset 0,1.0
set xtics (1,60,120) out nomirror offset 0,0.4

set object 1 rectangle from -999,-999 to 1,999 behind lw 0 fc rgb 'gray50' fs pattern 4
set object 2 rectangle from 120,-999 to 999,999 behind lw 0 fc rgb 'gray50' fs pattern 5

w = 0.0
plot (potential_up(x)/120) w l lw 2 lc rgb 'blue' title "Potential V↑(j) / βL",\
(potential_down(x)/120) w l lc rgb 'red' title "Potential V↓(j) / βL"
