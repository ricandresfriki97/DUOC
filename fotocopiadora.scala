import scala.io.StdIn
////////////////////////////////
object fotocopiadora {
    def main(args: Array [String]): Unit = {
        if(System.getProperty("os.name").toLowerCase().contains("windows")) {
           new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor() 
         } else {
            new ProcessBuilder("clear").inheritIO().start.waitFor()
         }
///////////////////////////////////
            print("ingresa la cantidad de hojas por favor")
            val hojas = StdIn.readInt()
///////////////////////////////////
            val precioPorHoja = 20
////////////////////////////////////
            var total = precioPorHoja * hojas
/////////////////////////////////////
            if (hojas > 30) {
                total = (total * 0.90).toInt
            }
//////////////////////////////////////
            println("presiona enter para continuar")
            StdIn.readLine()
////////////////////////////////////////
            if (System.getProperty("os.name").toLowerCase().contains("windows")) { 
                new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor()
            }  else {
                new ProcessBuilder("clear").inheritIO().start().waitFor()
            }
/////////////////////////////////////////

            println(
                s"""""
                *******boleta******
                cantidad de hojas $hojas
                valor por hoja $$20
                total $$total
                """
        )
    }             
}
////////////////////////////////////////////
