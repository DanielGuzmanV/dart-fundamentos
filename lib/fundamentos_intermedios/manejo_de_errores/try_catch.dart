// Manejo de errores, son esenciales para escribir aplicaciones robustas
// ----- Usamos Try Catch -----

import 'dart:io';

void main() {
  
  try {
    
    // Aqui ingresamos los datos
    print('Ingrese el numerador');
    int numerador = int.parse(stdin.readLineSync()!);

    print('Ingrese el denominador');
    int denominador = int.parse(stdin.readLineSync()!);

    // ---------------------------------------------

    int resultado = numerador ~/ denominador; // Si la division es entre 0 nos dara un error, que esta en el catch
    print('El resultado es: $resultado');
    
  } catch (e) {
    print('Error encontrado: $e');
  }
}




