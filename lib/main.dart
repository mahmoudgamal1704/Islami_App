import 'package:flutter/material.dart';
import 'package:islami/hadethdetails/hadeth.dart';
import 'package:islami/home_screen/home.dart';
import 'package:islami/mytheme.dart';
import 'package:islami/suradetails/sura.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darktheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: Home.RouteName,
      routes: {
        Home.RouteName: (context) => Home(),
        SuraDetails.RouteName: (context) => SuraDetails(),
        HadethDetails.RouteName: (context) => HadethDetails(),
      },
    );
  }
}
