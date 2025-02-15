// Ejemplo basico de interfaz:

void main() {

  ClaseAnimal miPerro = ClasePerro();
  miPerro.sonido();

}

class ClaseAnimal {
  void sonido() {
    print('El animal hace un sonido...');
  }
}

class ClasePerro implements ClaseAnimal {
  @override
  void sonido() {
    print('El perro ladra...');
  }

}


