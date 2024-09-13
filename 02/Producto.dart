import 'dart:io';

abstract class Producto {
  int _codigo_producto;
  String _nombre_producto;
  bool _disponible;
  double _precio;

  Producto(this._codigo_producto, this._nombre_producto, this._disponible,
      this._precio);
  //SET DE MOSTRAR INFORMACION
  String mostrarInformacionProducto() {
    print('*' * 50);
    print("Codigo: $_codigo_producto");
    print("Nombre: $_nombre_producto");
    print("Disponibilidad: $_disponible");
    print("Precio: $_precio");
    print('*' * 50);
    return mostrarInformacionProducto();
    /*print("""
INFORMACION DEL PRODUCTO
  Codigo: $_codigo_producto
  Nombre: $_nombre_producto
  Disponibilidad: $_disponible
  Precio: $_precio
""");*/
  }

  //GET DE MOSTRAR INFORMACION
  /*String getMostrarInformacion() {
    return mostrarInformacionProducto();
  }*/

  double realizaDescuento();
}

class DiscoDuro extends Producto {
  String _tipoDisco;
  int _capacidad;

  DiscoDuro(this._tipoDisco, this._capacidad, int _codigo_producto,
      String _nombre_producto, bool _disponible, double _precio)
      : super(_codigo_producto, _nombre_producto, _disponible, _precio);

  @override
  String mostrarInformacionProducto() {
    super.mostrarInformacionProducto();
    print("DATOS DEL DISCO DURO:");
    print("Tipo de Disco: $_tipoDisco");
    print("Capacidad: $_capacidad GB");
    return mostrarInformacionProducto();
  }

  @override
  double realizaDescuento() {
    return _precio * 0.80;
  }
}

class Marcador extends Producto {
  String _colorTinta;
  String _tipoMarcador;

  Marcador(this._colorTinta, this._tipoMarcador, int _codigo_producto,
      String _nombre_producto, bool _disponible, double _precio)
      : super(_codigo_producto, _nombre_producto, _disponible, _precio);

  @override
  String mostrarInformacionProducto() {
    super.mostrarInformacionProducto();
    print("DATOS DEL MARCADOR: ");
    print("Color de la tinta: $_colorTinta");
    print("Tipo Marcador: $_tipoMarcador");
    return mostrarInformacionProducto();
  }

  @override
  double realizaDescuento() {
    return _precio * 0.90;
  }
}

abstract class ElectroDomestico extends Producto {
  int _consumoWatts;
  bool _tieneBluetooth;

  ElectroDomestico(
      this._consumoWatts,
      this._tieneBluetooth,
      /*int _codigo_producto,
      String _nombre_producto,*/
      bool _disponible,
      double _precio)
      : super(0, "", _disponible, _precio);

  @override
  String mostrarInformacionProducto() {
    super.mostrarInformacionProducto();
    print("DATOS DEL ELECTRODOMESTICO");
    print("Consumo Watts:  $_consumoWatts");
    print("Bluetooth: $_tieneBluetooth");
    return mostrarInformacionProducto();
  }

  double calcularPrecioConsumo(int horas);
}

class Portatil extends ElectroDomestico {
  int _tamanio_memoria;
  String _procesador;

  Portatil(this._tamanio_memoria, this._procesador, int _consumoWatts,
      bool _tieneBluetooth, bool _disponible, double _precio)
      : super(_consumoWatts, _tieneBluetooth, _disponible, _precio);

  @override
  String mostrarInformacionProducto() {
    super.mostrarInformacionProducto();
    print("DATOS DEL PORTATIL: ");
    print("Tamaño de la memoria: $_tamanio_memoria");
    print("Procesador: $_procesador");
    print("Disponibilidad: $_disponible");
    print("Precio: $_precio");
    return mostrarInformacionProducto();
  }

  @override
  double realizaDescuento() {
    return _precio * 0.70;
  }

  @override
  double calcularPrecioConsumo(int horas) {
    double total;
    total = _consumoWatts * horas * 0.001 * _precio;
    return total;
  }
}

class Parlante extends ElectroDomestico {
  String _potencia;
  double _peso;

  Parlante(this._potencia, this._peso, int _consumoWatts, bool _tieneBluetooth,
      bool _disponible, double _precio)
      : super(_consumoWatts, _tieneBluetooth, _disponible, _precio);

  @override
  String mostrarInformacionProducto() {
    super.mostrarInformacionProducto();
    print("DATOS DEL PARLANTE: ");
    print("Potencia: $_potencia");
    print("Peso: $_peso");
    print("Disponibilidad: $_disponible");
    print("Precio: $_precio");
    return mostrarInformacionProducto();
  }

  @override
  double realizaDescuento() {
    return _precio * 0.70;
  }

  @override
  double calcularPrecioConsumo(int horas) {
    double total;
    total = _consumoWatts * horas * 0.001 * _precio;
    return total;
  }
}

void main(List<String> args) {
  List<Producto> Productos = [];
  List<ElectroDomestico> Electrodomesticos = [];
  /*List<Marcador> Marcadores = [];
  List<DiscoDuro> Disco = [];
  List<Portatil> Portatiles = [];
  List<Parlante> Parlantes = [];*/

  while (true) {
    print("MENU: ");
    print("1.Crear Disco Duro.");
    print("2.Crear Marcador.");
    print("3.Crear Portátil.");
    print("4.Crear Parlante.");
    print("5.Vender Disco Duro.");
    print("6.Vender Marcador.");
    print("7.Vender Portátil.");
    print("8.Vender Parlante.");
    print("9.Calcular precio consumo Portátil. ");
    print("10.Calcular precio consumo Parlante.");
    print("11.Salir.");

    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print('*' * 100);
        print("INGRESE LOS SIGUIENTES DATOS PARA CREAR EL DISCO DURO: ");
        print("Ingrese el tipo de Disco duro: ");
        String tipoDisco = stdin.readLineSync()!;

        print("Ingrese la capacidad del Disco duro: ");
        int capacidad = int.parse(stdin.readLineSync()!);

        print("Ingrese el codigo del Disco duro: ");
        int codigo = int.parse(stdin.readLineSync()!);

        print("Ingrese el nombre del Disco duro: ");
        String nombre = stdin.readLineSync()!;

        print("Ingrese el precio del Disco duro: ");
        double precio = double.parse(stdin.readLineSync()!);
        print('*' * 100);

        DiscoDuro disco01 =
            DiscoDuro(tipoDisco, capacidad, codigo, nombre, true, precio);

        disco01.mostrarInformacionProducto();

        Productos.insert(0, disco01);
        break;

      case 2:
        print('*' * 100);
        print("INGRESE LOS SIGUIENTES DATOS PARA CREAR EL MARCADOR: ");
        print("Ingrese el color de la tinta: ");
        String color = stdin.readLineSync()!;

        print("Ingrese el tipo de marcador: ");
        String tipo = stdin.readLineSync()!;

        print("Ingrese el codigo del marcador: ");
        int codigoMarcador = int.parse(stdin.readLineSync()!);

        print("Ingrese el nombre del marcador :");
        String nombreMarcador = stdin.readLineSync()!;

        print("Ingrese el precio del Marcador: ");
        double precioMarcador = double.parse(stdin.readLineSync()!);
        print('*' * 100);

        Marcador marcador01 = Marcador(
            color, tipo, codigoMarcador, nombreMarcador, true, precioMarcador);

        marcador01.mostrarInformacionProducto();

        Productos.insert(1, marcador01);
        break;

      case 3:
        print('*' * 100);
        print("INGRESE LOS SIGUIENTES DATOS PARA INGRESAR EL PORTATIL: ");
        print("Ingrese el tamaño de la memoria del portatil: ");
        int tamanio = int.parse(stdin.readLineSync()!);

        print("Ingrese el procesador del portatil: ");
        String procesador = stdin.readLineSync()!;

        print("Ingrese el consumo de Watts del portatil: ");
        int consumo = int.parse(stdin.readLineSync()!);

        print("Ingrese el precio del portatil: ");
        double precioPortatil = double.parse(stdin.readLineSync()!);
        print('*' * 100);

        Portatil portatil01 =
            Portatil(tamanio, procesador, consumo, true, true, precioPortatil);

        portatil01.mostrarInformacionProducto();

        Electrodomesticos.insert(0, portatil01);
        break;

      case 4:
        print('*' * 100);
        print("INGRESE LOS SIGUIENTES DATOS PARA INGRESAR EL PARLANTE: ");
        print("Ingrese la potencia del parlante: ");
        String potenciaParlante = stdin.readLineSync()!;

        print("Ingrese el peso del parlante: ");
        double pesoParlante = double.parse(stdin.readLineSync()!);

        print("Ingrese el consumo de Watts del parlante: ");
        int consumoParlante = int.parse(stdin.readLineSync()!);

        print("Ingrese el precio del parlante: ");
        double precioParlante = double.parse(stdin.readLineSync()!);
        print('*' * 100);

        Parlante parlante01 = Parlante(potenciaParlante, pesoParlante,
            consumoParlante, true, true, precioParlante);

        parlante01.mostrarInformacionProducto();

        Electrodomesticos.insert(1, parlante01);
        break;

      case 5:
        print('*' * 100);
        print("DISCOS DUROS DISPONIBLES: ");
        if (Productos.length == 0) {
          print("No esta disponible el producto.");
        }
        print('*' * 100);
        Productos[0].realizaDescuento();
        Productos[0].mostrarInformacionProducto();
        /*
        for (var i = 0; i < Disco.length; i++) {
          DiscoDuro;
          Disco[i].mostrarInformacionProducto();
          Disco[i].realizaDescuento();
        }*/
        print('*' * 100);
        break;

      case 6:
        print('*' * 100);
        print("MARCADORES DISPONIBLES: ");
        if (Productos.length == 0) {
          print("No esta disponible el producto.");
        }
        print('*' * 100);
        Productos[1].realizaDescuento();
        Productos[1].mostrarInformacionProducto();
        /*for (var i = 0; i < Marcadores.length; i++) {
          Marcador;
          Marcadores[i].mostrarInformacionProducto();
          Marcadores[i].realizaDescuento();
        }*/
        print('*' * 100);
        break;

      case 7:
        print('*' * 100);
        print("PORTATILES DISPONIBLES");
        if (Electrodomesticos.length == 0) {
          print("No esta disponible el producto.");
        }
        print('*' * 100);
        Electrodomesticos[0].realizaDescuento();
        Electrodomesticos[0].mostrarInformacionProducto();
        /*for (var i = 0; i < Portatiles.length; i++) {
          Portatil;
          Portatiles[i].mostrarInformacionProducto();
          Portatiles[i].realizaDescuento();
        }*/
        print('*' * 100);
        break;

      case 8:
        print('*' * 100);
        print("PARLANTES DISPONIBLES: ");
        if (Electrodomesticos.length == 0) {
          print("No esta disponible el producto.");
        }
        print('*' * 100);
        Electrodomesticos[1].realizaDescuento();
        Electrodomesticos[1].mostrarInformacionProducto();
        /* for (var i = 0; i < Parlantes.length; i++) {
          Parlante;
          Parlantes[i].mostrarInformacionProducto();
          Parlantes[i].realizaDescuento();
        }*/
        print('*' * 100);
        break;

      case 9:
        print('*' * 100);
        print("CONSUMO PORTATIL: ");
        print("Cuanto horas uso el dispositivo: ");
        int horas = int.parse(stdin.readLineSync()!);
        Electrodomesticos[0].calcularPrecioConsumo(horas);

        print('*' * 100);
        break;

      case 10:
        print('*' * 100);
        print("CONSUMO PARLANTE: ");
        print("Cuanto horas uso el dispositivo: ");
        int horas = int.parse(stdin.readLineSync()!);
        Electrodomesticos[1].calcularPrecioConsumo(horas);

        print('*' * 100);
        break;

      case 11:
        print('*' * 100);
        print("Saliendo de la pagina.");
        print('*' * 100);
        exit(0);
      default:
        print("Esta opcion no existe, vuelva a intentarlo.");
    }
  }
}
