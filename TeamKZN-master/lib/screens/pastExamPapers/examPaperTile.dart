
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:student/models/examPaper.dart';

class ExamPaperTile extends StatelessWidget{
  final String year;
  final List<ExamPaper>  mayJunePapers;
  final List<ExamPaper>  octNovPapers;


  ExamPaperTile({this.year, this.mayJunePapers, this.octNovPapers});
  @override
  Widget build(BuildContext context) {
    return Container(


      margin: EdgeInsets.all(5),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

        child: GFAccordion(
          titleChild:GFTypography(
            text:this.year,
            showDivider: false,),
          contentBorder: Border.all(color: Colors.blue),
          contentChild: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              //MayJune
              Column(

                children: [
                  //Feb/March
                  GFTypography(
                      text:'May/June'
                  ),
                  ListView.builder(
                      shrinkWrap: true ,
                      itemCount: this.mayJunePapers.length,
                      itemBuilder: (context, index){
                        return this.mayJunePapers[index].getExamPaperFile();
                      })
                ],
              ),
              //OctNov
              Column(
                children: [
                  //Feb/March
                  GFTypography(
                      text:'Oct/Nov'
                  ),

                  ListView.builder(

                      shrinkWrap: true ,
                      itemCount: this.octNovPapers.length,
                      itemBuilder: (context, index){
                        return this.octNovPapers[index].getExamPaperFile();
                        },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}