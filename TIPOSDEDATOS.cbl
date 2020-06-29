      * los tipos de datos en cobol se especifican con la instruccion
      * PIC (picture clause)
      * los simbolos utilizados para definir el dato son:
      * 9 Valor Numérico
      * A Orden alfabético
      * X Alfanumérico
      * V Decimal implícito
      * S Signo
      * P Decimal asumido
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TIPOSDEDATOS.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * double NUM1-WS = 3.5
           77 NUM1-WS PIC 99V9 VALUE IS 32.5.
           77 NUM2-WS PIC S9V9 VALUE IS -6.2.
      * string DATO-TEXTO = "HOLA MUNDO"
      * el numero indicado entre parentesis indica el numero de veces que se repetira
      * el simbolo de definicion de datos, por defecto su valor es (1)
           77 DATO-TEXTO PIC A(10) VALUE 'HOLA MUNDO'.
           77 DATO-TEXTO2 PIC X(10) VALUE 'H0La_MU#DO'.
      * int DATO-ID = 00
           77 DATO-ID PIC 99 VALUE ZERO.
           77 HORAS PIC 9.
           77 PAGO PIC 9(3).
           77 SALARIO PIC 9(5).

       PROCEDURE DIVISION.
           DISPLAY "NUM1-WS : "NUM1-WS.
           DISPLAY "NUM2-WS   : "NUM2-WS.
           DISPLAY "DATO-TEXTO : "DATO-TEXTO.
           DISPLAY "DATO-TEXTO2   : "DATO-TEXTO2.
           DISPLAY "DATO-ID   : "DATO-ID.
      * HORAS = 8
           MOVE 8 TO HORAS.
           MOVE 100 TO PAGO.
      * calculo del salario
           COMPUTE SALARIO = HORAS * PAGO
      * impresion en pantalla del salario
           DISPLAY "SALARIO = "SALARIO
           STOP RUN.
