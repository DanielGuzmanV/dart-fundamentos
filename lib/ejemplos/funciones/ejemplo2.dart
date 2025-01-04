// Funciones con parametros opcionales y valores por defecto
import 'dart:io';

void main() {
  // Ejemplo 2: Parametros opcionales y valores por defecto
  // Ejemplo con datos fijos
  // print('Salario sin bono: \$${calcularSalario(40, 15)}'); // Usamos el valor por defecto del bono
  // print('Salario con bono: \$${calcularSalario(40, 15, 50)}'); // Especificamos el bono

  // Ejemplo con datos ingresados por el usuario
  print('Ingrese las horas: ');
  double horas = double.parse(stdin.readLineSync()!);

  print('Ingrese la tarifa por hora: ');
  double tarifaPorHora = double.parse(stdin.readLineSync()!);

  print('Ingrese el bono deseado: ');
  double bono = double.parse(stdin.readLineSync()!);

  // Ahora vemos los salarios con y sin bono
  print('Salario sin bono: \$${calcularSalario(horas, tarifaPorHora)}');
  print('Salario con bono: \$${calcularSalario(horas, tarifaPorHora, bono)}');

}

// Calculo de un salario semanal, considerando un bono opcinal
double calcularSalario(double horas, double tarifaPorHora, [double bono = 0]) {
  double result;
  result = (horas * tarifaPorHora) + bono;
  return result;
}
