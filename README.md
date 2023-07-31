
# Prueba Técnica - Conrado Els

![](https://res.cloudinary.com/dtvlycezq/image/upload/v1690813648/samples/Captura_de_pantalla_2023-07-31_112617_x07pcm.png)


## Consultas SQL
- Dado el siguiente diagrama de entidad relacional: 

![](https://res.cloudinary.com/dtvlycezq/image/upload/v1690813648/samples/Captura_de_pantalla_2023-07-31_112617_x07pcm.png)

##### Realizar las consultas SQL necesarias para obtener los siguientes datos: 
- Todos los productos del rubro "librería", creados hoy. 
- Monto total vendido por cliente (mostrar nombre del cliente y monto). 
- Cantidad de ventas por producto
- Cantidad de productos diferentes comprados por cliente en el mes actual. 
- Ventas que tienen al menos un producto del rubro "bazar". 
- Rubros que no tienen ventas en los últimos 2 meses.

### Solución

`<link>` : <https://github.com/ConradoEls/dux-prueba/tree/main/SQL>

- Encontrarán el [DER](https://github.com/ConradoEls/dux-prueba/blob/main/SQL/DER.mwb) de la DB, las [queries](https://github.com/ConradoEls/dux-prueba/blob/main/SQL/Queries.sql) que se podrán ejecutar facilmente descargando una [DB](https://github.com/ConradoEls/dux-prueba/blob/main/SQL/DB.sql) que realicé para pruebas funcionales.

----

## Simulador de partido de Tenis

#### Funcionalidades
Antes de comenzar la simulación, el usuario podrá ingresar los siguientes datos:
- Nombres de los jugadores.
- Nombre del torneo.
- Definición de la cantidad de sets: al mejor de 3 o al mejor de 5.
- Probabilidad de que cada jugador gane el partido (tiene que ir del 1 al 100% e influir en el resultado final).
- El programa deberá simular punto por punto de forma automática, donde el ganador de cada uno será determinado de forma aleatoria (teniendo en cuenta la probabilidad definida al principio), y los mismos se tienen que visualizar por pantalla. Datos a mostrar:
-  Ganador del punto.
-  Resultado parcial del game.
-  Al comenzar un game, mostrar el jugador que tiene el saque.
-  Al finalizar cada SET, se mostrará el ganador y el resultado parcial del partido.

Una vez finalizado el partido:
- Imprimir el resultado en formato de partido de tenis.
- Imprimir el nombre del ganador y del torneo.
- Preguntar al usuario si quiere jugar la revancha, en caso de que la respuesta sea sí, simular nuevamente.

#### Test unitarios
Será necesario contar con al menos tres test unitarios que verifiquen el correcto funcionamiento del programa. Los test se deberán realizar utilizando Junit.

----

### Solución

`<link>` : <https://github.com/ConradoEls/dux-prueba/tree/main/dux-tennis>

- Encontrarán el achivo [POM](https://github.com/ConradoEls/dux-prueba/blob/main/dux-tennis/pom.xml) del programa para abrirlo desde el IDE y descagar las dependencias necesarias.
- El programa consta de una simulación de un partido de tenis donde en base a una probabilidad, se ejecuta el algoritmo que devolverá un ganador cuyo caso la probabilidad lo favorezca.
- La simulación implementa el patrón DAO que si bien, no existe una capa de persistencia de datos, aporta la funcionalidad de abstraer y encapsular la logica del programa.
- En la carpeta [test](https://github.com/ConradoEls/dux-prueba/blob/main/dux-tennis/src/test/java/com/example/duxtennis/DuxTennisApplicationTests.java) encontrarán los test unitarios realizados con JUnit para verificar el correcto funcionamiento del código.

----
