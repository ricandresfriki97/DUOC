import Foundation

// Función para capturar y convertir la entrada del usuario
func obtenerNota(mensaje: String) -> Double {
    print(mensaje, terminator: " ")
    if let input = readLine(), let nota = Double(input) {
        return nota
    } else {
        print("Entrada no válida. Inténtalo de nuevo.")
        return obtenerNota(mensaje: mensaje) // Llamado recursivo si la entrada no es válida
    }
}

// Capturar las notas del usuario
let nota1 = obtenerNota(mensaje: "Ingrese nota 1:")
let nota2 = obtenerNota(mensaje: "Ingrese nota 2:")
let nota3 = obtenerNota(mensaje: "Ingrese nota 3:")

// Calcular la suma y el promedio
let suma = nota1 + nota2 + nota3
let promedio = suma / 3.0

// Determinar el estado
let estado = promedio >= 4.0 ? "APROBADO" : "REPROBADO"

// Mostrar resultados
print("\n------ Resultados ----")
print(String(format: "Promedio: %.2f", promedio))
print("Estado: \(estado)")

