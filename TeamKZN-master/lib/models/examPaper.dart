

import 'package:student/screens/file.dart';

class ExamPaper{
  String _fileName;
  String  _fileUrl;
  String _year;
  String _month;

  ExamPaper({fileName, year,month, fileUrl}){
   this._fileName = fileName;
   this._fileUrl = fileUrl;
   this._year = year;
   this._month = month;
  }

  String getYear() =>  this._year;
  String getFileName() => this._fileName;
  String getMonth() => this._month;

  File getExamPaperFile() => File(fileName: this._fileName,
    fileUrl: this._fileUrl,);


}