**************** PRÁCTICA 8 - LENGUAJES Y PARADIGMAS DE PROGRAMACIÓN ******************

Autores: 
- Noelia Rodríguez Martín
- Juan Manuel Ramos Pérez


                 
OBJETIVO

Crear una clase para representar matrices usando desarrollo dirigido por pruebas (Test Driven Development - TDD) con la herramienta Rspec.
Seguir la metodología de Integración continua (Continuos Integration) usando la herramienta Travis.
Comprobar el funcionamiento de la aplicación con la herramienta Guard de comprobación continua (Continuous testing) de manera que permita la ejecución de las pruebas 
definidas con rspec cuando se modifiquen.


CLASE MATRIZ

Tiene un constructor al que se le pasan como parámetros las filas, las columnas y los argumentos de la matriz.



MÉTODOS

Los métodos que se han implementado son los siguientes:

-- Método to_s() --

Debe: mostrar la matriz


-- Método +(other) -- 

Debe: calcular la suma de la matriz que hacemos mas la de other.

Para ello primero hacemos un matriz.new y dentro de  ese matriz.new hacemos el método +(other)
al que le pasamos otra matriz.new que es el other.


-- Método -(other) --

Debe: calcular la resta de la matriz que hacemos menos la de other.

Para ello primero hacemos un matriz.new y dentro de  ese matriz.new hacemos el método -(other)
al que le pasamos otra matriz.new que es el other.


-- Método *(other) -- 

Debe: calcular la multiplicación de la matriz que hacemos por la de other.

Para ello primero hacemos un matriz.new y dentro de  ese matriz.new hacemos el método *(other)
al que le pasamos otra matriz.new que es el other.


-- Método <=>(other)

Este metodo engloba a los métodos (<, <=, ==, >=, >). 
En la llamada a este método se especificara que tipo de comparacion se quiere realizar con los tres parámetros que le pasamos, 
pudiendo ser esta una de las cinco comparaciones antes mencionada.
