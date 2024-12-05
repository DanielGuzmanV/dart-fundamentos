// Funciones con parametros opcionales:

void main() {

  // Llamamos a la funcion, parametro opcional no incluido
  saludar('Maria');
  
  // Llamamos a la funcion, parametro opcional incluido
  saludar('Macoina', 'que tal?');
  
}

// ------ Ejemplo de funcion con parametro opcional ------
void saludar(String nombre, [String? mensaje]){
  if(mensaje != null){
    print('Hola $nombre, $mensaje');
  } else {
    print('Hola $nombre');
  }
}
