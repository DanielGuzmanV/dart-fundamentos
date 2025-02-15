// Mixins:
// Permiten compartir comportamiento entre varias clases sin usar herencias

void main() {

  SuperHeroe superman = SuperHeroe();
  superman.volar();
  superman.nadar();

}

// Creamos el primer mixin
mixin Volador{
  void volar() {
    print('Estoy volando...');
  }
}

// Creamos el segundo mixin
mixin Nadador{
  void nadar() {
    print('Estoy nadando...');
  }
}

// Usamos los mixin en la clase superheroe
class SuperHeroe with Volador, Nadador{}




