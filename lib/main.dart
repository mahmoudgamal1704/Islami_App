import 'package:flutter/material.dart';
import 'package:islami/home_screen/home.dart';
import 'package:islami/mytheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darktheme,
      debugShowCheckedModeBanner: false,
      initialRoute: Home.RouteName,
      routes: {
        Home.RouteName: (context) => Home(),
      },
    );
  }
}
