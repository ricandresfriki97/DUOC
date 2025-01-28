#include <iostream>
#include <cmath> // Para std::pow

int main() {
    int a, b;

    // Entradas
    std::cout << "Ingrese a: ";
    std::cin >> a;

    std::cout << "Ingrese b: ";
    std::cin >> b;

    // Operaciones
    int suma = a + b;
    int resta = a - b;
    int multiplicacion = a * b;
    double cuociente = static_cast<double>(a) / b; // Conversión a double para dividir correctamente
    int resto = a % b;
    double potencia = std::pow(a, b); // Potencia con std::pow

    // Mostrar resultados
    std::cout << "\n    Sea a = " << a << "   y   b = " << b << "\n";
    std::cout << "    suma: " << suma << "\n";
    std::cout << "    resta: " << resta << "\n";
    std::cout << "    multiplicación: " << multiplicacion << "\n";
    std::cout << "    cuociente: " << cuociente << "\n";
    std::cout << "    resto: " << resto << "\n";
    std::cout << "    potencia: " << potencia << "\n";

    return 0;
}

