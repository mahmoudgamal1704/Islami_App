import 'package:flutter/material.dart';

class HadethDetails extends StatelessWidget {
  // const hadethDetails({Key? key}) : super(key: key);
  static const String RouteName = 'hadeth';

  @override
  Widget build(BuildContext context) {
    var hadeth = ModalRoute.of(context)?.settings.arguments as String;
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
              style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
          ),
          body: Container(
              color: Colors.transparent,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 20),
              width: double.infinity,
              child: Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${hadeth}',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ]),
                ),
              )))
    ]);
  }
}
