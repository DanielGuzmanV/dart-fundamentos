// Esta clase no se puede instanciar directamente. Se utiliza como base 
// para otras clases y puede incluir metodos con o sin implementacion

void main() {

  ClasePerro miPerro = ClasePerro();
  miPerro.emitirSonido(); // Llamamos al metodo sobre escrito

  miPerro.dormir(); // Llamamos al metodo de la clase abstracta

}

// Creamos la clase abstracta:
abstract class ClaseAnimal{
  void emitirSonido();

  void dormir() {
    print('Estoy durmiendo');
  }
}

class ClasePerro extends ClaseAnimal{
  @override
  void emitirSonido() {
    print('El perro esta ladrando...');
  }

}






