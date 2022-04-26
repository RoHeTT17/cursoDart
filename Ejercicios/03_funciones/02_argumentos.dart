void saludar( String mensaje, [ String nombre = '<insertar nombre>', int edad = 20  ]  ) {
  print('$mensaje $nombre - $edad');
}

//Por nombre, cuando son mas de 3 es más común verlos así:
// void saludar2({
//   String? mensaje,  
//   String? nombre, 
//   int?    veces = 10 }) {
//   // cuerpo de la función
//   print('Saludar2: $mensaje $nombre - $veces');
// }

//Combinando posicionales y por nombre
void saludar2( String mensaje, { required String nombre, int veces = 10 }) {
  // cuerpo de la función
  print('Saludar2: $mensaje $nombre - $veces');
}


main(List<String> args) {
  

  saludar('Hola', 'Fernando', 35);

  saludar2( 'Saludos', veces: 20, nombre: 'Tony' );

}