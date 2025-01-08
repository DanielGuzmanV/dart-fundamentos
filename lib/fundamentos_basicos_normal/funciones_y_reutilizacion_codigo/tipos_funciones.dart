void main() {

  // Ahora llamamos a cada uno de las funciones
  print('Resultado ejemplo 1:--------------');
  int resultado = multiplicacion(12, 10);
  print('El resultado es: $resultado');
  print('-----------------------------------');


  print('Resultado ejemplo 2:--------------');
  print('El resultado es: ${suma()}');
  print('-----------------------------------');


  print('Resultado ejemplo 3:--------------');
  funcion1();
  print('-----------------------------------');


  print('Resultado ejemplo 4:--------------');
  funcion2('Patricio');
  print('-----------------------------------');


  print('Resultado ejemplo 5:--------------');
  print('Resultado: ${saludar()}');
  print('-----------------------------------');


  print('Resultado ejemplo 6:--------------');
  print(nombre('Pedro'));
  print('-----------------------------------');


  print('Resultado ejemplo 7:--------------');
  print('El resultado es: ${resultado1(10)}');
  print('El resultado es: ${resultado2(25, 30)}');
  print('El resultado es: ${resultado3(23)}');
  print('-----------------------------------');


  print('Resultado ejemplo 8:--------------');
  print('El resultado es: ${funcionSuma()}');
  print('-----------------------------------');


  print('Resultado ejemplo 9:--------------');
  // Usamos la primera forma
  print('Con parametro opcional: ${numberOptional1(23)}'); // Usamos el parametro opcinal
  print('Sin parametro opcinal: ${numberOptional1(25, 25)}'); // No usamos el parametro opcional
  print('-----------------------------------');


  print('Resultado ejemplo 10:--------------');
  // Usamos el parametro que tiene un dato
  print('Parametro con numero: ${funcionEjemplo(number1: 29)}'); 
  print('Parametro con nombre: ${funcionSaludar(nombre: 'Alberto')}');

  // No usamos el parametro que tiene dato
  print('Parametro sin nombre: ${funcionEjemplo(number1: 52,number2: 20)}');
  print('Parametro sin nombre: ${funcionSaludar(nombre: 'Pablo',mensaje: 'Buenos dias!')}');
  print('-----------------------------------');



}

// Ejemplo 1: Funciones que devuelven un dato (con parametro)
int multiplicacion(int number1, int number2) {
  return number1 * number2;
}

// Ejemplo 2: Funcion suma (sin parametros)
int suma() {
  return 10 + 10;
}

// Ejemplo 3: Funciones vacias (Sin parametros)
void funcion1(){
  print('Esta es una funcion vacia');
}

// Ejemplo 4: Funciones vacias (Con parametros)
void funcion2(String nombre) {
  print('El nombre es: $nombre');
}

// Ejemplo 5: Tambien tenemos funciones en flecha (sin parametros)
String saludar() => 'Hello world';

// Ejemplo 6: Funcion en flecha (Con parametros)
String nombre(String nombre) => 'Mi nombre es: $nombre';

// Ejemplos 7: Funcion en flecha con operacion (Con parametros)
int resultado1(int number) => number + number;
int resultado2(int number1, int number2) => number1 * number2;
int resultado3(int number) => 10 * number;

// Ejemplo 8: Funcion en flecha con operacion (Sin parametros)
int funcionSuma() => 2 + 21; 

// Ejemplos 9: Funciones con parametros opcionales
// Primera forma
int numberOptional1(int number1, [int? number2]) {
  number2 = number2 ?? 0;
  return number1 + number2;
}

// Segunda forma
int numberOptional2(int number1, [int number2 = 0]) {
  return number1 + number2;
}

// Ejemplos 10: Funciones con parametros con nombres
int funcionEjemplo({required int number1, int number2 = 0}) {
  return number1 + number2;
}

String funcionSaludar({required String nombre, String mensaje = 'Hola mundo'}) {
  return 'Hola $nombre, Marcelo $mensaje';
}


