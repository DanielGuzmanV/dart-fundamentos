// Ejemplo facil: Crear y mostrar una lista

import 'dart:io';
void main() {

  // Solicita al usuario que ingrese números y los muestra.
  print('Ingresa numeros separados por comas (Ejemplo: 1,2,3): ');
  String? entrada = stdin.readLineSync();

  if(entrada != null && entrada.isNotEmpty) {
    List<int> numeros = entrada.split(',').map(int.parse).toList();
    print('Los numeros ingresados son: $numeros');
  } else {
    print('No ingresaste ningun numero');
  }

  print('Para comprender: ');
  // Datos adicionales: .split(',') divide una cadena de texto usando "," o cualquier caracter, que sera como delimitador
  String numeroEntrada = "1,2,3,4";
  List<String> listaString = numeroEntrada.split(',');
  print('El resultado es: $listaString');

  // convertimos la lista a un iterable y con .map() convertirmos a enteros
  List<String> cadenas = listaString;
  Iterable<int> numerosIterables = cadenas.map(int.parse);
  print('Los numeros son: $numerosIterables');


  // Ahora si convertimos a una lista el iterable "numerosIterables"
  List<int> listaEnteros = numerosIterables.toList();
  print('La lista es: $listaEnteros');

  // Verificamos que si es una lista de enteros
  print('Lista de enteros: ${listaEnteros.runtimeType}');
  print('Lista de string: ${listaString.runtimeType}');
}