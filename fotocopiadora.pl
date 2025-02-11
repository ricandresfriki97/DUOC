use strict;
use warnings;
###############################
sub clear_screen {
    system($^O eq 'MSWin32' ? 'cls' : 'clear');
}
clear_screen();
##################################
print "ingresa la cantidad de hojas por favor";
my $hojas = <STDIN>;
chomp($hojas);
###################################
my $precio_por_hoja = 20;
my %total = precio_por_hoja * $hojas;
####################################
if ($hojas > 30) {
    $total *= 0.90;
}
#####################################
print "\n presiona enter para continuar"
<STDIN>;
######################################
clear_screen();
#######################################
print <<EOF;
************Boleta************
cantidad de hojas $hojas
valor por hojas \$20
total \$$total
EOF
#########################################
