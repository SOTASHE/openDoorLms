
/*
Exam papers list ui
 */

import 'package:flutter/material.dart';
import 'package:student/models/examPaper.dart';

import 'examPaperTile.dart';

class ExamPaperList extends StatelessWidget {

  final String subjectName;
  final List<ExamPaper> examPapers;

  ExamPaperList({this.subjectName, this.examPapers});


  bool checkPaperDate({element, year, months}){
    // Check if element has given year and date or nah.
    return (element.getYear()== year ) && (element.getMonth() == months);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.yellow[700],
        toolbarHeight: MediaQuery.of(context).size.height /8,
        title: Text('${this.subjectName} Past Papers'),),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            ExamPaperTile(
              year: '2019',
              mayJunePapers: examPapers.where((element) => checkPaperDate(
                element: element,
                year: "2019",
                months: "may-june",
              )).toList(),

              octNovPapers: examPapers.where((element) => checkPaperDate(
                element: element,
                year: "2019",
                months: "oct-nov",
              )).toList(),
            ),


            ExamPaperTile(
              year: '2018',
              mayJunePapers: examPapers.where((element) => checkPaperDate(
                element: element,
                year: "2018",
                months: "may-june",
              )).toList(),
              octNovPapers: examPapers.where((element) => checkPaperDate(
                element: element,
                year: "2018",
                months: "oct-nov",
              )).toList(),
            ),

            ExamPaperTile(
              year: '2017',
              mayJunePapers: examPapers.where((element) => checkPaperDate(
                element: element,
                year: "2017",
                months: "may-june",
              )).toList(),
              octNovPapers: examPapers.where((element) => checkPaperDate(
                element: element,
                year: "2019",
                months: "oct-nov",
              )).toList(),
            ),


          ],
        ),
      ),
    );
  }
}
