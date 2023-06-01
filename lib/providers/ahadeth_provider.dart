import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import '../nav_taps/hadeth/hadeth_args.dart';

class AhadethProvider extends ChangeNotifier{
  List<Hadeth> allHadeth = [];

  void loadFile()async{
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
   notifyListeners();
  }

}