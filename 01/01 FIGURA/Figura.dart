abstract class Figura {
  String nombreFigura;

  Figura(this.nombreFigura);

  void setNombreFigura(String nombre) {
    this.nombreFigura = nombre;
  }

  String getNombreFigura() {
    return nombreFigura;
  }

  void DibujarFigura() {
    print("Se esta dibujando la figura...");
  }
}
