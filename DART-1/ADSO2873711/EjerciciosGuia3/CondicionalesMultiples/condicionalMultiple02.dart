import 'dart:io';

void main() {
  //Cristian Álvarez - Ejercicio Condicional 02
  /*
  Una compañía de fumigación utiliza aviones para fumigar las cosechas contra una gran variedad de plagas. Las cantidades que la compañía cobra a
  los granjeros depende de qué es lo que se desea fumigar y del número de hectáreas que se desea fumigar, de acuerdo con la siguiente distribución:
  Tipo 1 : Fumigación contra malas hierbas, $50000 por hectárea
  Tipo 2 : Fumigación contra moscas y mosquitos, $70000 por hectárea
  Tipo 3 : Fumigación contra gusanos, $80000 por hectárea.
  Tipo 4 : Fumigación contra todo lo anterior, $190000 por hectárea.
  • Si el área a fumigar es mayor de 100 hectáreas, el granjero goza de un 5% de descuento.
  • Además, si la cuenta total sobrepasa el $1000000 se hace acreedor a un 10% de descuento sobre la cantidad que sobrepase el $1000000.
  • Si ambos descuentos son aplicables, el correspondiente a la superficie se considera primero.
  Diseñe el programa que lea el nombre del granjero, el tipo de fumigación solicitada (1-4) y el número de hectáreas a fumigar.
  Se debe imprimir el nombre del granjero y la cuenta total.
  */
  //DEFINICIÓN
  String? nombre;
  int tipoFumigacion, hectareas;
  double totalPagar, descuentoSuperficie, descuentoTotal, subtotal;
  subtotal = 0;
  descuentoTotal = 0;
  descuentoSuperficie = 0;
  totalPagar = 0;
  //ENTRADA
  print("Cual es su nombre");
  nombre = stdin.readLineSync();
  print("Cual es el tipo de fumigacion deseada");
  tipoFumigacion = int.parse(stdin.readLineSync()!);
  print("Cuantas hectareas desea fumigar");
  hectareas = int.parse(stdin.readLineSync()!);
  //PROCESO Y SALIDA
   switch (tipoFumigacion) {
    case 1:
      subtotal = hectareas * 50000;
      break;
    case 2:
      subtotal = hectareas * 70000;
      break;
    case 3:
      subtotal = hectareas * 80000;
      break;
    case 4:
      subtotal = hectareas * 190000;
      break;
    default:
      print("Tipo de fumigación incorrecto.");
      break;
  }
  if (hectareas > 100) {
    descuentoSuperficie = subtotal * 0.05;
    totalPagar = subtotal - descuentoSuperficie;
  }
  if (subtotal > 1000000) {
    descuentoTotal = (subtotal - 1000000) * 0.1;
    totalPagar = subtotal - descuentoTotal;
  }
  print("Su nombre es: $nombre");
  print("Precio total: $subtotal");
  print("Descuento por superficie: $descuentoSuperficie");
  print("Descuento total: $descuentoTotal");
  print("Total a pagar: $totalPagar");
}