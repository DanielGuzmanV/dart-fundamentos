// Parametros nombrados y reutilizacion 

void main() {
  
  // Ejemplo 6: Usamos los parametros nombrados y reutilizacion de codigo
  // calculo de un prestamo, con parametros opcionales para tasa de interes y numero de meses

  print('Prestamo con valores por defecto: \$${calcularPrestamo(monto: 1000)}');

  print('Prestamo con tasa personalizada: \$${calcularPrestamo(monto: 1000, tasa: 0.1)}');

  print('Prestamo con tasa y meses personalizados: \$${calcularPrestamo(monto: 1000, tasa: 0.08, meses: 6)}');


}

double calcularPrestamo({required double monto, double tasa = 0.05, int meses = 12}) {
  return monto + (monto * tasa * meses / 12); // Formula simple de interes
}

