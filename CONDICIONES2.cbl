      * Número de Nivel
      * Número de nivel se utiliza para especificar el nivel de datos en un registro. Que se utilizan para diferenciar los elementos elementales y elementos de grupo. Elementos elementales pueden agruparse para crear elementos de grupo.

      * Número de Nivel Descripción
      * 01  Descripción de la entrada registro
      * 02 A 49 Grupo elemental y elementos
      * 66  Cláusula Rename elementos
      * 77  Elementos que no pueden ser sub-divididos
      * 88  Nombre de la entrada Condición
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDICIONES2.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           77 dato PIC X value '0'.
           77 mx-estado PIC X(3) value spaces.
              88 estado-predeterminado value 'oax'.
      * El número de nivel 88 designa una entrada de nombre de condición. Los niveles 88 se utilizan para asignar nombres a los valores en el momento de la ejecución. Por lo tanto, un nombre de condición no es el nombre de un elemento, sino el nombre de un valor. Cada nivel 88 debe estar asociado con un elemento de datos y debe seguir inmediatamente ese elemento en la División de Datos.

       PROCEDURE DIVISION.
           move 'zac' to mx-estado.

      * inicio del IF
           IF estado-predeterminado DISPLAY 'el estado es Oaxaca'
           ELSE DISPLAY 'el estado NO es Oaxaca'
           END-IF.
      * fin del bloque IF

           move 'oax' to mx-estado.

      * inicio del IF
           IF estado-predeterminado DISPLAY 'el estado es Oaxaca'
           ELSE DISPLAY 'el estado NO es Oaxaca'
           END-IF.
      * fin del bloque IF

           move '5' to dato

           evaluate dato
             when '2'
                display 'la variable dato tiene un 2'
             when '5'
                display 'la variable dato tiene un 2'
           end-evaluate

           STOP RUN.
