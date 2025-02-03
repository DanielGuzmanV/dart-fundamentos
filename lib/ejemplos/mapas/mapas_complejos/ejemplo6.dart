// Ejemplo 6: Gestion de ususarios con roles usando clases

void main() {

  // Sistema para manejar usuarios y roles. Cada usuario es una clase y 
  // se almacena en un mapa donde la clave es su id
  SistemaUsuarios nuevoSistema = SistemaUsuarios();

  // Agregamos usuarios
  nuevoSistema.agregarUsuario('user1', Usuario(nombres: 'Juan Perez', roles: ['Admin'], permisos: ['Leer', 'Escribir']));
  nuevoSistema.agregarUsuario('user2', Usuario(nombres: 'Marco Lopez', permisos: ['Editor'], roles: ['Leer']));

  // Mostrar usuarios
  print('Los usuarios registrados son: ');
  nuevoSistema.mostrarUsuarios();

  // Modificar permisos de un usuario
  print('\nAgregando permiso "Eliminar" a user2...');
  nuevoSistema.obtenerUsuario('user2')?.agregarPermisos('Eliminar');

  // Mostrar usuarios actualizados
  print('\n Usuarios actualizados: ');
  nuevoSistema.mostrarUsuarios();

}

// Clase para el usuario, roles y permisos
class Usuario {

  String nombres;
  List<String> roles;
  List<String> permisos;

  Usuario({
    required this.nombres,
    required this.roles,
    required this.permisos,
  });

  // Agregamos permisos nuevos a la lista
  void agregarPermisos(String varPermisos) {
    if(!permisos.contains(varPermisos)) {
      permisos.add(varPermisos);
    }
  }

  @override
  String toString() {
    return 'Usuario(nombre: $nombres, roles: $roles, permisos: $permisos)';
  }

}

// Clase para el sistema de usuarios
class SistemaUsuarios {

  Map<String, Usuario> varUsuarios = {};

  // Metodo para agregar un nuevo usuario
  void agregarUsuario(String id, Usuario newUsuario) {
    varUsuarios[id] = newUsuario;
  }

  // Metodo para obtener un usuario
  Usuario? obtenerUsuario(String id) {
    return varUsuarios[id];
  }

  // Metodo para mostrar a los usuarios
  void mostrarUsuarios() {
    varUsuarios.forEach((id, elementUsuario) {
      print('User ID: $id ==> $elementUsuario');
    });
  }

}

