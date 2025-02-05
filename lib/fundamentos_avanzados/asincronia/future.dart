// Uso del future: Este es un valor o resultado que estara disponible en el futuro

void main() async {

  print('Cargando datos...');
  String resultado = await cargarDatos();
  
  print(resultado);
}

// Supongamos que queremos simular la carga de datos desde una base de datos
Future<String> cargarDatos() async {

  for (int idx = 3; idx > 0; idx--) {
    await Future.delayed(Duration(seconds: 3));
    print('Espere en $idx ${idx == 1 ? 'segundo': 'segundos'}');
  }
  
  return "Datos cargados exitosamente";
}

