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

  // -------------------------------------------------------------- \\
  print('---------------------------------------------------');

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

  // -------------------------------------------------------------- \\
  print('---------------------------------------------------');

  // Ejemplo 3.2: Uso de funciones anonimas
  // Iterar sobre una lista con forEach
  List<String> frutas = ['Manzana', 'Platano', 'Naranja'];

  frutas.forEach((element) {
    print('Fruta: $element');
  });

  // -------------------------------------------------------------- \\
  print('---------------------------------------------------');

  // Ejemplo 3.2: Uso de funciones anonimas
  // Filtrar numeros en una lista
  List<int> numerosEnteros = [1,2,3,4,5,6,7,8,9];

  List<int> pares = numerosEnteros.where((element) { // filter (Es Where en dart)
    return element % 2 == 0;
  }).toList();

  List<int> impares = numerosEnteros.where((element) => element % 2 != 0).toList();

  print('Numeros pares: $pares');
  print('Numeros impares: $impares');

  // -------------------------------------------------------------- \\
  print('---------------------------------------------------');
  // Ejemplo 3.3: Uso de funciones anonimas avanzada

  List<Persona> listPersonas = [
    Persona('Anna', 23),
    Persona('Pedro', 30),
    Persona('Manuel', 25)
  ];

  // Funciones anonimas
  listPersonas.sort((a, b) {
    return a.edad.compareTo(b.edad); // Esto ordena por edad
  });

  // Mostramos las edades ordenadas con el nombre
  listPersonas.forEach((element) {
    print('${element.nombre}, ${element.edad} años');
  });
}

class Persona {
  String nombre;
  int edad;

  Persona(
    this.nombre,
    this.edad
  );
}







