import 'package:flutter/material.dart';

class MyTheme {
  static Color colorBlack = Color.fromRGBO(36, 36, 36, 1.0);
  static Color colorGold = Color.fromRGBO(183, 147, 95, 1.0);
  static Color colorwhite = Color.fromRGBO(248, 248, 248, 1.0);
  static Color darkPrim = Color.fromRGBO(20, 26, 46, 1.0);
  static Color darkyellow = Color.fromRGBO(250, 204, 29, 1.0);
  static Color err = Color.fromRGBO(255, 0, 0, 1.0);
  // static Color darkyellow = Color.fromRGBO(250, 204, 29, 1.0);
  // static Color colorGolddark = Color.fromRGBO(183, 147, 95, 1.0);
  static ThemeData lightTheme = ThemeData(
    primaryColor: colorGold,
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: colorGold,
        onPrimary: colorwhite,
        secondary: colorBlack,
        onSecondary: colorwhite,
        error: err,
        onError: colorwhite,
        background: Colors.transparent,
        onBackground: colorBlack,
        surface: Colors.grey,
        onSurface: Colors.grey),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: colorBlack),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0.0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: colorGold,
      selectedItemColor: colorBlack,
      unselectedItemColor: colorwhite,
    ),
    textTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: colorBlack),
        subtitle1: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: colorGold),
        subtitle2: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w600, color: colorBlack),
        bodyText1:  TextStyle(
            fontSize: 25, fontWeight: FontWeight.w600, color: colorwhite),
      bodyText2:  TextStyle(
          fontSize: 25, fontWeight: FontWeight.w600, color: colorBlack),
    ),
  );

  static ThemeData darktheme = ThemeData(
    primaryColor: darkPrim,
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: darkPrim,
        onPrimary: colorwhite,
        secondary: darkyellow,
        onSecondary: colorwhite,
        error: err,
        onError: colorwhite,
        background: Colors.transparent,
        onBackground: colorBlack,
        surface: Colors.grey,
        onSurface: Colors.grey),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: colorwhite),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0.0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: darkPrim,
      selectedItemColor: darkyellow,
      unselectedItemColor: colorwhite,
    ),
    textTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: colorwhite),
        subtitle1: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: darkyellow),
        subtitle2: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w600, color: colorwhite),
      bodyText1:  TextStyle(
          fontSize: 25, fontWeight: FontWeight.w600, color: colorBlack),
      bodyText2:  TextStyle(
          fontSize: 25, fontWeight: FontWeight.w600, color: darkyellow),
    ),
  );
}
