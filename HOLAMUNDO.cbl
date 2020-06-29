      * un programa se compone de distintas divisiones
      * IDENTIFICATION DIVISION permite colocarle un nombre al programa
      * que nos servira para invocarlo desde otro programa de COBOL,
      * entre otros datos
       IDENTIFICATION DIVISION.
       PROGRAM-ID. HOLAMUNDO.


      * DATA DIVISION contiene los distintos tipos de variables
       DATA DIVISION.
      * la WORKING-STORAGE SECTION almacena las variables a ser utilizadas en el programa
       WORKING-STORAGE SECTION.
      * el nombre la variable es mensaje y almacena 10 caracteres alfabeticos
           01 mensaje PIC A(10) VALUE 'HOLA MUNDO'.


      * PROCEDURE DIVISION contine las instrucciones a ejecutar
       PROCEDURE DIVISION.
      * la instruccion de fin de linea es el caracter punto, osea el "punto" es el
      * equivalente a el "punto y coma" en otros lengujes de programacion
           DISPLAY mensaje.
      * STOP RUN sirve para indicar que el programa a terminado su ejecucion
           STOP RUN.
