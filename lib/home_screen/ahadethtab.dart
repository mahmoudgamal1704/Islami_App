import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:islami/hadethdetails/hadeth.dart';
import 'package:islami/mytheme.dart';

class AhadethTab extends StatelessWidget {
  // const QuranTab({Key? key}) : super(key: key);
  var ahadeth = [];

  AhadethTab() {
    Loadazkar();
  }

  void Loadazkar() async {
    var content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> contentlines = content.split('#');
    ahadeth = contentlines;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      child: Column(
        children: [
          Image.asset('assets/images/ahadethpic.png'),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: MyTheme.colorGold, width: 4),
                    bottom: BorderSide(color: MyTheme.colorGold, width: 4))),
            child: Center(
              child: Text(
                'الأحاديث',
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
          ),
          Expanded(
            child: ahadeth.isEmpty
                ? CircularProgressIndicator()
                : ListView.builder(
                    itemCount: ahadeth.length,
                    itemBuilder: (context, index) => Center(
                        child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, HadethDetails.RouteName,
                                  arguments: ahadeth[index]);
                            },
                            child: Text(
                              'الحديث رقم ${index + 1}',
                              style: Theme.of(context).textTheme.subtitle2,
                            ))),
                  ),
          )
        ],
      ),
    );
  }
}
