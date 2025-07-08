set terminal epslatex color standalone size 3,2 font ",8"
set output 'FIG_2_a.tex'

set xlabel "$t/\\tau_d$"
set ylabel "$n_{\\textrm{pack}}/N$"
set label "$\\beta\\kappa_{\\theta}/\\sigma = 10 $" at graph 0.5, 0.4 center
set label "$\\beta\\kappa_{\\phi}$" at graph 0.5, 0.7 center
#set xrange [*:*] reverse
set key top right
# set style data errorbars  <-- Not needed for line-only plot
set ytics 0.2
# Define unique line styles
set style line 1 lt 1 pt 7 lc rgb "black"  lw 1
set style line 2 lt 1 pt 5 lc rgb "red"    lw 1
set style line 3 lt 1 pt 13 lc rgb "blue"   lw 1
set style line 4 lt 1 pt 11 lc rgb "green"  lw 1

plot \
    'pack_kappaphi0.txt' every 90 using 1:2 w p ls 1 title "$0$", \
    'pack_kappaphi5.txt' every 90 using 1:2 w p ls 2 title "$5$", \
    'pack_kappaphi15.txt' every 90 using 1:2 w p ls 3 title "$15$", \
    'pack_kappaphi30.txt' every 90 using 1:2 w p ls 4 title "$30$"

