// -- Ejemplos de tipos de datos en dart (basicos) --
void main() {
  // -- Declaracion y asignacion --
  var name = 'Marcelo'; // Dart infiere que sera de tipo String
  int age = 23; // Aqui declaramos explicitamente como numero entero
  double height = 1.75;
  bool isStutend = true;

  // Dinamico (Este es especial porque puede cambiar el tipo de dato)
  dynamic newDato = 'Soy Dinamico';
  newDato = 23; // Aqui cambia el tipo de dato de String a Entero (int)

  // --------------------------------------------------

  // -- Variables constantes --
  // Aqui nuevamente dart infiere el tipo de dato, este es una constante
  // en tiempo de ejecucion
  final fechaNacimiento1 = '06-23-1980';

  // tambien podemos poner de manera explicita el tipo de dato
  final String fechaNacimiento2 = '06-27-1985'; 

  // Igualmente infiere el tipo de dato y este es una constante
  // en tiempo de compilacion
  const varPi1 = 3.14159;

  // tambien podemos poner de forma explicita el tipo de dato
  const double varPi2 = 3.14159;
  // --------------------------------------------------

  // -- Imprimimos las variables --
  print('Nombre: $name, Edad: $age, Altura: $height, Estudiante: $isStutend');
  print('Fecha de Nacimiento: $fechaNacimiento1, valor de pi: $varPi1');
  print('Dato dinamico: $newDato');

}
