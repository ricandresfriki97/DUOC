# Limpiar la pantalla (solo funciona en sistemas compatibles con clear)
system("clear") || system("cls")

# Solicitar la cantidad de hojas al usuario
print "Ingresa la cantidad de hojas: "
hojas = gets.chomp.to_i

# Definir el precio por hoja
precio_por_hoja = 20

# Calcular el total sin descuento
total = precio_por_hoja * hojas

# Aplicar un 10% de descuento si hay más de 30 hojas
total *= 0.90 if hojas > 30

# Pausa antes de limpiar la pantalla (solo funciona en Windows)
puts "Presiona Enter para continuar..."
gets

# Limpiar la pantalla nuevamente
system("clear") || system("cls")

# Imprimir la boleta
puts <<~BOLETA
    ----  BOLETA -----
    Cant. hojas:  #{hojas}
    Valor por hoja: $#{precio_por_hoja}
    TOTAL: $#{total.round(2)}
BOLETA

