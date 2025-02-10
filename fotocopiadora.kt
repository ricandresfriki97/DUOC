import java.util.Scanner
////////////////////////////
fun main() {
    val scanner = Scanner(System.`in`)
/////////////////////////////
    print("\u001b[H\u001b[2J")
    System.out.flush()
/////////////////////////////
    print("ingresa la cantidad de hojas por favor")
    val hojas = scanner.nextInt()
//////////////////////////////
    val precioPorHoja = 20
    var total = precioPorHoja * hojas
///////////////////////////////
    if (hojas > 30) {
        total *= 0.90
    }
///////////////////////////////
    print("\n presiona para continuar")
    scanner.nextLine()
    scanner.nextLine()
////////////////////////////////
    print("\u001b[H\u001b[2J")
    System.out.flush()
////////////////////////////////
    println(""" 
    *********boleta********
    cantidad de hojas: $hojas
    valor por hoja: $20
    total: $${"%.2f".format(total)}




    """.trimIndent())
//////////////////////////////////
    scanner.close()                                
}
//////////////////////////////////

