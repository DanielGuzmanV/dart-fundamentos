// Buscar y reemplazar elementos
import 'dart:io';

void main() {

  // Permite al usuario buscar un valor en la lista y reemplazarlo con otro
  print('Ingresa palabras separadas por comas');
  String? entrada = stdin.readLineSync();

  if(entrada != null && entrada.isNotEmpty) {

    List<String> listaPalabras = entrada.split(',');
    print('Lista creada: $listaPalabras');

    print('Ingresa la palabra que deseas reemplazar: ');
    String? palabraReemplazo = stdin.readLineSync();

    print('Ingresa la nueva palabra: ');
    String? palabraNueva = stdin.readLineSync();

    if(palabraReemplazo != null && palabraNueva != null) {

      if(listaPalabras.contains(palabraReemplazo)) {

        listaPalabras = listaPalabras.map((idxPalabra) {
          return idxPalabra == palabraReemplazo ? palabraNueva : idxPalabra;
        }).toList();
        print('Lista actualizada: $listaPalabras');
      } else {
        print('La palabra "$palabraReemplazo" no esta en la lista');
      }

    } else {
      print('No ingresaste palabras validas');
    }

  } else {
    print('No ingresaste ninguna palabra');
  }

}


