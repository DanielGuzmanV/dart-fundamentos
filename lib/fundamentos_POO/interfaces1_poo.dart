// Interfaces:
// Este difine un contrato de metodos y propiedades de una clase que debe ser implementada
// donde implementa todos los métodos y propiedades definidos en la interfaz.

void main () {

  ClaseVehiculo miCarro = ClaseAuto();
  miCarro.encender();
  miCarro.apagar();


}

// Creamos e implementamos una interfaz:
class ClaseVehiculo {
  
  // Metodo de la clase
  void encender() {
    print('El vehiculo se ha encendido...');
  }

  void apagar(){}
}

class ClaseAuto implements ClaseVehiculo{

  @override
  void encender() {
    print('El auto esta encendido...');
  }
  
  @override
  void apagar() {
    print('El auto esta apagado');
  }

}











