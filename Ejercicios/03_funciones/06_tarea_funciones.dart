/** 
 *  Dado el siguiente código 
 *    Optimizarlo lo más posible usando funciones
 *    y todo lo visto en el curso
 * 
 *  Ver el primer ejemplo:
*/
import 'dart:io';

main() {

  // Ejemplo: 
  // Crear una función para imprimir STDOUTS en lugar de 
  // la siguiente línea. Luego todos los stdouts deberían ser
  // llamados usando nuestra función personalizada

  procesarUsuario(1, 1500);

  // Persona 2
  // stdout.writeln('=========== Usuario 2 =============');

  // stdout.writeln('¿Cúal es su nombre?');
  // String nombre2 = stdin.readLineSync() ?? '';

  // stdout.writeln('¿Qué edad tienes?');
  // String edad2 = stdin.readLineSync() ?? '';
  
  // stdout.writeln('¿En qué país naciste?');
  // String pais2 = stdin.readLineSync() ?? '';
  

  // final Map<String, dynamic> usuario2 = {
  //   'nombre': nombre2,
  //   'edad'  : edad2,
  //   'pais'  : pais2
  // };

  // stdout.writeln('Usuario 2 sin deducciones');
  // stdout.writeln( usuario2 );

  // double salario2     = 1800;
  // double deducciones2 = salario2 * 0.15;
  // double salarioNeto2 = salario2 - deducciones2;

  // usuario2['salario']     = salario2;
  // usuario2['deducciones'] = deducciones2;
  // usuario2['salarioNeto'] = salarioNeto2;

  // stdout.writeln(usuario2);
  procesarUsuario(2, 1800);
}


void printMsj(String msj){

  stdout.writeln(msj);  
  
}

String getResponse() => stdin.readLineSync() ?? '';

/*void printMap( Map<String, dynamic> map){
  stdout.writeln( map );
}*/

void procesarUsuario(int usuarioId, double salario){

  stdout.writeln('=========== Usuario $usuarioId =============');

  //stdout.writeln('¿Cúal es su nombre?');
  //String nombre = stdin.readLineSync() ?? '';
  printMsj('¿Cúal es su nombre?');
  String nombre = getResponse();
  
  //stdout.writeln('¿Qué edad tienes?');
  //String edad = stdin.readLineSync() ?? '';
  printMsj('¿Qué edad tienes?');
  String edad = getResponse();
  
  //stdout.writeln('¿En qué país naciste?');
  //String pais = stdin.readLineSync() ?? '';
  printMsj('¿En qué país naciste?');
  String pais = getResponse();

  final Map<String, dynamic> usuario = {
    'nombre': nombre,
    'edad'  : edad,
    'pais'  : pais
  };

  // stdout.writeln('Usuario 1 sin deducciones');
  // stdout.writeln( usuario );

  printMsj('Usuario $usuarioId sin deducciones');
  //printMap(usuario);
  printMsj(usuario.toString());

  //double salario     = 1500;
  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;

  usuario['salario']     = salario;
  usuario['deducciones'] = deducciones;
  usuario['salarioNeto'] = salarioNeto;

  //stdout.writeln(usuario);
  //printMap(usuario);
  printMsj(usuario.toString());


}