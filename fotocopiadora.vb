CLS
' Se ingresa la cantidad de hojas
PRINT "Ingresa la cantidad de hojas: ";
INPUT hojas

' Cada hoja vale $20
total = 20 * hojas

' Si hay más de 30 hojas, se aplica un 10% de descuento
IF hojas > 30 THEN
    total = total * 0.90
END IF

' Imprimir boleta
CLS
PRINT "----  BOLETA -----"
PRINT "Cant. hojas: "; hojas
PRINT "Valor por hoja $20"
PRINT "TOTAL $"; total

