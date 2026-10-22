set term pngcairo enhanced dashed size 1400,700 lw 4 ps 2 font ",30"
set output 'DoublonNumber.png'
set multiplot layout 1,2

set xzeroaxis
set grid ytics

set lmargin 3
set tmargin 2

#------row 1-------
#------plot 1,1-------

set key samplen 1

set title 'N = 10 + 10' font " Bold"

set xlabel 'β' offset 0,0.3
set xrange [0:0.05]
set xtics 0.01
set ytics 1
set yrange [-0.2:10.2]

plot \
'_rescaled_doublon_numbers_N=10,10_L=120_U=0.dat'    index 0 u 1:3 w l lw 1.5 title 'U =  0', \
'_rescaled_doublon_numbers_N=10,10_L=120_U=-1.dat'   index 0 u 1:3 w l lw 1.5 title 'U = −1', \
'_rescaled_doublon_numbers_N=10,10_L=120_U=-2.dat'   index 0 u 1:3 w l lw 1.5 title 'U = −2', \
'_rescaled_doublon_numbers_N=10,10_L=120_U=-4.dat'   index 0 u 1:3 w l lw 1.5 title 'U = −4'



#------row 2-------
#------plot 2,1-------

set title 'N = 45 + 45'

set xrange [0:0.2]
set xtics 0.05
set ytics 5
set mytics 5
set yrange [-0.5:45.5]

plot \
'_rescaled_doublon_numbers_N=45,45_L=120_U=0.dat'    index 0 u 1:3 w l lw 1.5 title 'U =  0', \
'_rescaled_doublon_numbers_N=45,45_L=120_U=-1.dat'   index 0 u 1:3 w l lw 1.5 title 'U = −1', \
'_rescaled_doublon_numbers_N=45,45_L=120_U=-2.dat'   index 0 u 1:3 w l lw 1.5 title 'U = −2', \
'_rescaled_doublon_numbers_N=45,45_L=120_U=-4.dat'   index 0 u 1:3 w l lw 1.5 title 'U = −4'
