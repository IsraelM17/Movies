import 'package:flutter/material.dart';
import 'package:videos/common/httpHandler.dart';
import 'package:videos/model/movies.dart';
import 'package:videos/movie_list_item.dart';
import 'package:videos/movie_detail.dart';
import 'package:videos/common/navigation.dart';

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
    
  @override
  Widget build(BuildContext context) {
   return new Container(
     height: MediaQuery.of(context).size.height,
     child: ListView.builder(
       itemCount: _media.length,
       itemBuilder: (BuildContext context, int index){
             return new GestureDetector(
               child: MovieListItem(_media[index]),
               onTap: (){
                 Navigator.push(context, 
                    MaterialPageRoute(
                      builder: (context) => MovieDetail(movie: _media[index],),
                    ),
                 );
               },
             );
       },
     ),
   );
  }
  
  

}