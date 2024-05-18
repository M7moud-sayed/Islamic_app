import 'package:flutter/material.dart';
import 'package:islamic_app/ui/quran_details/quran_details_screen.dart';

class QuranTitleWidget extends StatelessWidget {
  String title;
  String versesNumber;
  int index;
  QuranTitleWidget({super.key,required this.title,required this.versesNumber,required this.index});

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, QuranDetailsScreen.routeName,arguments: QuranDetailsArgs(title, index));
      },
      child: Row(
        children: [
          Expanded(


              child: Text(title,style: TextStyle(fontSize: 26),textAlign: TextAlign.center),),


          Container(
            width: 1.5,
            height: 35,
            color: Color(0xFFB7935F),
          ),
          Expanded(child: Text(versesNumber.toString(),style: TextStyle(fontSize: 26),textAlign: TextAlign.center)),

  ],
    ),
    );
  }
}
