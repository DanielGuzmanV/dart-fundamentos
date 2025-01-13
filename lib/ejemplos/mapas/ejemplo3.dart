// Ejemplos practicos ligeramente complejos

void main() {

  Map<String, Map<String, int>> tienda = {
    'Electrodomesticos': {
      'Television': 3,
      'Heladera': 1,
      'Licuadora': 2,
      'Cocina': 1
    },

    'Muebles': {
      'Camas': 4,
      'Sillas': 6,
      'Mesas': 2,
      'Armario': 3
    }
  };

  // Mostrar un solo objeto y su cantidad
  // Seleccionamos la primera categoria y su primer objeto
  String primeraCategoria = tienda.keys.first; // Sera Electrodomesticos
  String primerObjeto = tienda[primeraCategoria]!.keys.first; // Sera Television
  int cantidad = tienda[primeraCategoria]![primerObjeto]!; // Cantidad de Televisiones

  print('La categoria es: $primeraCategoria, el objeto es: $primerObjeto y son: $cantidad');

  print('-----------------------');

  // Seleccionar una categoria y objeto en una posicion especifica
  String categoriaDeseada = tienda.keys.elementAt(0); // Selecciona la segunda categoria
  String objetoDeseado = tienda[categoriaDeseada]!.keys.elementAt(3); // Seleccionamos el objeto de "Muebles"
  int cantidades = tienda[categoriaDeseada]! [objetoDeseado]!;

  print('La categoria es: $categoriaDeseada, el objeto es: $objetoDeseado y son $cantidades');

  print('-----------------------');
  
  // Enfoque dinamicon dentro de un bucle
  for(var categoria in tienda.keys) {

    for(var objeto in tienda[categoria]!.keys) {

      int cantidad = tienda[categoria]![objeto]!;
      print('La categoria: $categoria el objeto es: $objeto y son: $cantidad');

    }

  }



}







