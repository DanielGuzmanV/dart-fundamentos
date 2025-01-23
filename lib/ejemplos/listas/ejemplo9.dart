// Ejemplos variados:

void main () {

  // Convierte cada numero en una cadena:
  print('--- Ejemplo 1 ---');
  List<int> listNumbers = [15,29,31,44];
  print('Lista de numeros: $listNumbers');

  List<String> listTextos = listNumbers.map((elemento) {
    return 'Numero $elemento';
  }).toList();
  print('Lista de numeros a textos es: $listTextos');

  // Convierte numeros negativos en positivos:
  print('--- Ejemplo 2 ---');
  List<int> listaNumerosNegativos = [-11, -25, -38, -46];
  print('Lista numeros negativos: $listaNumerosNegativos');

  List<int> listaNumerosPositivos = listaNumerosNegativos.map((numbers) {
    return numbers.abs();
  },).toList();
  print('Lista numeros positivos $listaNumerosPositivos');

  // Redondea numeros decimales a enteros
  print('--- Ejemplo 3 ---');
  List<double> listaDecimales = [1.5, 2.8, 3.2, 7.4, 8.5];
  print('Numeros decimales: $listaDecimales');

  List<int> listaEnteros = listaDecimales.map((elemento) {
    return elemento.round();
  }).toList();
  print('Lista redondeada: $listaEnteros');

  // Convertir valores nulos a un valor predeterminado:
  print('--- Ejemplo 4 ---');
  List<int?> numerosList = [1, null, 3, null, 5];
  print('Lista: $numerosList');

  List<int> listaReemplazados = numerosList.map((elemento) {
    return elemento ?? 0;
  }).toList();
  print('Lista nueva: $listaReemplazados');

  // Convertir una lista de enteros a booleanos
  print('--- Ejemplo 5 ---');
  List<int> numerosEnteros = [1, 2, 3, 4];
  print('Lista de enteros: $numerosEnteros');

  List<bool> listaPares = numerosEnteros.map((elemento) {
    return elemento % 2 == 0;
  }).toList();
  print('Lista de booleanos: $listaPares');

  // Transformamos con una funcion externa, aplicando una funcion personalizada
  print('--- Ejemplo 6 ---');
  List<int> numbersList = [1,2,3,4,5];
  print('Lista: $numbersList');

  List<int> listaTriplicados = numbersList.map(triplicar).toList();
  print('Numeros triplicados: $listaTriplicados');

  // Crear objetos a partir de una lista
  print('--- Ejemplo 7 ---');
  List<int> listaPrecios = [150, 280, 320];
  List<Producto> classProductos = listaPrecios.map((elemento) {
    return Producto(
      nombre: 'Producto $elemento', 
      precio: elemento.toDouble()
    );
  }).toList();
  print('Lista de productos: $classProductos');

  // Acceder a un indice y valor; y crear una lista con indices y valores
  print('--- Ejemplo 8 ---');
  List<String> frutas = ['Manzanas', 'Banana', 'Cereza'];
  print('Lista de frutas: $frutas');

  frutas.asMap().entries.forEach((element) {
    print('Indice: ${element.key}, Valor: ${element.value}');
  });

  // Creamos una lista con indices y valores
  List<String> listResultado = frutas.asMap().entries.map((element) {
    return 'Fruta ${element.key}: ${element.value}';
  }).toList();
  print('Lista nueva: $listResultado');

  // Combinar listas, donde se creara una lista a partir de dos listas existentes
  print('--- Ejemplo 9 ---');
  List<String> listaNombre = ['Ana', 'Juan', 'Paolo'];
  List<int> listaEdades = [25, 30, 40];
  print('Listas de nombres: $listaNombre');
  print('Lista de edades: $listaEdades');

  List<String> listaCombinadas = listaNombre.asMap().entries.map((elemento) {
    int indice = elemento.key;
    return '${elemento.value} tiene ${listaEdades[indice]} años';
  }).toList();
  print('La lista combinada es: $listaCombinadas');

  // Usa el indice de cada elemento para realizar calculos
  print('--- Ejemplo 10 ---');
  List<int> numeros = [10, 20, 30, 40];
  print('Lista de numeros: $numeros');

  List<int> listaIndexados = numeros.asMap().entries.map((elemento) {
    return elemento.key * elemento.value;
  }).toList();
  print('Resultado de indice * elemento: $listaIndexados');

  // Aplanamos una lista de listas:
  print('--- Ejemplo 11 ---');
  List<List<int>> listasList = [
    [1,2],
    [3,4],
    [5,6]
  ];
  List<int> listasPlana = listasList.expand((sublista) {
    return sublista;
  }).toList();
  print('Lista unica: $listasPlana');

  // Combinamos expand con strings
  print('--- Ejemplo 12 ---');
  List<List<String>> palabras = [
    ['Hola', 'Mundo'],
    ['Dart', 'Flutter']
  ];
  print('Listas de palabras: $palabras');

  List<String> listaPlanaString = palabras.expand((sublista) {
    return sublista.map((palabra) => palabra.toUpperCase());
  }).toList();
  print('Lista en mayusculas: $listaPlanaString');

  // Transforma cada elemento en otro, manteniendo la estructura original.
  print('--- Ejemplo 13 ---');
  List<List<int>> listasEnteros = [
    [1, 2],
    [3, 4]
  ];
  print('Listas de enteros: $listasEnteros');

  List<List<int>> resultado = listasEnteros.map((sublista) {
    return sublista.map((numero) => numero * 2).toList();
  }).toList();

  print('Resultado de listas: $resultado');



  // Convertir una lista de listas en un lista plana
  print('--- Ejemplo 14 ---');
  List<List<int>> listas = [
    [1,2,3],
    [4,5,6],
    [7,8,9]
  ];
  print('Listas: $listas');
  List<int> listaPlana = listas.expand((sublista) {
    return sublista.map((number) => number * 2);
  },).toList();
  print('Lista unica: $listaPlana');

}

// Funcion personalizada:
int triplicar(int numero) => numero * 3;

// Clase para convertir numeros en un objeto personalizado
class Producto {

  String nombre;
  double precio;

  Producto({
    required this.nombre,
    required this.precio
  });

  @override
  String toString() {
    return '$nombre: \$${precio.toStringAsFixed(2)}';
  } 

}