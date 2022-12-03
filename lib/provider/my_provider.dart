// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyProvider extends ChangeNotifier{

  String LanguageCode = 'ar';
  String CurrentLang  = 'العربية';

  void changeLanguage(String lang,String currentlang){
    LanguageCode=lang;
    CurrentLang= currentlang;
    notifyListeners();
  }
}