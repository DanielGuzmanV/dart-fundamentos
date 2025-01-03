// Los siguientes ejemplos seran una mezcla de todo lo que se vio
// Incluido la interaccion con el usuario:

import 'dart:io';

void main() {

  // Ejemplo 1: Calculadora basica interactiva
  // El usuario puede elegir entre suma, resta, multiplicacion o division

  try {

    // Mostramos las opciones:
    print('Calculadora basica');
    print('Elige una operacion: ');
    print('1. Suma');
    print('2. Resta');
    print('3. Multiplicacion');
    print('4. Division');

    // Leer la opcion del usuario
    String? opcionEntrada = stdin.readLineSync();
    int opcion = int.parse(opcionEntrada!);

    // Leemos los numeros ingresados
    print('Ingresa el primer numero: ');
    double numero1 = double.parse(stdin.readLineSync()!);

    print('Ingresa el segundo numero: ');
    double numero2 = double.parse(stdin.readLineSync()!);

    // realizar la operacion (Esto se puede optimizar, evitando muchos else if)
    double resultado = 0;
    if(opcion == 1) {
      resultado = numero1 + numero2;
      print('Resultado: $numero1 + $numero2 = $resultado');
    } else if(opcion == 2) {
      resultado = numero1 - numero2;
      print('Resultado: $numero1 - $numero2 = $resultado');
    } else if(opcion == 3) {
      resultado = numero1 * numero2;
      print('Resultado: $numero1 x $numero2 = $resultado');
    } else if(opcion == 4) {
      if(numero2 == 0) {
        print('error: No se puede dividir entre cero');
      }else{
        resultado = numero1 / numero2;
        print('Resultado: $numero1 / $numero2 = $resultado');
      }
    } else{
      print('Opcion no valida');
    }

  } catch (e) {
    print('Entrada no valida. Por favor, intenta nuevamente');
  }
}

