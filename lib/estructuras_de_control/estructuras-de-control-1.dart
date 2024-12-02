// 1.1 Estructuas de control
// condicionales:
void main() {
  int edad = 17;
  String nombre = 'Guzman';
  double estatura = 1.64;
  bool isAlive = false;

  // ---- condicional if ----

  print('--- Condicional if ---');
  if (edad > 18) {
    print('Es mayor de edad');
  }

  if (nombre.isEmpty) {
    print('Ingrese un nombre');
  }

  if (estatura >= 1.70) {
    print('Es alto');
  }

  if (isAlive == true) {
    print('Si esta vivo');
  }

  // --------------------------------

  print('-----------------------------');

  // ---- condicional if con else ----

  print('--- Condicional if con else---');
  if (edad > 18) {
    print('Es mayor de edad');
  } else {
    print('No es mayor de edad, es menor');
  }

  if (nombre.isEmpty) {
    print('Ingrese un nombre');
  } else {
    print('Su nombre es $nombre');
  }

  if (estatura >= 1.70) {
    print('Es alto');
  } else {
    print('Es bajo');
  }

  if (isAlive == true) {
    print('Si esta vivo');
  } else {
    print('No esta vivo');
  }

  // ---- condicional if, else if y else ----

  print('--- Condicional if, else if y else ---');
  if (edad > 18) {
    print('Es mayor de edad');
  } else if (edad > 14) {
    print('Es adolescente');
  } else {
    print('Es menor de edad');
  }

  if (nombre.isEmpty) {
    print('Ingrese un nombre');
  } else if(nombre.length > 5) {
    print('Su nombre tiene mas de 5 letras');
  } else {
    print('Su nombre tiene menos de 5 letras');
  }

  if (estatura > 1.70) {
    print('Es alto');
  } else if (estatura > 1.60) {
    print('Es estatura media');
  } else {
    print('No es alto');
  }

  if (isAlive == true) {
    print('Si esta vivo');
  } else if (isAlive == false) {
    print('No esta vivo');
  } else {
    print('No esta...');
  }
  
}
