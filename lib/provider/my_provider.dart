// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyProvider extends ChangeNotifier{

  String LanguageCode = 'ar';
  String CurrentLang  = 'العربية';

  ThemeMode appmode = ThemeMode.light;
  String CurrentTheme = 'الوضع النهارى';
  String bgpath = 'assets/images/main_background.png';

  void changeLanguage(String lang,String currentlang){
    LanguageCode=lang;
    CurrentLang= currentlang;
    notifyListeners();
  }
  void changeThemeMode(ThemeMode mode,String them,String path){
    appmode=mode;
    CurrentTheme =them;
    bgpath=path;
    notifyListeners();
  }
}