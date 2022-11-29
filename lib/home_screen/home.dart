import 'package:flutter/material.dart';
import 'package:islami/home_screen/ahadethtab.dart';
import 'package:islami/home_screen/qurantab.dart';
import 'package:islami/home_screen/radiotab.dart';
import 'package:islami/home_screen/sebhatab.dart';
import 'package:islami/mytheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Home extends StatefulWidget {
  // const Home({Key? key}) : super(key: key);
  static const String RouteName = 'home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentindex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.apptitle,
              style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentindex,
            onTap: (value) {
              currentindex=value;
              setState(() {

              });
            },
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  // backgroundColor: MyTheme.colorGold,

                  label: 'Quran',
                  icon: ImageIcon(AssetImage('assets/images/moshaf_blue.png'),size: 30)),
              BottomNavigationBarItem(
                // backgroundColor: MyTheme.colorGold,

                  label: 'Ahadeth',
                  icon: ImageIcon(AssetImage('assets/images/ahadeth.png'),size: 30)),
              BottomNavigationBarItem(
                // backgroundColor: MyTheme.colorGold,

                  label: 'Sebha',
                  icon: ImageIcon(AssetImage('assets/images/sebha_blue.png'),size: 30,)),
              BottomNavigationBarItem(
                // backgroundColor: MyTheme.colorGold,
                  label: 'Radio',
                  icon: ImageIcon(AssetImage('assets/images/radio_blue.png'),size: 30)),
            ],
          ),
        body: tabs[currentindex],
        ),
      ],
    );
  }
  List<Widget> tabs =[
    QuranTab(),
    AhadethTab(),
    SebhaTab(),
    RadioTab(),
  ];
}
