import java,util.Scanner;
////////////////////////////////
public class fotocopiadora {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
////////////////////////////////
        System.out.print("\033[H\033[2J")
        System.out.flush()
////////////////////////////////
        System.out.print("ingresa la cantidad de hojas por favor");
        int hojas = scanner.nextInt();
//////////////////////////////////
        int precioPorHoja = 20
        double total = precioPorHoja * hojas
//////////////////////////////////
        if (hojas > 30) {
            total*= 0.90;
        } 
///////////////////////////////////
        System.out.print("presiona pra continuar")
        scanner.nextLine();
        scanner.nextLine();
////////////////////////////////////
        System.out.print("\033[H\033[2J")
        System.out.flush();
/////////////////////////////////////
        System.out.println("*******Boleta******
        cantidad de hojas %d
        valor por hoja: $20
        TOTAL $%.2f
        ".formatted(hojas, total));
///////////////////////////////////////
        scanner.close();                                                               
    }
}
/////////////////////////////////////////
