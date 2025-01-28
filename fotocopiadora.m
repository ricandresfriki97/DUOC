#import <Foundation/Foundation.h>

void clearScreen() {
    system("clear"); // Usa "cls" en Windows si es necesario
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        clearScreen();
        
        // Pedir la cantidad de hojas
        int hojas;
        NSLog(@"Ingresa la cantidad de hojas: ");
        scanf("%d", &hojas);
        
        // Calcular el total
        int precioPorHoja = 20;
        float total = precioPorHoja * hojas;
        
        // Aplicar descuento si hay más de 30 hojas
        if (hojas > 30) {
            total *= 0.90; // Aplica 10% de descuento
        }
        
        // Simular pausa antes de imprimir la boleta
        NSLog(@"\nPresiona Enter para continuar...");
        getchar(); // Consumir el salto de línea pendiente
        getchar(); // Esperar que el usuario presione Enter
        
        clearScreen();
        
        // Imprimir la boleta
        NSLog(@"\n    ----  BOLETA -----");
        NSLog(@"    Cant. hojas:  %d", hojas);
        NSLog(@"    Valor por hoja: $20");
        NSLog(@"    TOTAL: $%.2f", total);
    }
    return 0;
}

