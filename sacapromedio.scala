import scala.io.StdIn.readLine

object CalculadoraNotas {
  def main(args: Array[String]): Unit = {
    // Capturar las notas del usuario
    val nota1 = obtenerNota("Ingrese nota 1: ")
    val nota2 = obtenerNota("Ingrese nota 2: ")
    val nota3 = obtenerNota("Ingrese nota 3: ")

    // Calcular la suma y el promedio
    val suma = nota1 + nota2 + nota3
    val promedio = suma / 3.0

    // Determinar el estado
    val estado = if (promedio >= 4.0) "APROBADO" else "REPROBADO"

    // Mostrar resultados
    println("\n------ Resultados ----")
    println(f"Promedio: $promedio%.2f")
    println(s"Estado: $estado")
  }

  // Función para leer una nota y convertirla en Double
  def obtenerNota(mensaje: String): Double = {
    print(mensaje)
    readLine().toDouble
  }
}

