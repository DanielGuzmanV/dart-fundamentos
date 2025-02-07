// Uso de callbacks en asincronia

void main() {

  // Utiles cuando trabajamos con tareas asincronas, aunque en dart suelen
  // ser reemplazadas por "Future o async/await" ejemplo:
  print('Iniciando tarea...');
  tareaAsincrona((mensaje) {
    print(mensaje);
  });


}

void tareaAsincrona(Function(String) callback) {
  Future.delayed(Duration(seconds: 2), (){
    callback('Tarea completada');
  });
}

