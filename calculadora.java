import java.util.Scanner;
////////////////////////////////////////////////
public class calculadora {
    public static void main (String[] args){
////////////////////////////////////////////////
        Scanner sc = new Scanner(System.in);
////////////////////////////////////////////////
        System.out.print("ingrese el primer numero");
        double numero1 = sc.nextDouble();
        System.out.print("ingrese el segundo numero");
        double numero2 = sc.nextDouble();
        System.out.print("ingrese la operacion a realizar + - * /");
        char operation = sc.next().charAt(0);
        double result;
//////////////////////////////////////////////////
        switch (operation){
            case '+':
            result = numero1 + numero2;
            System.out.println("resultado"+resultado);
            break;
            case '-':
            result - numero1 - numero2:
            System.out.println("resultado"+resultado);
            break;
            case '*':
            result = numero1 * numero2:
            System.out.println("resultado"+resultado):
            break;
            case '/':
            if (numero2 != 0){
                result = numero1 / numero2:
                System.out.println("resultado"+resultado);
            else {
                System.out.println("no se puede dividir por cero");

            }
            break;
///////////////////////////////////////////////////            
            default:
            System.out.println("operacion no valida");
            break;
            }
//////////////////////////////////////////////////
            sc.close();
        }          









    }
