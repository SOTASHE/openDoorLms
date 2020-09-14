

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/typography/gf_typography.dart';
import 'package:student/services/models.dart';


class GameInfoDisplay extends StatefulWidget {
  final Report  report;
  final FirebaseUser user;

  GameInfoDisplay({this.report, this.user});

  @override
  _GameInfoDisplayState createState() => _GameInfoDisplayState();
}

class _GameInfoDisplayState extends State<GameInfoDisplay> {

  dynamic _leadPos = 0;
  dynamic checkLeaderboard(){
    if (widget.user.displayName == null){
      return  "Not Availble";
    }
    else{
      return _leadPos;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          //Leadear board
          GFTypography(
            text: "Leaderboard : ${checkLeaderboard()}",
            icon: Icon(Icons.leaderboard),
          ),

          //Completd Quizzes
          GFTypography(
            text: "Completed Quizzes : ${widget.report.total ?? 0 }",
            icon: Icon(Icons.gamepad_outlined),

          ),

          GFTypography(
            text: "Challenges Completed : ${ 0 }",
            icon: Icon(Icons.change_history),

          )
        ],
      ),
    );
  }
}
