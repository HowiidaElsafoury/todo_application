import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo_application/layouts/home_layout.dart';

class SplashScreen extends StatelessWidget {
  static String routeName ="splash_screen";

  const SplashScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.of(context).size;
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, HomeLayout.routeName);
    });
    return Scaffold(
      body: Image.asset("assets/images/splash_background.png",
      width: mediaQuery.width,
      height: mediaQuery.height,
      fit: BoxFit.cover,),
    );
  }
}
