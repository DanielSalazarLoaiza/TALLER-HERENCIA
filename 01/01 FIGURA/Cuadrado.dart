import 'Figura.dart';

class Cuadrado extends Figura {
  double lado1;
  double lado2;

  Cuadrado(this.lado1, this.lado2, String nombreFigura) : super(nombreFigura);

  void CalcularAreaCuadrado() {
    double lado;
    lado = lado1 * lado2;
    print("El area del cuadrado es: $lado");
  }

  @override
  void DibujarFigura() {
    super.DibujarFigura();
  }
}
