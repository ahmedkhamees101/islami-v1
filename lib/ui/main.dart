import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/providers/theme_provider.dart';
import 'package:islami/ui/my_theme.dart';
import 'package:islami/nav_taps/quran/quran_content.dart';
import 'package:islami/ui/splash.dart';
import 'package:provider/provider.dart';
import '../nav_taps/hadeth/hadeth_content.dart';
import 'home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main()=>runApp(ChangeNotifierProvider(
     create: (context)=>MyProviders(),
    child: MyApp()));


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var provider = Provider.of<MyProviders>(context);
    return MaterialApp(
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
         themeMode: provider.themeMode,
      debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.routeName,
      routes: {
        Splash.routeName:(_)=>Splash(),
        HomeScreen.routeName:(_)=>HomeScreen(),
        QuranContent.routeName:(_)=>QuranContent(),
        HadethContent.routeName:(_)=>HadethContent(),
      },
      localizationsDelegates: [
         AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: provider.localeLanguage,

    );
  }

}