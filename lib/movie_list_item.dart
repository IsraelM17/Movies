import 'package:flutter/material.dart';
import 'package:videos/model/movies.dart';


class MovieListItem extends StatelessWidget {

  final Movies movies;
  MovieListItem(this.movies);
  
  @override
  Widget build(BuildContext context) {
    return new Card(
      margin: EdgeInsets.all(3.0),
      child: new Column(
        children: <Widget>[
          Container(
            child: Stack(
              children:<Widget>[
                new FadeInImage.assetNetwork(
                  placeholder: "assets/placeholder.jpg",
                  image: movies.getPostrUrl(),
                  fit: BoxFit.cover, //Permite definir como se desplegará la imagen dentro del box
                  height: 190.0,
                  width: double.infinity,
                  fadeInDuration: new Duration(milliseconds: 40),
                ),
                new Positioned(
                  left: 0.0,
                  bottom: 0,
                  right: 0.0,
                  child: new Container(
                    decoration: new BoxDecoration( //Da opacidad a la franja
                      color: Colors.grey[850].withOpacity(0.5), //-->Da la opacidad al color gris
                    ),
                    constraints: new BoxConstraints.expand( //-->Expande la franja en la imagen (container)
                      height: 50.0
                    ),
                  ),
                ),
                new Positioned(
                  left: 10.0,
                  bottom: 10.0,
                  width: 200.0,
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        child: Text(
                          movies.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 13
                          ),
                          overflow: TextOverflow.ellipsis,
                          ),
                      ),
                      new Container(
                        width: 200.0,
                        padding: const EdgeInsets.only(top: 4.0),
                        child: new Text(
                          movies.getGenres(),
                          style: TextStyle(color: Colors.white),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ),
               new Positioned(
                  right: 20.0,
                  bottom: 10.0,
                  child: new Column(
                    children: <Widget>[
                      new Row(
                        children: <Widget>[
                          Text(movies.vote_average.toString(),
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                          Icon(Icons.star, size: 16.0, color: Colors.white,)
                        ],
                      )
                    ],
                  ),
                )
              ]
            )
          )
        ],
      ),
    );
  }
}




