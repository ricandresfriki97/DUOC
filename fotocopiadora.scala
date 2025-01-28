import scala.io.StdIn

object BoletaApp {
  def main(args: Array[String]): Unit = {
    // Limpiar la pantalla (solo en sistemas compatibles con "clear" o "cls")
    if (System.getProperty("os.name").toLowerCase().contains("windows")) {
      new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor()
    } else {
      new ProcessBuilder("clear").inheritIO().start().waitFor()
    }

    // Solicitar la cantidad de hojas al usuario
    print("Ingresa la cantidad de hojas: ")
    val hojas = StdIn.readInt()

    // Definir el precio por hoja
    val precioPorHoja = 20

    // Calcular el total sin descuento
    var total = precioPorHoja * hojas

    // Aplicar un 10% de descuento si hay más de 30 hojas
    if (hojas > 30) {
      total = (total * 0.90).toInt
    }

    // Pausa antes de limpiar la pantalla
    println("Presiona Enter para continuar...")
    StdIn.readLine()

    // Limpiar la pantalla nuevamente
    if (System.getProperty("os.name").toLowerCase().contains("windows")) {
      new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor()
    } else {
      new ProcessBuilder("clear").inheritIO().start().waitFor()
    }

    // Imprimir la boleta
    println(
      s"""
      ----  BOLETA -----
      Cant. hojas:  $hojas
      Valor por hoja: $$20
      TOTAL: $$total
      """
    )
  }
}

