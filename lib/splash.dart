import 'package:flutter/material.dart';
import 'package:islami/home_screen.dart';

class Splash extends StatefulWidget {
static const String routeName='splash';

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4),() {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    },);
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage('assets/imgs/logo.png'))
                ),

      ),
    );
  }
}
