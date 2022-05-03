class MiServicio {

  //Paso 1
  MiServicio._internal();

  //Paso 2
  static final MiServicio _singleton = new MiServicio._internal();

  //Paso 3
  factory MiServicio() {
    return _singleton;
  }

  String url = 'https://abc';
  String key = 'ABC123';

}