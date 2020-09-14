/*
Academic Records
 */

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/typography/gf_typography.dart';

class AcademicInfoScreen extends StatelessWidget {
  final FirebaseUser user;

  AcademicInfoScreen({this.user});
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          GFTypography(
            text: "View Grades",
          ),
        ],
      ),
    );
  }
}