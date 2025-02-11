import strformat
##########################
proc clearScreen() =
    when define(windows):
     discard exeShellCmd("cls")
    else:
     discard execShellcmd("clear")
###########################
clearScreen()
###########################
echo "ingresa la cantidad de hojas por favor"
var hojas: int  
discard readLine(stdin, hojas)
#############################
let precioPorHoja = 20
var total = precioPorHoja * hojas
##############################
if hojas >30:
   total = int(total * 0.90)
##############################
echo "\n presiona enter para continuar"
discard readLine(stdin)
##############################
clearScreen()
##############################
echo fmt"""

********Boleta*********
cantidad de hojas {hojas}
valor por hojas $20
total ${total}


"""
###############################       
