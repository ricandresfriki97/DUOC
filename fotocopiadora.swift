import Foundation

// Limpiar pantalla (solo funciona en macOS y Linux)
func limpiarPantalla() {
    print("\u{1B}[2J")
}

// Solicitar la cantidad de hojas
limpiarPantalla()
print("Ingresa la cantidad de hojas: ", terminator: "")
guard let input = readLine(), let hojas = Int(input) else {
    print("Entrada no válida.")
    exit(1)
}

// Definir el precio por hoja
let precioPorHoja = 20

// Calcular el total sin descuento
var total = precioPorHoja * hojas

// Aplicar un 10% de descuento si hay más de 30 hojas
if hojas > 30 {
    total = Int(Double(total) * 0.90)
}

// Pausa antes de limpiar la pantalla
print("Presiona Enter para continuar...")
_ = readLine()

// Limpiar pantalla nuevamente
limpiarPantalla()

// Imprimir la boleta
print("""
    ----  BOLETA -----
    Cant. hojas:  \(hojas)
    Valor por hoja: $\(precioPorHoja)
    TOTAL: $\(total)
""")

