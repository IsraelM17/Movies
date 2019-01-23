import 'package:flutter/material.dart';
import 'package:videos/common/httpHandler.dart';
import 'package:videos/model/movies.dart';

class MovieDetail extends StatefulWidget {

  final Movies movie;
  MovieDetail({this.movie});
  
  @override
  _MovieDetailState createState() => new _MovieDetailState(movie: movie);

 }

class _MovieDetailState extends State<MovieDetail> {

  final Movies movie;
  _MovieDetailState({this.movie});

  @override
  Widget build(BuildContext context) {
   return new Container(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsIscrolled){
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              backgroundColor: Colors.blueGrey,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(movie.title,
                  style: TextStyle(fontSize: 16.0),
                  overflow: TextOverflow.ellipsis,
                ),
                background: Image.network(movie.getPostrUrl(),
                fit: BoxFit.cover
                ),
              ),
            )
          ];
        },
        body: Scaffold(
          backgroundColor: Colors.blueGrey[100],
          body: Container(
            child: Row(
              children: <Widget>[
                Text(movie.title),
                IconButton(icon: Icon(Icons.movie),),
              ],
            )
          ),
        ),
      ),
   );
  }
}