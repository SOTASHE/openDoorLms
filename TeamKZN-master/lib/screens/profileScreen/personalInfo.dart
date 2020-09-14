/*
Contains UI for personal Info
 */

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/typography/gf_typography.dart';

class PersonalInfoScreen extends StatelessWidget {
  final FirebaseUser user;
  PersonalInfoScreen({this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GFTypography(
              text: "Name : ${user.displayName ?? "Guest"}",
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GFTypography(
              text: "email : ${user.email ?? "None provided"}",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GFTypography(
              text: "Date of birth : ${user.email ?? "None provided"}",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GFTypography(
              text: "Gender : ${"None provided"}",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GFTypography(
              text: "ID : ${"None provided"}",
            ),
          ),

          
        ],
      ),
    );
  }
}
