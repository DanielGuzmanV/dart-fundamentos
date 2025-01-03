import 'dart:io';

void main() {
  // Ejemplo 3: inventario con listas y bucles
  List<String> inventario = [];

  while(true) {
    print('\nInventario de productos: ');

    print('1. Agregar producto');
    print('2. Eliminar producto');
    print('3. Mostrar inventario');
    print('4. Salir');

    String? opcion = stdin.readLineSync();

    if(opcion == '1') {
      print('Ingresa el nombre del producto');
      String? producto = stdin.readLineSync();

      if(producto != null && producto.isNotEmpty) {
        inventario.add(producto);
        print('$producto agregado al inventario');
      } else {
        print('Producto no valido');
      }

    } else if(opcion == '2') {
      print('Ingresa el nombre del producto a eliminar: ');
      String? producto = stdin.readLineSync();
      if(inventario.remove(producto)) {
        print('$producto eliminado del inventario');
      }else {
        print('Producto no encontrado');
      }

    } else if(opcion == '3') {
      print('Productos en inventario: ');
      if(inventario.isEmpty) {
        print('El inventario esta vacio');
      } else{
        for(var elemento in inventario) {
          print('- $elemento');
        }
      }
    } else if(opcion == '4') {
      print('Saliendo...');
      break;
    } else {
      print('Opcion no valida');
    }
  }



}