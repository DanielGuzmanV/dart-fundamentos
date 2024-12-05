// -- Fundamentos de programacion con dart --
// 1. Variables y tipos de datos:
void main() {

  // -- Variables basicas ---
  int edad = 20; // donde 'edad' es la variable y 'int' es el tipo de dato
  String nombre = 'Alberto';
  double peso = 85.5;
  bool isAlive = true;

  // Tambien podemos usar los tipos de datos en las listas y mapas
  // --- Listas ---
  List <int> enteros = [1,2,3,4,5,6];
  List <double> decimales = [1.4, 3.5, 6.1, 7.1, 2, 5];
  List <String> cadenas = ['Hello', 'World'];
  List <bool> varBoolean = [true, false, true, false];

  // --- Mapas ---
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


  // Imprimir las variables basicas
  print('La edad es: $edad');
  print('Su nombre es: $nombre');
  print('Su peso es: $peso');
  print('Esta vivo: $isAlive');

  // Imprimir las listas
  print('Los enteros son: $enteros');
  print('Los decimales son: $decimales');
  print('La cadea es: $cadenas');
  print('Los booleanos son: $varBoolean');

  // Imprimir los mapas
  print('Las frutas son: $frutas');
  print('Los dias son: $dias');

}