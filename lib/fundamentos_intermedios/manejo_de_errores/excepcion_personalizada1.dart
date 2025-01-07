// Manejo de errores, son esenciales para escribir aplicaciones robustas
// ----- Usamos una excepcion personalizada -----

void main() {
  // Podemos crear nuestras propias excepciones con "throw"
  try {
    // Llamamos a la funcion
    validarEdad(20);

    // Llamamos a la nueva funcion
    nuevaValidacionEdad(18);
  } catch (e) {
    print('Abvertencia: $e');
  }


}

// Funcion vacia con excepcion personalizada
void validarEdad(int edad) {
  if(edad < 18) {
    throw Exception('La edad debe ser mayor o igual a 18');
  }
}
// ---------------------------------------------------------

// Nueva funcion vacia para usar la clase personalizada de error
void nuevaValidacionEdad(int edad) {
  if(edad < 20) {
    throw ClaseEdadInvalidaExcepcion('Debes ser mayor de edad');
  } else {
    print('Ya eres mayor de edad');
  }
}

// ---------------------------------------------------------

// Creamos una clase que tendra un mensaje de error personalizado
class ClaseEdadInvalidaExcepcion implements Exception {
  final String mensaje;

  ClaseEdadInvalidaExcepcion(this.mensaje);

  @override
  String toString() => 'EdadInvalidaExcepcion: $mensaje';
}










