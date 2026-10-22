set term pngcairo enhanced dashed size 1650,700 lw 4 ps 2 font ",42"
set output 'DoublonNumber_xBeta_L120_diffHarmonicTrapAmplitude.png'

set xzeroaxis
set grid ytics

#------row 1-------
#------plot 1,1-------

set title 'L = 120, U = –4' offset 0,-0.8

set xlabel '{/Symbol b}' offset 0,0.8

set xrange [0:0.23]
set xtics 0.05
set yrange [-0.2:10.2]
set ytics 2
set mytics 2

set tmargin 1.3
set lmargin 3
set rmargin 2

set key at graph 0.98, graph 0.98 Left right samplen 2

plot \
'_rescaled_doublon_numbers_N=10,10_L=120_U=-4.dat'    index 0 u 1:3 w l lw 1.5 title 'v = 0', \
'_rescaled_doublon_numbers_N=10,10_L=120_HarmonicAm=0.0002.dat'   index 0 u 1:3 w l lw 1.5 title 'v = 0.0002', \
'_rescaled_doublon_numbers_N=10,10_L=120_HarmonicAm=0.0010.dat'   index 0 u 1:3 w l lw 1.5 title 'v = 0.001', \
'_rescaled_doublon_numbers_N=10,10_L=120_HarmonicAm=0.0040.dat'   index 0 u 1:3 w l lw 1.5 title 'v = 0.004'
