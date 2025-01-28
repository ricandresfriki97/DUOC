#include <stdio.h>

int main() {
    int hojas;
    float total;

    // Limpiar pantalla (solo en Windows)
    system("cls");

    // Se ingresa la cantidad de hojas
    printf("Ingresa la cantidad de hojas: ");
    scanf("%d", &hojas);

    // Cada hoja vale $20
    total = 20 * hojas;

    // Si hay más de 30 hojas, se aplica un 10% de descuento
    if (hojas > 30) {
        total = total * 0.90;
    }

    // Pausa antes de limpiar pantalla (solo en Windows)
    system("pause");

    // Limpiar pantalla (solo en Windows)
    system("cls");

    // Imprimir boleta
    printf("\n    ----  BOLETA -----\n");
    printf("    Cant. hojas:  %d\n", hojas);
    printf("    Valor por hoja $20\n");
    printf("    TOTAL $%.2f\n", total);

    return 0;
}

