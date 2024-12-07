// Estructuras de datos:
// --- Listas ---
void main() {

  // Podemos tener diferentes tipos de listas:
  List<int> numerosEnteros = [10, 20, 30, 40, 50, 60];
  List<double> numerosDecimales = [1.1, 1.2, 1.3, 1.4, 1.5, 1.6];
  List<String> cadenas = ['uno', 'dos', 'tres', 'cuatro'];

  // Acceder a un elemento por indice:
  print('El entero es: ${numerosEnteros[2]}');
  print('El decimal es: ${numerosDecimales[5]}');
  print('La cadena es: ${cadenas[2]}');

  // Agregar un nuevo elemento: esto agregara un numero al final de la lista
  numerosEnteros.add(50);
  print(numerosEnteros);

  numerosDecimales.add(4.1);
  print(numerosDecimales);

  cadenas.add('Seis');
  print(cadenas);

  // Quitar un elemento: esto quitara cualquier elemento de la lista
  numerosEnteros.remove(30);
  print(numerosEnteros);

  numerosDecimales.remove(1.2);
  print(numerosDecimales);

  cadenas.remove('tres');
  print(cadenas);

  // Recorrer una lista:
  // Primera forma:
  for(int idx in numerosEnteros) {
    print('Los enteros son: $idx');
  }

  // Segunda forma: con ( .length ) verificamos la longitud de la lista
  for(int idx = 0; idx <= numerosDecimales.length - 1; idx++){
    double content = numerosDecimales[idx];
    print('Los decimales son: $content');
  }

}

