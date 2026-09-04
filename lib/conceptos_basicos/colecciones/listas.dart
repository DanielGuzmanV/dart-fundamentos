  // Listas (list) Colecciones de elementos
void main() {
  // Sin tipo de dato
  List random = [1, 2, false, 'Saludar'];
  // Se podria agregar cualquier dato
  random.add(true);
  random.add("Hola");
  random.add(23);
  print(random);

  // Con tipo de dato
  List<String> lenguaje = ['Dart', 'Typescript', 'Javascript'];
  // Solo podemos agregar el tipo de dato que se definio
  lenguaje.add("Flutter");
  // lenguaje.add(23); // Nos daria un error 
  print(lenguaje);

  // Listas inmutables
  final listaFinal = ["A", "B"];
  listaFinal.add("C"); // La referencia no cambia, pero el contenido si
  print(listaFinal);

  const listaConst = ["A", "B"];
  listaConst.add("C"); // Aqui nos dara un error en ejecucion, ya que las listas const son inmutalbes
  print(listaConst);
}