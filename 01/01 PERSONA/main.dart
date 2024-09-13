import 'dart:io';

import 'Futbolista.dart';
import 'Persona.dart';
import 'Programador.dart';

void main(List<String> args) {
  Persona persona01 = Persona("Daniel", 17);
  persona01.setNombre("Daniel");
  persona01.getNombre();
  persona01.setEdad(17);
  persona01.getEdad();

  print("""
PRIMERA PERSONA
  nombre: ${persona01.getNombre()}
  edad: ${persona01.getEdad()}
""");

  print('*' * 50);

  Futbolista futbolista01 = Futbolista("Barcelona", "MC", 7, "Daniel", 17);
  futbolista01.setEquipo("Barcelona");
  futbolista01.getEquipo();
  futbolista01.setPosicion("MC");
  futbolista01.getPosicion();
  futbolista01.setCantGoles(7);
  futbolista01.getCantGoles();
  futbolista01.esTitular();
  futbolista01.getNombre;
  futbolista01.getEdad;
  futbolista01.mostrarInformacion;

  print("""
PRIMER FUTBOLISTA
  nombre: ${futbolista01.getNombre()}
  edad. ${futbolista01.getEdad()}
  equipo: ${futbolista01.getEquipo()}
  posicion: ${futbolista01.getPosicion()}
  goles: ${futbolista01.getCantGoles()}
  Titularidad: ${futbolista01.esTitular()}
""");

  print('*' * 30);

  Futbolista futbolista02 = Futbolista("Real Madrid", "DC", 3, "Miguel", 17);
  futbolista02.setEquipo("Real Madrid");
  futbolista02.getEquipo();
  futbolista02.setPosicion("DC");
  futbolista02.getPosicion();
  futbolista02.setCantGoles(3);
  futbolista02.getCantGoles();
  futbolista02.esTitular();
  futbolista02.getNombre;
  futbolista02.getEdad;
  futbolista02.mostrarInformacion;

  print("""
SEGUNDO FUTBOLISTA 
  nombre: ${futbolista02.getNombre()}
  edad. ${futbolista02.getEdad()}
  equipo: ${futbolista02.getEquipo()}
  posicion: ${futbolista02.getPosicion()}
  goles: ${futbolista02.getCantGoles()}
  Titularidad: ${futbolista02.esTitular()}
""");

  print('*' * 50);

  Programador programador01 = Programador("Aguas Manizales", 1200000, "Daniel", 17);
  programador01.setEmpresa("Aguas Manizales");
  programador01.getEmpresa();
  programador01.setSalario(1200000);
  programador01.getSalario();
  programador01.obtenerSalarioNeto(1200000);
  programador01.getNombre;
  programador01.getEdad;
  programador01.mostrarInformacion();

  print("""
PRIMER PROGRAMADOR
  nombre: ${programador01.getNombre()}
  edad: ${programador01.getEdad()}
  empresa: ${programador01.getEmpresa()}
  salario: ${programador01.getSalario()}
  salario Neto: ${programador01.obtenerSalarioNeto(1200000)}
""");

  print('*' * 30);

  Programador programador02 = Programador("Chec", 1200000, "Miguel", 17);
  programador02.setEmpresa("Chec");
  programador02.getEmpresa();
  programador02.setSalario(1200000);
  programador02.getSalario();
  programador02.obtenerSalarioNeto(1200000);
  programador02.getNombre;
  programador02.getEdad;
  programador02.mostrarInformacion();

  print("""
SEGUNDO PROGRAMADOR
  nombre: ${programador02.getNombre()}
  edad: ${programador02.getEdad()}
  empresa: ${programador02.getEmpresa()}
  salario: ${programador02.getSalario()}
  salario Neto: ${programador02.obtenerSalarioNeto(1200000)}
""");

print('*' * 50);

List<Futbolista> Futbolistas = [];
List<Programador> Programadores = [];



while (true) {

print("Menu:");
print("1.Agregar futbolista.");
print("2.Agregar programador.");
print("3.Mostrar a los futbolistas agregados.");
print("4.Mostrar a los programadores agregados.");

int opcion = int.parse(stdin.readLineSync()!);

  switch (opcion) {
  case 1:
  
    print("Ingrese el nombre del futbolista 1");
    String nombre1 = stdin.readLineSync()!;

    print("Ingrese la edad del futbolista: ");
    int edad1 = int.parse(stdin.readLineSync()!);

    print("Ingrese el equipo del futbolista: ");
    String equipo1 = stdin.readLineSync()!;

    print("Ingrese la posicion del futbolista: ");
    String posicion1 = stdin.readLineSync()!;

    print("Ingrese la cantidad de goles: ");
    int cantGoles1 = int.parse(stdin.readLineSync()!);

    Futbolista futbolista1 = Futbolista(equipo1, posicion1, cantGoles1, nombre1, edad1);


    Futbolistas.add(futbolista1);

    break;

  case 2: 

    print("Ingrese el nombre del programador: ");
    String nombre2 = stdin.readLineSync()!;

    print("Ingrese la edad del programador: ");
    int edad2 = int.parse(stdin.readLineSync()!);

    print("Ingrese la empresa en la que esta el programador: ");
    String empresa = stdin.readLineSync()!;

    print("Ingrese el salario del programador: ");
    double salario = double.parse(stdin.readLineSync()!);

    Programador programador1 = Programador(empresa, salario, nombre2, edad2);

    Programadores.add(programador1);

    break;

  case 3:

    for (var i = 0; i < Futbolistas.length; i++) {
      Futbolistas[i].mostrarInformacion();
}
    /*print('*' * 30);
    print("""
        Los datos de los futbolistas agregados son: 
        ${Futbolistas = []}
    """);
    print('*' * 30);*/

    break;

  case 4: 

  for (var i = 0; i < Programadores.length; i++) {
      Programadores[i].mostrarInformacion();
}
    /*print('*' * 30);
    print("""
      Los datos de los programadores agregaso son: 
      ${Programadores}
""");
    print('*' * 30);*/

    break;
    default:
        print("Esta opcion no existe, vuelva a intentarlo.");
}
}

}

