// Funciones anonimas
import 'dart:io';
void main() {

  // Ejemplo 3: Uso de funciones anonimas
  // Lista de numeros con una funcion anonima que calcula su cuadrado
  List<int> numeros = [1,2,3,4,5];

  // Ejemplo con una funcion en flecha
  List<int> varCuadrados1 = numeros.map((num) => num * num).toList();

  // Ejemplo con una funcion normal agregando logica mas compleja
  List<int> varCuadrados2 = numeros.map((num) {
    if(num.isEven){
      return num * num; // Calcula el cuadrado de numeros pares
    } else {
      return num; // Deja los impares como estan
    }
  }).toList();

  print('Numeros originales: $numeros');
  print('Numerso cuadrados: $varCuadrados1');
  print('Numeros cuadrados de pares: $varCuadrados2');

  // Ejemplo 3.1: Usando funciones anonimas ingresando datos por el usuario
  print('Ingrese el primer numero: ');
  int numero1 = int.parse(stdin.readLineSync()!);

  print('Ingrese el segundo numero: ');
  int numero2 = int.parse(stdin.readLineSync()!);

  // Usamos funcion en flecha
  final sumaNumeros = (int num1 , int num2) => num1 + num2;

  // Usamos funcion normal
  final restaNumeros = (int num1, int num2) {
    return num1 - num2;
  };

  print('La suma de numeros es: ${sumaNumeros(numero1, numero2)}');
  print('La resta de numeros es: ${restaNumeros(numero1, numero2)}');


}