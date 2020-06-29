
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CICLOS.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
              77 COUNTER PIC 9(2).
              77 COUNTER-2 PIC 9(2).

       PROCEDURE DIVISION.
      * REPITE 2 VECES UN BLOQUE DE SENTENCIAS
           PERFORM 2 times
      * las intrucciones dentro de un PERFORM no llevan "punto"
              display "HOLA"
      * el "punto" se coloca despues del END-PERFORM.
           END-PERFORM.
           DISPLAY "------------------------------------------------".

      * CREA UN FOR AUMENTANDO DE 1 EN 1 EL COUNTER, hasta el 4
      * for (COUNTER = 1, COUNTER<4, COUNTER++ )
           PERFORM varying COUNTER from 01 BY 1 until COUNTER equal 4
              DISPLAY "Counter = "COUNTER
           END-PERFORM.
           DISPLAY "------------------------------------------------".

      * CREA UN FOR ANIDADO
           PERFORM varying COUNTER from 01 BY 1 until COUNTER equal 3
            after  COUNTER-2 from 01 BY 1 until COUNTER-2 equal 3
              DISPLAY "Counter = "COUNTER
              DISPLAY "Counter-2 = "COUNTER-2
            DISPLAY "- - - -  - - - - - - - - - - - "
           END-PERFORM.
           DISPLAY "------------------------------------------------".

      * CREA UN WHILE AUMENTANDO DE 1 EN 1 EL COUNTER
           MOVE 0 TO COUNTER.
           PERFORM until COUNTER = 5
              DISPLAY "Counter = "COUNTER
              ADD 1 TO COUNTER giving COUNTER
           END-PERFORM.
           DISPLAY "------------------------------------------------".


      * CREA UN DO-WHILE AUMENTANDO DE 1 EN 1 EL COUNTER
           MOVE 0 TO COUNTER.
           PERFORM WITH test after until COUNTER = 5
              DISPLAY "Counter = "COUNTER
              ADD 1 TO COUNTER giving COUNTER
           END-PERFORM.
           DISPLAY "------------------------------------------------".

      * los parrafos cumplen la funcion de "etiquetas", permiten agrupar
      * codigo, para despues ser "llamadas" o "saltar" a estas
           parrafo1.
      * PERFORM al saltar al parrafo2 una vez se ha ejecutado retorna a la linea
      * donde fue invocado, a diferencia de GO TO que continua la ejecucion del
      * programa en el punto donde se quedo
           PERFORM parrafo2 3 TIMES.
           STOP RUN.

           parrafo2.
           DISPLAY "soy una instruccion en el parrafo2".

           parrafo3.
           DISPLAY "soy una instruccion en el parrafo3".
