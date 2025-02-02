clear_screen <- function() {
    if (.Platform$OS.type == "unix") {
        system("clear")
    } else {
        system("cls")
    }
}
############################################
clear_screen()
#############################################
hojas <- as.integer(readline(prompt = "ingresa el numero de hojas: "))
#############################################
precio_por_hoja <- 20
total <- precio_por_hoja*hojas
#############################################
uf (hojas>30) {
    total <- total*0.90
}
#############################################
cat("\npresiona enter para continuar")
readline()
#############################################
clear_screen()
##############################################
cat("\n ********boleta********")
cat(" cantidad de hojas: ", hojas, "\n")
cat("precio por hoja:  $20\n")
cat("total a pagar: $", total, "\n")
##############################################
