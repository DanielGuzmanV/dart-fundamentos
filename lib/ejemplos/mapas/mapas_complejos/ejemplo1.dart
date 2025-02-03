// Ejemplo 1: Gestion de un inventario en un supermercado

void main() {

  // Sistema que administra las categorias de productos, con cada categoria 
  // conteniendo un mapa de productos. Cada producto tiene detalles como precio, cantidad y descripcion

  Map<String, Map<String, Map<String, dynamic>>> inventario = {
    'Frutas': {
      'Manzana': {
        'Precio': 1.5,
        'Cantidad': 100,
        'Descripcion': 'Manzana roja importada'
      },
      'Platano': {
        'Precio': 2.3,
        'Cantidad': 120,
        'Descripcion': 'Platano maduro',
      }
    },
    'Lacteos': {
      'Leche': {
        'Precio': 3.4,
        'Cantidad': 50,
        'Descripcion': 'Leche entero'
      },
      'Queso': {
        'Precio': 4.3,
        'Cantidad': 20,
        'Descripcion': 'Queso cheddar'
      }
    },
    // Agregar mas productos...
  };

  // Consultar el precio de un producto
  print('Precio de la manzana: \$${inventario['Frutas'] ! ['Manzana'] ! ['Precio']}');

  // Reducir la cantidad de un producto despues de una venta
  inventario['Frutas'] ! ['Manzana'] ! ['Cantidad'] -= 10;
  print('Cantidad restante de manzanas: ${inventario['Frutas'] ! ['Manzana'] ! ['Cantidad']}');

  // Agregar un nuevo producto 
  inventario['Lacteos'] ! ['Yogurt'] = {
    'Precio': 2.8,
    'Cantidad': 30,
    'Descripcion': 'Yogurt natural'
  };
  print('Inventario actualizado: $inventario');

}