import java.util.Scanner;

public class Notas {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Capturar las notas del usuario
        System.out.print("Ingrese nota 1: ");
        float nota1 = scanner.nextFloat();

        System.out.print("Ingrese nota 2: ");
        float nota2 = scanner.nextFloat();

        System.out.print("Ingrese nota 3: ");
        float nota3 = scanner.nextFloat();

        // Calcular la suma y el promedio
        float suma = nota1 + nota2 + nota3;
        float promedio = suma / 3;

        // Determinar el estado
        String estado = (promedio >= 4.0) ? "APROBADO" : "REPROBADO";

        // Mostrar resultados
        System.out.println("\n------ Resultados ----");
        System.out.printf("Promedio: %.2f\n", promedio);
        System.out.println("Estado: " + estado);

        scanner.close();
    }
}

