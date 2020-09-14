//assignment model class

import 'package:student/screens/file.dart';

class Assignment{
  String _subjectName;
  String _title;
  String _shortIntro;
  List<File> _assignmentFiles;
  String _dueDate;
  String _instructions;
  String _marks;

  Assignment({subjectName, title, shortIntro,marks, assignmentFile,
      dueDate, instructions}){
    this._subjectName =subjectName;
    this._title = title;
    this._marks = marks;
    this._dueDate = dueDate;
    this._shortIntro = shortIntro;
    this._instructions = instructions;
    this._assignmentFiles = assignmentFile;
  }

  String getSubjectName(){
    return this._subjectName;
  }

  String getTitle(){
    return this._title;
  }

  String getDueDate(){
    return _dueDate;
  }

  String getInstructions(){
    return _instructions;
  }
  String getIntro(){
    return this._shortIntro;
  }

  String getMarks(){
    return this._marks;
  }

  List<File>  getAssignmentFiles(){
    return this._assignmentFiles;
  }
  // Must fetch from database
  static List<Assignment> fetchAll() {
     return  [
       Assignment(
         subjectName: "Mathematics",
         title: "Third Term Assignment",
         dueDate: "15 Sept 2018",
         marks: "55",
         shortIntro: "A short Summary of the content",
         instructions: "Submit either online using the app, Scan the documents"
                       "and send or submit by hand before the above mentioned date"
                       "\n\n"
                       "For any inquiries , ask in the Maths class forum, If have "
                       "any issues that may stop you from finishing at given date,"
                       "Can request private Chat",
         assignmentFile: [File(fileName: "MathsAssignment01.pdf", fileUrl: "linkToFile",)]


       )

     ];
  }
}