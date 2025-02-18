// Herencia ligeramente avanzada

void main() {

  // Llamamos a la "ClasePerro"
  ClasePerro perro = ClasePerro(alimento: 'Pescado', objeto: 'Persona');

  perro.comer();
  perro.ladrar();


}

// Clase padre:
class ClaseAnimal {

  String alimento;

  ClaseAnimal({
    required this.alimento
  });

  // Metodo de la "ClaseAnimal"
  void comer() {
    print('El animal esta comiendo $alimento');
  }
}

// Clase hija:
class ClasePerro extends ClaseAnimal {

  String objeto;

  ClasePerro({
    required this.objeto,
    required super.alimento
  });

  // Metodo propio de la "ClasePerro"
  void ladrar() {
    print('El perro esta ladrando $objeto');
  }
}

