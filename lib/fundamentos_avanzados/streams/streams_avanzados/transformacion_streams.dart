void main() async {
  // Transformamos con un map, convertimos un stream de enteros en un stream de cadenas
  print('Transformando stream...');
  Stream<String> streamTransformado = generarNumeros().map((event) {
    return 'Numero: $event';
  });

  await for (String dato in streamTransformado) {
    print('Los datos son: $dato');
  }

  // Usamos where para filtrar, donde este emitira solo numeros pares
  print('Filtrando stream...');
  Stream<int> streamFiltrado = generarNumeros().where((numero) {
    return numero % 2 == 0;
  });

  await for(int numeros in streamFiltrado) {
    print('Numero par: $numeros');
  }
}

Stream<int> generarNumeros() async* {
  for (int idx = 1; idx <= 5; idx++) {
    await Future.delayed(Duration(seconds: 2));
    yield idx;
  }
}
