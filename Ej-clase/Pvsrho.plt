# Datos del problema 5, ejercicios en clase 1
#
fname = "data1.txt"
#
set title 'Presion versus densidad para un gas desconocido a 300 K'
set xlabel "Densidad (g/L)"
set ylabel "Presion (bar)"
set format x "%1.1f"
#set mxtics 5
#set mytics 5
set nokey
set pointsize 2
#set xrange [0:0.12]
#
P(x) = m*x + b
fit P(x) fname using 1:2 via m,b
#
title_P(m,b) = sprintf('P(x) = %.4fx + %.2f', m, b)
set label title_P(m,b) at 2.5,1.2
#
plot fname u 1:2 title 'Datos' with  points, \
P(x) title title_P(m,b)
#
set terminal png font "Helvetica,16" 
set output "figure1.png"
replot
pause -1

