import 'dart:io';

main(){

  stdout.writeln('Ingresa un número');

  int base = int.parse(stdin.readLineSync() ?? '1') ;

  for (var i = 1; i <= 10; i++) {
    stdout.writeln('$base * $i = ${base*i}');
  }
  

}