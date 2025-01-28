// Función principal
function main() {
    // Capturar las notas del usuario
    let nota1 = parseFloat(prompt("Ingrese nota 1: "));
    let nota2 = parseFloat(prompt("Ingrese nota 2: "));
    let nota3 = parseFloat(prompt("Ingrese nota 3: "));

    // Calcular la suma y el promedio
    let suma = nota1 + nota2 + nota3;
    let promedio = suma / 3;

    // Determinar el estado
    let estado = promedio >= 4.0 ? "APROBADO" : "REPROBADO";

    // Mostrar resultados
    console.log("\n------ Resultados ----");
    console.log(`Promedio: ${promedio.toFixed(2)}`);
    console.log(`Estado: ${estado}`);
}

// Ejecutar la función
main();

