import 'package:async/async.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:videos/common/Constants.dart';
import 'package:videos/model/movies.dart';

class HttpHandler{

  final String url      = "api.themoviedb.org";
  final String language =  "es-ES";

  Future<dynamic> getJson(Uri uri) async {
    http.Response response  = await http.get(uri);
    //var jsonn = json.decode(response.body);
    //print(jsonn);
    return json.decode(response.body);
  }

  Future<List<Movies>> fetchMovies(){
    var uri = new Uri.https(url, "3/movie/popular",{
      'api_key': API_KEY,
      'page':"1",
      'language' : language
    });

    return getJson(uri).then(((data) => data['results'].map<Movies>((item) => new Movies.fromJson(item)).toList()));

  }

}