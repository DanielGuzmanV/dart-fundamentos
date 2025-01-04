// Reutilizacion con estructuras de control

void main() {
  
  // Ejemplo 5: Usamos la reutilizacion con estructuras de control 
  // Validacion de una lista de usuarios con multiples verificaciones

  List<Map<String, dynamic>> listUsers = [
    {'nombre': 'Juan', 'edad': 20},
    {'nombre': '', 'edad': 17},
    {'nombre': 'Pamela', 'edad': 25},
  ];

  procesarUsuarios(listUsers, esUsuarioValido);

}

bool esUsuarioValido(String nombre, int edad) {
  return nombre.isNotEmpty && edad >= 18; // Nombre no vacio y edad >= 18
}

void procesarUsuarios(List<Map<String, dynamic>> usuarios, bool Function(String, int) validador) {

  for(var listUsuario in usuarios) {
    String nombre = listUsuario['nombre'];
    int edad = listUsuario['edad'];

    if(validador(nombre, edad)) {
      print('$nombre es un usuario valido');
    } else {
      print('$nombre no es valido');
    }
  }
}


