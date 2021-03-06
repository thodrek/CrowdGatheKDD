set ter postscript enhanced color eps "Helvetica" 30
set output "ebExtractionNotOpt.eps"
set boxwidth 2 absolute
set size square
set title "{/Helvetica-Bold Extraction Performance - Eventbrite"
set xlabel  "Budget"
set ylabel  "Extracted Events"
set datafile missing "-"
#set key outside bottom center horizontal
set nokey
set grid x y
set xtics (10,20,50,80,100)
set ytics (0,400,800,1300)
set xrange [10:105]
set yrange [0:1300]
set tics out
plot "ebExtraction.txt" using 1:2:3 with linespoints ls 1 pt 6 ps 3 lw 4 lt 1 lc rgb "red" title "Rand", \
     "ebExtraction.txt" using 1:4:5 with linespoints ls 2 pt 3 ps 3 lw 4 lt 1 lc rgb "black" title "RandL", \
     "ebExtraction.txt" using 1:6:7 with linespoints ls 3 pt 1 ps 3 lw 4 lt 1 lc rgb "red" title "BFS", \
     "ebExtraction.txt" using 1:16:17 with linespoints ls 0 pt 7 ps 3 lw 4 lt 1 lc rgb "black" title "RootChao",\
     "ebExtraction.txt" using 1:8:9 with linespoints ls 4 pt 2 ps 3 lw 4 lt 1 lc rgb "black" title "GSChao", \
     "ebExtraction.txt" using 1:10:11 with linespoints ls 5 pt 4 ps 3 lw 4 lt 1 lc rgb "cyan" title "GSHwang", \
     "ebExtraction.txt" using 1:12:13 with linespoints ls 6 pt 5 ps 3 lw 4 lt 1 lc rgb "blue" title "GSNewR"
