import 'package:flutter/material.dart';
import 'package:islami/data.dart';
import 'package:islami/mytheme.dart';

class HadethDetails extends StatelessWidget {
  // const hadethDetails({Key? key}) : super(key: key);
  static const String RouteName = 'hadeth';

  @override
  Widget build(BuildContext context) {
    var hadeth = ModalRoute
        .of(context)
        ?.settings
        .arguments as AhadethData;
    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Scaffold(
          appBar: AppBar(
            title: Text(
              'إسلامى',
              style: Theme
                  .of(context)
                  .textTheme
                  .headline1,
            ),
            centerTitle: true,
          ),
          body: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)
                ),
                border: Border.all(color: MyTheme.colorGold, width: 5),

              ),

              alignment: Alignment.topRight,
              margin: EdgeInsets.all(20),
              width: double.infinity,
              child: Align(
                alignment: Alignment.center,
                child: Column(
                    children: [
                      Text(
                        '${hadeth.title}',
                        style: Theme
                            .of(context)
                            .textTheme
                            .subtitle1,
                      ),
                      Expanded(child: ListView.builder(
                        itemCount: hadeth.content.length,
                        itemBuilder: (context, index) {
                          return Center(child: Text(
                              textDirection: TextDirection.rtl,
                              '${hadeth.content[index]}', style: Theme
                              .of(context)
                              .textTheme
                              .subtitle2),);
                        },))
                    ]),
              )))
    ]);
  }
}
