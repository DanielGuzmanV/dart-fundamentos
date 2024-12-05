void main() {

  // Llamamos a la funcion usando el valor por defecto
  mensajeSaludar('Claudia');

  // Llamamos a la funcion, sobrescribiendo el valor
  mensajeSaludar('Martin', mensaje: 'que tal?');

}

// ------ Ejemplo de funcion con valores por defecto ------
void mensajeSaludar(String nombre, {String mensaje = 'Bienvenido!'}) {
  print('Hola $nombre, $mensaje');
}
