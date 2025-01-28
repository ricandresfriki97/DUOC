#!/usr/bin/perl
use strict;
use warnings;

# Función para limpiar pantalla (compatible con Windows y Linux/macOS)
sub clear_screen {
    system($^O eq 'MSWin32' ? 'cls' : 'clear');
}

clear_screen();

# Pedir la cantidad de hojas
print "Ingresa la cantidad de hojas: ";
my $hojas = <STDIN>;
chomp($hojas); # Eliminar salto de línea

# Calcular el total
my $precio_por_hoja = 20;
my $total = $precio_por_hoja * $hojas;

# Aplicar descuento si hay más de 30 hojas
if ($hojas > 30) {
    $total *= 0.90; # Aplica 10% de descuento
}

# Pausa antes de imprimir la boleta
print "\nPresiona Enter para continuar...";
<STDIN>;

clear_screen();

# Imprimir la boleta
print <<EOF;

    ----  BOLETA -----
    Cant. hojas:  $hojas
    Valor por hoja: \$20
    TOTAL: \$$total

EOF

