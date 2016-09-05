set ter postscript enhanced color eps "Helvetica" 30
set output "budget.eps"
set boxwidth 2 absolute
set title "{/Helvetica-Bold Gain with Step Cost - PeopleInNews"
set xlabel  "Budget"
set ylabel  "Extracted People"
set datafile missing "-"
set key outside bottom center horizontal
set grid x y
#set xtics (0,10,20,50,80,100,200,500,1000)
set ytics (0,300,600,900)
set tics out
set yrange[0:900]
plot "budget.dat" using 1:2 with linespoints ls 2 pt 3 ps 3 lw 4 lt 1 lc 7 title "RandL", \
     "budget.dat" using 1:3 with linespoints ls 3 pt 1 ps 3 lw 4 lt 1 lc 8 title "BFS", \
     "budget.dat" using 1:4 with linespoints ls 0 pt 7 ps 3 lw 4 lt 1 lc -1 title "RootChao", \
     "budget.dat" using 1:5 with linespoints ls 4 pt 4 ps 3 lw 4 lt 1 lc 0 title "GSChao", \
     "budget.dat" using 1:6 with linespoints ls 7 pt 11 ps 3 lw 4 lt 1 lc rgb "green" title "GSExact"
