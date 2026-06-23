void main() {

// Tipado Explicito
// Le dices al compilador exactamente qué tipo de dato vas a guardar.
  String nombre = 'Alberto';
  int edad = 23;
  double altura = 1.65;
  bool esDesarrollador = true;

  print(nombre);
  print(edad);
  print(altura);
  print(esDesarrollador);

  // Inferencia de tipo
  // Con var, el compilador deduce el tipo según el valor que le asignas 
  // en la primera línea. Pero ojo: sigue siendo tipado estático.
  var lenguaje = "Dart";
  var version = 5.10;

  print(lenguaje);
  print(version);
}