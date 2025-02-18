// Usaremos interfaces con mixins:
// - Las interfaces definen el contrato (que metodos y propiedades debe implementar una clase)
// - Los mixins permiten añadir funcionalidades reutilizables sin herencia directa

void main() {

  ClasePajaro nuevoPajaro = ClasePajaro(ave: 'Aguila');
  nuevoPajaro.volar();
  nuevoPajaro.volando();
  nuevoPajaro.comer();
  nuevoPajaro.cazar();


}

// Interface:
class ClaseVolador {
  // Metodo abstracto que las clases deben implementar
  void volar(){}

  void volando(){}
}

// Mixin:
mixin Saludable{
  void comer() => print('Comiendo saludablemente...');
}

mixin Actividad {
  void cazar() {
    print('Esta cazando en las montañas');
  }
}

// Clase especifica:
class ClasePajaro with Saludable, Actividad implements ClaseVolador  {

  String ave;

  ClasePajaro({
    required this.ave
  });

  @override
  void volar() {
    print('El $ave esta volando...');
  }
  
  @override
  void volando() {
    print('El $ave vuela por los cielos');
  }

}


