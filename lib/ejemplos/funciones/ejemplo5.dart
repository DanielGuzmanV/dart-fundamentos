// Reutilizacion con estructuras de control

void main() {
  // Ejemplo 5: Usamos la reutilizacion con estructuras de control
  List<Map<String, dynamic>> listUsers = [
    {'nombre': 'Juan', 'edad': 20},
    {'nombre': '', 'edad': 17},
    {'nombre': 'Pamela', 'edad': 25},
  ];

  procesarUsuarios(listUsers, esUsuarioValido);

  // -------------------------------------------------------------- \\
  print('---------------------------------------------------');
  // Ejemplo 5.1: Usamos la reutilizacion con estructuras de control
  print('El resultado es: ${calcular(5, 10, '+')}');
  print('El resultado es: ${calcular(10, 3, '/')}');

   // -------------------------------------------------------------- \\
  print('---------------------------------------------------');
  // Ejemplo 5.2: Usamos la reutilizacion con estructuras de control
  imprimirListas<int>([1,2,3,4,5,6], 'Numeros'); // Podemos especificar el tipo <int>
  imprimirListas(['Manzanas', 'Platanos', 'Naranjas', 'Sandias'], 'Frutas'); // O no podemos especificarlo <>

  // -------------------------------------------------------------- \\
  print('---------------------------------------------------');
  // Ejemplo 5.3: Usamos la reutilizacion con estructuras de control
  List<int> listNum = [1,2,3,4,5];
  procesarLista(listNum, (num) => num * 2); // Podemos usar una variable que tiene una lista

  procesarLista([10, 20, 30], sumarNumeros);

}
// Ejemplo: Validacion de una lista de usuarios con multiples verificaciones
bool esUsuarioValido(String nombre, int edad) {
  return nombre.isNotEmpty && edad >= 18; // Nombre no vacio y edad >= 18
}

void procesarUsuarios(List<Map<String, dynamic>> usuarios, bool Function(String, int) validador) {
  for (var listUsuario in usuarios) {
    String nombre = listUsuario['nombre'];
    int edad = listUsuario['edad'];

    if (validador(nombre, edad)) {
      print('$nombre es un usuario valido');
    } else {
      print('$nombre no es valido');
    }
  }
}

// Ejemplo: Funcion para operaciones matematicas basicas
int calcular(int a, int b, String operacion) {
  switch(operacion) {
    case '+':
      return a + b;
    case '-':
      return a - b;
    case '*':
      return a * b;
    case '/':
      return a ~/ b;
    default:
      throw ArgumentError('Operacion invalida');
  }
}

// Ejemplo: reutilizar una funcion para imprimir listas
void imprimirListas<T>(List<T> elementos, String titulo) {
  print('### $titulo ###');
  elementos.forEach((element) => print('$titulo: $element'));
}


// Ejemplo: reutilizar logica con callbacks
void procesarLista(List<int> numeros, int Function(int) transformacion) {
  List<int> resultado = numeros.map(transformacion).toList();
  print('Transformacion: $resultado'); // resultado con una variable
  // print('Transformacion: ${numeros.map(transformacion).toList()}'); // resultado directo
}

// Funcion de ejemplo:
int sumarNumeros(int num) {
  return num + 2;
}



