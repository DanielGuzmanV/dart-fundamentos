// Se realizaran ejemplos practicos (Pueden añadir los que deseen)

void main() {
    print(' Pregunta 1 --------------------------------------');
    // Ejemplo 1: Calcular el promedio de un Estudiante en tres materias
    // Persona1 tiene calificaciones en Matemáticas, Ciencias y Ingles. 
    // Queremos calcular su promedio y determinar si aprueba (promedio >= 60).

    // Calificaciones de Persona1
    int matematicas = 85;
    int ciencias = 60;
    int ingles = 75;

    // Calculo del promedio
    double promedio = (matematicas + ciencias + ingles) /3;

    // Mostrar el promedio y si aprueba
    print('El promedio del estudiante es: ${promedio.toStringAsFixed(2)}');

    if(promedio >= 6) {
        print('El estudiante aprueba');
    } else{
        print('El estudiante reprueba, necesita mejorar');
    }
    
    print(' Pregunta 2 --------------------------------------');

    // Ejemplo 2: Comprar dulces para Persona1
    // Persona1 tiene $50 y quiere comprar dulces. Cada dulce cuesta $7
    // Mostrar cuantos dulces puede comprar y cuanto dinero le sobrara

    // Dinero y costo por dulce
    int dinero = 50;
    int costoDulce = 7;
    
    // Calcular dulces y cambio
    int dulcesComprados = dinero ~/ costoDulce; // Division entera
    int cambio = dinero % costoDulce; // Resto de la division

    // Mostrar dulces
    print('Persona1 puede comprar $dulcesComprados dulces');
    print('Le sobraran \$${cambio}');

    print(' Pregunta 3 --------------------------------------');

    // Ejemplo 3: Tabla de multiplicar para Persona2
    // Generar la tabla de multiplicar del numero favorito de persona2 (por ejemplo 5)

    int numeroFavorito = 5;
    print('Tabla de multiplicar del $numeroFavorito: ');

    for(int idx = 1; idx <= 10; idx++){

        // Podemos realizarlo de dos maneras:
        // Con una variable
        // int result = numeroFavorito * idx;
        // print('$numeroFavorito x $idx = $result');

        // Directamente
        print('$numeroFavorito x $idx = ${numeroFavorito * idx}');
    }

    print(' Pregunta 4 --------------------------------------');

    // Ejemplo 4: clasificar edades de los amigos de Persona3
    // Persona3 tiene varios amigos y queremos clasificarlos en grupos:
    // niños (<= 12), adolescentes (13 - 17) y adultos ( > 18)

    // Edades de los amigos de Persona3
    Map<String, int> amigos = {
        'Marcelo': 10,
        'Pamela': 21,
        'Carlos': 15,
        'Pepe': 12
    };

    // Clasificar segun edad
    amigos.forEach((nombre, edad) {
        if(edad <= 12) {
            print('$nombre es menor de edad');
        } else if(edad <= 17) {
            print('$nombre es un adolescente');
        } else {
            print('$nombre es mayor de edad');
        }
    });

    print(' Pregunta 5 --------------------------------------');

    // Ejemplo 5: Determinar si Persona4 puede entrar al cine
    // El cine tiene una restriccion de edad para peliculas con clasificacion
    // R(18 años o mas). Queremos comprobar si Persona4 y sus amigos pueden entrar

    // Lista de amigos con sus edades
    Map<String, int> listaAmigos = {
        'Persona4': 23,
        'Pamela': 21,
        'Jorge': 15,
        'Marcelo': 10
    };

    // Restriccion 
    int edadMinima = 18;
    
    // Verificar acceso al cine
    listaAmigos.forEach((nombre, edad) {
        if(edad >= edadMinima){
            print('$nombre puede entrar al cine');
        } else{
            print('$nombre no puede entrar, es menor de edad');
        }
    });

    print(' Pregunta 6 --------------------------------------');

    // Ejemplo 6: Calcular los ahorros de Persona5
    // Persona 5 ahorra $10 cada semana durante 6 meses. Queremos calcular
    // cuanto ahorrara en total y mostrar el ahorro acumulado cada mes

    // Datos 
    int ahorroSemanal = 10;
    int semanasPorMes = 4;
    int meses = 6;

    int totalAhorro = 0;

    print('Ahorros de Persona5 por mes: ');
    for(int mes = 1; mes <= meses; mes++){
        totalAhorro = totalAhorro + (ahorroSemanal * semanasPorMes);
        print('Mes $mes: \$${totalAhorro}');
    }

    print('En total, Persona5 ahorrara: \$${totalAhorro}');

}











