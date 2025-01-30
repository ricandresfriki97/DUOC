       IDENTIFICATION DIVISION.
       PROGRAM-ID. OPERACIONES-MATEMATICAS.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 A              PIC 999 VALUE 0.
       01 B              PIC 999 VALUE 0.
       01 SUMA           PIC 999 VALUE 0.
       01 RESTA          PIC 999 VALUE 0.
       01 MULTIPLICACION PIC 99999 VALUE 0.
       01 CUOCIENTE      PIC 999V99 VALUE 0.
       01 RESTO          PIC 999 VALUE 0.
       01 POTENCIA       PIC 99999 VALUE 0.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Ingrese a: ".
           ACCEPT A.
           DISPLAY "Ingrese b: ".
           ACCEPT B.
           
           COMPUTE SUMA = A + B.
           COMPUTE RESTA = A - B.
           COMPUTE MULTIPLICACION = A * B.
           COMPUTE CUOCIENTE = A / B.
           COMPUTE RESTO = FUNCTION MOD(A B).
           COMPUTE POTENCIA = A ** B.
           
           DISPLAY "\n\nSea a = " A " y b = " B.
           DISPLAY "Suma: " SUMA.
           DISPLAY "Resta: " RESTA.
           DISPLAY "Multiplicación: " MULTIPLICACION.
           DISPLAY "Cuociente: " CUOCIENTE.
           DISPLAY "Resto: " RESTO.
           DISPLAY "Potencia: " POTENCIA.
           
           STOP RUN.

