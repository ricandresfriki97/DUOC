<?php
// Capturar las notas del usuario
echo "Ingrese nota 1: ";
$nota1 = (float) trim(fgets(STDIN));

echo "Ingrese nota 2: ";
$nota2 = (float) trim(fgets(STDIN));

echo "Ingrese nota 3: ";
$nota3 = (float) trim(fgets(STDIN));

// Calcular la suma y el promedio
$suma = $nota1 + $nota2 + $nota3;
$promedio = $suma / 3;

// Determinar el estado
$estado = ($promedio >= 4.0) ? "APROBADO" : "REPROBADO";

// Mostrar resultados
echo "\n------ Resultados ----\n";
printf("Promedio: %.2f\n", $promedio);
echo "Estado: $estado\n";
?>

