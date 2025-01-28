#include <stdio.h>

int main() {
    float nota1, nota2, nota3, suma, promedio;
    
    // Pedir las notas al usuario
    printf("Ingrese nota 1: ");
    scanf("%f", &nota1);
    
    printf("Ingrese nota 2: ");
    scanf("%f", &nota2);
    
    printf("Ingrese nota 3: ");
    scanf("%f", &nota3);

    // Calcular la suma
    suma = nota1 + nota2 + nota3;
    
    // Limpiar pantalla (opcional, descomentar si se necesita)
    // system("clear"); // Para Linux y macOS
    // system("cls");   // Para Windows

    // Mostrar la suma
    printf("\nLa suma es: %.2f\n", suma);

    // Calcular el promedio
    promedio = suma / 3;

    // Determinar si está aprobado o reprobado
    if (promedio >= 4.0) {
        printf("------ Resultados ----\n");
        printf("Promedio: %.2f\n", promedio);
        printf("Estado: APROBADO\n");
    } else {
        printf("------ Resultados ----\n");
        printf("Promedio: %.2f\n", promedio);
        printf("Estado: REPROBADO\n");
    }

    return 0;
}

