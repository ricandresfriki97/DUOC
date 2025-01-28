import java.util.Scanner;

public class calculadora {
    public static void main (String[] args) {
        Scanner sc = new Scanner(System.in);


        System.out.print("ingrese el primer numero");
        double num1 = sc.nextDouble();

        System.out.print("ingrese el primer numero");
        double num2 = sc.nextDouble();


        System.out.print("elija la operacion (+, -. *, /): ");
        char operacion = sc.next().charAt(0);

        double resultado;




        switch (operacion) {
            case '+':
            resultado = num1 + num2;
            System.out.println("resultado" + resultado);
            break;
            case '-':
            resultado = num1 - num2;
            System.out.println("resultado" + resultado);
            break;
            case '*':
            resultado = num1 * num2;
            System.out.println("resultado" + resultado);
            break;
            case '/':
                if (num2 != 0) {
                    resultado = num1 / num2;
                    System.out.println("resultado" + resultado);
                } else {
                   System.out.println("error no se puede dividir por cero");

                }
                break;
            default:
            System.out.println("operacion no valida");
            break;    
            }
                sc.close();
    }
}