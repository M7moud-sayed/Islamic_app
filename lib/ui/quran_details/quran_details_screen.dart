import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';
import '../../style/app_theme.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String routeName = "QuranDetailsScreen";

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    QuranDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as QuranDetailsArgs;
    if (lines.isEmpty) {
      readQuranFiles(args.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.theme==ThemeMode.dark?"assets/images/main_dark.jpg":"assets/images/main_background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "سورة ${args.title}",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),

                SizedBox(width: 10,),
                Icon(Icons.play_circle_fill_rounded,size: 24,color: provider.theme==ThemeMode.dark?Theme.of(context).dividerColor:Theme.of(context).primaryColor),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: provider.theme==ThemeMode.dark?Theme.of(context).primaryColorDark:Colors.white,
                  margin: EdgeInsets.all(20),
                  /*elevation: 20,*/
                  child: lines.isNotEmpty
                      ? ListView.separated(
                          itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                  bottom: 3,
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "${lines[index]} (${index + 1})",
                                      textDirection: TextDirection.rtl,
                                      style: Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                              ),
                          separatorBuilder: (context, index) => Container(
                                height: 5,
                              ),
                          itemCount: lines.length)
                      : Center(
                          child: CircularProgressIndicator(),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> lines = [];

  void readQuranFiles(int index) async {
    String quran = await rootBundle.loadString("assets/files/${index + 1}.txt");
    lines = quran.trim().split("\n");
    setState(() {});
  }
}

class QuranDetailsArgs {
  String title;
  int index;

  QuranDetailsArgs(this.title, this.index);
}
