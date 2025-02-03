// Ejemplo 2: Sistema de usuarios con roles y permisos

void main() {

  // Un sistema que administra usuarios, sus roles y los permisos asociados.
  // Esto es comun en sistemas de autenticacion

  Map<String, Map<String, dynamic>> usuarios = {

    'User1': {
      'Nombre': 'Juan Perez',
      'Roles': ['Admin', 'Editor'],
      'Permisos': ['Leer', 'Escribir', 'Eliminar'],
    },
    'User2': {
      'Nombre': 'Marco Lopez',
      'Roles': ['Editor'],
      'Permisos': ['Leer', 'Escribir']
    },
    'User3': {
      'Nombre': 'Carlos García',
      'Roles': ['Viewer'],
      'Permisos': ['Leer'],
    },
    // Agregar mas usuarios...
  };

// Consultar los permisos de un usuario
  print('Permisos de user1: ${usuarios['User1']!['Permisos']}');

  // Agregar un nuevo permiso a un usuario
  usuarios['User3']!['Permisos'].add('Comentar');
  print('Permisos actualizados de user3: ${usuarios['User3']!['Permisos']}');

  // Cambiar el rol de un usuario
  usuarios['User2']!['Roles'] = ['Admin'];
  print('Roles actualizados de user2: ${usuarios['User2']!['Roles']}');

  // Recorrer todos los usuarios para mostrar sus datos
  usuarios.forEach((usuario, datos) {
    print('$usuario: ${datos['Nombre']} tiene roles ${datos['Roles']} y permisos ${datos['Permisos']}');
  });


}



