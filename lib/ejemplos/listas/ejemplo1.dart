// En estos ejemplos usaremos las siguientes funciones:
// map, reduce y filter (o where en dart)

void main () {

  // Ejemplo de map
  print('-- Map --');
  List<int> numeros = [1,2,3,4,5]; // Creamos la lista

  // Usamos el map que ira iterando en cada elemento
  List<int> cuadrados = numeros.map((idx) { 

    return idx * idx;
  }).toList();

  // Vemos el resultado
  print('Los cuadrados son: $cuadrados');

  print("----------------------------------");

  // Ejemplo de filter (where en dart)
  print('-- where --');
  List<int> numerosEnteros = [1,2,3,4,5]; // Creamos una nueva lista

  // Usamos el where que seleccionara los elementos que cumplan con la condicion
  List<int> pares = numerosEnteros.where((element) { 

    // Explicacion explicita
    print('Elemento: $element');
    return element % 2 == 0;
  }).toList();
  
  // Vemos el resultado
  print('Los numeros pares son: $pares');

  print("-----------------------------------------");

  // Ejemplo de reduce
  print('-- reduce --');
  List<int> newNumbers = [1,2,3,4,5];

  // Usamos reduce y este reduce la lista aun valor unico combinando elementos
  int suma = newNumbers.reduce((value, element) {

    // Explicacion explicita
    print('value: $value, element: $element suma: ${value + element}');
    return value + element; // Aqui sumamos todos los elementos de la lista
  });

  // Vemos el resultado
  print('La suma es: $suma');

}