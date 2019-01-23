import 'package:videos/common/utils.dart';

class Movies{
  int id;
  double vote_average;
  String title;
  String poster_path;
  String backdrop_path;
  String overview;
  String release_date;
  List<dynamic> genre_ids;

  String getPostrUrl() => getMediumPictureUrl(backdrop_path);
  String getGenres() => genreValue(genre_ids);

  Movies({
    this.id,
    this.vote_average,
    this.title,
    this.poster_path,
    this.backdrop_path,
    this.overview,
    this.release_date,
    this.genre_ids,
  });

  factory Movies.fromJson(Map jsonMap){
    return Movies(
      id            : jsonMap['id'].toInt(),
    vote_average  : jsonMap['vote_average'].toDouble(),
    title         : jsonMap['title'].toString(),
    poster_path   : jsonMap['poster_path'],
    backdrop_path : jsonMap['backdrop_path'],
    release_date  : jsonMap['release_date'],
    overview      : jsonMap['overview'],
    genre_ids     : jsonMap['genre_ids'].toList()
    );
  }
  
  factory Movies.fromJsonId(Map jsonMap){
    return Movies(
      id            : jsonMap['id'].toInt(),
    vote_average  : jsonMap['vote_average'].toDouble(),
    title         : jsonMap['title'].toString(),
    poster_path   : jsonMap['poster_path'],
    backdrop_path : jsonMap['backdrop_path'],
    release_date  : jsonMap['release_date'],
    overview      : jsonMap['overview'],
    );
  }

/*Esta manera no me gusto
  factory Movies(Map jsonMap){
    try{
      return new Movies.deserialized(jsonMap);
    }catch(ex){
      throw ex;
    }
  }

  Movies.deserialized(Map json):
    id            = json['id'].toInt(),
    vote_average  = json['vote_average'].toDouble(),
    title         = json['title'].toString(),
    poster_path   = json['poster_path'],
    backdrop_path = json['backdrop_path'],
    release_date  = json['release_date'],
    overview      = json['overview'],
    genre_ids     = json['genre_ids'].toList();
*/
}