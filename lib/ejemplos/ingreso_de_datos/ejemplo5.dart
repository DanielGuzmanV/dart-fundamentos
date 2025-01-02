// Para poder interactuar con el usuario usaremos la funcion: stdin.readLineSync()
// del paquete "dart:io", primero importaremos ese paquete

import 'dart:io';

void main() {
  // Ejemplo 5: validacion de datos ingresados
  // Esto es una buena practica para validar lo que el usuario
  // ingresa, asi evitamos errores

  print('Ingresa un numero entero: ');

  String? entrada = stdin.readLineSync();
  try {
    int numero = int.parse(entrada!);
    print('Ingresaste el numero: $numero');
  } catch (e) {
    print('Por favor, ingresa un numero valido.');
  }
}
