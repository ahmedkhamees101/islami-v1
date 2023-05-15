
import 'package:flutter/material.dart';
import 'package:islami/ui/my_theme.dart';

class SebhaTap extends StatefulWidget {
  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  int counter = 0;
  String tost = 'عدد التسبيحات';
  double rotation = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //       image: AssetImage('assets/imgs/main_bg.png'), fit: BoxFit.fill),
      // ),
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 80),

                      child: Image(image: AssetImage(Brightness.dark==Theme.of(context).brightness?
                          'assets/imgs/sebha_dark_head.png':'assets/imgs/sebha_head.png'))),
                  Container(
                    margin: EdgeInsets.only(top: 78),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          counter = 0;
                        });
                      },
                      child: Transform.rotate(
                        angle:rotation ,
                        child: Image(
                          image: AssetImage(Brightness.dark==Theme.of(context).brightness?
                          'assets/imgs/sebha_dark_body.png':'assets/imgs/sebha_body.png',),
                          height: 200,
                          width: 200,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text('$tost',
                  style: Theme.of(context).textTheme.labelMedium ),

              Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(24)),
                  child: Text(
                    "$counter",
                    style: Theme.of(context).textTheme.bodySmall,
                  )),

              ElevatedButton(
                onPressed: () {
                  counter++;
                  // note();
                  _onPressed();
                  setState(() {});
                },
                child: Text(
                  ' التكرار',
                  style:Theme.of(context).textTheme.bodyMedium,
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(24)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // void note() {
  //   if (counter == 10 || counter == 20) {
  //     tost = 'اضغط على السبحه للاعاده';
  //   }else if(counter==33){
  //     tost= 'احسنت صنعا ';
  //   }
  //
  //   else {
  //     tost = 'عدد التسبيحات';
  //   }
  // }
  void _onPressed() {
      rotation = rotation+1 ;
  }
}
