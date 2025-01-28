<?php
// Función para limpiar pantalla (compatible con Windows y Linux/macOS)
function clear_screen() {
    if (strtoupper(substr(PHP_OS, 0, 3)) === 'WIN') {
        system('cls');
    } else {
        system('clear');
    }
}

clear_screen();

// Pedir la cantidad de hojas
echo "Ingresa la cantidad de hojas: ";
$hojas = intval(trim(fgets(STDIN))); // Leer entrada y convertir a entero

// Calcular el total
$precio_por_hoja = 20;
$total = $precio_por_hoja * $hojas;

// Aplicar descuento si hay más de 30 hojas
if ($hojas > 30) {
    $total *= 0.90; // Aplica 10% de descuento
}

// Pausa antes de imprimir la boleta
echo "\nPresiona Enter para continuar...";
fgets(STDIN);

clear_screen();

// Imprimir la boleta
echo <<<EOF

    ----  BOLETA -----
    Cant. hojas:  $hojas
    Valor por hoja: \$20
    TOTAL: \$$total

EOF;
?>

