unset key
set border lw 3
set term pngcairo enhanced size 1500,1000 font ",20"
set output "Wykres6.png"
set cbrange [0:1]
set yrange [-0.3:0.3]
set ytics 0.05
set ylabel "W (units of E_R)"
set cblabel "The fidelity of the approximate time-evolved state \n (compared to exact dynamics)"
set xrange [-0.1:0.1]
set xtics 0.025
set xlabel "Q (units of E_R)"
set palette functions sqrt(gray), gray**3, sin(gray*2*pi) 

set arrow from -0.1,0 to 0.1,0 lc rgb "white" dt (12,12) nohead front
set arrow from 0,-0.3 to 0,0.3 lc rgb "white" dt (12,12) nohead front
		
plot 'FidelityScan.p=3.a=1.0.g=0.70.wmin=-0.3.wmax=0.3.dw=0.002.hmin=-0.1.hmax=0.1.dh=0.001' nonuniform matrix u 1:2:3 w image
