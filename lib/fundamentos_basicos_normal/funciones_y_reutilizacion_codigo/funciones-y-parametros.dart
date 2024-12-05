// Tipos de funciones:
// Con parametro y sin parametro
// Verificar las funciones para comprender mejor

void main() {
  // TODO: Llamamos a la funcion sin parametros
  mostrarMensaje();

  mostrarParList();

  // TODO: Llamamos a la funcion con parametros
  int respuesta = sumar(20, 3);

  // Imprimimos la primera forma de llamar con variable (usando la variable "respuesta")
  print('La suma es: $respuesta');

  // Imprimimos la segunda forma de llamar, sin variable (sin usar la variable "respuesta")
  print('La suma es: ${sumar(23, 23)}');

  // --------------------------------------

  // llamamos a las funciones:
  // Con variables:
  double respuesta1 = calcularAreaCuadrada(20);
  print('El area cuadrada es: $respuesta1');

  double respuesta2 = calcularAreaRectangulo(4, 8);
  print('El area del rectangulo es: $respuesta2');

  int respuesta3 = contarPares();
  print('Del 1 al 10 hay: $respuesta3 numeros pares');

  // -------------------------------------

  // Sin variables, directo:
  print('Del 1 al 10 hay: ${contarPares()} numeros pares');

  print('El area cuadrada es: ${calcularAreaCuadrada(23)}');

  print('El area del rectangulo es: ${calcularAreaRectangulo(10, 20)}');
  
}

// Ejemplo sin parametro:
void mostrarMensaje() {
  String mensaje = 'Un nuevo mensaje';
  if (mensaje.isEmpty) {
    print('Ingrese un mensaje');
  } else {
    print('El mensaje es: $mensaje');
  }
}

// Ejemplos con parametro:
int sumar(int a, int b) {
  return a + b;
}

// Ejemplo 1 reutilizando codigo con parametros
double calcularAreaCuadrada(double lado) {
  return lado * lado;
}

double calcularAreaRectangulo(double base, double altura) {
  return base * altura;
}

// Ejemplo 2 reutilizando codigo:
// Cuantos numeros pares hay del 1 al 10, las funciones "esPar" y "ContarPares"
// trabajan juntas

// funcion con parametro que verifica si es par:
bool esPar(int numero) {
  bool respuesta = true;
  if (numero % 2 != 0) {
    respuesta = false;
  }
  return respuesta;
}

// funcion sin parametro que cuenta los numeros pares:
int contarPares() {
  int resultado = 0;

  for (int idx = 1; idx <= 10; idx++) {
    if (esPar(idx) == true) {
      resultado++;
    }
  }
  return resultado;
}

// funcion vacia para mostrar los numeros pares
void mostrarPares() {
  for (int idx = 1; idx <= 10; idx++) {
    if (esPar(idx)) {
      print('Los pares son: $idx');
    }
  }
}

// funcion vacia para mostrar los numeros pares de una lista
void mostrarParList() {
  List<int> numeros = [2,20,23,48,15,17,32,33,5,6,];
  for (int idx in numeros) {
    if (esPar(idx)) {
      print('Los pares son : $idx');
    }
  }
}
