system("clear") || system("cls")
################################
print "ingresa la cantidad de hojas por favor"
hojas = gets.chomp.to_i
#################################
precio_por_hoja = 20
#################################
total = precio_por_hoja * hojas
##################################
total *= 0.90 if hojas > 30
###################################
puts "presiona enter para continuar"
####################################
gets
####################################
system("clear") || system("cls")
######################################
puts <<~Boleta
*********Boleta********
cantidad de hojas #{hojas}
valor por hoja $#{precio_por_hoja}
total $#{total.round(2)}
Boleta
#######################################
