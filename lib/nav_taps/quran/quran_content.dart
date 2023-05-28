import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/nav_taps/quran/quran_args.dart';

import '../../ui/my_theme.dart';

class QuranContent extends StatefulWidget {
  static const routeName = 'quranContent';

  @override
  State<QuranContent> createState() => _QuranContentState();
}

class _QuranContentState extends State<QuranContent> {
  List<String> chapterContent = [];

  @override
  Widget build(BuildContext context) {
    QuranArgs arg = ModalRoute.of(context)?.settings.arguments as QuranArgs;
    if (chapterContent.isEmpty) {
      readFile(arg.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Brightness.dark == Theme.of(context).brightness
                ? 'assets/imgs/dark_main_bg.png'
                : 'assets/imgs/main_bg.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            arg.name,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Card(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(
                          width: 2,
                          style: BorderStyle.solid,
                          color: MyTheme.primaryLightColor)),
                  child: chapterContent.isEmpty
                      ? Center(
                        child: CircularProgressIndicator(
                            color: MyTheme.primaryLightColor,
                          ),
                      )
                      : ListView.separated(
                          itemBuilder: (BuildContext, index) {
                            return Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(8),
                              child: Text(
                                chapterContent[index],
                                style: Theme.of(context).textTheme.labelMedium,
                                textAlign: TextAlign.center,
                              ),
                            );
                          },
                          itemCount: chapterContent.length,
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider(
                              thickness: 2,
                              indent: 30,
                              endIndent: 30,
                              color: MyTheme.primaryLightColor,
                            );
                          },
                        )),
            )
          ],
        ),
      ),
    );
  }

  void readFile(int chapterIndex) async {
    String text =
        await rootBundle.loadString("assets/file/${chapterIndex + 1}.txt");
    chapterContent = text.trim().split("\n");
    setState(() {});
  }
}
