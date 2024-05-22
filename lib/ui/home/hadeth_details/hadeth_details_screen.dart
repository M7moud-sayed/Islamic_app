import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/ui/home/hadeth_widget.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const routeName = "HadethDetailsScreen(";

  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HadethModel hadethModel =
        ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Text(hadethModel.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,fontFamily: "El Messiri"),),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card( color: Colors.white,
                  margin: EdgeInsets.all(20),
                  /*elevation: 20,*/
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Text(
                          hadethModel.content,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(color: Colors.black,fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
