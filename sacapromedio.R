# Capturar las notas del usuario
nota1 <- as.numeric(readline("Ingrese nota 1: "))
nota2 <- as.numeric(readline("Ingrese nota 2: "))
nota3 <- as.numeric(readline("Ingrese nota 3: "))

# Calcular la suma y el promedio
suma <- nota1 + nota2 + nota3
promedio <- suma / 3

# Determinar el estado
estado <- ifelse(promedio >= 4.0, "APROBADO", "REPROBADO")

# Mostrar resultados
cat("\n------ Resultados ----\n")
cat(sprintf("Promedio: %.2f\n", promedio))
cat("Estado:", estado, "\n")

