// Estructuras de datos:
// --- Mapas o Diccionarios ---

void main() {
  // Tipos de mapas
  Map<String, int> ejemplo1 = {};
  Map<int, String> ejemplo2 = {};
  Map<String, double> ejemplo3 = {};
  Map<double, String> ejemplo4 = {};
  Map<int, double> ejemplo5 = {};
  Map<double, int> ejemplo6 = {};

  Map<String, bool> ejemplo7 = {};
  Map<bool, String> ejemplo8 = {};
  Map<int, bool> ejemplo9 = {};
  Map<bool, int> ejemplo10 = {};
  Map<double, bool> ejemplo11 = {};
  Map<bool, double> ejemplo12 = {};

  Map<String, dynamic> ejemplo13 = {};
  Map<int, dynamic> ejemplo14 = {};
  Map<double, dynamic> ejemplo15 = {};
  Map<bool, dynamic> ejemplo16 = {};
  Map<dynamic, int> ejemplo17 = {};
  Map<dynamic, String> ejemplo18 = {};
  Map<dynamic, double> ejemplo19 = {};
  Map<dynamic, bool> ejemplo20 = {};

  // Tambien pueden ser del mismo tipo:
  Map<String, String> ejemplo21 = {};
  Map<int, int> ejemplo22 = {};
  Map<double, double> ejemplo23 = {};
  Map<bool, bool> ejemplo24 = {};
  Map<dynamic, dynamic> ejemplo25 = {};

  // -----------------------------------------

  // Ejemplo de un Map dinamico
  Map<String, dynamic> mapaDinamico = {
    'Nombre': 'Alberto',
    'Edad': 23,
    'Peso': 75.5,
    'IsAlive': true,
    'Amigos': <String> ['Pablo', 'Pedro'],
    'Materias': <int, String> {
      1: 'Fisica',
      2: 'Calculo'
    }
  };
  // En este mapa vemos que podemos agregar varios tipos de datos juntos
  // desde enteros, boleanos, listas y los mismos mapas

  // -----------------------------------------

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
