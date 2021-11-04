void main() {
  print('Hola mundo!');
  List listaRara = [1, 2, 3, 'hola'];
  Set setRaro = {1, 2, 3, 'hola'};
  // Map<String, int> mapRaro = ( 'hola' : 1, 'chau' : 5);
  List<String> listaVacia = [];
  // Set setVacio = {}; Esto se puedde hacer, queda dynamic
  Set<String> setStringVacio =
      {}; //Esto tmb se puede hacer, queda con contenido string
  print('ListaRara: $listaRara');
  print('setRaro: $setRaro');
  print('listaVacia: $listaVacia');
  listaVacia.add('hola');
  // setVacio.add("hola");
  setStringVacio.add("4");
  print('listaVacia: $listaVacia');
  Map mapaRaro = {
    'key': 4,
    'key2': 10
  }; // Este mapa tiene keys y values dinamicos
  Map<String, int> mapaVacio = {};
  mapaVacio.addAll({'hola': 4});
  print(mapaRaro);
  print(mapaVacio);
  Map<String, dynamic> mapaJS = {};
  mapaJS.addAll({'key': 9});
  print('mapaJS $mapaJS');
  Map mapaMuyVacio = {};
  mapaMuyVacio.addAll({'algo': 1, 5: 3}); // se puede agregar lo que se quiera
  print('mapa muy vacio: $mapaMuyVacio');

  String retorno = saludar(1, true);
  print(retorno);
  String retorno2 = saludarString(nombre: 'Adri');
  print(retorno2);
  print(saludar3("arrow", "functions"));

  final nombre = "Adriano";
  // nombre = "juan"; no se puede hacer, final es como const en JS
  final gato = new Heroe("spider", "capo");
  print(gato);
}

class Heroe {
  String nombre;
  String poder;
  Heroe(this.nombre, this.poder); // forma simplificada del cosntructor
}

String saludar(txt, nombre) {
  return '$txt, $nombre';
}

/* String saludarString(String txt, String nombre) {
  return '$txt, $nombre';
} */
String saludarString({String txt = 'sin nombre', String? nombre}) {
  return '$txt, $nombre';
}

String saludar3(String txt, String nombre) => '$txt, $nombre';
