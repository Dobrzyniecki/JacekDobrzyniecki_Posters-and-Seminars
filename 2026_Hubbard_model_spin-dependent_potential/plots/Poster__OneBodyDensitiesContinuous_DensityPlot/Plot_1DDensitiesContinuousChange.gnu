image_height = 1010
set term pngcairo enhanced dashed size 2000,image_height lw 4 ps 2 font ",42"
set output '1DDensitiesContinuousChange.png'
set multiplot

unset key

set tmargin 0
set bmargin 0
set lmargin 0
set rmargin 0

# ===== 2D density plots + NDoublon plots =====

density_plot_height_relative = 420.0/image_height
density_plot_distance_relative = 120.0/image_height
density_plot_left_edge_relative = 0.14
density_plot_width_relative = 0.88
density_plot_top_edge_relative = 0.15

doublon_plot_height_relative = 300.0/image_height
doublon_plot_width_relative = 0.738

minbeta = 0
maxbeta = 0.03

# Determine the origins & size of the three plots in this section.

## w, h: size in relative units of entire image's dimensions (0.5 = take up half of the png)

plot_1_size_w = density_plot_width_relative
plot_1_size_h = density_plot_height_relative
plot_2_size_w = doublon_plot_width_relative
plot_2_size_h = doublon_plot_height_relative

## x, y: LEFT BOTTOM corner position in relative units of entire image's dimensions
## x=0 = left ... x=1 = right
## y=1 = top ... y=0 = bottom
## If x,y = 0,1-plot_height, then the plot's TOP LEFT corner will be flush with the image's TOP LEFT corner

plot_1_origin_x = density_plot_left_edge_relative
plot_1_origin_y = 1-density_plot_top_edge_relative-plot_1_size_h
plot_2_origin_x = density_plot_left_edge_relative
plot_2_origin_y = 1-density_plot_top_edge_relative-plot_1_size_h-plot_2_size_h-density_plot_distance_relative

#------Row 1-------

length = 120
set xrange [0:maxbeta]
set x2range [0:maxbeta]
set x2label 'external potential gradient β' offset 0,-0.6
set xtics out
set x2tics 0.005
set x2tics format
set xtics format ""

set yrange [length:1]
set ytics ("site 1" 1,"site L/2" length/2,"site L" length)
unset ylabel

set size plot_1_size_w,plot_1_size_h
set origin plot_1_origin_x,plot_1_origin_y

set cbtics 0.1 font ",32"
set cbrange [0.00:0.38]
set palette defined (0 '#000000', 0.33 '#11bbff', 1 '#ffffff')

plot 'combined_density_plot_data__U=-2.dat' u 1:2:3 w image

#------Row 2-------

unset x2label
set x2tics format ""
set x2tics out nomirror
set xtics in nomirror
set size plot_2_size_w,plot_2_size_h
set origin plot_2_origin_x,plot_2_origin_y

set grid ytics,mytics

set yrange [-0.8:5.2]
set ytics 1
set mytics 1
plot '_rescaled_doublon_numbers_N=10,10_L=120_U=-2.dat' u 1:2 w l notitle

unset label 100
unset xlabel
unset x2tics
unset grid
set xtics 0.01

# ===== Dummy plot (only to draw arrows) =====


top_plot_top_edge = plot_1_origin_y+plot_1_size_h
bottom_plot_bottom_edge = plot_1_origin_y

point_above_three_plots = 0.28

minbeta_x = density_plot_left_edge_relative
maxbeta_x = density_plot_left_edge_relative+density_plot_width_relative*0.84



# --- Set up the lines indicating the two critical beta values ---
beta_critical_1 = 0.0049
beta_critical_1_x = minbeta_x+(maxbeta_x-minbeta_x)*((beta_critical_1-minbeta)/(maxbeta-minbeta))
beta_critical_2 = 0.0185
beta_critical_2_x = minbeta_x+(maxbeta_x-minbeta_x)*((beta_critical_2-minbeta)/(maxbeta-minbeta))

# ---- place labels indicating the two critical beta values ----

set label 2 "{/Symbol b}_{c1}" textcolor "white" at screen (beta_critical_1_x)-0.006,(top_plot_top_edge+bottom_plot_bottom_edge)*0.420 right font ",60" front
set label 3 "{/Symbol b}_{c2}" textcolor "white" at screen (beta_critical_2_x)+0.075,(top_plot_top_edge+bottom_plot_bottom_edge)*0.420 right font ",60" front

# ---- draw critical-beta lines on the 2d plot ----
set arrow 99 from screen beta_critical_1_x,bottom_plot_bottom_edge to screen beta_critical_1_x,top_plot_top_edge front lc rgb "white" lw 3 dt 3 nohead
set arrow 999 from screen beta_critical_2_x,bottom_plot_bottom_edge to screen beta_critical_2_x,top_plot_top_edge front lc rgb "white" lw 3 dt 3 nohead

set size 0.5,0.5
set origin -10,-10
plot NaN

unset arrow 1
unset arrow 11
unset arrow 2
unset arrow 22
unset arrow 3
unset arrow 33
unset label 2
unset label 3