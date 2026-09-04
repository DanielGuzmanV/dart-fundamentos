// Sound Null Safety
// Las variables no pueden ser nulas por defecto. Si dices que algo es un String, 
// no puede valer null. Esto evita el famoso error NullPointerException.
void main() {

  // Hacer una variable anulable
  // Para permitir que una variable sea nula, debes agregar un signo de interrogación al tipo.
  String nombre = "Marcus";
  // nombre = null; // Si lo intentamos nos dara error
  print(nombre);

  String? nombreAnulable = "Gonzales";
  nombreAnulable = null; // Aqui si nos permite
  print(nombreAnulable);

  // Operadores para manejar nulos (?., ??, !)
  // Cuando trabajas con variables que pueden ser nulas, tienes que protegerlas
  String? apellido = null;

  // 1. Operador de acceso condicional (?.): Si es nulo, no llama al método y devuelve null.
  print(apellido?.length);

  // 2. Operador Null-Aware (??): Si es nulo, asigna un valor por defecto.
  String resultado = apellido ?? "No tiene apellido";
  print(resultado);

  // 3. Operador de aserción forzada (!): Le jura a Dart que la variable NO es nula. Solo usarlo
  // si estamos 100% seguros
  String? baseDeDatosNombre = null ;
  print(baseDeDatosNombre!.length);
}