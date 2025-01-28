import strformat

# Limpiar pantalla (funciona en Linux/macOS, en Windows depende de la terminal)
proc clearScreen() =
  when defined(windows):
    discard execShellCmd("cls")
  else:
    discard execShellCmd("clear")

clearScreen()

# Pedir la cantidad de hojas
echo "Ingresa la cantidad de hojas: "
var hojas: int
discard readLine(stdin, hojas)

# Calcular el total
let precioPorHoja = 20
var total = precioPorHoja * hojas

# Aplicar descuento si hay más de 30 hojas
if hojas > 30:
  total = int(total * 0.90) # Aplica 10% de descuento

# Simular pausa antes de imprimir la boleta
echo "\nPresiona Enter para continuar..."
discard readLine(stdin)

clearScreen()

# Imprimir la boleta
echo fmt"""
    ----  BOLETA -----
    Cant. hojas:  {hojas}
    Valor por hoja: $20
    TOTAL: ${total}
"""

