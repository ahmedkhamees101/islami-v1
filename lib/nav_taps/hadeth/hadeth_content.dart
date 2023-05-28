import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/nav_taps/hadeth/hadeth_args.dart';
import 'package:islami/ui/my_theme.dart';

class HadethContent extends StatelessWidget {
  static const String routeName="hadethContent";


  @override
  Widget build(BuildContext context) {
    Hadeth arg = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(Brightness.dark == Theme.of(context).brightness?
        'assets/imgs/dark_main_bg.png':'assets/imgs/main_bg.png'),fit: BoxFit.fill),
      ),

      child: Scaffold(
        appBar: AppBar(
          title:Text(arg.title,style: Theme.of(context).textTheme.bodySmall),
        ),
       body: SingleChildScrollView(
         child: Column(
         children: [
           Container(
             margin: EdgeInsets.only(top: 50),
             padding: EdgeInsets.all(5),
             child: Card(

               shape: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(18),
                 borderSide: BorderSide(width: 2,style: BorderStyle.solid,color:MyTheme.primaryLightColor)
               ),
                  elevation: 0,
                 child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Text(
                     arg.content,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
                 )),
           ),
         ],
          ),
       ),
      ),
    );
  }
}
