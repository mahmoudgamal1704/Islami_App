import 'package:flutter/material.dart';
import 'package:islami/mytheme.dart';
import 'package:provider/provider.dart';

import '../provider/my_provider.dart';

class RadioTab extends StatelessWidget {
  // const QuranTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/radiopic.png'),
          Text(
            'إذاعة القرآن الكريم',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.skip_next,size: 50,color: pro.appmode== ThemeMode.light ? MyTheme.colorGold:MyTheme.darkyellow,),
              SizedBox(width: 20,),
              Icon(Icons.play_arrow,size: 80,color: pro.appmode== ThemeMode.light ? MyTheme.colorGold:MyTheme.darkyellow,),
              SizedBox(width: 20,),
              Icon(Icons.skip_previous,size: 50,color: pro.appmode== ThemeMode.light ? MyTheme.colorGold:MyTheme.darkyellow,),
            ],
          )
        ],
      ),
    );
  }
}
