import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../ui/my_theme.dart';
import 'hadeth_args.dart';

class HadethTap extends StatefulWidget {
  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<Hadeth> allHadeth = [];
  @override
  Widget build(BuildContext context) {
    if(allHadeth.isEmpty){
      _loadFile();
    }
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image(image: AssetImage('assets/imgs/hadeth_icon.png')),
            Divider(
              thickness: 3,
              color: MyTheme.lightColor,
            ),
            Text('ahadeth'),
            Divider(
              thickness: 3,
              color: MyTheme.lightColor,
            ),
            allHadeth.isEmpty?Center(child: CircularProgressIndicator(color: MyTheme.lightColor),):
            Expanded(
              flex: 2,
              child: ListView.separated(itemBuilder: (context,index){
                return Center(child: Text(allHadeth[index].title,style: Theme.of(context).textTheme.bodySmall,),);
              },
                  separatorBuilder:(context,index)=>Divider(
                    thickness: 1.5,
                    indent: 40,
                    endIndent: 40,
                    color: MyTheme.lightColor,
                  ),
                  itemCount: allHadeth.length),
            )
          ],
        ),
      ),
    );
  }

  void _loadFile()async{
    List<Hadeth> hadethFile = [];
    String loadHadethFile = await rootBundle.loadString('assets/file/ahadeth .txt');
    List<String> hadethSplit=loadHadethFile.split("#");
        for(int i=0 ;i<hadethSplit.length;i++){
          String singleHadethSplit= hadethSplit[i];
          List<String> lines=singleHadethSplit.trim().split('\n');
          String title = lines[0];
          lines.removeAt(0);
          String content = lines.join('\n');
         Hadeth hadeth =  Hadeth(content,title);
          hadethFile.add(hadeth);
        }
        allHadeth=hadethFile;

         setState(() {

         });
  }
}
