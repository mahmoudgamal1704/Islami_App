import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/data.dart';
import 'package:islami/mytheme.dart';
import 'package:islami/suradetails/suramodel.dart';
import 'package:provider/provider.dart';
import '../provider/suraprovider.dart';

class SuraDetails extends StatelessWidget {
  // const SuraDetails({Key? key}) : super(key: key);
  static const String RouteName = 'Sura';

   String ayanum = '';

  @override
  Widget build(BuildContext context) {

    var suradetaile = ModalRoute.of(context)?.settings.arguments as SuraModel;
    return ChangeNotifierProvider(
      create: (BuildContext context)=> SuraProvider()..LoadFile(suradetaile.index),
      builder: (context, child) {
        var provider = Provider.of<SuraProvider>(context);

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
              // alignment: Alignment.centerRight,
              margin: EdgeInsets.only(top: 80),
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    'سورة ${suradetaile.name}',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  provider.ayat.isEmpty?CircularProgressIndicator():Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          border: Border.all(color: MyTheme.colorGold,width: 5),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25)),
                        ),
                        child: ListView.builder(
                          itemCount: provider.ayat.length,
                          itemBuilder: (context, index) {
                            if(index > 0){
                              ayanum='(${AppData.replaceFarsiNumber('${index}')})';
                            }else{
                              ayanum='';
                            }
                            return provider.ayat.isEmpty
                                ? CircularProgressIndicator()
                                : Center(
                              child: Text(
                                textDirection: TextDirection.rtl ,
                                ' ${provider.ayat[index]} $ayanum ',
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                            );
                          },
                        ),
                      ))
                ],
              ),
            ),
          )
        ]);
      },

    );
  }
}
