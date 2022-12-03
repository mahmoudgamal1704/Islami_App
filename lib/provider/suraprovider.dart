import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class SuraProvider extends ChangeNotifier{
  List<String> ayat = [];
  void LoadFile(int index) async {
    var content = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> contentlines = content.trim().split('\n');
    ayat = contentlines;
    ayat.insert(0 , 'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ ');
    notifyListeners();
  }
}