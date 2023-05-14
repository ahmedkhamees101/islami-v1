import 'package:flutter/material.dart';
import 'package:islami/ui/home_screen.dart';

import 'my_theme.dart';

class Splash extends StatefulWidget {
static const String routeName='splash';

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _Navigator();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 1500),() {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    },);
    return Scaffold(
      body: Container(
          child: Image.asset(MyTheme.themeMode == ThemeMode.light?
              'assets/imgs/splash.png':'assets/imgs/dark_splash.png',


      ),
    ),
    );
  }

  void _Navigator() async {
    await Future.delayed(Duration(seconds: 2), ()
    {Navigator.pushReplacementNamed(context, HomeScreen.routeName);});

  }
}
