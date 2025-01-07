// Manejo de errores, son esenciales para escribir aplicaciones robustas
// ----- Usamos on, try y catch -----

void main() {

  // Usamos "on" para capturar errores especificos
  // Y usamos "catch" para capturar cualquier error

  try {
    
    int resultado = 10 ~/ 0;
    print('El resultado es: $resultado');

  } on UnsupportedError {
    print('Error: No puedes dividir por cero');
  }
    catch (e) {
    print('Error generico: $e');
  }


}





