import 'package:flutter/material.dart';
import 'package:islami/ui/my_theme.dart';
import 'package:islami/nav_taps/quran/quran_args.dart';
import 'package:islami/nav_taps/quran/quran_content.dart';

class QuranTap extends StatelessWidget {
  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 1,
            child: Image(image: AssetImage('assets/imgs/top_icon.png'))),
        const Divider(
          thickness: 3,
          color: MyTheme.primaryLightColor,

        ),
        Container(
            alignment: Alignment.center,
            child: Text(
              'SuraNames',
              style:Theme.of(context).textTheme.labelMedium
            )),
        const Divider(
          thickness: 3,
          color: MyTheme.primaryLightColor,

        ),
        Expanded(
          flex: 2,
          child: ListView.separated(
            itemCount: suraNames.length,
            itemBuilder: (buildContext, index) {
              return Container(
                  alignment: Alignment.center,
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, QuranContent.routName,
                            arguments: QuranArgs(index, suraNames[index]));
                      },
                      child: Text(
                        suraNames[index],
                        style: Theme.of(context).textTheme.bodySmall,
                      )));
            },
            separatorBuilder: (context, index) {
              return const Divider(
                thickness: 1,
                color: MyTheme.primaryLightColor,
                indent: 50,
                endIndent: 50,
              );
            },
          ),
        )
      ],
    ));
  }
}
