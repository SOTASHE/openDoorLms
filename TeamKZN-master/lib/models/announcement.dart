/*
This an an announcement data model
some data related to announcement nje
 */
import 'package:flutter/material.dart';
class Announcement{
  String _type;
  String _title;
  String _content;
  String _timeReceived;
  Color colorType;

  Announcement({type, title, content, timeReceived}){
    this._type = type;
    this._title = title;
    this._content = content;
    this._timeReceived = timeReceived;
    this.colorType = typeColor();
  }

  String getTitle(){
    return _title;
  }

  String getType(){
    return this._type;
  }

  String getContent(){
    return _content;
  }

  String getTimeReceived(){
    return _timeReceived;
  }


  Color typeColor(){
    // Color for type of announcement text
    Color color;
    switch(this._type.toUpperCase()){

      case "GENERAL":
        color = Colors.red;
        break;

      case "EXAMS":
        color = Colors.blue;
        break;

      case "CLASSES":
        color = Colors.yellow;
        break;
    }

    return color;
  }
  static List<Announcement> fetchAll(){
      return [
        Announcement(
            type: "CLASSES",
            title: "Introducing new communication pathways",
            content: "Dear Student\n\n"
                "I hope this message find you well.\n"
                "New form of learning strategy are underway...We know that sudden change "
                "is hard"
                "\n\n"
                "Best Regards\n"
                "The Admin",
            timeReceived: "05:12 PM"

        ) ,
        Announcement(
            type: "EXAMS",
            title: "Update on new form of assessment",
            content: "Well...The old methods we rigid and stiff",
            timeReceived: "06:66 PM"

        ) ,
        Announcement(
            type: "GENERAL",
            title: "Update on new form of assessment",
            content: "Covid Cases update In our School",
            timeReceived: "06:66 PM"

        ) ,
        Announcement(
            type: "EXAMS",
            title: "ALL GRADES 8-11, WILL WRITE EXAMS",
            content: "Covid Cases update In our School",
            timeReceived: "06:66 PM"

        ) ,
      ];
  }
  static List<Announcement> fetchExams(){
    return [

      Announcement(
          type: "EXAMS",
          title: "This is a title ",
          content: "Covid Cases update In our School",
          timeReceived: "06:66 PM"

      ) ,
      Announcement(
          type: "EXAMS",
          title: "Yes, this is a title.",
          content: "Covid Cases update In our School",
          timeReceived: "06:66 PM"

      ) ,
      Announcement(
          type: "EXAMS",
          title: "Nothing but a title",
          content: "Covid Cases update In our School",
          timeReceived: "06:66 PM"

      ) ,
    ];
  }
  static List<Announcement> fetchGeneral(){
    return [

      Announcement(
          type: "General",
          title: "This is a title ",
          content: "Covid Cases update In our School",
          timeReceived: "06:66 PM"

      ) ,
      Announcement(
          type: "General",
          title: "Yes, this is a title.",
          content: "Covid Cases update In our School",
          timeReceived: "06:66 PM"

      ) ,
      Announcement(
          type: "General",
          title: "Nothing but a title",
          content: "Covid Cases update In our School",
          timeReceived: "06:66 PM"

      ) ,
    ];
  }
}