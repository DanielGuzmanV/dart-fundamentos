// Evitamos el callback hell con enfoques modernos usanod "Future, async/await y Streams"

void main() async {

  // Llamamos a los multiples callbacks
  // print('Obteniendo datos...');
  // obtenerDatos((dato) => print(dato));

  // Llamamos al Future:
  // print('Obteniendo datos del Future...');
  // print(await obtenerDato(2));
  // print(await obtenerDato(3));
  // print(await obtenerDato(4));
  
  // Llamamos al Stream:
  print('Obteniendo datos como stream...');
  await for(String dato in obtenerDatosComoStream()) {
    print(dato);
  }


}

// Esto ocurre cuando los callbacks se anidan tanto que el codigo es ilegible
void obtenerDatos(Function callback) {
  Future.delayed(Duration(seconds: 2), () {
    callback('Datos 1');
    Future.delayed(Duration(seconds: 3), () {
      callback('Datos 2');
      Future.delayed(Duration(seconds: 4), () {
        callback('Datos 3');
      });
    });
  });
}

// Solucion con async/await
Future<String> obtenerDato(int numero) async {
  await Future.delayed(Duration(seconds: numero));
  return "Dato $numero";
}

// Solucion con Stream
Stream<String> obtenerDatosComoStream() async* {
  for(int idx = 1; idx <= 3; idx++) {
    await Future.delayed(Duration(seconds: 2));
    yield 'Dato $idx';
  }
}

