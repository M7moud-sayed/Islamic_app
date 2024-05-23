import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioWidget extends StatelessWidget {
  const RadioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset("assets/images/radio_header.jpg"),
        ),
      ),
      SizedBox(height: 25),
      Center(child: Text("إذاعـة الـقـرآن الـكـريـم ",style: TextStyle(fontSize: 24,fontFamily: "El Messiri",fontWeight: FontWeight.bold),)),
      SizedBox(height: 25),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.skip_previous_rounded,
            size: 28,
            color: Theme.of(context).primaryColor,
          ),
          Icon(
            Icons.play_circle_filled_rounded,
            size: 35,
            color: Theme.of(context).primaryColor,
          ),
          Icon(
            Icons.skip_next_rounded,
            size: 28,
            color: Theme.of(context).primaryColor,
          ),
        ],
      )
    ]);
  }
}
