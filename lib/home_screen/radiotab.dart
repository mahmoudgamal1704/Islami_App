import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:http/http.dart';

import 'package:islami/radiocontroller.dart';
import 'package:http/http.dart' as http;
import 'package:islami/radioresponse.dart';

class RadioTab extends StatelessWidget {
  // const QuranTab({Key? key}) : super(key: key);
  bool play = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/radiopic.png'),
          FutureBuilder<Radioresponse>(
            future: FtechRadios(),

            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return RadioController(play,snapshot.data!.radios!);
              }else {
                return Center(child: Text("No Radio Data"),);
              }
            },)

        ],
      ),
    );
  }

  Future<Radioresponse> FtechRadios() async {
    Response response = await http.get(
        Uri.parse("https://api.mp3quran.net/radios/radio_arabic.json"));
    if (response.statusCode == 200) {
    Radioresponse radioresponse = Radioresponse.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
    return radioresponse;
    }else {
    throw Exception("Something went Wrong");
    }
    }
}
