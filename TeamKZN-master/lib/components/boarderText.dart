

import 'package:flutter/material.dart';

class BoarderText extends StatelessWidget {
  final String text;
  final Color color;

  BoarderText({this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 200,
      // height: 30,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius:  BorderRadius.circular(5),
        color: this.color,
      ),

      child: Text(
        "${this.text}",
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
