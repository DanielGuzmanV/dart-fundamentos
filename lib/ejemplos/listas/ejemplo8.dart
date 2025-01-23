// Ordenar y buscar elementos con iteracion

import 'dart:io';

void main() {

  // Solicitar a una lista de numeros, los ordena y permite buscar uno
  print('Ingresa numeros separados por comas');
  String? entradaNumeros = stdin.readLineSync();

  if(entradaNumeros != null && entradaNumeros.isNotEmpty) {

    List<int> listaNumeros = entradaNumeros.split(',').map(int.parse).toList();
    print('Lista de numeros creada: $listaNumeros');

    // Ordenamos:
    listaNumeros.sort();
    print('Lista ordenada: $listaNumeros');

    print('Ingrese el numero que desea buscar: ');
    try {
      int busquedaNumero = int.parse(stdin.readLineSync()!);
      if(busquedaNumero != 0) {

        if(listaNumeros.contains(busquedaNumero)){
          print('El numero $busquedaNumero esta en la posicion ${listaNumeros.indexOf(busquedaNumero)}');
        } else {
          print('El numero $busquedaNumero no esta en la lista');
        }

      } else {
        print('Ingrese un numero mayor a cero');
      }
    } catch (e) {
      print('No ingreso ningun numero, vuelva a intentarlo');
    }


  }


}


