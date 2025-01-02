// -- Ejemplos de uso de estructuras de control --

import 'dart:math';
import 'dart:mirrors';

void main() {

  // -- Condicionales --
  int edad = 18;
  if(edad >= 18) {
    print('Eres mayor de edad');
  } else {
    print('Eres menor de edad');
  }
  
  // -- Condicional anidada-- 
  int temperatura = 35;

  if(temperatura >= 30) {
    print('No puede hacer tanta CALOOOR!');    
  } else if (temperatura >= 20) {
    print('El clima esta god');
  } else {
    print('No puede hacer tanto FRIOOO!');
  }

  // -- bucle for(basico) --
  for(int idx = 1; idx <= 5; idx++) {
    print('Los numeros son: $idx');
  }

  // -- bucle while(intermedio) -- 
  int contador = 3; 

  while(contador > 0) {
    print('Contando: $contador');
    contador--;
  }

  // -- Uso de bucles con colecciones o listas(avanzado) --
  List<int> numbers = [10, 20, 30, 40, 50];

  for(int idx in numbers) {
    if(idx > 25) {
      print('$idx es mayor que 25');
    } else {
      print('$idx es menor que 25');
    }
  }

  // -- Combinacion de todo --
  // Mapa o lista de estudiantes con sus calificaciones
  Map<String, int> estudiantes = {
    'Marcelo': 85,
    'Ana': 92,
    'Pepe': 74,
    'Carlos': 60
  };

  // Lista de calificaciones:
  List<int> calificaciones = [85, 92, 74, 60];

  // Clasificamos segun la calificacion
  estudiantes.forEach((name, ratings) {
    if(ratings >= 90){
      print('$name tiene calificacion excelente: $ratings');
    } else if(ratings >= 75) {
      print('$name tiene buena calificacion: $ratings');
    } else {
      print('$name necesita mejorar: $ratings');
    }

  });

  calificaciones.forEach((ratings) {
    if(ratings > 80){
      print('Buenas notas: $ratings');
    }
  },);
}