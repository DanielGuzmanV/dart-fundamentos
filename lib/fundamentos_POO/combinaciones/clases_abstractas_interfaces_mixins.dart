// Mezclamos lo implementado anteriormente

void main() {

  ClaseEspecie tipoAnimal = ClaseEspecie(especiaAnimal: 'Pato');
  tipoAnimal.emitirSonido();
  tipoAnimal.alimento();
  tipoAnimal.nadar();
  tipoAnimal.volar();

  print('-------------------------');

  tipoAnimal = ClaseEspecie(especiaAnimal: 'perro');
  tipoAnimal.emitirSonido();
  tipoAnimal.alimento();
  tipoAnimal.caminar();

  print('-------------------------');

  tipoAnimal = ClaseEspecie(especiaAnimal: 'Aguila');
  tipoAnimal.emitirSonido();
  tipoAnimal.alimento();
  tipoAnimal.volar();


}

// Clase abstracta:
abstract class ClaseAnimal {
  // Metodo abstracta
  void emitirSonido();

  void alimento();
}

// Mixins:
mixin Volador {
  void volar() => print('Volando...');
}

mixin Nadador {
  void nadar() => print('Nadando...');
}

mixin Caminante {
  void caminar() => print('Caminando...');
}

// Clase concreta:
class ClaseEspecie extends ClaseAnimal with Volador, Nadador, Caminante {

  String especiaAnimal;

  ClaseEspecie({
    required this.especiaAnimal
  });

  @override
  void alimento() {
    print('Esta comiendo...');
  }

  @override
  void emitirSonido() {
    print('El $especiaAnimal esta emitiendo un sonido');
  }

}


