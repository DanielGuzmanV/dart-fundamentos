// Ejemplo 2: Sistema de registro de estudiantes y cursos

void main() {

  // Sistema donde los estudiantes estan registrados en varios cursos. Las listas
  // se usan para manejar estudiantes y los cursos asosciados
  ClaseSistemaEducativo sistema = ClaseSistemaEducativo();

  // Registrar estudiantes
  sistema.registrarEstudiantes(ClaseEstudiante(
    nombre: "Juan Perez", 
    listaCursos: ['Matematicas']
  ));

  sistema.registrarEstudiantes(ClaseEstudiante(
    nombre: "Marco Lopez", 
    listaCursos: ['Historia', 'Ingles']
  ));

  // Mostrar estudiantes iniciales
  print('Estudiantes iniciales: ');
  sistema.mostrarEstudiantes();

  // Agregar cursos a estudiante
  print('\n Agregando cursos "Fisica" a Juan Perez...');
  sistema.agregarCursoEstudiantes('Juan Perez', 'Fisica');

  // Mostrar estudiantes actualizados
  print('\n Estudiantes actualizados: ');
  sistema.mostrarEstudiantes();


}

// Creamos la clase para el estudiante:
class ClaseEstudiante {

  String nombre;
  List<String> listaCursos;

  ClaseEstudiante({
    required this.nombre,
    required this.listaCursos
  });

  // Metodo para agregar cursos
  void agregarCurso(String curso) {
    if(!listaCursos.contains(curso)) {
      listaCursos.add(curso);
    }
  }

  // Metodo para eliminar un curso
  void eliminarCurso(String curso) {
    listaCursos.remove(curso);
  }

  @override
  String toString() {
    return 'Estudiante(Nombre: $nombre, Curso: $listaCursos)';
  }

}

// Creamos la clase del sistema educativo
class ClaseSistemaEducativo {

  List<ClaseEstudiante> listaEstudiante = [];

  // Metodo para registrar estudiantes
  void registrarEstudiantes(ClaseEstudiante varEstudiante) {
    listaEstudiante.add(varEstudiante);
  }

  // Metodo para agregar cursos
  void agregarCursoEstudiantes( String nombreEstudiante, String curso) {
    ClaseEstudiante? estudiante = listaEstudiante.firstWhere((element) => element.nombre == nombreEstudiante,);
    if(estudiante != null) {
      estudiante.agregarCurso(curso);
    } else {
      print('Estudiante no encontrado');
    }
  
  }

  // Metodo para mostrar los estudiantes
  void mostrarEstudiantes() {
    for(var estudiante in listaEstudiante){
      print(estudiante);
    }
  }

}




