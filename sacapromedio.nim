import strformat

# Capturar las notas del usuario
echo "Ingrese nota 1: "
let nota1 = parseFloat(readLine(stdin))

echo "Ingrese nota 2: "
let nota2 = parseFloat(readLine(stdin))

echo "Ingrese nota 3: "
let nota3 = parseFloat(readLine(stdin))

# Calcular la suma y el promedio
let suma = nota1 + nota2 + nota3
let promedio = suma / 3

# Determinar el estado
let estado = if promedio >= 4.0: "APROBADO" else: "REPROBADO"

# Mostrar resultados
echo "\n------ Resultados ----"
echo &"Promedio: {promedio:.2f}"
echo "Estado: ", estado

