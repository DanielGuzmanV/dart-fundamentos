// Ejemplo: sumar y calcular el promedio de los numeros

import 'dart:io';

void main() {

  // Solicita numeros y calcula el promedio de los numeros (Elemplo similar al anterior)
  print('Ingresa numeros separados por comas');
  String? entrada = stdin.readLineSync();

  if(entrada != null && entrada.isNotEmpty) {

    List<int> numeros = entrada.split(',').map(int.parse).toList();
    
    int suma = numeros.reduce(sumaValor);
    double promedio = suma / numeros.length;

    print('Suma: $suma, Promedio: ${promedio.toStringAsFixed(2)}');

  } else {
    print('No se ingreso ningun numero');
  }

}

// Funcion suma
int sumaValor(int value1, int value2) {
  return value1 + value2;
}

