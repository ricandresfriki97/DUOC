#include <iostream>
#include <string>

int main() {
    std::string categoria, tarifa;
    int total = 0;

    // Entrada de la categoría
    std::cout << "Ingrese categoria: ";
    std::cin >> categoria;

    // Entrada de la tarifa
    std::cout << "Ingrese tarifa: ";
    std::cin >> tarifa;

    // Cálculo del total
    if (categoria == "auto" || categoria == "camioneta") {
        if (tarifa == "normal") {
            total = 2000;
        } else {
            total = 3000;
        }
    } else if (categoria == "moto") {
        if (tarifa == "normal") {
            total = 600;
        } else {
            total = 900;
        }
    } else if (categoria == "camion" || categoria == "bus") {
        if (tarifa == "normal") {
            total = 3500;
        } else {
            total = 5200;
        }
    }

    // Mostrar el ticket
    std::cout << "\n      ------ TICKET ------\n";
    std::cout << "      Categoria: " << categoria << "\n";
    std::cout << "      Tarifa: " << tarifa << "\n";
    std::cout << "      Total: $" << total << "\n";

    return 0;
}

