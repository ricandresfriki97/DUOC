const readline = require('readline');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

// Limpiar la pantalla
console.clear();

// Pedir la cantidad de hojas
rl.question("Ingresa la cantidad de hojas: ", (hojas) => {
    hojas = parseInt(hojas);
    const precioPorHoja = 20;
    let total = precioPorHoja * hojas;

    // Aplicar descuento si hay más de 30 hojas
    if (hojas > 30) {
        total *= 0.90; // Aplicar 10% de descuento
    }

    // Simular pausa antes de imprimir la boleta
    console.log("\nPresiona Enter para continuar...");
    rl.question("", () => {
        console.clear(); // Limpiar pantalla nuevamente

        // Imprimir la boleta
        console.log(`
            ----  BOLETA -----
            Cant. hojas:  ${hojas}
            Valor por hoja: $20
            TOTAL: $${total.toFixed(2)}
        `);

        rl.close(); // Cerrar la interfaz de entrada
    });
});

