import 'clases/persona.dart';

void main() {
  
  Persona persona = new Persona();

  persona.nombre = 'Roger';
  persona.edad   =  32;
  persona.bio    = 'Esta aprendiendo Flutter y dart';

  //También se pueden definir los datos de la siguiente manera:

  Persona persona2 = new Persona();

  persona2..nombre = 'Telesa' 
            ..edad = 29 
            ..bio  = 'Mi esposha';

}
