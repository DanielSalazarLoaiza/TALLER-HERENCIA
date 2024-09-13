class Persona {
  String _nombre;
  int _edad;

  Persona(this._nombre, this._edad); 

  void setNombre(String nombre) {
    this._nombre = nombre;
  }

  String getNombre() {
    return _nombre;
  }

  void setEdad(int edad) {
    this._edad = edad;
  }

  int getEdad() {
    return _edad;
  }
}