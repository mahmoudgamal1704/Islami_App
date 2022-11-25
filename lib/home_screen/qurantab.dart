import 'package:flutter/material.dart';
import 'package:islami/data.dart';
import 'package:islami/mytheme.dart';
import 'package:islami/suradetails/sura.dart';
import 'package:islami/suradetails/suramodel.dart';

class QuranTab extends StatelessWidget {
  // const QuranTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Image.asset('assets/images/quranpic.png'),
          Expanded(
            child: Table(
              border: TableBorder.all(color: MyTheme.colorGold,width: 5),
              children: [
                TableRow(children: [
                  Center(child: Text('عدد الأيات',style: Theme.of(context).textTheme.subtitle2,)),
                  Center(child: Text('إسم الصورة',style: Theme.of(context).textTheme.subtitle2))
                ]),
                TableRow(children: [
                  // Divider(),
                  Center(child: ListView.separated(
                    physics: AlwaysScrollableScrollPhysics(),

                    separatorBuilder: (context, index) => Divider(),
                    shrinkWrap: true,
                    itemCount: AppData.surasNumber.length,
                    itemBuilder: (context, index) {
                      return Center(child: Text( AppData.surasNumber[index],style: Theme.of(context).textTheme.subtitle2));
                    },)),
                  // Divider(),
                  Center(child: ListView.builder(
                    physics: AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount:  AppData.surasName.length,
                    // scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                    return Center(child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, SuraDetails.RouteName,
                          arguments: SuraModel(AppData.surasName[index], index)
                          );
                        },
                        child: Text( AppData.surasName[index],style: Theme.of(context).textTheme.subtitle2)));
                  },)),
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
