// Ejemplo 1: Sistema de tareas con clases y listas

void main() {
  // Sistema de tareas donde cada tarea es una clase y todas las tareas se
  // organizan en listas segun su estado (pendiente, en progreso, completada)

  ClaseGestorTareas gestor = ClaseGestorTareas();

  // Agregar tareas pendientes
  gestor.agregarTareasPendientes(ClaseTarea(
    varTitulo: "Hacer ejercicio",
    varDescripcion: "Completar en 30 min",
    varEstado: "Pendiente"
  ));

  gestor.agregarTareasPendientes(ClaseTarea(
    varTitulo: "Leer libro",
    varDescripcion: "Capitulo 5 de flutter",
    varEstado: "Pendiente"
  ));

  gestor.agregarTareasPendientes(ClaseTarea(
    varTitulo: "Cocinar",
    varDescripcion: "A las 12:00",
    varEstado: "Pendiente"
  ));

  // Agregar tareas en progreso
  gestor.agregarTareasEnProgreso(ClaseTarea(
    varTitulo: "Estudiar Matematicas", 
    varDescripcion: "Examen final", 
    varEstado: "En Progreso"
  ));

  // Agregar tareas completadas
  gestor.agregarTareasCompletadas(ClaseTarea(
    varTitulo: "Lavar los platos", 
    varDescripcion: "Antes de las 12 pm", 
    varEstado: "Completada"
  ));


  // Mostrar tareas iniciales
  print('Tareas iniciales: ');
  gestor.mostrarTareas();

  // Mover tarea a "En Progreso"
  gestor.moverTarea('Hacer ejercicio', 'En Progreso');

  // Mostrar tareas actualizadas
  print('\nTareas actualizadas:');
  gestor.mostrarTareas();

  // Mover tarea a "Completadas"
  gestor.moverTarea('Cocinar', "Completada");

  // Mostrar tareas actualizadas
  print('\nTareas actualizadas:');
  gestor.mostrarTareas();

}

// Creamos la clase Tarea:
class ClaseTarea {
  String varTitulo;
  String varDescripcion;
  String varEstado;

  ClaseTarea({
    required this.varTitulo,
    required this.varDescripcion,
    required this.varEstado,
  });

  // Metodo para actualizar estado
  void actualizarEstado(String nuevoEstado) {
    varEstado = nuevoEstado;
  }

  @override
  String toString() {
    return 'Tarea(Titulo: $varTitulo, Estado: $varEstado)';
  }

  // @override
  // String toString () {
  //   return 'Tarea(Titulo: $varTitulo, Descripcion: $varDescripcion, Estado: $varEstado)';
  // }


}

// Clase para gestionar tareas
class ClaseGestorTareas {
  List<ClaseTarea> tareasPendientes = [];
  List<ClaseTarea> tareasEnProgreso = [];
  List<ClaseTarea> tareasCompletadas = [];

  // -----------------------------------------------------------
  // Metodo para agregar tareas pendientes
  void agregarTareasPendientes(ClaseTarea tarea) {
    tareasPendientes.add(tarea);
  }

  void agregarTareasEnProgreso(ClaseTarea tarea) {
    tareasEnProgreso.add(tarea);
  }

  void agregarTareasCompletadas(ClaseTarea tarea) {
    tareasCompletadas.add(tarea);
  }

  // -----------------------------------------------------------

  // Metodo para mover la tarea a un nuevo estado
  void moverTarea(String titulo, String nuevoEstado) {
    ClaseTarea? tarea = _buscarTareas(titulo);
    if (tarea != null) {
      _removerTareaDeLista(tarea);
      tarea.actualizarEstado(nuevoEstado);
      _agregarListaCorrespondientes(tarea);
    }
  }

  // Metodo para buscar una tarea
  ClaseTarea? _buscarTareas(String titulo) {
    List<List<ClaseTarea>> listasTareas = [
      tareasPendientes,
      tareasEnProgreso,
      tareasCompletadas
    ];
    for (var lista in listasTareas) {
      for (var tarea in lista) {
        if (tarea.varTitulo == titulo) return tarea;
      }
    }
    return null;
  }

  // Metodo para eliminar las tareas de una lista
  void _removerTareaDeLista(ClaseTarea tarea) {
    tareasPendientes.remove(tarea);
    tareasEnProgreso.remove(tarea);
    tareasCompletadas.remove(tarea);
  }

  // Metodo para agregar una tarea a la lista correspondiente
  void _agregarListaCorrespondientes(ClaseTarea tarea) {
    switch (tarea.varEstado) {
      case 'Pendiente':
        tareasPendientes.add(tarea);
        break;

      case 'En Progreso':
        tareasEnProgreso.add(tarea);
        break;

      case 'Completada':
        tareasCompletadas.add(tarea);
        break;
    }
  }

  // Metodo para mostrar las tareas
  void mostrarTareas() {
    print('Pendientes: $tareasPendientes');
    print('En progreso: $tareasEnProgreso');
    print('Completadas: $tareasCompletadas');
  }
}
