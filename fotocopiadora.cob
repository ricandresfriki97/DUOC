IDENTIFICATION DIVISION.
PROGRAM-ID. CONVERTIR-HOJAS.
DATA DIVISION.
WORKING-STORAGE SECTION.
01  Hojas PIC S9(5) VALUE ZEROS.
01  Total PIC S9(8).
PROCEDURE DIVISION.
    DISPLAY "Ingrese la cantidad de hojas:".
    ACCEPT Hojas.
    COMPUTE Total = 20 * Hojas.
    IF Hojas > 30 THEN
        PERFORM VENTA-HOJAS
    ELSE
        DISPLAY "El total a pagar es: $" + Total.
        STOP RUN.
    END-IF.
    STOP RUN.
