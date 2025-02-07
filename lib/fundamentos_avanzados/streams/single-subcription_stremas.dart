// Ejemplo basico usando "single-subcription streams"

void main() async {

  print('Iniciando el stream...');
  await for(int numeros in generarNumeros()) { // Aqui escucha y consume los valores del stream a medida que se emiten
    print('Numero recibido: $numeros');
  }
  print('Stream completado...');
}

Stream<int> generarNumeros() async* { // (async *) indica que la funcion genera un stream
  for(int idx = 1; idx <= 5; idx++) {
    await Future.delayed(Duration(seconds: 1));
    yield idx; // Este emite un numero al stream
  }
}

