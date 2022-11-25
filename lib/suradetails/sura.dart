import 'package:flutter/material.dart';
import 'package:islami/suradetails/suramodel.dart';

class SuraDetails extends StatelessWidget {
  // const SuraDetails({Key? key}) : super(key: key);
  static const String RouteName = 'Sura';
  @override
  Widget build(BuildContext context) {
    var suradetaile = ModalRoute.of(context)?.settings.arguments as SuraModel;
    return Stack(
      children: [
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
        width: double.infinity,
        child: Column(
          children: [
            Text(suradetaile.name),
          ],
        ),
      ),
    )]);
  }
}
