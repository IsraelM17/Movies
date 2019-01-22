import 'package:flutter/material.dart';
import 'package:videos/common/httpHandler.dart';
import 'package:videos/model/movies.dart';
import 'package:videos/movie_list_item.dart';
import 'package:videos/common/navigaton.dart';

class MoviesList extends StatefulWidget {
  @override
  _MoviesListState createState() => new _MoviesListState();
 }

class _MoviesListState extends State<MoviesList> {

  List<Movies> _media = new List();

  @override
  void initState(){
    super.initState();
    loadMovies();
  }

  void loadMovies() async {
    var movies = await HttpHandler().fetchMovies();
    setState(() {
          _media.addAll(movies);
        });
  }

  /*
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
            ),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: _media.length,
              itemBuilder: (BuildContext context, int index){
                  return MovieListItem(_media[index]);
              },
            ),
          )
        );
  }
*/
    
  @override
  Widget build(BuildContext context) {
   return new Container(
     child: ListView.builder(
       itemCount: _media.length,
       itemBuilder: (BuildContext context, int index){
             return new GestureDetector(
               child: MovieListItem(_media[index]),
               onTap: (){
                 print(_media[index].title+" : "+_media[index].id.toString());
                 NavigatonTo.goToMovieDetail(context, "/movieDetail");
               },
             );
       },
     ),
   );
  }
  
}