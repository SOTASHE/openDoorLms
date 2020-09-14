import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:student/models/subject.dart';

import 'ExamPaperList.dart';

class ExamPapersScreen extends StatelessWidget {
  List<Subject> subjects = Subject.fetchAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.yellow[700],
          toolbarHeight: MediaQuery.of(context).size.height / 8,
          title: Text("Past Exam Papers"),
        ),
        body: ListView.builder(
          itemCount: subjects.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExamPaperList(
                        subjectName: subjects[index].getSubjectName(),
                        examPapers: subjects[index].fetchPastExamPapers(),
                      ),
                    ),
                  );
                },
                child: GFListTile(
                  // icon: Icon(Icons.menu_book_outlined, color: Colors.blueGrey,),
                  titleText: subjects[index].getSubjectName() + " Past Papers",
                  description: Text("${subjects[index].getGrade()}"),
                ),
              ),
            );
          },
        ));
  }
}
