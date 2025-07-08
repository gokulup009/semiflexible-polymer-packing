set terminal epslatex color standalone size 3,2 font ",8"
set output 'FIG_3_a.tex'

set xlabel "$s[\\sigma]$"
set ylabel "$C(s)$"

# Add labels for context
set label "$\\beta\\kappa_{\\theta}/\\sigma = 10$" at graph 0.5, 0.9 center
set label "$\\beta\\kappa_{\\phi}$" at graph 0.5, 0.8 center

set key top right
set ytics 0.5
#set grid
set yrange[-0.8:]
# Define line styles
set style line 1 lt 1 pt 7  lc rgb "black"  lw 1
set style line 2 lt 1 pt 5  lc rgb "red"    lw 1
set style line 3 lt 1 pt 13 lc rgb "blue"   lw 1
set style line 4 lt 1 pt 11 lc rgb "green"  lw 1

# Plot curves with point markers (using every 90th point to reduce clutter)
plot \
    'C10_kphi0.txt' using 1:2 with points ls 1 title "$0$", \
    'C10_kphi5.txt' using 1:2 with points ls 2 title "$5$", \
    'C10_kphi15.txt' using 1:2 with points ls 3 title "$15$", \
    'C10_kphi25.txt' using 1:2 with points ls 4 title "$25$",\
    'C10_kphi0.txt' using 1:3 with l ls 1 notitle, \
    'C10_kphi5.txt' using 1:3 with l ls 2 notitle, \
    'C10_kphi15.txt' using 1:3 with l ls 3 notitle, \
    'C10_kphi25.txt' using 1:3 with l ls 4 notitle

