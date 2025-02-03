// Ejemplo 5: Sistema de inventario con clases y funciones

void main() {

  // Sistema para gestionar un inventario de productos, con cada producto 
  // representado como una clase y almacenado en un mapa
  Inventario varInventario = Inventario();

  // Agregamos productos
  varInventario.agregarProductos(
    '001', 
    Producto(Nombre: 'Manzana', Precio: 0.5, cantidad: 100)
  );

  varInventario.agregarProductos(
    '002',
    Producto(Nombre: 'Banana', Precio: 0.3, cantidad: 120)
  );

  varInventario.agregarProductos(
    '003', 
    Producto(Nombre: 'Fresas', Precio: 0.7, cantidad: 210)
  );

  // Mostrar inventario
  print('Inventario inicial: ');
  varInventario.mostrarInventario();

  // Vender producto
  print('\nVendiendo 10 manzanas...');
  varInventario.venderProducto('001', 10);

  // Consultar producto
  print('\nDetalles del producto "001": ${varInventario.obtenerProducto('001')}');

  // Mostrar inventario actualizado
  print('\nInventario actualizado: ');
  varInventario.mostrarInventario();

}

// Creamos la clase para el producto:
class Producto {

  String Nombre;
  double Precio;
  int cantidad;

  Producto({
    required this.Nombre,
    required this.Precio,
    required this.cantidad,
  });

  @override
  String toString() {
    return 'Producto(Nombre: $Nombre, precio: \$${Precio.toStringAsFixed(2)}, cantidad: $cantidad)';
  }

}

// Creamos la clase para el inventario:
class Inventario {

  Map<String, Producto> listaProductos = {};

  // Agregamos productos al mapa
  void agregarProductos(String id, Producto listaProducto) {
    listaProductos[id] = listaProducto;
  }

  // Obtenemos el producto del mapa
  Producto? obtenerProducto(String id) {
    return listaProductos[id];
  }

  // Vendemos un producto del mapa
  void venderProducto(String id, int cantidadProducto) {

    if(listaProductos.containsKey(id) && listaProductos[id]!.cantidad >= cantidadProducto) {
      listaProductos[id]!.cantidad -= cantidadProducto;
    } else {
      print('Producto no disponible o cantidad insuficiente');
    }
  }

  // Mostramos los productos del mapa
  void mostrarInventario() {
    listaProductos.forEach((id, producto) {
      print('ID: $id -> $producto');
    });
  }

}
