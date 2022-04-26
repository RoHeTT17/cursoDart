
import 'dart:io';

main(){

    //OSX y Linux
    //File file = new File(Directory.current.path+ '/04_tipos_nocomunes/assets/personas.txt');

    //Windows
    File file = new File(Directory.current.path+ '\\04_tipos_nocomunes\\assets\\personas.txt');

    Future<String> f = file.readAsString();

    //Con este método no retorna un Future sino un String.
    //String f = file.readAsStringSync();


    f.then(print);

    print('Fin del main');
}