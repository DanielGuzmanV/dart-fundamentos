// Mapas (Map)
// Estructuras de clave-valor (similar a los objetos literales de JS o JSON).
void main() {
  // Sin tipo de dato
  Map usuario = {
    "nombre": "Marco",
    "edad": 23,
    "esDev": true,
  };

  print(usuario);
  print(usuario["edad"]); // Imprimimos una clave en especifico

  // Con tipo de dato
  Map<String, dynamic> animal = {
    "especie": "Gato",
    "peso": 2.8,
    "esCarnivoro": true
  };
  print(animal);

  Map<num, String> nombres = {
    1: "Alberto",
    2: "Jose",
    3: "Carlos",
  };
  print(nombres);
  
}