import 'package:flutter/material.dart';
import 'package:islami/data.dart';
import 'package:islami/mytheme.dart';

class SebhaTab extends StatefulWidget {
  // const QuranTab({Key? key}) : super(key: key);

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  static int count = 0;
  static int azkarindex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: InkWell(
                onTap: () {
                  count++;
                  if (count > 32) {
                    count = 0;
                    azkarindex++;
                    if (azkarindex == AppData.azkar.length) {
                      azkarindex = 0;
                    }
                  }
                  setState(() {});
                },
                child: Image.asset('assets/images/sebhapic.png')),
          ),
          Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            height: 81,
            width: 69,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: MyTheme.colorGold,
            ),
            child:
                Text('${count}', style: Theme.of(context).textTheme.subtitle2),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: MyTheme.colorGold,
            ),
            alignment: Alignment.center,
            height: 51,
            // width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 80),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: FittedBox(
              child: Text(
                '${AppData.azkar[azkarindex]}',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    ?.copyWith(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 80,
          )
        ],
      ),
      // color: Colors.blue,
    );
  }
}
