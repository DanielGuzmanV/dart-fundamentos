void main() {

  // Llamamos a la funcion usando el valor por defecto
  mensajeSaludar('Claudia');

  // Llamamos a la funcion, sobrescribiendo el valor
  mensajeSaludar('Martin', mensaje: 'que tal?');

  // --------------------------------------
  int resultado = sumaValor(23);
  print('El resultado es: $resultado');

  int resultado2 = sumaValor(23,valor2: 10);
  print('El resultado 2 es: $resultado2');


}

// ------ Ejemplo de funcion con valores por defecto ------
void mensajeSaludar(String nombre, {String mensaje = 'Bienvenido!'}) {
  print('Hola $nombre, $mensaje');
}

int sumaValor(int valor, {int valor2 = 0}){
  return valor + valor2;
}
