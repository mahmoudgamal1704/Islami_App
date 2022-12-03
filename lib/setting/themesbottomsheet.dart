import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../mytheme.dart';
import '../provider/my_provider.dart';

class ThemesBottomSheet extends StatelessWidget {
  // const ThemesBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              pro.changeThemeMode(ThemeMode.light,'Light','assets/images/main_background.png');
              Navigator.pop(context);
              // MySettings.CurrentLang=;
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Light',style: Theme.of(context).textTheme.subtitle2),
                Icon(Icons.done,size: 35,color: pro.appmode==ThemeMode.light? MyTheme.colorBlack :Colors.transparent,)
              ],
            ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              pro.changeThemeMode(ThemeMode.dark,'Dark','assets/images/bg_dark.png');
              Navigator.pop(context);
              // MySettings.CurrentLang=AppLocalizations.of(context)!.langar;
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Dark', style: Theme.of(context).textTheme.subtitle2),
                Icon(Icons.done,size: 35,color: pro.appmode==ThemeMode.dark?MyTheme.darkyellow: Colors.transparent ,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
