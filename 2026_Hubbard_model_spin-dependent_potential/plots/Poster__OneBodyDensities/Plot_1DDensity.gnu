set term pngcairo enhanced dashed size 2400,750 lw 4 ps 2 font ",42"
set output '1DDensity.png'
set multiplot layout 1,3

unset key

set lmargin 4
set rmargin 3
set tmargin 2

# ===== 1D line plots =====

set xzeroaxis
unset x2tics
set xrange [1:120]
set xtics ("site 1" 1,"site L/2" 60,"site L" 120)
set grid xtics

set key at graph 0.82,0.95 samplen 2.4

set yrange [-0.01:0.400]
set ytics (0,0.2,0.4)

file1 = "SL__L=120__N=10,10__U=-2__Slope=0.003__Ini=clcn00__chi=400__1site_gs.dat"
file2 = "SL__L=120__N=10,10__U=-2__Slope=0.012__Ini=clcn00__chi=400__1site_gs.dat"
file3 = "SL__L=120__N=10,10__U=-2__Slope=0.022__Ini=clcn00__chi=400__1site_gs.dat"

up_spin_color = "#69C2FC"
down_spin_color = "#B01010"
doublon_color = "#11C012"
polarization_color = "#000000"
set dashtype 1234 (15,6) #doublon curve dash type

#---Plot 1---

set title '{/Symbol b} = 0.003' offset 0,-0.6 font ",48"
plot \
file1 index 0 u 1:2 w l lw 2 lc rgb up_spin_color title '⟨n_{j,↑}⟩', \
file1 index 0 u 1:3 w l lw 4 dt (4,7) lc rgb down_spin_color  title '⟨n_{j,↓}⟩', \
file1 index 0 u 1:6 w l lw 2 dt 1234 lc rgb doublon_color  title '⟨n_{j,D}⟩'



#---Plot 2---

set title '{/Symbol b} = 0.012' offset 0,-0.6
plot \
file2 index 0 u 1:2 w l lw 2 lc rgb up_spin_color title '⟨n_{j,↑}⟩', \
file2 index 0 u 1:3 w l lw 2 lc rgb down_spin_color  title '⟨n_{j,↓}⟩', \
file2 index 0 u 1:6 w l lw 2 dt 1234 lc rgb doublon_color  title '⟨n_{j,D}⟩'



#---Plot 3---

set title '{/Symbol b} = 0.022' offset 0,-0.6
plot \
file3 index 0 u 1:2 w l lw 2 lc rgb up_spin_color title '⟨n_{j,↑}⟩', \
file3 index 0 u 1:3 w l lw 2 lc rgb down_spin_color  title '⟨n_{j,↓}⟩', \
file3 index 0 u 1:6 w l lw 2 dt 1234 lc rgb doublon_color  title '⟨n_{j,D}⟩'

unset title

unset label 100