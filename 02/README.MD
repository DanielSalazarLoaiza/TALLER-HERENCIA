1. Crear un proyecto en Dart y seguir las siguientes instrucciones, tomando como base el 
siguiente diagrama de clases: 

A. Construir las 6 clases en Dart (utilizando Visual Studio Code) tomando como base el 
diagrama de clases anterior y teniendo en cuenta la secuencia de herencia 
manejada. Deben crearse todos los métodos SET y GET de cada clase.

B. La clase Producto deberá crearse como clase abstracta, al igual que el método 
realizarDescuento() 

C. Para llamar el constructor de la clase Producto desde la clase DiscoDuro y 
Marcador, se deberá hacer utilizando el método super() 

D. Para llamar el constructor de la clase Producto desde la clase Electrodoméstico, se 
deberán settear directamente los atributos: código_producto y nombre_producto 
de la clase padre, y hacer el llamado de un constructor de la clase padre que reciba 
solamente los valores de los campos privados: disponible y precio 

E. Sobreescribir el método realizarDescuento() para que quede de la siguiente 
manera: 
i. El descuento de los discos duros será del 20% 
ii. El descuento de los Marcadores será del 10%
iii. El descuento de los Electrodomésticos será del 30% 

F. El método mostrarInformacionProducto() de la clase Producto, mostrará todos los 
atributos de dicha clase 

G. El método calcularPrecioConsumo() de la clase Electrodoméstico, calculará el 
precio a pagar según el consumo de watts y la cantidad de horas 

H. ¿Intentar crear una instancia (objeto) de la clase Producto y decir si se puede o no 
y por qué? 

I. Al ejecutar el programa, se deberá mostrar un menú como el siguiente: 
Elige una opción: 
1) Crear Disco Duro 
2) Crear Marcador 
3) Crear Portátil 
4) Crear Parlante 
5) Vender Disco Duro 
6) Vender Marcador 
7) Vender Portátil 
8) Vender Parlante 
9) Calcular precio consumo Portátil 
10) Calcular precio consumo Parlante 
11) Salir 

J. Si se elige entre la opción 1 y 4, se deberán crear las intancias (objetos) según la 
clase que corresponda 

K. Si se elige entre la opción 5 y 8, se deberá llamar al método realizarDescuento() 
según el producto escogido y mostrar toda la información del producto vendido 
 
L. Si se elige la opción 9 o 10, se deberá mostrar el valor que se pagaría por el consumo 
de Watts del electrodoméstico escogido según la cantidad de horas ingresadas 

M. Si se elige la opción 11, se deberá terminar con la ejecución del programa