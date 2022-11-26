import 'package:flutter/material.dart';
import 'package:islami/mytheme.dart';

class SebhaTab extends StatelessWidget {
  // const QuranTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  child: Positioned(
                    top: 70,
                    left: 80,
                    child: Image.asset('assets/images/sebhabody.png'),
                  ),
                ),
                Container(
                  child: Positioned(
                    top: 0,
                    left: 180,
                    child: Image.asset('assets/images/sebhahead.png'),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.center,
            height: 81,
            width: 69,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: MyTheme.colorGold,
            ),
            child: Text('30',style: Theme.of(context).textTheme.subtitle2),
          ),
          SizedBox(height: 30,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: MyTheme.colorGold,
            ),
            alignment: Alignment.center,
            height: 51,
            width: 137,

            child: Text(
              'سبحان الله',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(color: Colors.white),
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
