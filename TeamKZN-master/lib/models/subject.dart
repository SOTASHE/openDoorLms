

import 'package:student/models/assignment.dart';
import 'package:student/models/examPaper.dart';


class Subject{
  String _subjectName;
  String _teacher;
  String _grade;
  List<Assignment> _assignments;
  List<ExamPaper> _examPapers;

  Subject({subjectName,examPapers, grade}){
    this._subjectName = subjectName;
    this._grade = grade;
    this._examPapers = examPapers;
  }

  String getSubjectName() => this._subjectName;
  String getGrade() => this._grade;

  List<ExamPaper>  fetchPastExamPapers(){
      return this._examPapers;
  }


  static List<Subject> fetchAll(){
    return [
      Subject(
          subjectName: "Mathematics",
          examPapers: [
            ExamPaper(
              fileName: "Mathematics",
              year: "2018",
              month: "may-june",
              fileUrl: "filePath"
          ),
            ExamPaper(
              fileName: "Mathematics",
              year: "2018",
              month: "oct-nov",
              fileUrl: "filePath"
          ),
            ExamPaper(
              fileName: "Mathematics",
              year: "2017",
              month: "may-june",
              fileUrl: "filePath"
          ),
            ExamPaper(
              fileName: "Mathematics",
              year: "2017",
              month: "oct-nov",
              fileUrl: "filePath"
          ),
            ExamPaper(
              fileName: "Mathematics",
              year: "2019",
              month: "may-june",
              fileUrl: "filePath"
          ),
            ExamPaper(
              fileName: "Mathematics",
              year: "2019",
              month: "oct-nov",
              fileUrl: "filePath"
          )
          ],
          grade: "Grade 12"),
      Subject(
          subjectName: "Isizulu HL",
          examPapers: [
            ExamPaper(
              fileName: "Isizulu P1",
              year: "2018",
              month: "may-june",
              fileUrl: "filePath"
          ),
            ExamPaper(
              fileName: "Isizulu P1&P2",
              year: "2018",
              month: "oct-nov",
              fileUrl: "filePath"
          ),
            ExamPaper(
              fileName: "Isizulu",
              year: "2017",
              month: "may-june",
              fileUrl: "filePath"
          ),
            ExamPaper(
              fileName: "Isizulu",
              year: "2017",
              month: "oct-nov",
              fileUrl: "filePath"
          ),
            ExamPaper(
              fileName: "Mathematics",
              year: "2019",
              month: "may-june",
              fileUrl: "filePath"
          ),
            ExamPaper(
              fileName: "Mathematics",
              year: "2019",
              month: "oct-nov",
              fileUrl: "filePath"
          )
          ],
          grade: "Grade 12"),
      Subject(
          subjectName: "English FAL",
          examPapers: [
            ExamPaper(
              fileName: "Isizulu P1",
              year: "2018",
              month: "may-june",
              fileUrl: "filePath"
          ),
            ExamPaper(
              fileName: "Isizulu P1&P2",
              year: "2018",
              month: "oct-nov",
              fileUrl: "filePath"
          ),
            ExamPaper(
              fileName: "Isizulu",
              year: "2017",
              month: "may-june",
              fileUrl: "filePath"
          ),
            ExamPaper(
              fileName: "Isizulu",
              year: "2017",
              month: "oct-nov",
              fileUrl: "filePath"
          ),
            ExamPaper(
              fileName: "Mathematics",
              year: "2019",
              month: "may-june",
              fileUrl: "filePath"
          ),
            ExamPaper(
              fileName: "Mathematics",
              year: "2019",
              month: "oct-nov",
              fileUrl: "filePath"
          )
          ],
          grade: "Grade 12"),
      Subject(
          subjectName: "Physics",
          examPapers: [
            ExamPaper(
              fileName: "Isizulu P1",
              year: "2018",
              month: "may-june",
              fileUrl: "filePath"
          ),
            ExamPaper(
              fileName: "Isizulu P1&P2",
              year: "2018",
              month: "oct-nov",
              fileUrl: "filePath"
          ),
            ExamPaper(
              fileName: "Isizulu",
              year: "2017",
              month: "may-june",
              fileUrl: "filePath"
          ),
            ExamPaper(
              fileName: "Isizulu",
              year: "2017",
              month: "oct-nov",
              fileUrl: "filePath"
          ),
            ExamPaper(
              fileName: "Mathematics",
              year: "2019",
              month: "may-june",
              fileUrl: "filePath"
          ),
            ExamPaper(
              fileName: "Mathematics",
              year: "2019",
              month: "oct-nov",
              fileUrl: "filePath"
          )
          ],
          grade: "Grade 12"),


  ];
}



}