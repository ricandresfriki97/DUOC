#import <Foundation/Foundation.h>
//////////////////////////////////
void clearScreen() {
    system("clear");

}
//////////////////////////////////
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        clearScreen();
    
///////////////////////////////////
    int hojas;
    NSLog(@"ingresa la cantidad de hojas por favor");
    scanf("%d", &hojas);
////////////////////////////////////
    int precioPorHoja = 20;
    float total = precioPorHoja * hojas;
/////////////////////////////////////
    if (hojas > 30) {
        total *= 0.90;
    }
//////////////////////////////////////
    NSLog(@"\n presiona enter para continuar");
    getchar();
    getchar();
///////////////////////////////////////
    clearScreen();
///////////////////////////////////////
    NSLog(@"\n ********Boleta********");
    NSLog(@"cantidad de hojas %d" hojas);
    NSLog(@"valor por hoja $20");
    NSLog(@"total $%,2f", total);                       
    }
    return 0;
}
