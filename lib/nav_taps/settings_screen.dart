import 'package:flutter/material.dart';
import 'package:islami/ui/my_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../providers/theme_provider.dart';

class SettingScreen extends StatelessWidget {
  @override

  bool Light = false;
  bool english = false;
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<MyProviders>(context);

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 10),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.language,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                  Switch(
                      value: english,
                      activeColor: MyTheme.primaryDarkColor,
                      onChanged: (bool value) {
                        english = value;
                        if (english) {
                          prov.changeLanguage(Locale("ar"));
                        } else {
                          prov.changeLanguage(Locale("en"));
                        }
                        ;
                      })
                ],
              ),
              Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.theme,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
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
