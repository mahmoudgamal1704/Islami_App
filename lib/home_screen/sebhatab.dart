

import 'package:flutter/material.dart';
import 'package:islami/data.dart';
import 'package:islami/mytheme.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTab extends StatefulWidget {
  // const QuranTab({Key? key}) : super(key: key);

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  static int count = 0;
  static int azkarindex = 0;
  static double degree = -10.91;

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 50, top: 10),
                  child: Image.asset(
                    alignment: Alignment.center,
                    'assets/images/sebhahead.png',
                    color: pro.appmode == ThemeMode.light
                        ? MyTheme.colorGold
                        : MyTheme.darkyellow,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 90),
                  child: InkWell(
                      onTap: () {
                        count++;
                        degree += 10.91;
                        if (count > 32) {
                          count = 0;
                          degree = -10.91;
                          azkarindex++;
                          if (azkarindex == AppData.azkar.length) {
                            azkarindex = 0;
                          }
                        }
                        setState(() {});
                      },
                      child: RotationTransition(
                          turns: AlwaysStoppedAnimation(degree / 360),
                          child: Image.asset(
                            'assets/images/sebhabodycolored.png',
                            color: pro.appmode == ThemeMode.light
                                ? MyTheme.colorGold
                                : MyTheme.darkyellow,
                          ))),
                ),
              ],
            ),
          ),
          Text(
            AppLocalizations.of(context)!.sebhatxt,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            height: 81,
            width: 69,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: pro.appmode == ThemeMode.light
                  ? MyTheme.colorGold
                  : MyTheme.darkPrim,
            ),
            child: Text('${count}',
                style:Theme.of(context).textTheme.subtitle2),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: pro.appmode == ThemeMode.light
                  ? MyTheme.colorGold
                  : MyTheme.darkyellow,
            ),
            alignment: Alignment.center,
            height: 51,
            // width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 80),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: FittedBox(
              child: Text(
                '${AppData.azkar[azkarindex]}',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1,
              ),
            ),
          ),
          SizedBox(
            height: 80,
          )
        ],
      ),
      // color: Colors.blue,
    );
  }
}
