import 'package:flutter/material.dart';
import 'package:islami/data.dart';
import 'package:islami/mytheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:islami/setting/themesbottomsheet.dart';
import 'package:provider/provider.dart';

import 'langbottomsheet.dart';

class MySettings extends StatelessWidget {
  // const MySettings({Key? key}) : super(key: key);
  static String CurrentLang = '';
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.langtitle,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          InkWell(
            onTap: (){
              AppData.showLAnguageBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  border: Border.all(width: 3, color: MyTheme.colorGold),
                  borderRadius: BorderRadius.circular(12)),
              child:

                  Text(prov.CurrentLang, style: Theme.of(context).textTheme.subtitle2),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            AppLocalizations.of(context)!.modetitle,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          InkWell(
            onTap: (){
              AppData.showthemesBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  border: Border.all(width: 3, color: MyTheme.colorGold),
                  borderRadius: BorderRadius.circular(12)),
              child: Text(prov.appmode==ThemeMode.light?AppLocalizations.of(context)!.modelight:AppLocalizations.of(context)!.modedark, style: Theme.of(context).textTheme.subtitle2),
            ),
          ),
        ],
      ),
    );
  }

}
