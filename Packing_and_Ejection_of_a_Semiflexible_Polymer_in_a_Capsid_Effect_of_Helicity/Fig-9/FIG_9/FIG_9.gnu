reset
set terminal epslatex standalone color size 3.5,2 font ',8'
set output 'FIG_9.tex'

set xlabel '$\psi(L)$'
set ylabel '$p(\psi(L))$'
set label "$\\beta\\kappa_{\\theta}/\\sigma = 10 $" at graph 0.2, 0.9 center
set label "$\\beta\\kappa_{\\phi}$" at graph 0.5, 0.3 center
#set label "$R=3.52\\sigma$" at graph 0.5, 0.5 center
set xr[-17:17]
set key top right
#set yr[:9]
#set ytics 2
#set xtics 0.2
# KDE bandwidth
bandwidth = 0.01

# Line styles
set style line 1 lt 1 lw 3 lc rgb "black"
set style line 2 lt 1 lw 3 lc rgb "red"
set style line 3 lt 1 lw 3 lc rgb "blue"
set style line 4 lt 1 lw 3 lc rgb "dark-green"

# Plot all KDE-smoothed curves
plot \
  'turn0.txt'   using 1:(1.0/1222) smooth kdensity  with lines ls 1 title '$0$', \
  'turn5.txt'   using 1:(1.0/1377) smooth kdensity  with lines ls 2 title '$5$', \
  'turn15.txt'  using 1:(1.0/1171) smooth kdensity  with lines ls 3 title '$15$', \
  'turn30.txt'  using 1:(1.0/222) smooth kdensity  with lines ls 4 title '$30$'

