IDENTIFICATION DIVISION.
PROGRAM-ID. CALCULA-PROMEDIO.
DATA DIVISION.
WORKING-STORAGE SECTION.
01  Nota-1 PIC S9(5) VALUE ZEROS.
01  Nota-2 PIC S9(5) VALUE ZEROS.
01  Nota-3 PIC S9(5) VALUE ZEROS.
01  Suma PIC S9(8).
01  Promedio PIC S9(5) VALUE ZEROS.
01  Estado PIC X(10).
PROCEDURE DIVISION.
    DISPLAY "Ingrese nota1:".
    ACCEPT Nota-1.
    DISPLAY "Ingrese nota2:".
    ACCEPT Nota-2.
    DISPLAY "Ingrese nota3:".
    ACCEPT Nota-3.
    COMPUTE Suma = Nota-1 + Nota-2 + Nota-3.
    DISPLAY "La suma es: $" + Suma.
    COMPUTE Promedio = Suma / 3.
    IF Promedio >= 4 THEN
        MOVE 'APROBADO' TO Estado
    ELSE
        MOVE 'REPROBADO' TO Estado
    END-IF.
    DISPLAY "Promedio: $" + Promedio.
    DISPLAY "Estado: $" + Estado.
    STOP RUN.
