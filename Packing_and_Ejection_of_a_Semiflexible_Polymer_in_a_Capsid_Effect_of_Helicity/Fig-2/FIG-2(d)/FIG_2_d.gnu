set terminal epslatex color standalone size 3,2 font ",8"
set output 'FIG_2_d.tex'

set xlabel "Total packing time ($\\tau_{tot}/\\tau_d$)"
set ylabel "Pdf"
#set label "$\\beta\\kappa_{\\theta}$" at graph 0.6, 0.9 center

set key top right

# Bin setup
bin_width = 50
bin(x, width) = width * floor(x/width) + width/2.0
set style fill solid 0.5
set boxwidth bin_width

# Normalize by total number of data points to get probability
stats 'packtime_kphi5_10.txt' nooutput
N10 = STATS_records

stats 'packtime_kphi5_15.txt' nooutput
N15 = STATS_records

# Style definitions
set style line 2 lt 1 pt 5 lc rgb "red"    lw 2
set style line 3 lt 1 pt 13 lc rgb "blue"  lw 2

#set ylabel "Probability density"
set format y "%.1f"
set ytics format "%.1f"

set label "$\\beta\\kappa_{\\phi}/\\sigma $" at graph 0.6, 0.9 center
set label "$\\beta\\kappa_{\\phi} =5 $" at graph 0.6, 0.7 center
set label "$\\times 10^{-3}$" at graph 0.07, 0.95
# Multiply y values by 1000
plot \
    'packtime_kphi5_10.txt' using (bin($1,bin_width)):(1.0/(bin_width*N10)*1000) smooth freq with boxes ls 3 title "$10$", \
    'packtime_kphi5_15.txt' using (bin($1,bin_width)):(1.0/(bin_width*N15)*1000) smooth freq with boxes ls 2 title "$15$"

# Add *10^3 label near y-axis

