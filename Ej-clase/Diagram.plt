# Diagrama del problema 5, ejercicios en clase 12
#
#fname = "data2.txt"
#
#set title 'Diagrama de presion-composicion'
set xlabel "Fraccion molar del tricloroetileno"
set ylabel "Presion de vapor (torr)"
set nokey
set xrange [0:1]
#
A=214
B=138
P1(x)=A+x*(B-A)
P2(x)=(A*B)/(B+x*(A-B))
#
plot P1(x),P2(x) with lines
#
set terminal png font "Helvetica,16" 
set output "figure10.png"
replot
pause -1

