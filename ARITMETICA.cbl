
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARITMETICA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 NUMERO1 PIC 9 VALUE 1.
           77 NUMERO2 PIC 9 value 2.
           77 RESULTADO PIC 99 VALUE 1.
           77 numerogrande PIC s9(10)v99 COMP-3 VALUE ZERO.
      * El empaquetamiento computacional se usa frecuentemente para reducir el
      * tamaño de un archivo.
      * Existenten distintos tipos de empaquetamiento en COBOL
      * COMP-1 : usado en la representacion de datos flotantes de precision
      * simple, de 0 hasta 10**38
      * COMP-2 : usado en la representacion de datos flotantes de precision
      * doble, de 0 hasta 10**307
      * COMP-3 : representa los numeros como BCD, binario codificado en decimal,
      * permite representar digitos por arriba de 31 decimales. A los cajeros
      * automaticos les gusta esta representacion. En un byte se almacenan dos
      * numeros decimales
      * Decimal:    0     1     2     3     4     5     6     7     8     9
      * BCD:     0000  0001  0010  0011  0100  0101  0110  0111  1000  1001
      * COMP-4 : solo puede representar enteros
      * COMP-5 : similar al comp-4, pero puedes especificar la posicion del punto
      * decimal, combian la eficiencia del cmp-4 con la exactitud del comp-3, no
      * se pueden exceder los 18 digitos decimales

       PROCEDURE DIVISION.
           DISPLAY "NUMERO1 = "NUMERO1.
           DISPLAY "NUMERO2 = "NUMERO2.
      * SUMA
      * RESULTADO = NUMERO1 + NUMERO2 + 5 + RESULTADO
           ADD NUMERO1 NUMERO2 5 TO RESULTADO.
           DISPLAY "ADD NUMERO1 NUMERO2 5 TO RESULTADO = "RESULTADO.
      * RESULTADO = NUMERO1 + NUMERO2 + 5
           ADD NUMERO1 NUMERO2 5 GIVING RESULTADO.
           DISPLAY "ADD NUMERO1 NUMERO2 5 GIVING RESULTADO = "RESULTADO.

           MOVE 1 TO RESULTADO
      * RESTA
      * RESULTADO = NUMERO1 - NUMERO2 - 5 - RESULTADO
           SUBTRACT NUMERO1 NUMERO2 5 FROM RESULTADO.
           DISPLAY "SUBTRACT NUMERO1 NUMERO2 5 FROM RESULTADO:"RESULTADO.
      * RESULTADO = NUMERO1 - 5 - NUMERO2
           SUBTRACT NUMERO1 5 FROM NUMERO2 GIVING RESULTADO.
      *    Esta instruccion ocupa 72 caracteres en una linea, por lo que ya no es posible colocar mas
           DISPLAY "SUBTRACT NUMERO1 5 FROM NUMERO2 GIVING RESULTADO ="
      * se emplea el caracter '-' en la columna 7 para indicar que se esta continuando la instruccion de
      * la linea anterior
      -RESULTADO.

           MOVE 0 TO RESULTADO.
      * MULTIPLICACION
      * RESULTADO = 5 * RESULTADO
           MULTIPLY 5 BY RESULTADO.
           DISPLAY "MULTIPLY 5 BY RESULTADO = "RESULTADO.
      * RESULTADO = 5 * NUMERO1
           MULTIPLY 5 BY NUMERO1 GIVING RESULTADO.
           DISPLAY "MULTIPLY 5 BY NUMERO1 GIVING RESULTADO = "RESULTADO.

           MOVE 10 TO RESULTADO.
           MOVE 8 TO NUMERO2.
      * DIVISION
      * RESULTADO = RESULTADO / 10
           DIVIDE 10 INTO RESULTADO.
           DISPLAY "DIVIDE 10 INTO RESULTADO = "RESULTADO.
      * RESULTADO = NUMERO2 / 2
           DIVIDE 2 INTO NUMERO2 GIVING RESULTADO.
           DISPLAY "DIVIDE 2 INTO NUMERO2 GIVING RESULTADO = "RESULTADO.

      * MIX
      * COMPUTE evalua una expresion aritmetica
      * PEMDAS
      * parentesis exponentes multiplicacion division adicion substraccion
      * cobol evalua las expresiones aritmeticas en ese orden
           COMPUTE RESULTADO = (2 + 3) * 5.
           DISPLAY "RESULTADO = (2 + 3) * 5 = "RESULTADO.

      * el ** indica potencia
           COMPUTE RESULTADO = 3 ** 3.
           DISPLAY "RESULTADO = 3 ** 3 = "RESULTADO.

      *  en C el numero negativo mas pequeño que se puede almacenar en un
      * int es (-2147483647-1)
           move -9000000000.22 to numerogrande
           display numerogrande.

           STOP RUN.
