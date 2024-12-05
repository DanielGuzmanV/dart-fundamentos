void main() {
  // ------ Ejemplo de funcion anonimas (o lambda) ----functionMultiplicar = (int a, int b) => a * b;
  final multiplicar = (int a, int b) => a * b;
  print('La respuesta es: ${multiplicar(20, 5)}');

  // tambien se puede realizar sin la funcion flecha
  final suma = (int a, int b) {
    return a + b;
  };
  print('La suma es: ${suma(20,3)}');
}

