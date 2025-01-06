// Estructuras de datos:
// --- Listas ---
void main() {
  // Podemos crear diferentes tipos de listas:
  List<int> numerosEnteros = [10, 20, 30, 40, 50, 60];
  List<double> numerosDecimales = [1.1, 1.2, 1.3, 1.4, 1.5, 1.6];
  List<String> cadenas = ['uno', 'dos', 'tres', 'cuatro'];

  // Acceder a un elemento por indice:
  print('El entero es: ${numerosEnteros[2]}');
  print('El decimal es: ${numerosDecimales[5]}');
  print('La cadena es: ${cadenas[2]}');

  print('---------------------------------------');

  // Agregar un nuevo elemento: esto agregara un numero al final de la lista
  numerosEnteros.add(50);
  print('Lista agrega es: $numerosEnteros');

  numerosDecimales.add(4.1);
  print('Lista agrega es: $numerosDecimales');

  cadenas.add('Seis');
  print('Lista agrega es: $cadenas');

  print('---------------------------------------');

  // Quitar un elemento
  numerosEnteros.remove(30);
  print('Lista sin un elemento es: $numerosEnteros');

  numerosDecimales.remove(1.2);
  print('Lista sin un elemento es: $numerosDecimales');

  cadenas.remove('tres');
  print('Lista sin un elemento es: $cadenas');

  print('---------------------------------------');

  // Inserta un elemento por un indice
  numerosEnteros.insert(3, 99); // Aqui decimos que en el indice 3 se agregara el 99
  print('Los nuevos elementos son: $numerosEnteros');

  print('---------------------------------------');

  // Verificamos la longitud de las listas
  // Tenemos dos formas de hacerlo, la primera:
  int lengthList = numerosEnteros.length;
  print('La longitud de la lista de numeros enteros es: $lengthList');

  // La segunda:
  print('La longitud de la lista de numeros decimales es: ${numerosDecimales.length}');

  print('La longitud de la lista de cadenas es: ${cadenas.length}');

  print('---------------------------------------');

  // Recorrer una lista:
  // Primera forma: numeros enteros
  for (int idx in numerosEnteros) {
    print('Los enteros son: $idx');
  }

  print('---------------------------------------');

  // Segunda forma: numeros decimales con ( .length )
  for (int idx = 0; idx <= numerosDecimales.length - 1; idx++) {
    double content = numerosDecimales[idx];
    print('Los decimales son: $content');
  }

  print('---------------------------------------');

  for (String idx in cadenas) {
    print('La cadena es: $idx');
  }
}
