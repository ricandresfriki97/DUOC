import * as readlineSync from "readline-sync";

// Función para capturar y convertir la entrada del usuario
function obtenerNota(mensaje: string): number {
    let nota = parseFloat(readlineSync.question(mensaje + " "));
    if (isNaN(nota)) {
        console.log("Entrada no válida. Inténtalo de nuevo.");
        return obtenerNota(mensaje);
    }
    return nota;
}

// Capturar las notas del usuario
const nota1: number = obtenerNota("Ingrese nota 1:");
const nota2: number = obtenerNota("Ingrese nota 2:");
const nota3: number = obtenerNota("Ingrese nota 3:");

// Calcular la suma y el promedio
const suma: number = nota1 + nota2 + nota3;
const promedio: number = suma / 3.0;

// Determinar el estado
const estado: string = promedio >= 4.0 ? "APROBADO" : "REPROBADO";

// Mostrar resultados
console.log("\n------ Resultados ----");
console.log(`Promedio: ${promedio.toFixed(2)}`);
console.log(`Estado: ${estado}`);

