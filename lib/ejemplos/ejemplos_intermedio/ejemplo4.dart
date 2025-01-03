import 'dart:io';

void main() {
  // Ejemplo 4: simular un cajero automatico
  // El usuario puede consultar su saldo o retirar dinero

  double saldo = 1000.0;
  bool cajaActiva = true;

  while( cajaActiva == true) {
    print('\nCajero automatico');

    print('1. Consultar saldo');
    print('2. Depositar dinero');
    print('3. Retirar dinero');
    print('4. Salir');

    String? opcion = stdin.readLineSync();

    if(opcion == '1') {
      print('Tu saldo actual es: \$${saldo.toStringAsFixed(2)}');

    } else if(opcion == '2') {
      print('Ingresa la cantidad a depositar: ');
      double deposito = double.parse(stdin.readLineSync()!);

      if(deposito > 0) {
        saldo = saldo + deposito;
        print('Has depositado \$${deposito.toStringAsFixed(2)}');
      } else {
        print('Cantidad no valida');
      }

    } else if(opcion == '3') {
      print('Ingrese la cantidad a retirar: ');
      double retiro = double.parse(stdin.readLineSync()!);
    
      if(retiro > saldo) {
        print('Fondos insuficientes');
      } else if(retiro <= 0) {
        print('Cantidad no valida');
      } else{
        saldo = saldo - retiro;
        print('Has retirado \$${retiro.toStringAsFixed(2)}');
      }

    } else if(opcion == '4') {
      print('Gracias por usar el cajero automatico. Adios...');
      cajaActiva = false;
    } else {
      print('Opcion no valida');
    }

  }

}