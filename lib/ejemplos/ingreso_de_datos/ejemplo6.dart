// Para poder interactuar con el usuario usaremos la funcion: stdin.readLineSync()
// del paquete "dart:io", primero importaremos ese paquete

import 'dart:io';

void main() {
  // Tenemos dos formas de ingresar datos por el usuario
  // Primera forma:
  print('Ingrese el primer numero');
  String? inputNumber = stdin.readLineSync(); // Se indica que ingrese el dato que sera en string
  int number1 = int.parse(inputNumber!); // Convertimos ese dato en un entero

  // Segunda forma:
  print('Ingrese el segundo numero');
  int number2 = int.parse(stdin.readLineSync()!); // Indicamos directamente al usuario que ingrese el dato

  // Realizamos una pequeña operacion
  int sumaNumeros = number1 + number2;

  print('El resultado de la suma es: $sumaNumeros');
}


