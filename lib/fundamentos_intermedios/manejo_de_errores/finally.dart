// Manejo de errores, son esenciales para escribir aplicaciones robustas
// ----- Usamos finally -----

void main() {
  // Finally siempre se ejecutara, haya o no error

  try {
    int resultado = 10 ~/ 5;
    print('El resultado es: $resultado');
  } catch (e) {
    print('Error encontrado: $e');
  } finally {
    print('Esta linea siempre se ejecutara');
  }







}


