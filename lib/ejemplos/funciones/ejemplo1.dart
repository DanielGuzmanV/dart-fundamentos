// Estos ejemplos seran usando funciones de todo tipo
// Interacctuando con el usuario
// Funciones simples con parametros
import 'dart:io';

void main () {
  // Ejemplo 1: Uso de funciones simples con parametros
  print('Ingrese el radio del circulo: ');

  // Tenemos dos formas de interactuar con el usuario
  // Primera forma
  double radio = double.parse(stdin.readLineSync()!); // Indicamos que al usuario que ingrese un dato
  

  // Segunda forma
  print('Ingrese el largo del rectangulo: ');
  String? entradaLargo = stdin.readLineSync(); // El usuario ingresa un dato
  double largo = double.parse(entradaLargo!); // Convertimos a double el dato ingresado

  print('Ingrese el ancho del rectangulo');
  String? entradaAncho = stdin.readLineSync();
  double ancho = double.parse(entradaAncho!);

  // Resultado de las funciones:
  print('El area del circulo es: ${calcularAreaCirculo(radio)}');
  print('El area del rectangulo es: ${calcularAreaRectangulo(largo, ancho)}');

}

// Calculo del area de un circulo y un rectangulo
double calcularAreaCirculo(double radio) {
  const double pi = 3.1416;
  double result;
  result = pi * radio * radio; // Formula del area del circulo
  return result;
}

double calcularAreaRectangulo(double largo, double ancho) {
  double result;
  result = largo * ancho; // Formula del area del rectangulo
  return result;
}

