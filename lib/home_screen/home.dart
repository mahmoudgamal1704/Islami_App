import 'package:flutter/material.dart';
import 'package:islami/home_screen/ahadethtab.dart';
import 'package:islami/home_screen/qurantab.dart';
import 'package:islami/home_screen/radiotab.dart';
import 'package:islami/home_screen/sebhatab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:islami/setting/drawer.dart';
import 'package:islami/setting/setting.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  // const Home({Key? key}) : super(key: key);
  static const String RouteName = 'home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(
          pro.bgpath,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          drawer: SettingDrawer(),
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
              currentindex = value;
              setState(() {});
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  // backgroundColor: MyTheme.colorGold,

                  label: AppLocalizations.of(context)!.qurantab,
                  icon: ImageIcon(AssetImage('assets/images/moshaf_blue.png'),
                      size: 30)),
              BottomNavigationBarItem(
                  // backgroundColor: MyTheme.colorGold,

                  label: AppLocalizations.of(context)!.ahadeth,
                  icon: ImageIcon(AssetImage('assets/images/ahadeth.png'),
                      size: 30)),
              BottomNavigationBarItem(
                  // backgroundColor: MyTheme.colorGold,

                  label: AppLocalizations.of(context)!.sebhatab,
                  icon: ImageIcon(
                    AssetImage('assets/images/sebha_blue.png'),
                    size: 30,
                  )),
              BottomNavigationBarItem(
                  // backgroundColor: MyTheme.colorGold,
                  label: AppLocalizations.of(context)!.radiotab,
                  icon: ImageIcon(AssetImage('assets/images/radio_blue.png'),
                      size: 30)),
              BottomNavigationBarItem(
                  // backgroundColor: MyTheme.colorGold,
                  label: AppLocalizations.of(context)!.settingtab,
                  icon: Icon(Icons.settings)),
            ],
          ),
          body: tabs[currentindex],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    AhadethTab(),
    SebhaTab(),
    RadioTab(),
    MySettings(),
  ];
}
