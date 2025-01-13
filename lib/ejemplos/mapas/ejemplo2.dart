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

  // Mostrar nombre de categoria, nombre de clave y valor
  tienda.forEach((categoria, items) {
    print('--- $categoria ---');
    items.forEach((objeto, cantidad) {
      // print('El objeto es: $objeto, y son: $cantidad');
    });
  });

  print('---------------------');

  // Mostrar datos de un sola categoria
  String categoria = 'Muebles'; // Ponemos la categoria deseada, "Electrodomesticos o Muebles"
  if(tienda.containsKey(categoria)){
    tienda[categoria]! .forEach((objeto, cantidad) {
      // print('La categoria es: $categoria, el objeto es: $objeto y son: $cantidad');
    });
  } else{
    print('La categoria "$categoria" no existe en el mapa');
  }

  print('---------------------');

  // Mostrar datos de un objeto especifico
  String categorias = 'Electrodomesticos'; // Ponemos la categoria deseada
  String objetos = 'Television'; // Ponemos el objeto deseado

  if(tienda.containsKey(categorias) && tienda[categorias]!.containsKey(objetos)){
    int cantidad = tienda[categorias]! [objetos]!;
    print('La categoria es: $categorias, el objeto es: $objetos y son: $cantidad');

  } else{
    print('El objeto "$objetos" no existe en la categoria "$categorias"');
  }



}






