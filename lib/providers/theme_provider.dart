import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProviders extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.light;
  Locale localeLanguage  = Locale("en");
  changeLanguage(Locale locale) {
    localeLanguage = locale;
    notifyListeners();
  }
   changeTheme(ThemeMode theme){
    themeMode=theme;
    notifyListeners();
  }
}