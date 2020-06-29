# curso-COBOL
Es repositorio brinda los recursos necesarios para una introducción inicial al lenguaje COBOL.
Para ejecutar los programas puede utilizar el contenedor de Docker frankr85/cobol

```bash
docker run -it --name cobol -v <folder>:/root/cobol frankr85/cobol bash

root@9658c526cb7f:~/cobol# cobc -x HOLAMUNDO.cbl
root@9658c526cb7f:~/cobol# ./HOLAMUNDO
HOLA MUNDO
```



