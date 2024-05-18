import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String routeName = "QuranDetailsScreen";

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    QuranDetailsArgs args =
    ModalRoute.of(context)?.settings.arguments as QuranDetailsArgs;
    if (lines.isEmpty) {
      readQuranFiles(args.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("سورة ${args.title}",style: TextStyle(fontFamily: "El Messiri",fontSize: 26,fontWeight: FontWeight.bold),),
        ),

        body: Card( color: Colors.white,
          margin: EdgeInsets.all(20),
          /*elevation: 20,*/
          child: lines.isNotEmpty
              ? ListView.separated(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(top: 8.0,bottom: 3,),
                child: Center(

                  child: Text(
                    "${lines[index]} (${index + 1})",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(color: Colors.black,fontSize: 16),
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
    );
  }

  List<String> lines = [];

  void readQuranFiles(int index) async {
    String quran = await rootBundle.loadString("assets/files/${index + 1}.txt");
    lines = quran.split("\n");
    setState(() {});
  }
}

class QuranDetailsArgs {
  String title;
  int index;

  QuranDetailsArgs(this.title, this.index);
}