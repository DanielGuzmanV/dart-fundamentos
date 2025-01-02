// Para poder interactuar con el usuario usaremos la funcion: stdin.readLineSync()
// del paquete "dart:io", primero importaremos ese paquete

import 'dart:io';

void main() {
  // Ejemplo 1: leer un texto ingresado por el usuario
  print('¿Cual es tu nombre?');

  // Leer la entrada del usuario
  String? nombre = stdin.readLineSync();

  print('Hola, $nombre');

}



