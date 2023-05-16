import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    bool isEn= true;
    return Scaffold(
      body:  Container(
        margin: EdgeInsets.only(top: 30,left: 10),
        child: Column(
          children: [
            Row(
              children: [
                Text('Language',style: Theme.of(context).textTheme.labelSmall,),
                SizedBox(width:MediaQuery.of(context).size.width*0.25,),
               ToggleButtons(selectedColor: Colors.cyan,children: [
                 Text('ar',style: Theme.of(context).textTheme.labelSmall,),
                 Text('en',style: Theme.of(context).textTheme.labelSmall,),
               ], isSelected: [true,false])

              ],
            ),
            Row(
              children: [
                Text('Theme ',style: Theme.of(context).textTheme.labelSmall,),
                SizedBox(width: MediaQuery.of(context).size.width*0.4,),
                Switch(value: true, onChanged: (_){})
              ],
            )
          ],

        ),
      ),
    );
  }
}
