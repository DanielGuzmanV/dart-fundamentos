void main () {

  print('\n === [Dynamic] ===');
  // Desactiva por completo el analizador de tipos para esa variable. 
  // Puedes hacer lo que quieras, pero hay riesgos de errores
  dynamic variableFlexible = 'Saludar';
  variableFlexible = 10;
  variableFlexible = true;
  print('Esta variable es dinamica: $variableFlexible');


  print('\n === [Object] ====');
  // Raíz de todos los tipos en Dart (excepto null). Al usarlo,le dices a Dart 
  // "esto es cualquier objeto". La diferencia con dynamic es que no te deja 
  // usar métodos específicos sin antes comprobar qué tipo de dato es.
  Object algo = 'Texto';
  // print(algo.length); // Aqui nos dara error ya que no verificamos de que tipo es

  if( algo is String) {
    print("String de longitud del '$algo' es ${algo.length}"); // Sin errores porque dart sabe que es un string
  } else {
    print('No es de tipo String');
  }


  print('\n === [Caso de uso: Procesador de respuestas de API] ===');
  // Imagina que recibes un dato que puede ser un código de error numérico (int) o un
  // mensaje de éxito (String). Usamos Object para recibirlo de forma segura (obligándonos a validar) en lugar de dynamic.
  // Simulamos dos respuestas distintas de una base de datos u objeto
  Object respuestaExitosa = 'Operacion completada con exito';
  Object respuestaError = 500;

  procesarRespuesta(respuestaExitosa);
  procesarRespuesta(respuestaError);


  print('\n === [Caso de uso: Contenedor generico de respuestas HTTP] === ');
  // Queremos una clase que envuelva la respuesta de una petición. A veces los datos
  // devueltos serán una lista de artículos (List<String>), a veces el perfil de un usuario, etc.

  // 1. Instancia donde 'T' es un string
  final resultadoToken = HttpResult<String>.success('jwt_token_12345');
  String miToken = resultadoToken.data!;
  int status = resultadoToken.statusCode;
  print('Token recibido: $miToken');
  print('Estado: $status');

  // 2. Instancia donde 'T' es una lista de enteros
  final resultados = HttpResult<List<int>>.success([10,24,89]);
  List<int> codigos = resultados.data!;
  print('IDs cargados: ${codigos.length}');

  // 3. Instancia para probar el constructor de error y el errorMessage
  final resultadoError = HttpResult<void>.error(404, 'Recurso no encontrado');
  print('\n --- Prueba de error ---');
  print('Codigo de estado de error: ${resultadoError.statusCode}');
  print('Mensaje de error: ${resultadoError.errorMessage}');


  print('\n === [Caso de uso: Validador de formularios] === ');
  // Crearemos un tipo de datos que represente exactamente a una función 
  // encargada de validar un campo de texto (como los de un login).

  // Esta funcion cumple perfectamente con el contrato de "ValidadorTexto"
  String? verificarEmail(String texto) {
    if(!texto.contains("@")) return 'El correo debe contener un @';
    return null;
  }

  // Ejecucion limpia y segura
  procesarCampo('Marco#enclave.com', verificarEmail); // Lanza error
  procesarCampo('Marco@enclave.com', verificarEmail); // Pasa validacion
}

// Funcion de prueba para verificar un Object
void procesarRespuesta(Object respuesta) {
  if(respuesta is String) {
    // Dart detecta que la respuesta es String
    print("Exito (longitud del mensaje '$respuesta') es : ${respuesta.length}");
  } else if(respuesta is int) {
    // Dart detecta que aqui ahora la respuesta es un int
    print('Error del servidor. Codigo de estado: $respuesta');
  }
}

// ===================================================

// Clase de prueba 
// La 'T' es un marcador de posición (Placeholder) para el tipo real que se definirá al instanciar.
class HttpResult<T> {
  final int statusCode;
  final T? data; // El tipo de data dependera de lo que pasamos a 'T'
  final String? errorMessage;

  HttpResult.success(this.data) : statusCode = 200, errorMessage = null;
  HttpResult.error(this.statusCode, this.errorMessage) : data = null;
}

// ===================================================

// Definimos un alias de tipo para la funcion
// Cualquier función que use 'ValidadorTexto' DEBE recibir un String y retornar un String anulable
typedef ValidadorTexto = String? Function(String valor);

// Aqui aplicamos el itpo estricto en el parametro de un funcion
void procesarCampo(String input, ValidadorTexto validador) {
  final resultado = validador(input);
  if(resultado != null) {
    print("Error de validacion: $resultado");
  } else {
    print("Input valido: $input");
  }

}

