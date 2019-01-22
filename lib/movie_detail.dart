import 'package:flutter/material.dart';

class MovieDetail extends StatefulWidget {
  @override
  _MovieDetailState createState() => new _MovieDetailState();
 }
class _MovieDetailState extends State<MovieDetail> {
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
                title: Text('Movie',
                  style: TextStyle(fontSize: 16.0),
                ),
                background: Image.network("https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                fit: BoxFit.cover
                ),
              ),
            )
          ];
        },
        body: Scaffold(
          backgroundColor: Colors.blueGrey[100],
          body: Center(
            child: Text('Movie'),
          ),
        ),
      ),
   );
  }
}