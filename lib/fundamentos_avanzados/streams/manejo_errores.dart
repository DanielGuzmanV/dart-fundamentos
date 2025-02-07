// Podemos manejar errores directamente en el listener

void main() {

  streamConError().listen(
    
    (data) => print('Dato recibido: $data'),
    onError: (error) => print('Error: $error'),
    onDone: () => print('Stream completado'),
    cancelOnError: true, // Esto cancela el stream al primer error

  );

}

Stream<int> streamConError() async* {

  for(int idx = 1; idx <= 5; idx++) {
    yield idx;
  }

  throw Exception('Error en el stream');

}

