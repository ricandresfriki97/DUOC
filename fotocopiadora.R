# Función para limpiar pantalla (compatible con Windows y Linux/macOS)
clear_screen <- function() {
  if (.Platform$OS.type == "windows") {
    shell("cls")  # Windows
  } else {
    system("clear")  # Linux/macOS
  }
}

clear_screen()

# Pedir la cantidad de hojas
hojas <- as.integer(readline(prompt = "Ingresa la cantidad de hojas: "))

# Calcular el total
precio_por_hoja <- 20
total <- precio_por_hoja * hojas

# Aplicar descuento si hay más de 30 hojas
if (hojas > 30) {
  total <- total * 0.90  # Aplica 10% de descuento
}

# Pausa antes de imprimir la boleta
cat("\nPresiona Enter para continuar...")
readline()  # Espera a que el usuario presione Enter

clear_screen()

# Imprimir la boleta
cat("\n    ----  BOLETA -----\n")
cat("    Cant. hojas: ", hojas, "\n")
cat("    Valor por hoja: $20\n")
cat("    TOTAL: $", total, "\n")

