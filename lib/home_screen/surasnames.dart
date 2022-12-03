import 'package:flutter/material.dart';
import 'package:islami/data.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:provider/provider.dart';
import '../mytheme.dart';
import '../suradetails/sura.dart';
import '../suradetails/suramodel.dart';

class SurasNames extends StatelessWidget {
  // const SurasNames({Key? key}) : super(key: key);
  int index;
  SurasNames(this.index);
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Table(
      border: TableBorder(
          verticalInside: BorderSide(width: 5, color: MyTheme.colorGold)),
      children: [
        TableRow(
          children: [

            Center(
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SuraDetails.RouteName,
                        arguments: SuraModel(AppData.surasName[index], index));
                  },
                  child: Text(AppData.surasName[this.index],
                      style: Theme.of(context).textTheme.subtitle2)),
            ),
            Center(
                child: Text(pro.LanguageCode=='ar'? AppData.replaceFarsiNumber(AppData.surasNumber[index]) : AppData.surasNumber[index],
                    style: Theme.of(context).textTheme.subtitle2)),
          ],
        )
      ],
    );
  }
}
