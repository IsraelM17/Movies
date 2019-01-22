import 'package:flutter/material.dart';

class NavigatonTo{
  static void goToMovieDetail(BuildContext context, String route){
    Navigator.pushNamed(context, route);
  }
}