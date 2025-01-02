// Para poder interactuar con el usuario usaremos la funcion: stdin.readLineSync()
// del paquete "dart:io", primero importaremos ese paquete

import 'dart:io';

void main() {
  // Ejemplo 3: leer un numero decimal ingresado por el usuario
  print('¿Cual es tu altura en metros?');

  // Lee la entrada como texto y convierte a decimal
  String? entrada = stdin.readLineSync();
  double altura = double.parse(entrada!);

  // Mostramos el resultado
  print('Tu altura es $altura metros.');
}


