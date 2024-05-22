import 'package:flutter/material.dart';
import 'package:islamic_app/ui/home/hadeth_details/hadeth_details_screen.dart';

import 'hadeth_widget.dart';

class HadethTitleItem extends StatelessWidget {
  HadethModel hadeth;
  HadethTitleItem({super.key,required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,arguments: hadeth);
      },
      child: Text(hadeth.title,textAlign:TextAlign.center,style:TextStyle(fontFamily: "El Messiri",
        fontSize: 22,fontWeight: FontWeight.bold)),
    );
  }
}
