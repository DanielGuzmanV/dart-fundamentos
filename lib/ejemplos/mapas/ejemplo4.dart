void main() {

  // Uso del MapEntry en un mapa
  print('MapEntry en un mapa');
  Map<String, int> stock = {
    'Manzana': 5,
    'Mandarinas': 4,
    'Fresas': 2,
    'Naranjas': 6
  };

  // Creamos un nuevo mapa usando .map() y MapEntry, y este sera independiente del mapa original
  // podremos hacer cambios sin afectar al mapa original
  var nuevoStock = stock.map((key, value) {
    // print("Procesando clave: $key, valor: $value");
    return MapEntry(key, value * 2);
  });

  print('Nuevo mapa: $nuevoStock');
  print('Mapa original: $stock');

  print('---------------------------------------------------');

  print('Uso del MapEntry');
  // Uso del MapEntry, esta diseñadapara representar una sola entrada de un mapa
  // osea una sola clave y valor
  MapEntry<String, int> entrada = MapEntry('Manzana', 5);
  MapEntry<int, String> notas = MapEntry(100, 'Marco');

  print('Entrada 1 - Clave: ${entrada.key}, Valor: ${entrada.value}');
  print('Entrada 1 - Clave: ${notas.key}, Valor: ${notas.value}');

}