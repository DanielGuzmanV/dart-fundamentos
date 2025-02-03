// Ejemplo 4: Base de datos de pedidos en un restaurante

void main() {

  // Sistema para rastrear pedidos realizados en un restaurante, donde cada
  // Pedido tiene detalles del cliente, los platillos ordenados y el total de la cuenta

  Map<int, Map<String, dynamic>> listaPedidos = {
    1: {
      'Cliente': 'Ana Torres',
      'Platillos': [
        {
          'Nombre': 'Pizza',
          'Cantidad': 2,
          'Precio': 12.5,
        },
        {
          'Nombre': 'Gaseosa',
          'Cantidad': 1,
          'Precio': 1.5,
        },
      ],
      'Total': 26.5,
    },
    2: {
      'Cliente': 'Marco Martinez',
      'Platillos': [
        {
          'Nombre': 'Hamburguesas',
          'Cantidad': 1,
          'Precio': 10.0
        },
        {
          'Nombre': 'Papas',
          'Cantidad': 1,
          'Precio': 3.5
        },
        {
          'Nombre': 'Gaseosas',
          'Cantidad': 1,
          'Precio': 2.0
        },
      ],
      'Total': 15.5
    }

  };

  // Consultar el total de un pedido
  print('Total del pedido 1: \$${listaPedidos[1] ! ['Total']}');

  // Agregar un nuevo pedido
  listaPedidos[3] = {
    'Cliente': 'Carmen Reyes',
    'Platillos': [
      {
        'Nombre': 'Ensalada',
        'Cantidad': 1,
        'Precio': 7.0
      }
    ],
    'Total': 7.0,
  };
  print('Pedidos actualizados: $listaPedidos');

  // Calcular el total de platillos de un pedido
  List platillosPedido2 = listaPedidos[1] ! ['Platillos'];
  double totalCalculo = platillosPedido2
  .map((platillo) => platillo['Cantidad'] * platillo['Precio'])
  .reduce((value, element) => value + element,);

  print('Total calculado del pedido 2: \$${totalCalculo}');



}


