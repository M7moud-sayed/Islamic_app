import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islamic_app/generated/l10n.dart';
import 'package:islamic_app/ui/home/hadeth_title_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethWidget extends StatefulWidget {
  const HadethWidget({super.key});

  @override
  State<HadethWidget> createState() => _HadethWidgetState();
}

class _HadethWidgetState extends State<HadethWidget> {
  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) {
      loadAhadethFile();
    }
    return Column(
      children: [
        Expanded(
            child:
                Center(child: Image.asset("assets/images/hadeth_header.jpg"))),
        Divider(),
        Center(
          child: Text(AppLocalizations.of(context)!.hadeth,
              style: Theme.of(context).textTheme.bodyLarge),
        ),
        const Divider(),
        Expanded(
          flex: 3,
          child: allHadeth.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.separated(
                  itemBuilder: (context, index) =>
                      HadethTitleItem(hadeth: allHadeth[index]),
                  separatorBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      height: 2,
                    );
                  },
                  itemCount: allHadeth.length),
        )
      ],
    );
  }

  List<HadethModel> allHadeth = [];

  void loadAhadethFile() async {
    String ahadethContent =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> hadethList = ahadethContent.trim().split("#");
    for (int i = 0; i < hadethList.length; i++) {
      List<String> oneHadeth = hadethList[i].trim().split("\n");
      String hadethTitle = oneHadeth[0];
      oneHadeth.removeAt(0);
      String hadethContent = oneHadeth.join(" ");
      allHadeth.add(HadethModel(hadethTitle, hadethContent));
    }
    setState(() {});
  }
}

class HadethModel {
  String title;
  String content;

  HadethModel(this.title, this.content);
}
