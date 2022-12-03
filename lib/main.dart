import 'package:flutter/material.dart';
import 'package:islami/hadethdetails/hadeth.dart';
import 'package:islami/home_screen/home.dart';
import 'package:islami/mytheme.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:islami/suradetails/sura.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(ChangeNotifierProvider(

      create: (BuildContext context)=> MyProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English, no country code
        Locale('ar'), // Arabic, no country code
      ],
      locale: Locale(provider.LanguageCode),
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
