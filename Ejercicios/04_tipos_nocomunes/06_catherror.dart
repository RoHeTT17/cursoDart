main() {
  
  Future<String> timeout = Future.delayed( Duration(seconds: 3), () {
    return 'Retorno del future';
  });


  // timeout.then( (texto) => print(texto) );
  timeout.then( print );


  print('Fin del main');

}