import 'package:flutter/material.dart';
import 'package:islami/nav_taps/hadeth/hadeth_content.dart';
import 'package:islami/providers/ahadeth_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../ui/my_theme.dart';

class HadethTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AhadethProvider()..loadFile(),
        builder: (context, child) {
          var provider = Provider.of<AhadethProvider>(context);
          return Scaffold(
            body: Center(
              child: Column(
                children: [
                  Image(image: AssetImage('assets/imgs/hadeth_icon.png')),
                  Divider(
                    thickness: 3,
                    color: MyTheme.primaryLightColor,
                  ),
                  Text(AppLocalizations.of(context)!.ahadeth,
                      style: Theme.of(context).textTheme.labelMedium),
                  Divider(
                    thickness: 3,
                    color: MyTheme.primaryLightColor,
                  ),
                  provider.allHadeth.isEmpty
                      ? Center(
                          child:
                              CircularProgressIndicator(color: MyTheme.titles),
                        )
                      : Expanded(
                          flex: 2,
                          child: ListView.separated(
                              itemBuilder: (context, index) {
                                return Center(
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, HadethContent.routeName,
                                            arguments:
                                                provider.allHadeth[index]);
                                      },
                                      child: Text(
                                        provider.allHadeth[index].title,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      )),
                                );
                              },
                              separatorBuilder: (context, index) => Divider(
                                    thickness: 1.5,
                                    indent: 40,
                                    endIndent: 40,
                                    color: MyTheme.primaryLightColor,
                                  ),
                              itemCount: provider.allHadeth.length),
                        )
                ],
              ),
            ),
          );
        });
  }
}
