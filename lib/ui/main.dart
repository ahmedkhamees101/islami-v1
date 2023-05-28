import 'package:flutter/material.dart';
import 'package:islami/providers/theme_provider.dart';
import 'package:islami/ui/my_theme.dart';
import 'package:islami/nav_taps/quran/quran_content.dart';
import 'package:islami/ui/splash.dart';
import 'package:provider/provider.dart';
import '../nav_taps/hadeth/hadeth_content.dart';
import 'home_screen.dart';
void main()=>runApp(ChangeNotifierProvider(
     create: (context)=>ThemeProvider(),
    child: MyApp()));


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var provider = Provider.of<ThemeProvider>(context);
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
    );
  }

}