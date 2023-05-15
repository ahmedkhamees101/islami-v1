import 'package:flutter/material.dart';
import 'package:islami/ui/my_theme.dart';
import 'package:islami/nav_taps/quran/quran_content.dart';
import 'package:islami/ui/splash.dart';

import 'home_screen.dart';
void main()=>runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,

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