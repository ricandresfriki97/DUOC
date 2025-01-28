import java.util.Scanner

fun main() {
    val scanner = Scanner(System.`in`)

    // Limpiar la pantalla (No siempre funciona en todas las terminales)
    print("\u001b[H\u001b[2J")
    System.out.flush()

    // Pedir la cantidad de hojas
    print("Ingresa la cantidad de hojas: ")
    val hojas = scanner.nextInt()

    // Calcular el total
    val precioPorHoja = 20
    var total = precioPorHoja * hojas

    // Aplicar descuento si hay más de 30 hojas
    if (hojas > 30) {
        total *= 0.90 // Aplica 10% de descuento
    }

    // Simular una pausa antes de imprimir la boleta
    print("\nPresiona Enter para continuar...")
    scanner.nextLine() // Consumir la línea pendiente
    scanner.nextLine() // Esperar que el usuario presione Enter

    // Limpiar pantalla nuevamente
    print("\u001b[H\u001b[2J")
    System.out.flush()

    // Imprimir la boleta
    println("""
        ----  BOLETA -----
        Cant. hojas:  $hojas
        Valor por hoja: $20
        TOTAL: $${"%.2f".format(total)}
    """.trimIndent())

    // Cerrar scanner
    scanner.close()
}

