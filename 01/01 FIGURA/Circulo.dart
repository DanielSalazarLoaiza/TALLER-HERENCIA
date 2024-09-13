import 'Figura.dart';

class Circulo extends Figura {
  double radio;

  Circulo(this.radio, String nombreFigura) : super(nombreFigura);

  void CalcularAreaCirculo() {
    double area;
    double pi;
    pi = 3.1416;
    area = pi * (radio * radio);
    print("El area del circulo es: $area");
  }

  @override
  void DibujarFigura() {
    super.DibujarFigura();
  }
}
