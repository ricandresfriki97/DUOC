<?php
/////////////////////////////////
function clear_screen() {
    if (strtoupper(substr(PHP_OS, 0, 3)) === 'WIN'){
        system('cls');
    }   else{
        system('clear');
    }
}
/////////////////////////////////
clear_screen();
/////////////////////////////////
echo "ingresa la cantidad de hojas por favor";
$hojas = intval(trim(fgets(STDIN)));
/////////////////////////////////
$precio_por_hoja = 20;
$total = $precio_por_hoja * $hojas;
//////////////////////////////////
if ($hojas > 30) {
    $total *= 0.90;
}
/////////////////////////////////////
echo "\n presiona enter para continuar";
fgets(STDIN);
//////////////////////////////////////
clear_screen();
//////////////////////////////////////
echo <<<EOF
*******Boleta******
cantidad de hojas $hojas
valor por hoja: \$20
total: \$$total
EOF;
?>
//////////////////////////////////////
