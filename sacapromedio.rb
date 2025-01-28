# Capturar las notas del usuario
print "Ingrese nota 1: "
nota1 = gets.chomp.to_f

print "Ingrese nota 2: "
nota2 = gets.chomp.to_f

print "Ingrese nota 3: "
nota3 = gets.chomp.to_f

# Calcular la suma y el promedio
suma = nota1 + nota2 + nota3
promedio = suma / 3.0

# Determinar el estado
estado = promedio >= 4.0 ? "APROBADO" : "REPROBADO"

# Mostrar resultados
puts "\n------ Resultados ----"
puts "Promedio: %.2f" % promedio
puts "Estado: #{estado}"

