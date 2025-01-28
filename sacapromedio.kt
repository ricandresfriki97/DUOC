fun main() {
    // Capturar las notas del usuario
    print("Ingrese nota 1: ")
    val nota1 = readLine()?.toFloatOrNull() ?: 0.0f

    print("Ingrese nota 2: ")
    val nota2 = readLine()?.toFloatOrNull() ?: 0.0f

    print("Ingrese nota 3: ")
    val nota3 = readLine()?.toFloatOrNull() ?: 0.0f

    // Calcular la suma y el promedio
    val suma = nota1 + nota2 + nota3
    val promedio = suma / 3

    // Determinar el estado
    val estado = if (promedio >= 4.0) "APROBADO" else "REPROBADO"

    // Mostrar resultados
    println("\n------ Resultados ----")
    println("Promedio: %.2f".format(promedio))
    println("Estado: $estado")
}

