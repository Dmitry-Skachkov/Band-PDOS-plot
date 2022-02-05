  set term postscript enh color font 'Times-Roman,24'
  set output 'bndspdos_paper.ps'
  set multiplot
  set origin 0., 0.
  set size 0.6, 1.0
  set rmargin 0
  set bmargin 0.5
  set noxzeroaxis
  set tics out
  set noxtics
  set nokey 
  set title ' '
  set border lw 1.5
  set yrange [  -4.47069632750694      :   5.05329231869306      ]
  set grid noytics
  set ylabel ' Energy (eV)'
  set style line 1 lt 1 lw 2 lc rgb '#FF0000'
  set xtics (' X ' 0.0,' {/Symbol G} ' 0.250,' Z ' 0.553,' T ' 0.935)
  plot 'BNDS.DAT'  using 1:2 with line lt 1 lw 2 lc rgb 'red', \
       'FERMI.DAT' using 1:2 with line lw 2.1 lc rgb 'black'
  set origin 0.6, 0.0
  set size 0.4, 1.0
  unset label
  set lmargin 0
  set title '  '
  unset xtics
  set xtics (5,10,15,20)
  set xrange[  0      :   17.8160251288940      ]
  unset ytics
  unset ylabel
  set label 'C@_{i}^{0}' at screen 0.98,0.07 right font 'Times-Roman, 22'
  set xlabel 'PDOS (number of state/(eV cell))' font 'Times-Roman, 22'
  set yrange [  -4.47069632750694      :   5.05329231869306      ]
  set key font ",20"
  set key samplen 2
  set xzeroaxis lw 2.1 lt 5 lc 'black'
  set key right top
  set style fill   solid 0.15 border
  plot "eds2.dat" using ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13):1  with filledcurve y1 lc 7 lt 1  lw 3 notitle,\
       "eds2.dat" using  3:1  with lines lc  3  lt  2  lw 2 title "N-2p  ", \
       "eds2.dat" using  7:1  with lines lc  4  lt  3  lw 2 title "Zn-3d ", \
       "eds2.dat" using 12:1  with lines lc  2  lt  2  lw 2 title "C-2p  ", \
       "eds2.dat" using ($2+$3+$4+$5+$6+$7+$8+$9+$10+$11+$12+$13):1  with lines lc 7 lt 1  lw 3 title "Total"
  unset multiplot


 