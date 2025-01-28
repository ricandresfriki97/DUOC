import java.util.Scanner;

public class Boleta {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Limpiar pantalla (Solo funciona en algunas terminales)
        System.out.print("\033[H\033[2J");
        System.out.flush();

        // Pedir la cantidad de hojas
        System.out.print("Ingresa la cantidad de hojas: ");
        int hojas = scanner.nextInt();

        // Calcular el total
        int precioPorHoja = 20;
        double total = precioPorHoja * hojas;

        // Aplicar descuento si hay más de 30 hojas
        if (hojas > 30) {
            total *= 0.90; // Aplicar 10% de descuento
        }

        // Simular una pausa antes de mostrar la boleta
        System.out.print("Presiona Enter para continuar...");
        scanner.nextLine(); // Consumir el salto de línea pendiente
        scanner.nextLine(); // Esperar que el usuario presione Enter

        // Limpiar pantalla nuevamente
        System.out.print("\033[H\033[2J");
        System.out.flush();

        // Imprimir la boleta
        System.out.println("""
            ----  BOLETA -----
            Cant. hojas:  %d
            Valor por hoja: $20
            TOTAL: $%.2f
        """.formatted(hojas, total));

        // Cerrar scanner
        scanner.close();
    }
}

