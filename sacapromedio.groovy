// Función principal
def main() {
    // Capturar las notas del usuario
    print "Ingrese nota 1: "
    def nota1 = System.console().readLine().toFloat()

    print "Ingrese nota 2: "
    def nota2 = System.console().readLine().toFloat()

    print "Ingrese nota 3: "
    def nota3 = System.console().readLine().toFloat()

    // Calcular la suma y el promedio
    def suma = nota1 + nota2 + nota3
    def promedio = suma / 3

    // Determinar el estado
    def estado = promedio >= 4.0 ? "APROBADO" : "REPROBADO"

    // Mostrar resultados
    println "\n------ Resultados ----"
    println "Promedio: ${String.format('%.2f', promedio)}"
    println "Estado: $estado"
}

// Ejecutar el programa
main()

