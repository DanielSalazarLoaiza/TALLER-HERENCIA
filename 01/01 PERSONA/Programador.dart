import 'Persona.dart';

class Programador extends Persona {
  String _empresa;
  double _salario;

  Programador(this._empresa, this._salario, String _nombre, int _edad): super(_nombre, _edad);

  void setEmpresa(String empresa) {
    _empresa = empresa;
  }
  
  String getEmpresa() {
    return _empresa;
  }

  void setSalario(double salario) {
    _salario = salario;
  }

  double getSalario() {
    return _salario;
  }

  double obtenerSalarioNeto(double salario) {
    /*salario = _salario * 0.11;
    _salario = salario;
    return _salario;*/
    /*return _salario * 0.11;*/
    salario = _salario * 0.11;
    _salario -= salario;
    return _salario;

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
    empresa: ${getEmpresa()}
    salario: ${getSalario()}
    """);
    print('*' * 50);
}
}