set terminal epslatex color standalone size 3,2 font ",8"
set output 'FIG_11_b.tex'

set xlabel "$n_{pack}/N$"
set ylabel " $w(n_{pack})$"
set label "$\\beta\\kappa_{\\theta}/\\sigma = 10 $" at graph 0.5, 0.9 center
set label "$\\beta\\kappa_{\\phi}$" at graph 0.5, 0.6 center
set xrange [*:*] reverse
set key top right
# set style data errorbars  <-- Not needed for line-only plot
set xtics 0.2
set ytics 10
# Define line styles
set style line 1 lt 1 lc rgb "black"  lw 4
set style line 2 lt 1 lc rgb "red"    lw 4 
set style line 3 lt 1 lc rgb "blue"  lw 4
set style line 4 lt 1 lc rgb "green" lw 4
#set errorbars small             # or use: set errorbars 0.5
#set errorbars linecolor black linewidth 0.5 dashtype '.'
set errorbars 0.4 linewidth 1
#set errorbars 1.3
plot \
    'watunpackphi0.txt' using 1:2 w l ls 1  title "$0$", \
    'watunpackphi5.txt' using 1:2 with l ls 2 title "$5$", \
    'watunpackphi15.txt' using 1:2 with l ls 3 title "$15$", \
    'watunpackphi30.txt' using 1:2 with l ls 4 title "$30$"
