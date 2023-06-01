import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class QuranProvider extends ChangeNotifier{
  List<String> chapterContent = [];
  void readFile(int chapterIndex) async {
    String text =
    await rootBundle.loadString("assets/file/${chapterIndex + 1}.txt");
    chapterContent = text.trim().split("\n");
    notifyListeners();
  }
}