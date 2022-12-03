import 'package:flutter/material.dart';
import 'package:islami/data.dart';
import 'package:islami/home_screen/surasnames.dart';
import 'package:islami/mytheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranTab extends StatelessWidget {
  // const QuranTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Image.asset('assets/images/quranpic.png'),
          Table(
            border: TableBorder.all(color: MyTheme.colorGold, width: 5),
            children: [
              TableRow(children: [
                Center(
                    child: Text(AppLocalizations.of(context)!.suraname,
                        style: Theme.of(context).textTheme.subtitle2)),
                Center(
                    child: Text(
                     AppLocalizations.of(context)!.suranum,
                      style: Theme.of(context).textTheme.subtitle2,
                    )),
              ]),
            ],
          ),
          Expanded(
              child: ListView.builder(
            itemCount: AppData.surasNumber.length,
            itemBuilder: (context, index) {
              return Center(child: SurasNames(index));
            },
          )),
        ],
      ),
    );
  }
}
