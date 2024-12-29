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
    print('$clave tiene $valor anos');
  });

  // Tambien con ( map.length ) podemos saber la longitud del mapa


}