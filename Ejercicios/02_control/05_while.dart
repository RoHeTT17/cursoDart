import 'dart:io';

main(){

  String continuar = 'y';
  int contador = 0;

  while (continuar.toLowerCase() == 'y') {
    
    contador++;

    stdout.writeln('Contador: $contador');


    stdout.writeln('¿Continuar? (y = si)');
    continuar = stdin.readLineSync()!;
    
  }

}
