// Usamos el metodo "asBroadcastStream" para que varios oyentes escuchen el mismo stream

void main () {

  Stream<int> nuevoStream = generarStreamBroadcast();

  nuevoStream.listen((event) => print('Oyente 1 recibio: $event'));
  // nuevoStream.listen((event) => print('Oyente 2 recibio: $event'));

}

Stream<int> generarStreamBroadcast() {
  return Stream.periodic( // "periodic" genera un stream que emite valores 
    Duration(seconds: 2),
    (x) => x + x
  ).take(5).asBroadcastStream(); // "take" limita la cantidad de valores que emite el stream

}