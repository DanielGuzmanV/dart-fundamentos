void main() {

// Tipado Explicito
// Le dices al compilador exactamente qué tipo de dato vas a guardar.
  print('\n=== Tipado Explicito ===');
  String nombre = 'Alberto';
  int edad = 23;
  double altura = 1.65;
  bool esDesarrollador = true;

  print('Nombre: $nombre');
  print('Edad: $edad');
  print('Altura: $altura');
  print('Es desarrollador?: $esDesarrollador');

  // Inferencia de tipo
  // Con var, el compilador deduce el tipo según el valor que le asignas 
  // en la primera línea. Pero ojo: sigue siendo tipado estático.
  print('\n=== Inferencia de tipo ===');
  var lenguaje = "Dart";
  var version = 5.10;

  print('Tipo de lenguaje: $lenguaje');
  print('Version: $version');
}