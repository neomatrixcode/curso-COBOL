
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDICIONES.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
              77 NUM1 PIC 9(2).
              77 NUM2 PIC 9(2).
              77 NUM3 PIC 9(2).
              77 NUM4 PIC 9(2).

       PROCEDURE DIVISION.
      * num1,num2 = 25
           MOVE 25 TO NUM1 NUM3.
           MOVE 15 TO NUM2 NUM4.

      * inicio del IF
           IF NUM1 > NUM2 THEN
              DISPLAY 'NUM1 es mayor que NUM2'
              IF NUM3 = NUM4 THEN
                DISPLAY 'NUM3 es igual a NUM4'
              ELSE
                DISPLAY 'NUM3 es diferente a NUM4'
              END-IF
           ELSE
              DISPLAY 'NUM2 es mayor que NUM1'
           END-IF.
      * fin del bloque IF

           STOP RUN.
      * https://www.ibm.com/support/knowledgecenter/SSY4B9_4.1.0/com.ibm.mu.doc_4.1/fsyugcondexp.html
