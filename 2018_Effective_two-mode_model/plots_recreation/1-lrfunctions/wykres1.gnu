funcscale = 2

set term pngcairo enhanced truecolor transparent size 1625, 800 lw 7
set output "Wykres1-lrstates.png"
set multiplot layout 1,2
set xrange [-3.5:3.5]
set style fill transparent solid 0.2

unset key
unset border
unset xtics
unset ytics
set label 1 at 0,3 '{/Symbol f}_{L0}(x)' font ",90"  center
plot 'Functions.a=3.0' u 1:(funcscale*($2-$3)) w filledcurve y1=0 lc rgb 'red', 'Potential.a=3.0' u 1:($2-1.6) w filledcurve x1 lc rgb 'dark-goldenrod',\
'Functions.a=3.0' u 1:(funcscale*($2-$3)) w l lc rgb 'red', 'Potential.a=3.0' u 1:($2-1.6) w l lc rgb 'dark-goldenrod'
set label 1 '{/Symbol f}_{R0}(x)'
plot 'Functions.a=3.0' u 1:(funcscale*($2+$3)) w filledcurve y1=0 lc rgb 'red', 'Potential.a=3.0' u 1:($2-1.6) w filledcurve x1 lc rgb 'dark-goldenrod',\
'Functions.a=3.0' u 1:(funcscale*($2+$3)) w l lc rgb 'red', 'Potential.a=3.0' u 1:($2-1.6) w l lc rgb 'dark-goldenrod',\
