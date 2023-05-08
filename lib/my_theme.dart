import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightColor = Color(0xFFB7935F);

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: lightColor,
      type:BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.w700),
      unselectedItemColor: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: const TextTheme(
      bodyMedium:TextStyle(color: Color(0xFFB7935F),fontSize: 22,
          fontWeight:FontWeight.w700),
      bodySmall: TextStyle(color: Color(0xFF242424),fontSize: 28,
          fontWeight:FontWeight.bold),
    ),

    appBarTheme:const AppBarTheme(
      iconTheme:IconThemeData(color: Colors.black,size: 28),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
    )
  );

  static ThemeData darkTheme = ThemeData();
}