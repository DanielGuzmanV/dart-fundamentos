// Inmutabilidad (final vs const)
// Ambas sirven para definir variables que no pueden cambiar su valor una vez
// asignadas, pero la diferencia radica en cuándo se calcula ese valor.
void main() {
  // const calcula el valor antes de que corra el programa
  const pi = 3.1416;
  print(pi);

  // final calcula el valor cuando el programa pasa por esa linea
  final horaActual = DateTime.now();
  print(horaActual);
}