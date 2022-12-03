import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../data.dart';
import '../mytheme.dart';
import '../provider/my_provider.dart';

class SettingDrawer extends StatelessWidget {
  // const SettingDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);

    return  Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Text(
                AppLocalizations.of(context)!.settingtab,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Container(
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
                      Navigator.pop(context);
                      AppData.showLAnguageBottomSheet(context);

                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: MyTheme.colorGold),
                          borderRadius: BorderRadius.circular(12)),
                      child:

                      Text(pro.CurrentLang, style: Theme.of(context).textTheme.subtitle2),
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
                      Navigator.pop(context);
                      AppData.showthemesBottomSheet(context);


                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: MyTheme.colorGold),
                          borderRadius: BorderRadius.circular(12)),
                      child: Text(pro.appmode==ThemeMode.light?AppLocalizations.of(context)!.modelight:AppLocalizations.of(context)!.modedark, style: Theme.of(context).textTheme.subtitle2),
                    ),
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
