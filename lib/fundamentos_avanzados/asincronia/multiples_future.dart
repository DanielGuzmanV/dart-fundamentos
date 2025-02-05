// Podemos tener varias operaciones asincronicas y ejecutarlas en paralelo
// con "Future await"

void main() async {

  print('Iniciando tareas...');
  await Future.wait([primeraTarea(), segundaTarea()]);

  Future<void> resultado() async {
    await Future.delayed(Duration(seconds: 1));
    print('Todas las tareas completadas');
  }

  var resultadoFinal = await resultado();

  return resultadoFinal;

}

// Primer future:
Future<void> primeraTarea() async {

  for(int idx = 3; idx > 0; idx--) {
    
    await Future.delayed(Duration(seconds: 2));
    print('Espere $idx segundo para la primera tarea');
  
  }

  print('Tarea 1 completada');  

}

// Segundo future:
Future<void> segundaTarea() async {

  for(int idx = 3; idx > 0; idx--) {

    await Future.delayed(Duration(seconds: 2));
    print('Espere $idx segundo para la segunda tarea');

  }
  
  print('Tarea 2 completada');

}