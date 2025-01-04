// Funciones como parametros

import 'dart:async';
import 'dart:io';

void main() {

  // Ejemplo 4: Usamos funciones como parametros

  List<int> numerosPares = [2,4,6,8,10];

  // Doblar cada numero
  List<int> doblados = aplicarOperacion(numerosPares,(num) => num * 2);
  print('Los dobles son: $doblados');

  // Calcular el cubo de cada numero
  List<int> cubos = aplicarOperacion(numerosPares, (num) => num * num * num);
  print('Los cubos son: $cubos');

  // -------------------------------------------------------------- \\
  print('---------------------------------------------------');
  // Ejemplo 4.1: Usamos funciones como parametros
  // Aqui usamos una funcion aparte que es "sumaNumeros"
  operarNumeros(20, 30, sumaNumeros);

  // Aqui usamos una funcion directa (en flecha)
  operarNumeros(30, 10, (number1, number2) => number1 - number2,);

  // Aqui usamos una funcion normal
  operarNumeros(20, 10, (number1, number2) {
    // return directo
    // return number1 * number2;

    // return con variable
    int result;
    result = number1 * number2;
    return result;
  });

  // -------------------------------------------------------------- \\
  print('---------------------------------------------------');
  // Ejemplo 4.2: Usamos funciones como parametros
  List<int> numerosEnteros = [10,15,20,25,30,35,40,45,50,55,60,65];

  filtrar(numerosEnteros, (number) => number > 20); // Numeros mayores a 20
  
  filtrar(numerosEnteros, (number) {
    return number.isEven; // Numeros pares
  }); 

  filtrar(numerosEnteros, esImpar);

  // -------------------------------------------------------------- \\
  print('---------------------------------------------------');
  // Ejemplo 4.3: Usamos funciones como parametros
  manejarEventos('Click', () {
    print('Boton clickeado');
  });

  manejarEventos('Vacio', funcionVacia);

  nuevoEvento('click', procesarEvento);

  // -------------------------------------------------------------- \\
  print('---------------------------------------------------');
  // Ejemplo 4.3: Usamos funciones como parametros
  nuevaOperacion(30, 50, (number) => number + 10);
  nuevaOperacion(20, 80, (number) => number - 10);

  nuevaOperacion(40, 70, sumaDatos);

}

// Ejemplo: Aplicacion de una operacion matematica a todos los elementos de una lista
List<int> aplicarOperacion(List<int> numeros, int Function(int) operacion) {
  return numeros.map(operacion).toList();
}

// Ejemplo:  Sumar numeros usando una funcion
void operarNumeros(int a, int b, int Function(int, int) operacion) {
  print('Resultado es: ${operacion(a, b)}');
}

// Funcion de ejemplo que va ir como parametro
int sumaNumeros(int a, int b) {
  return a + b;
}

// Ejemplo: Filtrar datos dinamicamente
void filtrar(List<int> datos, bool Function(int) funcionCriterio) {
  List<int> resultado = datos.where(funcionCriterio).toList();
  print('Filtrado: $resultado');
}

// Funcion de ejemplo que va ir como parametro
bool esImpar( int number ) {
  return number % 2 != 0;
}

// Ejemplo: Manejador de eventos (Con una funcion vacia)
void manejarEventos(String tipo, Function accion){
  print('Eventos: $tipo');
  accion();
}

// Funcion de ejemplo que va ir como parametro
void funcionVacia() {
  print('Ejemplo de funcion vacia');
}

// Ejemplo similar al anterior
void nuevoEvento(String tipo, String Function(String) accionString) {
  print(accionString(tipo));
}

// Funcion de ejemplo que va ir como parametro
String procesarEvento(String tipo) {
  return 'Procesando evento de tipo: $tipo';
}

// Ejemplo: Funcion con un solo parametro
void nuevaOperacion(int a, int b, int Function(int) operacion) {
  int result = operacion(b); // Podemos cambiar el valor por "a" o "b"
  // int result = operacion(a);
  print('El resultado es: $result');
}

int sumaDatos(int number1) {
  return number1 + 100;
}


