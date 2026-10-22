set term pngcairo enhanced dashed size 2300,800 lw 5 ps 3 font ",42"
set output 'Locations-of-critical-values.png'
set multiplot layout 1,3

set margin 6.5,3.0,2.6,2.5
#           L   R   D   U



set key top left samplen 0.85 spacing 1.2
set grid xtics

# pt 4 = hollow squares

#------plot 1-------

set xlabel '|U|' offset 0,0.5
set xrange [0:10]
set yrange [-0.008:0.1]
set xtics 2 scale 0.5
set ytics 0.03

set title "L = 120\nN = 10 + 10" offset 0,-0.5 font " Bold"
plot \
'calculated_threshold_betac1_L=120_N=10,10_diffU.txt' index 0 u (abs($1)):2 w l title '{/Symbol b}_{c1}' lc rgb 'web-green' lw 2, \
'calculated_threshold_betac2_L=120_N=10,10_diffU.txt' index 0 u (abs($1)):2 w l title '{/Symbol b}_{c2}' lc rgb 'dark-violet'

#------plot 2-------

set xlabel 'N/L'
set xrange [0:1]
set xtics 0.5

set logscale y
set yrange [0.001:15]
set ytics 10


set title "U = –4\nL = 120"
plot \
'calculated_threshold_betac1_L=120_U=-4_diffN.txt' index 0 u ($1/120):2 w l title '{/Symbol b}_{c1}' lc rgb 'web-green' lw 2, \
'calculated_threshold_betac2_L=120_U=-4_diffN.txt' index 0 u ($1/120):2 w l title '{/Symbol b}_{c2}' lc rgb 'dark-violet'

#------plot 3-------

fit1(x) = a/x + aa
fit2(x) = b/x + bb
a = 1
aa = 1
b = 1
bb = 1

set xrange [100:200]

set fit quiet
fit fit1(x) 'calculated_threshold_betac1_Ninv=6_U=-4_diffL.txt' u 1:2 via a,aa
fit fit2(x) 'calculated_threshold_betac2_Ninv=6_U=-4_diffL.txt' u 1:2 via b,bb

set xlabel '1/L'
set xrange [0:0.04]
set xtics 0.02
unset logscale y
set yrange [-0.01:0.2]
set ytics 0.08

set key at graph 0.00,0.98

set title "U = –4\nN = L/12 + L/12"
plot \
'calculated_threshold_betac1_Ninv=6_U=-4_diffL.txt' index 0 u (1/$1):2 w l title '{/Symbol b}_{c1}' lc rgb 'web-green' lw 2, \
'calculated_threshold_betac2_Ninv=6_U=-4_diffL.txt' index 0 u (1/$1):2 w l title '{/Symbol b}_{c2}' lc rgb 'dark-violet', \
[0:0.01] fit1(1/x) w l title 'fits' lw 0.5 dt "__" lc rgb 'black', \
[0:0.01] fit2(1/x) w l notitle lw 0.5 dt "__" lc rgb 'black'