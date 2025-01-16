// Posicion de una lista, podemos usar bucles o funciones

void main() {

  print('Usamos una funcion "asMap"');
  // Ejemplo 1:
  List<int> numeros = [1,2,3,4,5];

  numeros.asMap().forEach((idx, valor) {
    print('Indice: $idx, valor: $valor');
  });

  print('------------------------------');
  // Ejemplo 2:
  List<String> frutas = ['Manzana', 'Naranja', 'Banana'];
  frutas.asMap().forEach((idx, fruta) {
    print('La clave es: $idx, corresponde a $fruta');
  },);

  print('------------------------------');
  // "asMap" convierte una lista en un mapa donde las claves son idx y valores los elementos
  print(' Lista convertido en mapa');
  print('Lista original: $frutas');
  Map<int, String> mapaFrutas = frutas.asMap(); // Aqui convertimos la lista en un mapa con "asMap"
  print('Mapa de la lista: $mapaFrutas');


  print('------------------------------');
  print('Uso de forEach');
  // Uso de "forEach", no siempre pide dos valores, ya que este es flexible ejemplo:
  print('Listas:');
  List<String> listaFrutas = ['Manzanas', 'Naranja', 'Banana', 'frutilla'];
  listaFrutas.forEach((valorFruta) {
    print('La fruta es: $valorFruta');
  });

  print('Mapas:');
  Map<String, int> stock = {
    'Manzanas': 4,
    'Bananas': 2
  };

  stock.forEach((fruta, cantidad) {
    print('$fruta tiene $cantidad en stock');
  },);

  print('------------------------------');
  print('Posicion de lista sin "asMap"');
  // Posicion de una lista sin usar "asMap", usamos un bucle
  List<String> horaComida = ['Desayuno', 'Almuerzo', 'Cena'];
  // Uso con for:
  for(int idx = 0; idx <horaComida.length; idx++) {
    print('Indice: $idx, comidas: ${horaComida[idx]}');
  }

  print('------------------------------');
  // Uso con while:
  int idx = 0;
  while(idx < horaComida.length){
    print('Indice: $idx comida: ${horaComida[idx]}');
    idx++;
  }

  print('------------------------------');
  // Uso con forEach:
  int index = 0;
  horaComida.forEach((element) {
    print('Indice: $index, comida: $element');
    index++;
  });

}