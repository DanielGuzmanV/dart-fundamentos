// 2.- Estructuras de control
// Bucles

void main() {

  // Bucle for
  print('--- Uso del for ---');
  for(int idx = 1; idx <= 3; idx++){
    print('Los numeros son: $idx');
  }

  // Bucle while:
  print('--- Uso del while ---');
  int contador = 0;
  while(contador < 3){
    print('El numero es: $contador');
    contador++;
  }

  // Bucle do while:
  print('--- Uso del do while ---');
  int indice = 1;
  do {
    print('El indice es: $indice');
    indice++;
  } while (indice < 3);

}