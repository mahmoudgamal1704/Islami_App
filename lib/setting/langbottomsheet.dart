import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/mytheme.dart';
import 'package:islami/setting/setting.dart';
import 'package:provider/provider.dart';

import '../provider/my_provider.dart';

class LangBottomSheet extends StatelessWidget {
  // const LangBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              pro.changeLanguage('en','English');
              Navigator.pop(context);
              // MySettings.CurrentLang=;
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.langen,style: Theme.of(context).textTheme.subtitle2),
                Icon(Icons.done,size: 35,color: pro.LanguageCode!='en'? Colors.white :MyTheme.colorBlack,)
              ],
            ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              pro.changeLanguage('ar','العربية');
              Navigator.pop(context);
              // MySettings.CurrentLang=AppLocalizations.of(context)!.langar;
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.langar, style: Theme.of(context).textTheme.subtitle2),
                Icon(Icons.done,size: 35,color: pro.LanguageCode!='ar'? Colors.white :MyTheme.colorBlack,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
