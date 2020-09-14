/*
Conatins crads leading to different student helper material
 */

import "package:flutter/material.dart";
import 'package:student/components/iconcard.dart';
class StudyMaterialScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        toolbarHeight: MediaQuery.of(context).size.height/8,
        title: Text("Study Materials"),
      ),

      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconCard(title: "Past Exams", image: "images/exam.png",routeName: "/examPapers",
              showDivider: true, color: Colors.yellow,),

              IconCard(title: "ebook", image: "images/book.png",routeName: "routeName",
              showDivider: true,color: Colors.brown[500],),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconCard(title: "Useful Websites", image: "images/search.png",routeName: "routeName",
              showDivider: true,color: Colors.blue,),
              IconCard(title: "Past Exams", image: "image",routeName: "routeName",
              showDivider: false,),

            ],
          ),
        ],
      )
    );
  }
}