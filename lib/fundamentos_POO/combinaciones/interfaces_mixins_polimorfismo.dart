// Combinaremos interfaces y mixins para comportamiento polimorfico
// Esto es util cuando se necesita que multiples clases tengan un comportamiento comun
// pero que implementen algunas funciones de manera distinta

void main() {

  List<ClaseTrabajo> trabajadores = [
    ClaseProgramador(),
    ClaseDisenador(),
  ];

  for(var idxTrabajador in trabajadores) {
    // Ejecuta segun la clase 
    idxTrabajador.realizarTarea();

    if(idxTrabajador is Reporte) {
      // Reutiliza el mixin
      // Realizamos un cast para indicar que idxTrabajador es un Reporte
      (idxTrabajador as Reporte).generarReporte();
    }

  } 


}

// Interface:
abstract class ClaseTrabajo {
  // Cada clase debe implementar esta funcion
  void realizarTarea();
}

// Mixin
mixin Reporte {
  void generarReporte() => print('Generando reporte...');
}

// Clases concretas:
class ClaseProgramador with Reporte implements ClaseTrabajo {
  @override
  void realizarTarea() {
    print('Escribiendo codigo...');
  }
}

class ClaseDisenador with Reporte implements ClaseTrabajo {
  @override
  void realizarTarea() {
    print('Creando diseños...');
  }

}




