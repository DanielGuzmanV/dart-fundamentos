// Funciones como parametros

import 'dart:io';

void main() {

  // Ejemplo 4: Usamos funciones como parametros
  // Aplicacion de una operacion matematica a todos los elementos de una lista

  List<int> numerosPares = [2,4,6,8,10];

  // Doblar cada numero
  List<int> doblados = aplicarOperacion(numerosPares,(num) => num * 2);
  print('Los dobles son: $doblados');

  // Calcular el cubo de cada numero
  List<int> cubos = aplicarOperacion(numerosPares, (num) => num * num * num);
  print('Los cubos son: $cubos');

}

List<int> aplicarOperacion(List<int> numeros, int Function(int) operacion) {
  return numeros.map(operacion).toList();
}








