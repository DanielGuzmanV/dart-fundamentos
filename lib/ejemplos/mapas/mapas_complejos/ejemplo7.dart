// Ejemplo 3: Mapa que contiene clases y listas

void main() {

  // Sistema que organiza calificaciones de estudiantes en diferentes materias, donde 
  // cada estudiante es una clase y las calificaciones se almacenan en un maap

  Map<String, ClassEstudiante> listaEstudiantes = {

    'Estudiante1': ClassEstudiante(
      nombre: 'Carlos Villagran', 
      calificaciones: {
        'Matematicas': [85, 90, 78],
        'Fisica': [88, 74]
      }
    ),

    'Estudiante2': ClassEstudiante(
      nombre: 'Roberto Gomez', 
      calificaciones: {
        'Matematicas': [90, 95, 80],
        'Fisica': [90, 80]
      }
    ),

  };

  // Agregamos calificaciones
  listaEstudiantes['Estudiante1']?.agregarCalificaciones('Ciencias', 88);
  listaEstudiantes['Estudiante2']!.agregarCalificaciones('Ciencias', 90);

  // Mostrar estudiantes
  listaEstudiantes.forEach((id, estudiante) {
    print('ID: $id ==> $estudiante');
  });

  // Obtener promedio de una materia
  print('El promedio de Matematicas de "Estudiante1": ${listaEstudiantes['Estudiante1']?.obtenerPromedio('Matematicas')}');
  print('El promedio de Fisica del "Estudiante2": ${listaEstudiantes['Estudiante2']!.obtenerPromedio('Fisica')}');

}

// Creamos la clase para los estudiantes
class ClassEstudiante {

  String nombre;
  Map<String, List<int>> calificaciones;

  ClassEstudiante({
    required this.nombre,
    required this.calificaciones,
  });

  // Metodo para agregar calificaciones
  void agregarCalificaciones(String materia, int nota) {

    calificaciones.putIfAbsent(materia, () => []);
    calificaciones[materia]!.add(nota);

  }

  // Metodo para obtener el promedio de las notas
  double obtenerPromedio(String varMateria){
    
    if(!calificaciones.containsKey(varMateria)) return 0.0;
    List<int> listNotas = calificaciones[varMateria]!;
    return listNotas.reduce((value, element) {
      return value + element;
    }) / listNotas.length;

  }

  @override
  String toString() {
    return 'Estudiante(Nombre: $nombre, Calificaciones: $calificaciones)';
  }

}


