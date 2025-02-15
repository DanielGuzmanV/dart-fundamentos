// Ejemplo basico de clase y objeto 
void main() {

  // creamos un objeto para la primera forma:
  Persona objetoPersona = Persona('Pedro', 85);

  // creamos un objeto para la segunda forma:
  // Persona objetoPersona = Persona(nombre: 'Marco', edad: 27);

  // Llamamos al metodo:
  objetoPersona.mostrarInformacion();


}

// Creamos la clase
class Persona {

  // Atributos:
  String nombre;
  int edad;

  // Constructor, tenemos de dos formas:
  // Primera forma:
  Persona(this.nombre, this.edad);

  // Segunda forma: 
  // Persona({
  //   required this.nombre,
  //   required this.edad
  // });


  // Metodo:
  void mostrarInformacion() {
    print('El nombre es: $nombre, y la edad es: $edad');
  }

}

