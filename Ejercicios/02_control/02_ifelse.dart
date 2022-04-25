import 'dart:io';

main(){

  stdout.writeln('¿Cuál es tu edad?');

  int edad = int.parse(stdin.readLineSync() ?? '0');
  
  if(edad >=21)
    stdout.writeln('Ciudadano');
  else if (edad>=18) 
    stdout.writeln('Mayor de edad $edad');
  else
    stdout.writeln('Eres menor de edad');
}