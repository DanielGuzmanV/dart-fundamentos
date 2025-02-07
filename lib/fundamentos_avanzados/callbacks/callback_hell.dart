// Problemas con los callbacks: callback hell

void main() {

  // Cuando se anidan muchos callbacks, el codigo se vuelve dificil de leer y mantener
  // por eso "async/await y future" son mas recomendados en dart
  print('Se iniciaron las tareas...');
  primeraTarea((){
    segundaTarea(() {
      print('Todas las tareas completadas');
    });
  });

}

// Callback hell
void primeraTarea(Function callback) {
  Future.delayed(Duration(seconds: 2), () {
    print('Tarea 1 completada');
    callback();
  });
}

void segundaTarea(Function callback) {
  Future.delayed(Duration(seconds: 3), () {
    print('Tarea 2 completada');
    callback();
  });
}
