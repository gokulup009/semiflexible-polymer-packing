set terminal epslatex color standalone size 3,2 font ",8"
set output 'FIG_4.tex'

set xlabel "$\\beta\\kappa_{\\phi}$"
set ylabel " Total packing time ($\\tau_{tot}/\\tau_d$)"
set label "$\\beta\\kappa_{\\theta}/\\sigma = 10 $" at graph 0.5, 0.5 center

#set xrange [*:*] reverse
set key top left
# set style data errorbars  <-- Not needed for line-only plot
#set ytics 0.2
# Define line styles
set style line 1 lt 1 pt 7 lc rgb "black"  lw 2
set style line 3 lt 1 pt 5 lc rgb "red"    lw 1 
set style line 2 lt 1 pt 7 lc rgb "blue"  lw 2
set style line 4 lt 1 pt 11 lc rgb "green" lw 2
#set errorbars small             # or use: set errorbars 0.5
#set errorbars linecolor black linewidth 0.5 dashtype '.'
set errorbars 0.4 linewidth 1
#set errorbars 1.3
plot \
    'U_wall=0/totalpack10_stderr.txt' using 1:2:3 w yerr ls 2  title "$U_{wall}=0$", \
    '' using 1:2 with l ls 2 notitle, \
    'U_wall wca/totalpack10_stderr.txt' using 1:2:3 with yerr ls 3 title "$U_{wall}\\neq0$", \
    '' using 1:2 with l ls 3 notitle 
