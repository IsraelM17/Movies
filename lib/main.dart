import 'package:flutter/material.dart';
import 'package:videos/home.dart';
import 'package:videos/movie_detail.dart';

var routes = <String, WidgetBuilder>{
  "/movieDetail" : (BuildContext context) => MovieDetail(),
};

void main() {
  runApp(new MaterialApp(
   home: Home(),
   theme: ThemeData(
     fontFamily: 'Nunito'
   ),
   routes: routes,
   //theme: ThemeData.dark()
  ));
}