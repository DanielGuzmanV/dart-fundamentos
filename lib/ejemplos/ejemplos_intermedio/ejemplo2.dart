import 'dart:io';

void main() {

  // Ejemplo 2: Verificar si un numero es primo
  // Determinar si un numero ingresado por el usuario es primo o no

  try {
    
    print('Ingresa un numero entero: ');
    int numero = int.parse(stdin.readLineSync()!);

    bool esPrimo = true;

    if(numero <= 1) {
      esPrimo = false;
    } else{
      for(int idx = 2; idx <= numero ~/ 2; idx++) {
        // (numero ~/ 2) es un division truncada, donde elimina los decimales
        // for (int idx = 2; idx <= sqrt(numero).toInt(); idx++) tambien podemos usar la raiz cuadrada
        
        if(numero % idx == 0) {
          esPrimo = false;
          break;
        }
      }
    }

    if(esPrimo == true) {
      print('$numero es un numero primo');
    } else{
      print('$numero no es un numero primo');
    }
  } catch (e) {
    print('Por favor, ingrese un numero valido');
  }


}