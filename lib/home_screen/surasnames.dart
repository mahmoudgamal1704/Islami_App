import 'package:flutter/material.dart';
import 'package:islami/data.dart';
import '../mytheme.dart';
import '../suradetails/sura.dart';
import '../suradetails/suramodel.dart';

class SurasNames extends StatelessWidget {
  // const SurasNames({Key? key}) : super(key: key);
  int index;

  SurasNames(this.index);

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder(
          verticalInside: BorderSide(width: 5, color: MyTheme.colorGold)),
      children: [
        TableRow(
          children: [
            Center(
                child: Text(AppData.surasNumber[this.index],
                    style: Theme.of(context).textTheme.subtitle2)),
            Center(
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SuraDetails.RouteName,
                        arguments: SuraModel(AppData.surasName[index], index));
                  },
                  child: Text(AppData.surasName[this.index],
                      style: Theme.of(context).textTheme.subtitle2)),
            ),
          ],
        )
      ],
    );
  }
}
