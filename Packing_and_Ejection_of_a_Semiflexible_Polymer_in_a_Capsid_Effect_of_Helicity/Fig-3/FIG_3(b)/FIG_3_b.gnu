set terminal epslatex color standalone size 3,2 font ",8"
set output 'FIG_3_b.tex'

set xlabel "$\\beta\\kappa_{\\phi}$"
set ylabel "$l_p[\\sigma]$"
#set label "$\\beta\\kappa_{\\theta}/\\sigma = 10 $" at graph 0.5, 0.4 center
set label "$\\beta\\kappa_{\\theta}/\\sigma$" at graph 0.4, 0.9 center
#set xrange [*:*] reverse
set key top left
# set style data errorbars  <-- Not needed for line-only plot
set ytics 10
# Define line styles
set style line 1 lt 1 pt 8 lc rgb "blue"  lw 2
set style line 2 lt 1 pt 4 lc rgb "dark-green"    lw 2 
set style line 3 lt 1 pt 6 lc rgb "red"  lw 2
set style line 4 lt 1 pt 11 lc rgb "green" lw 2
#set errorbars small             # or use: set errorbars 0.5
#set errorbars linecolor black linewidth 0.5 dashtype '.'
set errorbars 0.4 linewidth 1
#set errorbars 1.3
plot \
    'pers10.txt' using 1:2:3 w yerr ls 1  title "$10$", \
    '' using 1:2 with l ls 1 notitle, \
    'pers15.txt' using 1:2:3 with yerr ls 2 title "$15$", \
    '' using 1:2 with l ls 2 notitle , \
    'pers20.txt' using 1:2:3 with yerr ls 3 title "$15$", \
    '' using 1:2 with l ls 3 notitle 
