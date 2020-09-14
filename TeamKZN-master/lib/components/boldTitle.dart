
import 'package:flutter/material.dart';


class BoldTitle extends StatelessWidget {
  final String text;
  BoldTitle({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18

      ),
    );
  }
}
