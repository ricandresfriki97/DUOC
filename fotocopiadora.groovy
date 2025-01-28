// Limpiar pantalla (no funciona en todas las consolas, pero es opcional)
print "\033[H\033[2J"

// Solicitar la cantidad de hojas
print "Ingresa la cantidad de hojas: "
int hojas = System.console().readLine() as Integer

// Calcular el precio total
int precioPorHoja = 20
int total = precioPorHoja * hojas

// Aplicar descuento si hay más de 30 hojas
if (hojas > 30) {
    total = (total * 0.90) as Integer // Aplicar 10% de descuento
}

// Simular una pausa antes de mostrar la boleta
print "Presiona Enter para continuar..."
System.console().readLine()

// Limpiar pantalla nuevamente
print "\033[H\033[2J"

// Imprimir la boleta
println """
    ----  BOLETA -----
    Cant. hojas:  ${hojas}
    Valor por hoja: $${precioPorHoja}
    TOTAL: $${total}  
"""

