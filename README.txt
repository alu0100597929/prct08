**************** PR�CTICA 8 - LENGUAJES Y PARADIGMAS DE PROGRAMACI�N ******************

Autores: 
- Noelia Rodr�guez Mart�n
- Juan Manuel Ramos P�rez


                 
OBJETIVO

Crear una clase para representar matrices usando desarrollo dirigido por pruebas (Test Driven Development - TDD) con la herramienta Rspec.
Seguir la metodolog�a de Integraci�n continua (Continuos Integration) usando la herramienta Travis.
Comprobar el funcionamiento de la aplicaci�n con la herramienta Guard de comprobaci�n continua (Continuous testing) de manera que permita la ejecuci�n de las pruebas 
definidas con rspec cuando se modifiquen.


CLASE MATRIZ

Tiene un constructor al que se le pasan como par�metros las filas, las columnas y los argumentos de la matriz.



M�TODOS

Los m�todos que se han implementado son los siguientes:

-- M�todo to_s() --

Debe: mostrar la matriz


-- M�todo +(other) -- 

Debe: calcular la suma de la matriz que hacemos mas la de other.

Para ello primero hacemos un matriz.new y dentro de  ese matriz.new hacemos el m�todo +(other)
al que le pasamos otra matriz.new que es el other.


-- M�todo -(other) --

Debe: calcular la resta de la matriz que hacemos menos la de other.

Para ello primero hacemos un matriz.new y dentro de  ese matriz.new hacemos el m�todo -(other)
al que le pasamos otra matriz.new que es el other.


-- M�todo *(other) -- 

Debe: calcular la multiplicaci�n de la matriz que hacemos por la de other.

Para ello primero hacemos un matriz.new y dentro de  ese matriz.new hacemos el m�todo *(other)
al que le pasamos otra matriz.new que es el other.


-- M�todo <=>(other)

Este metodo engloba a los m�todos (<, <=, ==, >=, >). 
En la llamada a este m�todo se especificara que tipo de comparacion se quiere realizar con los tres par�metros que le pasamos, 
pudiendo ser esta una de las cinco comparaciones antes mencionada.
