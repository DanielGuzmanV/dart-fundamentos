// Manejo de excepciones con funciones

void main() {
  
  // Ejemplo 7: Usamos el manejo de excepciones con funciones
  // Calculo seguro con validacion y manejo de errores

  try {
    double resultado = dividir(10, 2); // Esto lanzaria un error
    print('Resultado: $resultado');

  } catch (e) {
    print('Error: ${e}');
  } finally {
    print('Calculo finalizado');
  }

}

double dividir(double number1, double number2) {
  if(number2 == 0){
    throw ArgumentError('El divisor no puede ser cero');
  }
  return number1 / number2;
}



