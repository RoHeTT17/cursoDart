import 'dart:async';

main(){

   //Forma dynamic
  //final streamController = StreamController();

   //Para definir un tipo de data especifico se usa de esta manera
   //StreamController<String> streamController = StreamController();

   //Una sola suscripción
   final streamController = StreamController<String>();  

   //Multiple suscripción
   //final streamController = StreamController<String>.broadcast(); 

   //Definir los eeventros del stream 
   streamController.stream.listen(
     //se peude cambiar a lambda
     (info) {//PRocesar la información que se recibe
            print('información recibida. Despegando $info');
      },
   onError: (err) => print('Error: $err'),
   onDone:  ()    => print('Stream Terminado. Misión cumplida'),
   cancelOnError: false // por default es false, si es true, termina el stream al haver un error.
   
   ); 

  //Agregar información al stream
  streamController.sink.add('Nave 1');
  streamController.sink.add('Nave 2');
  streamController.sink.add('Nave 3');
  streamController.sink.add('Nave 4');
  //Mandar un error
  streamController.sink.addError('ohhh, un Error!');

  streamController.sink.add('Nave 5');
  streamController.sink.add('Nave 6');
  //Cerrar stream
  streamController.sink.close();
  //Ya no deben agregarse lineas del streamcontroller después del Close, porque marcaría error.

  print('Fin del Main');

}