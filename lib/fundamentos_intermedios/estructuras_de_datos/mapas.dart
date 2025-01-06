// Estructuras de datos:
// --- Mapas o Diccionarios ---

void main() {
  // Creamos nuevos mapas:
  Map<String, int> edades = {
    'Martin': 23,
    'Camila': 28,
    'Pablo': 18,
    'Marcelo': 31,
  };

  // Acceder a un valor usando una clave:
  print('La edad es: ${edades['Martin']}');
  print('La edad es: ${edades['Camila']}');
  print('La edad es: ${edades['Pablo']}');
  print('La edad es: ${edades['Marcelo']}');

  // Agregar un nuevo par "clave - valor"
  edades['Fabian'] = 32;
  print(edades);

  // Eliminar una clave:
  edades.remove('Marcelo');
  print(edades);

  // Recorrer un mapa
  edades.forEach((clave, valor) {
    print('$clave tiene $valor años');
  });

  // Verificamos si contiene una clave
  bool verificarClave = edades.containsKey('Marta'); // Podemos cambiar el nombre por otro para verificar
  print('Existe la edad: $verificarClave');

  // Verificamos la longitud del mapa
  int lengthMap = edades.length;
  print('El mapa tiene $lengthMap valores');

  print('------------------------------------------------');

  // Manejo de un mapa dentro de un mapa: <Map<String, int>> o <String<String, int>>
  Map<String, Map<String, int>> mercado = {
    'Frutas': {'Manzanas': 5, 'Naranjas': 3, 'Duraznos': 2},
    'Verduras': {'Zanahorias': 7, 'Espinacas': 2, 'Pimenton': 5},
  };

  // Accedemos a los valores de: Frutas - Manzanas y Verduras - Zanahorias
  print('La cantidad es: ${mercado['Frutas']?['Manzanas']}'); // El nombre dentro de las llaves tiene que ser igual al que esta en el mapa
  print('La cantidad es: ${mercado['Verduras']?['Zanahorias']}');

  print('------------------------------------------------');

  // Manejo de lista dentro de un mapa
  Map<String, List<String>> grupos = {
    'Amigos': ['Marco', 'Pedro', 'Anna'],
    'Familia': ['Fernando', 'Manuel']
  };

  // Accedemos al grupo, ya sea de familia o amigos
  print(grupos['Amigos']);
  print(grupos['Familia']);

}
