import 'package:flutter/material.dart';
import 'package:islami/ui/my_theme.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';

class SettingScreen extends StatefulWidget {
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool Light = false;
  List<bool> _selectedLanguage = [true, false];

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<ThemeProvider>(context);
    List<Widget> language = [
      Text('ar',),
      Text('en'),
    ];
    bool isEn = true;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40, left: 10),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Language',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                  ),
                  ToggleButtons(
                      onPressed: (int index) {
                        setState(() {});
                        for (int i = 0; i < _selectedLanguage.length; i++) {
                          _selectedLanguage[i] = i == index;
                        }
                      },
                      selectedColor:prov.themeMode==ThemeMode.light?MyTheme.primaryLightColor: MyTheme.primaryDarkColor,
                      children: language,
                      isSelected: _selectedLanguage)
                ],
              ),
              Row(
                children: [
                  Text(
                    'Theme ',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  Switch(
                      value: Light,
                      activeColor: MyTheme.primaryDarkColor,
                      onChanged: (bool value) {
                        Light = value;
                        if (Light) {
                          prov.changeTheme(ThemeMode.dark);
                        } else {
                          prov.changeTheme(ThemeMode.light);
                        }
                        ;
                        setState(() {});
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
