// Manejo de errores, son esenciales para escribir aplicaciones robustas
// ----- Usamos Todos los tipos de excepciones -----

void main() {

  // Usaremos las excepciones como try, on, catch y finally
  try {
    int resultado = 10 ~/ 0;
    print('La respuestta es: $resultado');
  } on UnsupportedError{
    print('Error: No puedes dividir por cero');
  } on FormatException {
    print('Error de formato');
  } catch (e) {
    print('Error generico: $e');
  } finally {
    print('Siempre ejecutando');
  }

}




