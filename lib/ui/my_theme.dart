import 'package:flutter/material.dart';

class MyTheme {
  static const  Color primaryLightColor = Color(0xFFB7935F);
  static const  Color primaryDarkColor = Color(0xFFB7935F);
  static const  Color lightColor = Color(0xFFB7935F);

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightColor,
    bottomNavigationBarTheme:bottomNavigationBarTheme(),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: textTheme(color:Color(0xFFB7935F)),
    appBarTheme:appBarTheme(),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: lightColor,
    bottomNavigationBarTheme:bottomNavigationBarTheme(),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: textTheme(color:Color(0xFFB7935F)),
    appBarTheme:appBarTheme(),
  );
   static ThemeMode themeMode = ThemeMode.dark;
}
 TextTheme  textTheme({required Color color}) {
  return TextTheme(
    bodyMedium:TextStyle(color: color,fontSize: 22,
        fontWeight:FontWeight.w700),
    bodySmall: TextStyle(color: Color(0xFF943939),fontSize: 28,
        fontWeight:FontWeight.bold),
  );
}
AppBarTheme appBarTheme(){
  return AppBarTheme(
    iconTheme:IconThemeData(color: Colors.black,size: 28),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    centerTitle: true,
  );
}
BottomNavigationBarThemeData bottomNavigationBarTheme (){
  return BottomNavigationBarThemeData(
    backgroundColor: MyTheme.lightColor,
    type:BottomNavigationBarType.fixed,
    selectedItemColor: Colors.black,
    selectedLabelStyle: TextStyle(fontWeight: FontWeight.w700),
    unselectedItemColor: Colors.white,
    
  );
}
