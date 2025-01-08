// -- Fundamentos de programacion con dart --
// 1. Variables y tipos de datos:
void main() {

  // -- Variables basicas y tipo de varibles---
  int edad = 20; // donde 'edad' es la variable y 'int' es el tipo de dato
  String nombre = 'Alberto';
  double peso = 85.5;
  bool isAlive = true;
  const pi = 3.1416;

  var myName1 = 'Manuel'; // Aqui dart infiere que "myName1" es de tipo String
  
  final myName2 = 'Marco'; // con final tambien infiere el tipo de dato
  final String  example1 = 'UserName'; // Tambien podemos decirle el tipo de dato
  final int example2 = 123;
  final bool example3 = true;

  late final myName3 = 23; 

  int number1; // tambien podemos tener una varialbe sin ningun dato dentro
  String cadena;
  double number2;

  dynamic varDinamica = 'Soy dinamico'; // Estas variables pueden cambiar el tipo de dato que son
  varDinamica = 23;
  varDinamica = true;
  varDinamica = [1,2,3];
  // como vemos puede cambiar a cualquier dato, no es recomendable usarla demasiado

  // Saber el tipo de dato que es una variable
  print('El tipo de dato es: ${edad.runtimeType}');
  print('El tipo de dato es: ${nombre.runtimeType}');

  print('--------------------------------------');

  // ------------------------------------------------------

  // Tambien podemos usar los tipos de datos en las listas y mapas
  // --- Listas ---
  List <int> enteros = [1,2,3,4,5,6];
  List <double> decimales = [1.4, 3.5, 6.1, 7.1, 2, 5];
  List <String> cadenas = ['Hello', 'World'];
  List <bool> varBoolean = [true, false, true, false];
  // ------------------------------------------------------

  // --- Mapas y Tipo de mapas ---
  Map <String, int> frutas = {
    'Manzanas': 20,
    'Sandia': 5,
    'Platanos': 3,
    'Frutillas': 10,
  };

  Map <int, String> dias = {
    1: 'Lunes',
    2: 'Martes',
    3: 'Miercoles',
    4: 'Jueves',
    5: 'Viernes'
  };
  // ------------------------------------------------------

  // Imprimir las variables basicas
  print('La edad es: $edad');
  print('Su nombre es: $nombre');
  print('Su peso es: $peso');
  print('Esta vivo: $isAlive');

  print('--------------------------------------');

  // Imprimir las listas
  print('Los enteros son: $enteros');
  print('Los decimales son: $decimales');
  print('La cadea es: $cadenas');
  print('Los booleanos son: $varBoolean');

  print('--------------------------------------');

  // Imprimir los mapas
  print('Las frutas son: $frutas');
  print('Los dias son: $dias');

}