import 'package:flutter/material.dart';
import 'package:islami/nav_taps/hadeth/hadeth.dart';
import 'package:islami/nav_taps/quran/quran.dart';
import 'package:islami/nav_taps/radio/radio.dart';
import 'package:islami/nav_taps/sebha/sebha.dart';

import '../nav_taps/settings_screen.dart';


class HomeScreen extends StatefulWidget {
static const String routeName='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=0;
  List<Widget> taps=[QuranTap(),HadethTap(),SebhaTap(),RadioTap(),SettingScreen()];
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        SizedBox(
          width: double.infinity,
            child: Image.asset(Brightness.dark == Theme.of(context).brightness?
             'assets/imgs/dark_main_bg.png':'assets/imgs/main_bg.png',fit: BoxFit.fill,)),
        Scaffold(
          appBar: AppBar(
            title: Text('Islami',style: Theme.of(context).textTheme.labelMedium,),
          ),
          body: taps[index],
          bottomNavigationBar:BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index=value;
              setState(() {
              });
            } ,

            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/imgs/quran.png'),size: 30,),label: ' Quran',
              ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/imgs/hadeth.png'),size: 30,),label: 'Hadeth',
                  ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/imgs/sebha.png'),size: 30,),label: 'Sebha',
              ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/imgs/radio.png'),size: 30,),label: 'Radio',
              ),
              BottomNavigationBarItem(icon:Icon(Icons.settings),label: 'Settings')
            ],
          ),
        ),
      ],
    );
  }
}
