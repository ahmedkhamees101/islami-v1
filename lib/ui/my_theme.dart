import 'package:flutter/material.dart';

class MyTheme {
  static const  Color primaryLightColor = Color(0xFFB7935F);
  static const  Color primaryDarkColor = Color(0xFFFACC1D);
  static const  Color titles = Color(0xFFF8F8F8);
  static const  Color textTitles = Color(0xFF242424);
  static const  Color darkBottom = Color(0xFF141A2E,);

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryLightColor,
    accentColor: primaryLightColor,
    bottomNavigationBarTheme:bottomNavigationBarTheme(primaryLightColor,textTitles,titles),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: textTheme(colorMedium: titles,colorSmall:textTitles ,labelColor: textTitles,labelMediumColor: textTitles),
    appBarTheme:appBarTheme(textTitles),
    elevatedButtonTheme: elevatedButton(primaryLightColor),

  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryDarkColor,
    accentColor: darkBottom,
    bottomNavigationBarTheme:bottomNavigationBarTheme(darkBottom,primaryDarkColor,titles),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: textTheme(colorMedium: textTitles,colorSmall:titles,labelColor: titles,labelMediumColor: titles),
    appBarTheme:appBarTheme(titles),
    elevatedButtonTheme: elevatedButton(primaryDarkColor),

  );
}
 TextTheme  textTheme({required Color colorMedium,required Color colorSmall,required Color labelColor,required Color labelMediumColor}) {

  return TextTheme(
    bodyMedium:TextStyle(color: colorMedium,fontSize: 22,
        fontWeight:FontWeight.w700),
    bodySmall: TextStyle(color:colorSmall,fontSize: 28,
        fontWeight:FontWeight.bold),
    labelSmall: TextStyle(
        color: labelColor,
        fontSize: 26,
        fontWeight: FontWeight.w500),
    labelMedium: TextStyle(color: labelMediumColor,fontSize: 28,
        fontWeight:FontWeight.w700),
  );
}
AppBarTheme appBarTheme(Color color){
  return AppBarTheme(
    iconTheme:IconThemeData(color: color,size: 28),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    centerTitle: true,
  );
}
BottomNavigationBarThemeData bottomNavigationBarTheme (Color color,Color selectedColor,Color unSelectedColor,){
  return BottomNavigationBarThemeData(
    backgroundColor:color,
    type:BottomNavigationBarType.fixed,
    selectedItemColor: selectedColor,
    selectedLabelStyle: TextStyle(fontWeight: FontWeight.w700),
    unselectedItemColor:unSelectedColor,
    
  );

}
ElevatedButtonThemeData elevatedButton(Color color){
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: color
    )
  );

}
