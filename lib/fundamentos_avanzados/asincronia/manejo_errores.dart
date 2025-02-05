// Podemos usar bloques como "try - catch" para capturar excepsiones en funciones asincronas

void main() async {

  try {
    await tareaConError();
  } catch (e) {
    print('Error capturado: $e');
  } finally {
    print('ejecutandose...');
  }

}

Future<void> tareaConError() async {

  await Future.delayed(Duration(seconds: 2));
  throw Exception(
    'Ocurrio un error en la tarea'
  );

}