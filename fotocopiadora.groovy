print "\033[H\[033"
//////////////////////////
print "ingresa la cantidad de hojas por favor"
int hojas = System.console().readLine() as Integer
//////////////////////////
int precioPorHoja = 20
int total = precioPorHoja * hojas
//////////////////////////
if (hojas > 30) {
    total = (total * 0.90) as Integer
}
//////////////////////////
print "presiona enter para continuar"
System.console().readLine()
//////////////////////////
print "\033[H\033[2J"
//////////////////////////
println"""
*******Boleta****
cantidad de hojas$ ${precioPorHoja}
TOTAL: $${total}
"""
//////////////////////////
