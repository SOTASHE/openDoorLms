/*
Academic Records
 */

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/typography/gf_typography.dart';

class AcademicInfoScreen extends StatelessWidget {
  final FirebaseUser user;
  Flushbar  warning(context){
    Flushbar(
      icon: Icon(Icons.warning_outlined,color: Colors.blue,),
      title: "yerr",
      message: "Not registered with any school",
      // icon: Icon(Icons.warning_amber_rounded, color: Colors.blue,),
      margin: EdgeInsets.all(8),
      borderRadius: 10,
      duration: Duration(seconds: 2),
    ).show(context);
  }
  AcademicInfoScreen({this.user});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GFButton(
              text: "View Grades",
              onPressed: (){warning(context);},
            )
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GFButton(
              text: "View Progress Report",
              onPressed: (){warning(context);},
            )
          ),
        ],
      ),  
    );
  }
}