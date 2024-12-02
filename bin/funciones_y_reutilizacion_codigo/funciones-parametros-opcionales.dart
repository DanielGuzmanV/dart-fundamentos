// Funciones con parametros opcionales:

void main() {

  // ------ Ejemplo de funcion anonimas (o lambda) ----functionMultiplicar = (int a, int b) => a * b;
  // print('La respuefunctionMultiplicar(4, 5)}');

  // -------------------------------------------------

  // Llamamos a la funcion, parametro opcional no incluido
  // saludar('Maria');
  
  // Llamamos a la funcion, parametro opcional incluido
  // saludar('Macoina', 'que tal?');

  // -------------------------------------------------
  // Llamamos a la funcion usando el valor por defecto
  // mensajeSaludar('Claudia');

  // Llamamos a la funcion, sobrescribiendo el valor
  // mensajeSaludar('Martin', mensaje: 'que tal?');

  // -------------------------------------------------
  // Llamamos a la funcion como parametro
  // ejecutarOperacion(4, 5, (x, y) {
  //   return x - y;
  // });

  // Usamos una funcion aparte para la funcion principal
  // ejecutarOperacion(5,9, functionSumar);

  // ejecutarOperacion(10, 4, functionMultiplicar);

  // Usamos otra funcion como parametro
  ejecutarOperacionDos(10, 20, functionSumarDos);

}

// ------ Ejemplo de funcion con parametro opcional ------
void saludar(String nombre, [String? mensaje]){
  if(mensaje != null){
    print('Hola $nombre, $mensaje');
  } else {
    print('Hola $nombre');
  }
}

// ------ Ejemplo de funcion con valores por defecto ------
void mensajeSaludar(String nombre, {String mensaje = 'Bienvenido!'}){
  print('Hola $nombre, $mensaje');
}

// ------ Ejemplo de funcion como parametros ------
void ejecutarOperacion(int a, int b, int Function(int, int) operacion) {
  // print('El resultado es: ${operacion(a, b)}');

  // Tambien se puede realizar de la siguiente manera:
  int resultado = operacion(a, b);
  print('El resultado es: $resultado');
}

// funciones que iran como parametros:
int functionSumar(int x, int y) {
  return x + y;
}

int functionMultiplicar(int x, int y) => x * y;

// Mas ejemplo de funcion como parametro:
void ejecutarOperacionDos(int a, int b, int Function(int) operacion) {
  int resultado = operacion(b); // Podemos intercambiar entre a y b
  print('Resultados es el siguiente: $resultado');
}

// funcion suma que pide un dato en los parametros
int functionSumarDos(int a) {
  return a + 20;
}
