// Para poder interactuar con el usuario usaremos la funcion: stdin.readLineSync()
// del paquete "dart:io", primero importaremos ese paquete

import 'dart:io';

void main() {
  // Ejemplo 2: leer un numero entero ingresado por el usuario
  print('Cuantos años tienes?');

  // Leer entrada como texto y convertirlo a entero
  String? entrada = stdin.readLineSync();
  int edad = int.parse(entrada!);

  // Mostrar resultado
  print('La edad es: $edad años');

  // Nota: Usamos (int.parse()) para convertir una entrada de texto en un numero entero
  
}

