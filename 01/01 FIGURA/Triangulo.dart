import 'Figura.dart';

class Triangulo extends Figura {
  double base;
  double altura;

  Triangulo(this.base, this.altura, String nombreFigura) : super(nombreFigura);

  void CalcularAreaTriangulo() {
    double area;
    area = (base * altura) / 2;
    print("El area del triangulo es: $area");
  }

  @override
  void DibujarFigura() {
    super.DibujarFigura();
  }
}
