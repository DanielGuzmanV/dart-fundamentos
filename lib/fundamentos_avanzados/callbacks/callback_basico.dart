// Es una funcion que se pasa como argumento a otra funcion, para que sea
// ejecutada en algun punto especifico del programa

void main() {

  realizarOperacion(3, 20, (sumaNumeros) { // "sumaNumeros es una funcion anonima"
    print('El resultado de la operacion es: $sumaNumeros');
  });

  realizarOperacion(3, 20, miFuncionCallback);

}

// Realizamos el callback
void realizarOperacion(int a, int b, Function(int) nameCallback) {
  int resultado = multiplicacion(a, b); // Tambien podemos usar una funcion aparte
  // int resultado = a + b;
  nameCallback(resultado); // Aqui llamamos al callback con el resultado
}

// Funcion para el callback
int multiplicacion(int a, int b) {
  int resultadoValor = a * b;
  return resultadoValor;
}

// Funcion directa
void miFuncionCallback(int resultadoOperacion) {
  print('El resultado de la operacion es: $resultadoOperacion');
}
