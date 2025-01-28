using System;

class Program
{
    static void Main()
    {
        float nota1, nota2, nota3, suma, promedio;
        
        // Pedir las notas al usuario
        Console.Write("Ingrese nota 1: ");
        nota1 = float.Parse(Console.ReadLine());

        Console.Write("Ingrese nota 2: ");
        nota2 = float.Parse(Console.ReadLine());

        Console.Write("Ingrese nota 3: ");
        nota3 = float.Parse(Console.ReadLine());

        // Calcular la suma
        suma = nota1 + nota2 + nota3;

        // Limpiar pantalla (opcional, descomentar si se necesita)
        // Console.Clear();

        // Mostrar la suma
        Console.WriteLine($"\nLa suma es: {suma:F2}");

        // Calcular el promedio
        promedio = suma / 3;

        // Determinar si está aprobado o reprobado
        string estado = (promedio >= 4.0) ? "APROBADO" : "REPROBADO";

        // Imprimir resultados
        Console.WriteLine("\n------ Resultados ----");
        Console.WriteLine($"Promedio: {promedio:F2}");
        Console.WriteLine($"Estado: {estado}");
    }
}

