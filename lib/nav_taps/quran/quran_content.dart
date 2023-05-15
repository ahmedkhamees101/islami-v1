import 'package:flutter/material.dart';
import 'package:islami/nav_taps/quran/quran_args.dart';

class QuranContent extends StatelessWidget {
  static const routName = 'quranContent';

  @override
  Widget build(BuildContext context) {
    QuranArgs arg = ModalRoute.of(context)?.settings.arguments as QuranArgs;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(Brightness.dark == Theme.of(context).brightness?
        'assets/imgs/dark_main_bg.png':'assets/imgs/main_bg.png'),fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(arg.name,style: Theme.of(context).textTheme.bodySmall,),
        ),
      ),
    );
  }
}
