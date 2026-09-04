// Variables tardias:
// Se usando cuando sabes que una variable no será nula, pero no puedes 
// asignarle su valor inmediatamente en el momento de declararla.

// Tiene dos comportamientos clave:

void main() {
  // 1. Inicialización Diferida (Promesa al compilador)
  // Le prometes a Dart: "No le pongas un valor ahora, pero te garantizo 
  // que tendrá uno antes de que la use".
  late String descripcion;
  //print(descripcion); // ERROR en ejecución: Si se usa antes de asignarla

  descripcion = "Hyperlocal News Platform"; // le asignamos un valor
  print(descripcion); // Funcion sin errores

  // 2. Inicialización Perezosa (Lazy Initialization)
  // Si asignas una función a una variable late, esa función no se ejecutará 
  // hasta que uses la variable por primera vez

  print("Inicio del programa");
  
  // Esta funcion no se ejecuta aqui, solo se define la logica
  late String datosPesados = cargarDatosDeAPI();

  print("Haciendo otras tareas...");
  
  // Recien se ejecuta en esta linea
  print(datosPesados);
}

// funcion de prueba fuera del main
String cargarDatosDeAPI() {
  print("Procesando datos pesados...");
  return "Datos listos";
}