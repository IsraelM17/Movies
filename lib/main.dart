import 'package:flutter/material.dart';
import 'package:videos/movie_detail.dart';
import 'package:videos/home.dart';
import 'package:videos/login.dart';

var routes = <String, WidgetBuilder>{
  "/movieDetail" : (BuildContext context) => MovieDetail(),
  "/home" : (BuildContext context) => Home()
};

void main() {
  runApp(new MaterialApp(
   home: Login(),
   theme: ThemeData(
     primaryColor: Colors.black,
     brightness: Brightness.dark,
     textTheme: TextTheme(
       body1: TextStyle(color: Colors.white)
     ),
     fontFamily: 'Nunito'
   ),
   routes: routes,
   //theme: ThemeData.dark()
  ));
}