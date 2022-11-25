import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);
  static const String RouteName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('إسلامى'),
        centerTitle: true,
      ),
    );
  }
}
