import 'Persona.dart';

class Futbolista extends Persona{
  String _equipo;
  String _posicion;
  int cantidadGoles;

  Futbolista(this._equipo, this._posicion, this.cantidadGoles, String _nombre, int _edad): super(_nombre, _edad);

  void setEquipo(String equipo) {
    _equipo = equipo;
  }

  String getEquipo() {
    return _equipo;
  }

  void setPosicion(String posicion) {
    _posicion = posicion;
  }

  String getPosicion() {
    return _posicion;
  }

  void setCantGoles(int goles) {
    cantidadGoles = goles;
  }

  int getCantGoles() {
    return cantidadGoles;
  }

  bool esTitular() {
    if (cantidadGoles > 5) {
      return true;
    } else {
      return false;
    }
  }

  @override
  String getNombre() {
    return super.getNombre();
  }

  @override
  int getEdad() {
    return super.getEdad();
  }

  void mostrarInformacion() {
    print('*' * 50);
    print("""
    nombre: ${getNombre()}
    edad: ${getEdad()}
    equipo: ${getEquipo()}
    posicion: ${getPosicion()}
    goles: ${getCantGoles()}
    Titularidad: ${esTitular()}
    """);
    print('*' * 50);
  }

}