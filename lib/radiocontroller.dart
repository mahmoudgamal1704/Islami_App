import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/mytheme.dart';
import 'package:islami/radioresponse.dart';
import 'package:provider/provider.dart';

import '../provider/my_provider.dart';

class RadioController extends StatefulWidget {
  bool play;
  List<Radios> radios;

  RadioController(this.play, this.radios);

  @override
  State<RadioController> createState() => _RadioControllerState();
}

class _RadioControllerState extends State<RadioController> {
  int selectedindex = 0;
 late AudioPlayer audioPlayer ;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioPlayer= AudioPlayer();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    audioPlayer.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Column(
      children: [
        Text(
          widget.radios[selectedindex].name ?? "",
          style: Theme.of(context).textTheme.subtitle2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(
                Icons.skip_next,
                size: 50,
                color: pro.appmode == ThemeMode.light
                    ? MyTheme.colorGold
                    : MyTheme.darkyellow,
              ),
              onPressed: () {
                if (selectedindex < widget.radios.length) {
                  selectedindex++;
                  playnextradio(widget.radios[selectedindex].radioUrl ??"");
                  setState(() {});
                }
              },
            ),
            SizedBox(
              width: 20,
            ),
            IconButton(
              icon: Icon(
                widget.play ? Icons.pause : Icons.play_arrow,
                size: 50,
                color: pro.appmode == ThemeMode.light
                    ? MyTheme.colorGold
                    : MyTheme.darkyellow,
              ),
              onPressed: () {
                if(!widget.play){
                  play(widget.radios[selectedindex].radioUrl??"");
                  widget.play = true;
                }else{
                  audioPlayer.pause();
                  widget.play = false;
                }
                // widget.play ? widget.play = false : widget.play = true;
                setState(() {});
              },
            ),
            SizedBox(
              width: 20,
            ),
            IconButton(
              icon: Icon(
                Icons.skip_previous,
                size: 50,
                color: pro.appmode == ThemeMode.light
                    ? MyTheme.colorGold
                    : MyTheme.darkyellow,
              ),
              onPressed: () {
                if (selectedindex > 0) {
                  selectedindex--;
                  playnextradio(widget.radios[selectedindex].radioUrl ??"");
                  setState(() {});
                }
              },
            ),
          ],
        )
      ],
    );
  }
  void playnextradio(String url){
   if(widget.play){
     audioPlayer.pause();
     audioPlayer.play(UrlSource(url));
   }
  }
  void play(String url) {
   audioPlayer.play(UrlSource(url));
  }
}
