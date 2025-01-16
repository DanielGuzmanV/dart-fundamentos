// Ejemplos de un mapa con una lista:
void main() {
  Map<String, Map<int, List<int>>> mapararro = {
    'Pares': {
      1: [2, 4, 6, 8],
    },
    'Impares': {
      2: [1, 3, 5, 7]
    }
  };

  print(mapararro);
}
