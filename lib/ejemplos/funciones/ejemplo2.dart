// Funciones con parametros opcionales y valores por defecto
import 'dart:io';

void main() {
  // Ejemplo 2: Parametros opcionales y valores por defecto
  // Ejemplo con datos fijos
  print('Salario sin bono: \$${calcularSalario(40, 15)}'); // Usamos el valor por defecto del bono
  print('Salario con bono: \$${calcularSalario(40, 15, 50)}'); // Especificamos el bono

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

  print('-------------------------------------------------------------');

  // Ejemplo 2.1: Funciones con parametros opcionales y valores por defecto
  saludar('Albertor'); // Usamos el valor por defecto del mensaje
  saludar('Anna', 'Hola!'); // Reemplazamos el mensaje por defecto

  print('-------------------------------------------------------------');

  // Ejemplo 2.2: Funciones con parametros opcionales y valores por defecto

  print('Area de un cuadrado: ${calcularArea(4)}'); // Usa la altura por defecto
  print('Area de un rectangulo: ${calcularArea(4, 6)}'); // Usa base y altura personalizada

  print('-------------------------------------------------------------');
  // Ejemplo 2.3: Funciones con parametros  opcionales y valores por defecto
  configurarUsuario('Mauricio'); // Ingresamos solo nombre
  configurarUsuario('Paola', edad: 25); // Ingresamos el nombre y edad
  configurarUsuario('Luis', edad: 39, rol: 'Admin'); // Ingresamos todos los parametros

}

// Calculo de un salario semanal, considerando un bono opcinal
double calcularSalario(double horas, double tarifaPorHora, [double bono = 0]) {
  double result;
  result = (horas * tarifaPorHora) + bono;
  return result;
}

// El ejemplo es facil y sencillo: saludar a un usuario con un mensaje opcional
void saludar(String nombre, [String mensaje = 'Bienvenido!']) {
  print('$mensaje, $nombre');
}

// Calcular el area de un rectangulo o cuadrado
double calcularArea(double base, [double altura = 0]) {
  if(altura == 0) {
    return base * base; // Area de un cuadrado
  }
  return base * altura; // Area de un rectangulo
}

// Configuracion de usuario con parametros opcionales nombrados
void configurarUsuario(String nombre, {int? edad, String  rol = 'Usuario'}) {
  print('Configurando a $nombre: ');
  print('Edad: ${edad ?? 'No especificada'}');
  print('Rol: $rol');

}


