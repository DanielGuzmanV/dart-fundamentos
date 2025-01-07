// Estructuras de datos
// --- Conjuntos (sets) ---

void main() {
  // Creamos un conjunto (Estos no pueden tener elementos repetidos)
  Set<int> enteros = {1, 2, 3, 4, 5};
  Set<double> decimales = {1.1, 2.1, 3.1, 4.1, 5.1, 6.1};
  Set<String> cadenas = {'Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'};

  // Imprimimos los conjuntos
  print('Los enteros son: $enteros');
  print('Los decimales son: $decimales');
  print('La cadena es: $cadenas');

  print('---------------------------------------------');

  // Agregar un elemento (si ya existe, no se agregara)
  enteros.add(20);
  print('El numero nuevo es: $enteros');

  print('---------------------------------------------');
  // Eliminar un elemento (que ya existe)
  decimales.remove(3.1);
  print('El numero eliminado es: $decimales');

  print('---------------------------------------------');
  // Longitud de un conjuto
  int lengthCadenas = cadenas.length;
  print('La longitud de la cadena es: $lengthCadenas');

  print('---------------------------------------------');
  // Recorrer un conjunto
  print('Enteros -----');
  for (int idx in enteros) {
    print('Los enteros son: $idx');
  }

  print("Decimales -----");
  for (double idx in decimales) {
    print('Los decimales son: $idx');
  }

  print("Cadenas -----");
  for(String idx in cadenas) {
    print('La cadena es: $idx');
  }


}
