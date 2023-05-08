import 'package:flutter/material.dart';
import 'package:islami/nav_taps/hadeth/hadeth.dart';
import 'package:islami/nav_taps/quran/quran.dart';
import 'package:islami/nav_taps/radio/radio.dart';
import 'package:islami/nav_taps/sebha/sebha.dart';

class HomeScreen extends StatefulWidget {
static const String routeName='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=0;
  List<Widget> taps=[QuranTap(),RadioTap(),SebhaTap(),HadethTap()];
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        SizedBox(
          width: double.infinity,
            child: Image.asset('assets/imgs/main_bg.png',fit: BoxFit.fill,)),
        Scaffold(
          appBar: AppBar(
            title: Text('Islami',style: Theme.of(context).textTheme.bodySmall,),
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
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/imgs/radio.png'),size: 30,),label: 'Radio',
                  ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/imgs/sebha.png'),size: 30,),label: 'Sebha',
                  ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/imgs/hadeth.png'),size: 30,),label: 'Hadeth',
                  ),
            ],
          ),
        ),
      ],
    );
  }
}