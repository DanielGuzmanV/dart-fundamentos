// Ejemplos practicos ligeramente complejos

void main() {
  
  // Vemos el alimento
  String alimento = listaCompras['Desayuno']! [4]!;
  print('El alimento es: $alimento');
  
  print('------------------------');

  // Recorremos el mapa para mostrar todas las claves y valores
  // Pero depende la primera clave, osea "Desayuno y Almuerzo"
  listaCompras['Almuerzo']!.forEach((clave, valor) {
    // print('La clave es: $clave, alimento es: $valor');
  });
    
  print('------------------------');

  // Mostrar toda la categoria con nombre y elementos
  listaCompras.forEach((Categoria, items) {
    
    print('Categoria: $Categoria');
    items.forEach((key, value) {
      print('$key: $value');
    });

    print('-----');

  });

}

  // Usamos mapas dentro de mapas:
  Map<String, Map<int, String>> listaCompras = {
    'Desayuno': {
      1: 'Huevos',
      2: 'Pan',
      3: 'Mantequilla',
      4: 'Jugo de Naranja'
    },

    'Almuerzo': {
      1: 'Arroz',
      2: 'Fideos',
      3: 'Papas',
      4: 'Pollo'
    }

  };