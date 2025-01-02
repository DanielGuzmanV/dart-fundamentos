// Para poder interactuar con el usuario usaremos la funcion: stdin.readLineSync()
// del paquete "dart:io", primero importaremos ese paquete

import 'dart:io';

void main() {
  // Ejemplo 4: Combinar entradas y realizar operaciones

  // Solicitar precio
  print('Ingresa el precio del producto: ');

  String? entradaPrecio = stdin.readLineSync();
  double precio = double.parse(entradaPrecio!);

  // Solicitar cantidad
  print('Ingresa la cantidad que deseas comprar: ');
  String? entradaCantidad = stdin.readLineSync();
  int cantidad = int.parse(entradaCantidad!);

  // Calcular total
  double total = precio * cantidad;

  // Mostramos el total
  print('El total a pagar es: \$${total.toStringAsFixed(2)}');

  
}


