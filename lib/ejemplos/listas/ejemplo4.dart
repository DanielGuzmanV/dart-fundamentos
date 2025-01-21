// Ejemplos ingresando datos:

import 'dart:io';

void main() {

  // Agregar un numeros a la lista
  List<int> listaNumeros = [];

  bool active = true;
  while(active) {
    print(' --- Seleccion una opcion ---');

    print('1. Agregar numero');
    print('2. Eliminar numero');
    print('3. Mostras numeros');
    print('4. Operacion');
    print('5. Verificar par e impar y primos');
    print('6. Suma de todos los valores');
    print('7. Salir');

    String? opcion = stdin.readLineSync();

    // ----------------------------------------------------
    if(opcion == '1') {
      print('Cuantos numeros ingresara? ');
      print('--------------------------');
      
      try {
        int numero = int.parse(stdin.readLineSync()!);
        if (numero != 0) {
          for(int idx = 0; idx < numero; idx++) {
            try {
              print('Ingrese el numero: ');
              int numeroList = int.parse(stdin.readLineSync()!);
              if(numeroList != 0){
                listaNumeros.add(numeroList);
                print('En el indice $idx esta el numero: $numeroList ');
              }
            } catch (e) {
              print('Entrada no valida. Por favor ingrese un numero entero');
            }
          }
        } else{
          print('Numero no valido');
        }
      } catch (e) {
        print('Entrada no valida. Por favor ingrese un numero entero');
      }

    // ----------------------------------------------------
    } else if(opcion == '2') {
      print('Ingrese el numero a eliminar: ');
      print('----------------------------');

      try {
        int numero = int.parse(stdin.readLineSync()!);
        if(numero != 0) {
          if(listaNumeros.remove(numero)){
            print('$numero eliminado de la lista');
          } else{
            print('Numero no encontrado');
          }
        } else {
          print('Numero no valido');
        }
      } catch (e) {
        print('Entrada no valida. Por favor ingrese un numero entero');
      }

    // ----------------------------------------------------
    } else if(opcion == '3') {
      print('Los numeros en la lista son: ');
      print('----------------------------');

      if(listaNumeros.isEmpty) {
        print(' -- La lista esta vacia --');
      } else {

        // Podemos mostrar los elementos de la lista:
        // for (var elemento in listaNumeros) {
        //   print('- $elemento');
        // }
        
        // O podemos mostrar la lista entera:
        print('los numeros de la lista son: $listaNumeros');

      }

    // ----------------------------------------------------
    }else if(opcion == '4') {
      print('Escoga la operacion: ');
      print('1. Suma');
      print('1. Multiplicacion');

      String? selectOperacion = stdin.readLineSync();
      if(selectOperacion == '1') {
        if (listaNumeros.isNotEmpty) {
          try {
            print('Ingrese el numero para sumar: ');
            int valorNumber = int.parse(stdin.readLineSync()!);
            if(valorNumber != 0){
              // List<int> listaSuma = listaNumeros.map((valor) => calcularSuma(valor, valorNumber)).toList();
              List<int> listaSuma = listaNumeros.map((valor) {
                return calcularSuma(valor, valorNumber);
              }).toList();

              print('Resultado de la suma: $listaSuma');

            } else{
              print('Numero tiene que ser mayor a cero...');
            }
          } catch (e) {
            print('Entrada no valida. Por favor ingrese un numero entero');
          }
        } else {
          print('Lista vacia, no se puede realizar operacion');
        }
      } else if( selectOperacion == '2') {
        if (listaNumeros.isNotEmpty) {
          try {
            print('Ingrese el numero para multiplicar: ');
            int valorNumber = int.parse(stdin.readLineSync()!);
            if (valorNumber != 0) {
              // List<int> listaMultiplicacion = listaNumeros.map((valor) => calcularMultiplicacion(valor, valorNumber)).toList();
              List<int> listaSuma = listaNumeros.map((valor) {
                return calcularMultiplicacion(valor, valorNumber);
              }).toList();

              print('Resultado de la suma: $listaSuma');
            } else {
              print('Numero tiene que ser mayor a cero...');
            }
          } catch (e) {
            print('Entrada no valida. Por favor ingrese un numero entero');
          }
        } else {
          print('Lista vacia, no se puede realizar operacion');
        }
      } else {
        print('Opcion invalida...');
      }

    // ----------------------------------------------------
    } else if(opcion == '5') {
      print('Seleccione una opcion:');
      print('1. Verificar pares de la lista');
      print('2. verificar impares de la lista');
      print('3. verificar si es primo');

      String? selecNumber = stdin.readLineSync();
      if(listaNumeros.isNotEmpty){
        if (selecNumber == '1') {
          List<int> pares = listaNumeros.where(esPar).toList();
          print('Los pares son: $pares');
        } else if (selecNumber == '2') {
          List<int> impares = listaNumeros.where(esImpar).toList();
          print('Los impares son: $impares');
        } else if (selecNumber == '3') {
          List<int> primos = listaNumeros.where(selecPrimo).toList();
          print('Los primos son: $primos');
        } else {
          print('Opcion no valida');
        }
      } else{
        print('- Lista vacia, primero agregue numeros a la lista');
      }
    // ----------------------------------------------------
    } else if(opcion == '6') {
      if(listaNumeros.isNotEmpty){

        int sumaNumeros = listaNumeros.reduce((valor, elemento) {
          int resultado = valor + elemento;
          return resultado;
        });

        print('La suma de la lista: $listaNumeros es igual a $sumaNumeros');
      } else {
        print('Lista sin valores, no se puede realizar operacion');
      }
    }
    else if(opcion == '7'){
      print('Saliendo...');
      active = false;

    } else {
      print('Opcion no valida');
    }

  }

}

// Calcular Suma
int calcularSuma(int number1, int number2 ) {
  return number1 + number2;
}

// Calcular Multiplicacion
int calcularMultiplicacion(int number1, int number2 ) {
  return number1 * number2;
}

// Seleccionar numeros pares de la lista
bool esPar(int number1) {
  return number1 % 2 == 0;
}

// Seleccionar numeros impares de la lista
bool esImpar(int number1) {
  return number1 % 2 != 0;
}

// Seleccionar primos
bool selecPrimo(int number1) {
  bool esPrimo = true;
  if(number1 <= 1) {
    esPrimo = false; 
  } else {
    for(int idx = 2; idx <= number1 ~/ 2; idx++) {
      if(number1 % idx == 0) {
        esPrimo = false;
        break;
      }
    }
  }

  return esPrimo;
}

