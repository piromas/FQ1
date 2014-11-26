# Figura del problema 4, ejercicios en clase 5
#
set title 'Cambio de entalpia en el calentamiento del Sodio' font "calibri,20"
set xlabel "Temperatura (K)" font "calibri,20"
set ylabel "H(T)-H(0) (kJ/mol)" font "calibri,20"
#set mxtics 5
#set mytics 5
set nokey
set xrange [0:1500]
#
f(x) =            0.0282 * x
g(x) = 12.7802  + 0.0327 * (x-361)
h(x) = 136.1767 + 0.0208 * (x-1156)
#
set samples 10000
plot x <= 361 ? f(x) : x <= 1156 ? g(x) : h(x)
#
set terminal png font "/Library/Fonts/Verdana.ttf,14" 
set output "figure3.png"
replot
pause -1

