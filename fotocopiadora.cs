using System;
/////////////////////
class fotocopiadora
{

    static void main()
    {
        int hojas;
        double total;


    
////////////////////////
        Console.clear();
////////////////////////
        Console.write("ingresa la cantidad de hojas por favor");
        hojas - int.Parse(Console.ReadLine());
////////////////////////
        total = 20 * hojas;
        if (hojas > 30)
        {
            total*= 0.90;
        }
//////////////////////////
        Console.writeLine("Presiona una tecla para continuar")
        Console.ReadKey();
//////////////////////////
        Console.Clear();
//////////////////////////                
        Console.writeLine("\n *****BOLETA*******");
        Console.writeLine("$ cantidad de hojas {hojas}");
        Console.writeLine("valor por hojas $20");
        Console.writeLine("TOTAL $ {total: F2}");
    }
}
/////////////////////////
