import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/suradetails/suramodel.dart';

class SuraDetails extends StatefulWidget {
  // const SuraDetails({Key? key}) : super(key: key);
  static const String RouteName = 'Sura';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> ayat = [];

  @override
  Widget build(BuildContext context) {
    var suradetaile = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (ayat.isEmpty) {
      LoadFile(suradetaile.index);
    }
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
          margin: EdgeInsets.only(top: 80),
          width: double.infinity,
          child: Column(
            children: [
              Text(
                'سورة ${suradetaile.name}',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: ayat.length,
                itemBuilder: (context, index) {
                  return ayat.isEmpty
                      ? CircularProgressIndicator()
                      : Text(
                          ayat[index],
                          style: Theme.of(context).textTheme.subtitle2,
                        );
                },
              ))
            ],
          ),
        ),
      )
    ]);
  }

  void LoadFile(int index) async {
    var content = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> contentlines = content.split('\n');
    ayat = contentlines;
    setState(() {});
  }
}
