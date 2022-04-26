import 'dart:io';

main(){

  String continuar = 'y';
  int contador = 0;

   do{
    
    contador++;

    stdout.writeln('Contador: $contador');


    stdout.writeln('¿Continuar? (y = si)');
    continuar = stdin.readLineSync()!;
    
  }while (continuar.toLowerCase() == 'y');

}
