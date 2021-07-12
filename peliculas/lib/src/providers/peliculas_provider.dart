
import 'package:peliculas/src/models/pelicula_model.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class PeliculasProvider{

  String _apiKey = '5574cf0df2ab1f778029da4403da9516';
  String _url = 'api.themoviedb.org';
  String _languaje = 'es-Es';

  Future<List<Pelicula>> _procesarRespuesta(Uri url) async{
    final resp = await http.get( url);
    final decodedData = json.decode(resp.body);
    // print(decodedData['results']);
    final peliculas = new Peliculas.fromJsonList(decodedData['results']);
    // print(peliculas.items[1].title);
    return peliculas.items;
  }

  Future<List<Pelicula>> getEnCines() async{
    final url = Uri.https(_url, '3/movie/now_playing',{
      'api_key' : _apiKey,
      'language' : _languaje
    }); 
    return _procesarRespuesta(url);
  }


  Future<List<Pelicula>> getPopulares() async {
    final url = Uri.https(_url, '3/movie/popular',{
      'api_key' : _apiKey,
      'language' : _languaje
    });
    return _procesarRespuesta(url);
  }
}