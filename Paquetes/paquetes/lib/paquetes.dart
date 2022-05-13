import 'package:http/http.dart' as http;
import 'package:paquetes/clases/pais.dart';
import 'package:paquetes/clases/reqres_respuesta.dart';

void getReqResp_service(){
      //Forma 1
    //final url = Uri.parse('https://reqres.in/api/users?page=2') ;

    //Forma 2
     final url = Uri.https('reqres.in', '/api/users',{'page':'2'} ) ;

    http.get(url).then((res) {
     //print(res);

      // final body = jsonDecode(res.body);

      // print('page: ${ body['page']}');
      // print('per_page: ${body['per_page']}');
      // print('id del tercer elemento: ${body['data'][2]['id']}');

      //Creando una clase  

      final reqRespuesta = reqResponseFromJson(res.body);

      print('page: ${ reqRespuesta.page}');
      print('per_page: ${reqRespuesta.perPage}');
      print('id del tercer elemento: ${reqRespuesta.data![2].id}');
    });
}

void getDataPais(){
  
  final url = Uri.parse('https://restcountries.com/v2/alpha/col');

  http.get(url).then((value) {

      final paisData = paisFromJson(value.body);

      print('===========================');
      print('Pais: ${paisData.name}');
      print('Población: ${paisData.population}');

      /*print('Fronteras:');
      paisData.borders!.forEach((element) {
          print(element);
      });*/

      print('Fronteras:');
      paisData.borders!.forEach((element) => print(element),);

      print('languages: ${paisData.languages![0].name}');
      print('Latitud :  ${paisData.latlng![0]}');
      print('Longitud:  ${paisData.latlng![1]}');
      print('Moneda:    ${paisData.currencies![0].name}');
      print('Bandera    ${paisData.flag}');
      print('===========================');


  }).catchError((error) => print(error));
}

