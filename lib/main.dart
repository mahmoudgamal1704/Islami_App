import 'package:flutter/material.dart';
import 'package:islami/home.dart';

void main (){

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home.RouteName,
      routes: {
        Home.RouteName:(context) => Home(),

      },

    );
  }
}
