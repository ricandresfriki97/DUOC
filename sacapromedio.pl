#!/usr/bin/perl
use strict;
use warnings;

# Capturar las notas del usuario
print "Ingrese nota 1: ";
chomp(my $nota1 = <STDIN>);

print "Ingrese nota 2: ";
chomp(my $nota2 = <STDIN>);

print "Ingrese nota 3: ";
chomp(my $nota3 = <STDIN>);

# Calcular la suma y el promedio
my $suma = $nota1 + $nota2 + $nota3;
my $promedio = $suma / 3;

# Determinar el estado
my $estado = ($promedio >= 4.0) ? "APROBADO" : "REPROBADO";

# Mostrar resultados
print "\n------ Resultados ----\n";
printf "Promedio: %.2f\n", $promedio;
print "Estado: $estado\n";

