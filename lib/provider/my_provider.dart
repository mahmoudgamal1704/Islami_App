// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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
  void checkDark(){
    var brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    if (isDarkMode){
      appmode=ThemeMode.dark;
      bgpath='assets/images/bg_dark.png';
    }else{
      appmode=ThemeMode.light;
    }
    notifyListeners();
  }
  void changeThemeMode(ThemeMode mode,String them,String path){
    appmode=mode;
    CurrentTheme =them;
    bgpath=path;
    notifyListeners();
  }
}