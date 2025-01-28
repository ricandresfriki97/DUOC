import * as readlineSync from "readline-sync";

// Función para limpiar la pantalla
const limpiarPantalla = (): void => {
    console.clear();
};

// Solicitar la cantidad de hojas
limpiarPantalla();
const hojas: number = Number(readlineSync.question("Ingresa la cantidad de hojas: "));

// Definir el precio por hoja
const precioPorHoja: number = 20;

// Calcular el total sin descuento
let total: number = precioPorHoja * hojas;

// Aplicar un 10% de descuento si hay más de 30 hojas
if (hojas > 30) {
    total *= 0.90;
}

// Pausa antes de limpiar la pantalla
readlineSync.question("Presiona Enter para continuar...");

// Limpiar pantalla nuevamente
limpiarPantalla();

// Imprimir la boleta
console.log(`
    ----  BOLETA -----
    Cant. hojas:  ${hojas}
    Valor por hoja: $${precioPorHoja}
    TOTAL: $${total.toFixed(2)}
`);

