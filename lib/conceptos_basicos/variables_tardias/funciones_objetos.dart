// Funciones como objetos de primera clase
// En Dart, las funciones son ciudadanos de primera clase. Esto significa que las
// funciones son objetos y pueden hacerse las mismas cosas con ellas que con
// cualquier otra variable

void main() {
  // Pasar funciones como argumentos(callbacks)
  // Es muy comum en flutter cuando se maneja eventos como botones
  ejecutarOperacion("enclave...", imprimirMayusculas);

  // Funciones anonimas y Arrow Functions
  // Si la función es corta y solo se usa una vez, no necesitas ponerle nombre.
  // Si solo tiene una línea de ejecución
  List<int> numeros = [1,2,3,4];

  // Funcion anonima
  numeros.forEach((numeros) {
    print("Numero: $numeros");
  });

  // Usando arrow function
  final numerosDuplicados = numeros.map((n) => n * 2);
  print(numerosDuplicados);
}

// Funcion de prueba 1
void ejecutarOperacion(String texto, Function callback) {
  callback(texto);
}

// Funcion de prueba 2
void imprimirMayusculas(String texto){
  print(texto.toUpperCase());
}