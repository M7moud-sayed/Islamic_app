import 'package:flutter/material.dart';
import 'package:islamic_app/style/app_theme.dart';
import 'package:islamic_app/ui/home/quran_title_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranWidget extends StatefulWidget {
  QuranWidget({super.key});

  @override
  State<QuranWidget> createState() => _QuranWidgetState();
}

class _QuranWidgetState extends State<QuranWidget> {
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
    return Column(
      children: [
        Center(child: Image.asset("assets/images/quran_header.png")),
        const Divider(),
        Row(
          children: [
            Expanded(
              child: Center(
                child: Text(AppLocalizations.of(context)!.chapterTitle,
                    style: Theme.of(context).textTheme.bodyLarge),
              ),
            ),
            const SizedBox(
              width: 1.5,
              height: 35,
              child: VerticalDivider(),
            ),
            Expanded(
              child: Center(
                child: Text(AppLocalizations.of(context)!.chapterNumber,
                    style: Theme.of(context).textTheme.bodyLarge),
              ),
            )
          ],
        ),
        const Divider(),
        Expanded(
          flex: 3,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return QuranTitleWidget(
                    title: suraNames[index],
                    index: index,
                    versesNumber: (index + 1).toString());
              },
              separatorBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(5),
                  height: 2,
                );
              },
              itemCount: suraNames.length),
        ),
      ],
    );
  }
}
