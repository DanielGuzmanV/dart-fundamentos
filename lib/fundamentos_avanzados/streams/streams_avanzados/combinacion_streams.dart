// En dart nos permite combinar multiples streams, esto es util cuando
// se trabaja con varias fuentes de datos en paralelo

// Para ello descargaremos las dependencias de "rxdart" y importaremos async y la dependencia descargada
import 'dart:async';
import 'package:rxdart/rxdart.dart';

void main() async {

  // Creamos un stream que combina dos streams
  print('Combinando Streams...');
  Stream<int> streamCombinado = Rx.merge([primerStream(), segundoStream()]);

  await for(int numeros in streamCombinado) {
    print('Numero combinado: $numeros');
  }

  // Creamos un stream que une los valores de dos stream, emitiendo
  // los valores de un stream y luego los valores del otro
  print("Secuencializando streams...");
  Stream<int> combinado = Rx.concat([primerStream(), segundoStream()]);

  await for (int numero in combinado) {
    print("Número secuencial: $numero");
  }


}

// Realizamos el primer stream
Stream<int> primerStream() async* {
  for(int idx = 1; idx <= 3; idx++) {
    await Future.delayed(Duration(seconds: 2));
    yield idx;
  }
}

// Realizamos el segundo stream
Stream<int> segundoStream() async* {
  for(int idx = 4; idx <= 6; idx++) {
    await Future.delayed(Duration(seconds: 2));
    yield idx;
  }
}
