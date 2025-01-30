       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULO-TARIFA.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CATEGORIA      PIC X(10) VALUE SPACES.
       01 TARIFA         PIC X(10) VALUE SPACES.
       01 TOTAL          PIC 9(5) VALUE 0.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Ingrese categoria: ".
           ACCEPT CATEGORIA.
           DISPLAY "Ingrese tarifa: ".
           ACCEPT TARIFA.
           
           EVALUATE CATEGORIA
               WHEN "auto" WHEN "camioneta"
                   EVALUATE TARIFA
                       WHEN "normal"
                           MOVE 2000 TO TOTAL
                       WHEN OTHER
                           MOVE 3000 TO TOTAL
                   END-EVALUATE
               WHEN "moto"
                   EVALUATE TARIFA
                       WHEN "normal"
                           MOVE 600 TO TOTAL
                       WHEN OTHER
                           MOVE 900 TO TOTAL
                   END-EVALUATE
               WHEN "camion" WHEN "bus"
                   EVALUATE TARIFA
                       WHEN "normal"
                           MOVE 3500 TO TOTAL
                       WHEN OTHER
                           MOVE 5200 TO TOTAL
                   END-EVALUATE
           END-EVALUATE.
           
           DISPLAY "\n\n------ TICKET ------".
           DISPLAY "Categoria: " CATEGORIA.
           DISPLAY "Tarifa: " TARIFA.
           DISPLAY "Total $" TOTAL.
           
           STOP RUN.

