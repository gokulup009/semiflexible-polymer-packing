reset
set terminal epslatex standalone color size 3,2 font ',8'
set output 'FIG_7.tex'

set xlabel '$r/R$'
set ylabel '$p(r/R)$'
set label "$\\beta\\kappa_{\\theta}/\\sigma = 10 $" at graph 0.5, 0.9 center
set label "$\\beta\\kappa_{\\phi}$" at graph 0.5, 0.7 center
set label "$R=3.52\\sigma$" at graph 0.5, 0.5 center
set xr[:1]
set key top left
set yr[:9]
set ytics 2
set xtics 0.2
# KDE bandwidth
bandwidth = 0.1

# Line styles
set style line 1 lt 1 lw 2 lc rgb "black"
set style line 2 lt 1 lw 2 lc rgb "red"
set style line 3 lt 1 lw 2 lc rgb "blue"
set style line 4 lt 1 lw 2 lc rgb "green"

# Plot all KDE-smoothed curves
plot \
  'p0.txt'   using 1:(1.0/41100) smooth kdensity  with lines ls 1 title '$0$', \
  'p5.txt'   using 1:(1.0/105600) smooth kdensity  with lines ls 2 title '$5$', \
  'p15.txt'  using 1:(1.0/107800) smooth kdensity  with lines ls 3 title '$15$', \
  'p30.txt'  using 1:(1.0/68700) smooth kdensity  with lines ls 4 title '$30$'

