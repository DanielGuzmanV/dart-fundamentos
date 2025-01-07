// Estructura de datos
// ---- Colas y pilas ----

import 'dart:typed_data';

void main () {

  
  // Pilas: Ultimo en entrar, primero en salir
  List<int> pila = [];

  // Apilamos elementos (push)
  pila.add(10);
  pila.add(20);
  pila.add(30);
  print('Estado de pila: $pila');

  // Desapilar el ultimo elemento(pop)
  int ultimo = pila.removeLast();
  print('Elemento eliminado: $ultimo');
  print('Estado de pila: $pila');

  print('----------------------------');

  // Colas: Primero en entrar, primero en salir
  List<int> cola = [];
  
  // Agregamos elemento en cola(añadir al final)
  cola.add(100);
  cola.add(200);
  cola.add(300);
  print('Estado de la cola: $cola');

  // Quitar el primer elemento de la cola
  int primerElemento = cola.removeAt(0);
  print('Elemento eliminado: $primerElemento');
  print('Estado de la cola: $cola');


}



