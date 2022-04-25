import 'dart:io';

main(){

  //Imprimir (Mostrar) mensaje en consola 
  stdout.writeln('¿Cul es tu nombre?');

  //Leer informaión
  String? nombre = stdin.readLineSync();
  
  stdout.writeln('Hola: $nombre');

}