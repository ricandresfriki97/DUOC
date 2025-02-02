#include <stdio.h>
//////////////////////////
int main() {
    int hojas;
    float total;
//////////////////////////
system('clear');
//////////////////////////
printf("ingresa la cantidad de hojas");
scanf("%d", &hojas);
//////////////////////////
total = 20* hojas;
/////////////////////////
if (hojas>30) {
    total = total *0.90;
}
//////////////////////////
system('clear');
//////////////////////////
printf(********boleta de pago********);
printf("cantidad de hojas: %d\n", hojas)
printf("total a pagar: $%.2f\n", total);
return 0;
///////////////////////////
}
///////////////////////////

