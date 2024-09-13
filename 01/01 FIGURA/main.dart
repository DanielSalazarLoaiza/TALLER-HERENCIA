import 'dart:io';

import 'Circulo.dart';
import 'Cuadrado.dart';
import 'Triangulo.dart';

void main(List<String> args) {
  /*
  Circulo circulo01 = Circulo(8);
  circulo01.CalcularAreaCirculo();
  circulo01.DibujarFigura();

  print('*' * 50);

  Cuadrado cuadrado01 = Cuadrado(9, 9);
  cuadrado01.CalcularAreaCuadrado();
  cuadrado01.DibujarFigura();

  print('*' * 50);

  Triangulo triangulo01 = Triangulo(3, 9);
  triangulo01.CalcularAreaTriangulo();
  triangulo01.DibujarFigura();
*/
  print('*' * 50);

  List<Circulo> circulo = [];
  List<Cuadrado> cuadrado = [];
  List<Triangulo> triangulo = [];

  while (true) {
    print("Menu:");
    print("1.Calcular el area de un circulo.");
    print("2.Calcular el area de un cuadrado.");
    print("3.Calcular el area de un Triangulo.");
    print("4.Salir.");

    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print('*' * 30);
        print("Ingrese el valor del radio del circulo: ");
        double radio = double.parse(stdin.readLineSync()!);

        /*circulo01.CalcularAreaCirculo();
        Circulo(radio);*/
        Circulo circulo1 = Circulo(radio, "Circulo");
        circulo1.CalcularAreaCirculo();
        circulo1.DibujarFigura();
        circulo1.getNombreFigura();
        circulo.add(circulo1);
        print('*' * 30);
        break;

      case 2:
        print('*' * 30);
        print("Ingrese el valor del lado 1 del cuadrado: ");
        double lado1 = double.parse(stdin.readLineSync()!);

        print("Ingrese el valor del lado 2 del cuadrado: ");
        double lado2 = double.parse(stdin.readLineSync()!);

        /*cuadrado01.CalcularAreaCuadrado();
        Cuadrado(lado1, lado2);*/

        Cuadrado cuadrado1 = Cuadrado(lado1, lado2, "Cuadrado");
        cuadrado1.CalcularAreaCuadrado();
        cuadrado1.DibujarFigura();
        cuadrado1.getNombreFigura();
        cuadrado.add(cuadrado1);
        print('*' * 30);
        break;

      case 3:
        print('*' * 30);
        print("Ingrese el valor de la base del triangulo: ");
        double base = double.parse(stdin.readLineSync()!);

        print("Ingrese el valor de la altura del triangulo: ");
        double altura = double.parse(stdin.readLineSync()!);

        /*triangulo01.CalcularAreaTriangulo();
        Triangulo(base, altura);*/
        Triangulo triangulo1 = Triangulo(base, altura, "Triangulo");
        triangulo1.CalcularAreaTriangulo();
        triangulo1.DibujarFigura();
        triangulo1.getNombreFigura();
        triangulo.add(triangulo1);
        print('*' * 30);
        break;

      case 4:
        print("Saliendo de la pagina.");
        exit(0);
      default:
        print("Esta opcion no existe, vuelva a intentarlo.");
    }
  }
}
