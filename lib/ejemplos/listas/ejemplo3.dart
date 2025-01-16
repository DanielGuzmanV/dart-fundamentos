// Ejemplos completos usando (map, filter y reduce)
import 'dart:math';

void main() {

  // Ejemplo practico:
  // 1. Aumentar cada precio un 10% (map).
  // 2. Filtrar solo los precios mayores a 50 (filter o where).
  // 3. Sumar los precios resultantes (reduce).
  List<double> precios = [30.5, 45.2, 60.85, 25.55];

  print('--- Aumentar 10% ---');
  // List<String> precioAumentados = precios.map((valorPrecio) {

    // Con esto limitamos los decimales a 2, pero estamos cambiando
    // el valor de la lista por un "String"
    // return (valorPrecio * 1.1).toStringAsFixed(2);
  
    // Para mantener los valores "double" usamos esto:
  List<double> precioAumentados = precios.map((valorPrecio) {
    return double.parse((valorPrecio * 1.1).toStringAsFixed(2));
  
  }).toList();

  print("Los precios aumentados son: $precioAumentados");

  // -------------------------------------------

  print('--- Filtrar mayores a 50 ---');
  // filtrar mayores a 40
  List<double> numeroMayor = precioAumentados.where((element) {
    return element > 40;
  }).toList();

  print('Mayores a 50 son: $numeroMayor');

  // -------------------------------------------

  print('--- Suma de precios ---');
  // Sumar los precios restantes
  double suma = numeroMayor.reduce((valor, elemento) {
    print('precio 1: $valor + precio 2: $elemento = ${valor + elemento}');
    return valor + elemento;
  });

  print('La suma total es: $suma');

}

