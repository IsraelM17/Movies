import 'package:flutter/material.dart';
import 'package:videos/login.dart';

class NavigationTo{
  
  static void goToLogin(BuildContext context){
      Navigator.of(context).pushNamedAndRemoveUntil("/login", (Route<dynamic> route) => false);
  }
  
  static void goToHome(BuildContext context){
      Navigator.of(context).pushNamedAndRemoveUntil("/home", (Route<dynamic> route) => false);
  }

  static void goToMovieDetail(BuildContext context, String route){
    Navigator.pushNamed(context, route);
  }
}