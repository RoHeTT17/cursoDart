
import 'dart:io';

main() async{

    String path = Directory.current.path+ '\\04_tipos_nocomunes\\assets\\personas.txt';

    //OSX y Linux
    //File file = new File(Directory.current.path+ '/04_tipos_nocomunes/assets/personas.txt');

    //Windows
    //File file = new File(Directory.current.path+ '\\04_tipos_nocomunes\\assets\\personas.txt');

    //leerArchivo(path).then((value) => print(value));

    String personas = await leerArchivo(path);
    print(personas);

    print('Fin del main');

}


Future<String> leerArchivo( String path) async{

    File file = new File(path);

    return file.readAsString();

}