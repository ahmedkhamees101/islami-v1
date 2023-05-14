import 'package:flutter/material.dart';
import 'package:islami/ui/my_theme.dart';
import 'package:islami/nav_taps/quran/quran_content.dart';
import 'package:islami/ui/splash.dart';

import 'home_screen.dart';
void main()=>runApp(MyApp());


class MyApp extends StatelessWidget{
  bool isDark = true;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: MyTheme.themeMode,
      debugShowCheckedModeBanner: false,
        initialRoute: Splash.routeName,
      routes: {
        Splash.routeName:(_)=>Splash(),
        HomeScreen.routeName:(_)=>HomeScreen(),
        QuranContent.routName:(_)=>QuranContent(),
      },
    );
  }

}