      * a la fecha (2020) COBOL tiene aprox. 70 funciones intrinsecas
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FUNCIONES_INTRINSECAS.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 dato1 PIC X(10) VALUE 'Hola Mundo'.
           77 dato2 PIC X(10).
           77 x PIC 9(3) value 0.
           77 a1 PIC 9(3) value 1.
           77 a2 PIC 9(3) value 2.
           77 a3 PIC 999 value 9.
           77 a4 PIC 999 value 3.
           77 yyyymmdd pic 9(8).
           77 FORMATO-ENTERO PIC s9(9).

       PROCEDURE DIVISION.
           DISPLAY dato1.
           display Function Upper-Case (dato1).
           display Function Lower-Case (dato1).

           move Function Upper-Case(dato1) to dato2.

           display dato2.

           compute x = Function Sum (a1, a2, (a3/a4)).
           display x

           move Function current-date(1:8) to yyyymmdd.
           display 'la fecha actual es: ' yyyymmdd.
      * Integer-of-Date nos dice cunatos dias han pasado desde el 1/01/1601
           compute FORMATO-ENTERO = function Integer-of-Date(yyyymmdd).
           Add 90 to FORMATO-ENTERO.
           compute yyyymmdd = Function Date-of-integer(FORMATO-ENTERO).
           display 'la fecha final es:' yyyymmdd.

           STOP RUN.
