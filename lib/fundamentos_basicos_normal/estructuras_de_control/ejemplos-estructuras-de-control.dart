// Ejemplos complejos y avanzados de estructuras de control:
void main() {
  // Primer ejemplo:
  print('---- Calculadora de ahorro ----');
  int dias = 7;
  int ahorroDiario = 20;
  int totalAhorrado = 0;

  for (int idx = 1; idx <= dias; idx++) {
    totalAhorrado = totalAhorrado + ahorroDiario;
    // print('Dia $idx: total ahorrado = $totalAhorrado');
  }
  // print('Ahorro total despues de $dias dias: $totalAhorrado');

  // ----------------------------------------------------------------

  // Segundo ejemplo:
  print(' ---- Encontrar el numero mas grande ----');

  List<int> numeros = [3, 8, 1, 14, 6];
  int maximo =numeros[0]; // Indicamos que el primero numero de la lista es mayor
  int content = 0;

  // Primer for: verificamos el numero mayor de la lista
  for (int idx = 0; idx <= numeros.length - 1; idx++) {
    content = numeros[idx];
    if (content > maximo) {
      maximo = content;
    }
  }

  // Segundo for: verificamos el numero mayor de la lista
  // for(int idx in numeros) {

  //   if(idx > maximo) {
  //     maximo = idx; // Actualizamos el mayor numero
  //   }
  // }
  
  // Imprimir todos los numeros de la lista con el primer for:
  for (int idx = 0; idx < numeros.length; idx++) {
    content = numeros[idx];
    // print('numeros de la lista son: $content');
  }

  // Imprimir todos los numeros de la lista con el segundo for:
  for (int idx in numeros) {
    // print('numeros de la lista son: $idx');
  }

  // Imprimir el mayor numero de la lista:
  print('El numero mas grande es: $maximo');
}
