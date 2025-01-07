// Manejo de errores, son esenciales para escribir aplicaciones robustas
// ----- Usamos una excepcion personalizada -----

void main() {
  // Validacion mas compleja, que esta validando datos de un usuario
  Map<String, dynamic> usuario = {
    'nombre':'Pablo', 
    'edad': 15,
  };

  // Creamos el try catch
  try {
    validarUsuario(usuario);
  } catch (e) {
    print('Error al validar usuario: $e');
  } finally {
    print('Validacion finalizada');
  }
  
}

void validarUsuario(Map<String, dynamic> parameterUser) {
  if(!parameterUser.containsKey('nombre')) {
    throw Exception('El usuario debe tener un nombre');
  }
  if(parameterUser['edad'] < 18) {
    throw Exception('El usuario debe ser mayor de edad');
  }
}





