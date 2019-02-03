import 'package:flutter/material.dart';
import 'package:videos/common/httpHandler.dart';
import 'package:videos/model/movies.dart';
import 'package:videos/video.dart';

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
            margin: EdgeInsets.all(10.0),
            child: Stack(
              children: <Widget>[
                new Positioned(
                  left: 0.0,
                  top: 5.0,
                  width: MediaQuery.of(context).size.width, // --> Ajusta el elemente en el centro de la pantalla
                  child: Container(
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                       ButtonTheme(
                         minWidth: MediaQuery.of(context).size.width,
                         height: 40,
                         child: RaisedButton.icon(
                            label: Text('Reproducir', style: TextStyle(color: Colors.white),),
                            icon: Icon(Icons.play_circle_outline, color: Colors.white),
                            onPressed: (){
                                print('Guapo');
                                goToVideo();
                            },
                            color: Colors.lightBlue[800],
                            textColor: Colors.white,
                          ),
                       ),
                      ],
                    ),
                  ),
                ),
                new Positioned(
                  left: 1.0,
                  top: 60.0,
                  width: MediaQuery.of(context).size.width,
                  child: new Container(
                    width: 30,
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          movie.overview,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 15
                          ),
                          //overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  )
                )
              ],
            ),
          ),
        ),
      ),
   );
  }
  
  goToVideo(){
    Navigator.push(context, 
      MaterialPageRoute(
        builder: (context) => ChewieDemo()
      )
    );
  }
  

}