// Usaremos clases abstractas y mixins:
// - Las clases abstractas definen un comportamiento base y métodos obligatorios
// - Los mixins se añaden para extender funcionalidades sin sobrecargar la herencia

void main() {

  ClasePerro miPerro = ClasePerro();
  miPerro.emitirSonido();
  miPerro.caminar();
  miPerro.corre();
  miPerro.dormir();

}

// Clase abstracta: 
abstract class ClaseAnimal {
  // Metodo abstracto
  void emitirSonido();

  // Metodo con implementacion
  void dormir() => print('Durmiendo...');
}

// Mixin:
mixin Caminante {
  void caminar() => print('Caminando...');

  void corre(){
    print('Corriendo');
  }
}

// Clase concreta:
class ClasePerro extends ClaseAnimal with Caminante {
  @override
  void emitirSonido() {
    print('El perro esta ladrando...');
  }

}




