#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        float nota1, nota2, nota3, suma, promedio;
        char buffer[10];

        // Capturar las notas del usuario
        printf("Ingrese nota 1: ");
        fgets(buffer, sizeof(buffer), stdin);
        sscanf(buffer, "%f", &nota1);

        printf("Ingrese nota 2: ");
        fgets(buffer, sizeof(buffer), stdin);
        sscanf(buffer, "%f", &nota2);

        printf("Ingrese nota 3: ");
        fgets(buffer, sizeof(buffer), stdin);
        sscanf(buffer, "%f", &nota3);

        // Calcular la suma y el promedio
        suma = nota1 + nota2 + nota3;
        promedio = suma / 3;

        // Determinar el estado
        NSString *estado = (promedio >= 4.0) ? @"APROBADO" : @"REPROBADO";

        // Mostrar resultados
        NSLog(@"\n------ Resultados ----");
        NSLog(@"Promedio: %.2f", promedio);
        NSLog(@"Estado: %@", estado);
    }
    return 0;
}

