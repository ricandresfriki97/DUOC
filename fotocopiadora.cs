using System;

class Program
{
    static void Main()
    {
        int hojas;
        double total;

        // Limpiar pantalla
        Console.Clear();

        // Se ingresa la cantidad de hojas
        Console.Write("Ingresa la cantidad de hojas: ");
        hojas = int.Parse(Console.ReadLine());

        // Cada hoja vale $20
        total = 20 * hojas;

        // Si hay más de 30 hojas, se aplica un 10% de descuento
        if (hojas > 30)
        {
            total *= 0.90;
        }

        // Pausar antes de limpiar pantalla
        Console.WriteLine("Presiona una tecla para continuar...");
        Console.ReadKey();

        // Limpiar pantalla
        Console.Clear();

        // Imprimir boleta
        Console.WriteLine("\n    ----  BOLETA -----");
        Console.WriteLine($"    Cant. hojas:  {hojas}");
        Console.WriteLine("    Valor por hoja $20");
        Console.WriteLine($"    TOTAL ${total:F2}");
    }
}

