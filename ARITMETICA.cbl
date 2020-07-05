
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARITMETICA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 NUMERO1 PIC 9 VALUE 1.
           77 NUMERO2 PIC 9 value 2.
           77 RESULTADO PIC 99 VALUE 1.
           77 numerogrande PIC s9(10)v99 COMP-3 VALUE ZERO.
      * El elemento de datos se almacena en formato decimal empaquetado en
      * COMP-3. El formato decimal empaquetado significa que cada byte de
      * almacenamiento (excepto el byte de orden bajo) puede contener dos números
      * decimales. El byte de orden inferior contiene un dígito en la parte
      * izquierda y el signo (positivo o negativo) en la parte derecha. l
      * almacenamiento computacional se usa frecuentemente para reducir el tamaño
      * de un archivo.

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

      *  en C el numero negativo mas grande que se puede almacenar en un
      * int es -2147483648
           move -9000000000.22 to numerogrande
           display numerogrande.

           STOP RUN.
