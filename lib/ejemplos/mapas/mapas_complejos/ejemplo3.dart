// Ejemplo 3: Gestion de un sistema de calificaciones de estudiantes

void main() {

  // Sistema que almacena los datos de estudiantes y sus calificaciones en diferentes materias
  Map<String, Map<String, List<int>>> ListaEstudiantes = {
    'Estudiante1': {
      'Matematicas': [80, 90, 85],
      'Ciencias': [75, 80, 78],
      'Historia': [88, 92]
    },

    'Estudiante2': {
      'Matematicas': [60, 70, 65],
      'Ciencias': [55, 68, 62],
      'Historia': [72, 80]
    },

    // Agregar mas estudiantes...

  };

  // Calcular el promedio de calificaciones de un estudiante en una materia
  String estudiante = 'Estudiante1';
  String materia = 'Matematicas';

  List<int> calificaciones = ListaEstudiantes[estudiante]![materia]!;

  double promedio = calificaciones.reduce((value, element) => value + element) / calificaciones.length;
  print('Promedio de $materia para $estudiante: $promedio');

  // Añadir una nueva calificacion
  ListaEstudiantes['Estudiante2']!['Ciencias']!.add(85);
  print('Nuevas calificaciones de Ciencias para Estudiante2: ${ListaEstudiantes['Estudiante2']!['Ciencias']}');

   // Mostrar todas las materias y sus calificaciones de un estudiante "Estudiante1"
  print('Materia y nota del estudiante: $estudiante');
  ListaEstudiantes[estudiante]!.forEach((materia, notas) {
    print('$materia: $notas');
  });


}

