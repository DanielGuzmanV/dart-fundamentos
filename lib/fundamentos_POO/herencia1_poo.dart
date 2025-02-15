// Herencia: 
// Esta Permite que una clase "Hija" herede las propiedades y metodos de una clase "padre"

void main() {

  // Llamamos a la clase hija:
  Perro animalPerro = Perro();

  animalPerro.comer('Perro');
  animalPerro.ladrar();


}

// Clase padre:
class Animal{
  // Metodo de la clase padre:
  void comer(String animal) {
    print('El $animal esta comiendo');
  }
}

// Clase hija:
class Perro  extends Animal{
  // Metodo propio de la clase hija
  void ladrar() {
    print('El perro esta ladrando');
  }
}



