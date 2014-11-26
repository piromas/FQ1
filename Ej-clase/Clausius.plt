# Datos del problema 3, ejercicios en clase 11
#
fname = "data2.txt"
#
set title 'Presion de vapor del mercurio a distintas temperaturas'
set xlabel "1/(T/K)"
set ylabel "Log (P/mmHg)"
#set format x "%1.1f"
#set mxtics 5
#set mytics 5
set nokey
set pointsize 2
#set xrange [0:0.12]
#
y(x) = m*x + b
fit y(x) fname using 1:2 via m,b
#
title_y(m,b) = sprintf('y(x) = %.4fx + %.2f', m, b)
set label title_y(m,b) at 0.00273,-1
#
plot fname u 1:2 title 'Datos' with  points, \
y(x) title title_y(m,b)
#
set terminal png font "Helvetica,16" 
set output "figure8.png"
replot
pause -1

