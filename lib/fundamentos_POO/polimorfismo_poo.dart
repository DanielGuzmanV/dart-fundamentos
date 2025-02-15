// Polimorfismo:
// Este permite usar un metodo de manera diferente dependiendo de la clase que lo implemente

void main() {

  ClaseFigura figura = ClaseCirculo(); // Esto seria el polimorfismo
  figura.dibujar();

  figura = ClaseRectangulo();
  figura.dibujar();

  figura = ClaseCuadrado();
  figura.dibujar();
}

// Clase padre
class ClaseFigura {
  // Metodo de la clase
  void dibujar() {
    print('Dibujando una figura...');
  }
}

// Clases hijas
class ClaseCirculo extends ClaseFigura {

  // Sobre escribimos el metodo de la clase padre
  @override
  void dibujar(){
    print('Dibujando un circulo...');
  }
}

class ClaseRectangulo extends ClaseFigura {

  // Sobre escribimos el metodo de la clase padre
  @override
  void dibujar() {
    print('Dibujando un rectangulo...');
  }
}

class ClaseCuadrado extends ClaseFigura {
  // Sobre escribimos el metodo de la clase padre
  @override
  void dibujar() {
    print('Dibujando un cuadrado...');
  }
}
