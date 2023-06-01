import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/nav_taps/quran/quran_args.dart';
import 'package:islami/providers/quran_provider.dart';
import 'package:provider/provider.dart';

import '../../ui/my_theme.dart';

class QuranContent extends StatelessWidget {
  static const routeName = 'quranContent';
  @override
  Widget build(BuildContext context) {
    QuranArgs arg = ModalRoute.of(context)?.settings.arguments as QuranArgs;
    return ChangeNotifierProvider(
      create: (context) => QuranProvider()..readFile(arg.index),
      builder: (context, child) {
        var provider = Provider.of<QuranProvider>(context);
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
                      child: provider.chapterContent.isEmpty
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
                              provider.chapterContent[index],
                              style: Theme.of(context).textTheme.labelMedium,
                              textAlign: TextAlign.center,
                            ),
                          );
                        },
                        itemCount: provider.chapterContent.length,
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
      },

    );
  }


}
