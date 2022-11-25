import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);
  static const String RouteName = 'home';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/main_background.png'),
        Scaffold(
          appBar: AppBar(
            title: Text('إسلامى',style: Theme.of(context).textTheme.headline1,),
            centerTitle: true,
          ),
        ),
      ],
    );
  }
}
