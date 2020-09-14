// Assignment Card widgets

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:student/screens/assignmentScreen/assignmentContent.dart';
import 'package:student/screens/file.dart';


class AssignmentCard extends StatelessWidget{


  final String subjectName;
  final String title;
  final String shortIntro;
  final String instructions;
  final List<File> resources;
  final String marks;
  final String dueDate;


  AssignmentCard({Key key, this.subjectName, this.title, this.shortIntro,
    this.resources,this.instructions, this.marks, this.dueDate}):
  super(key: key);

  @override
  Widget build(BuildContext context){
    final double TEXTWIDTH = MediaQuery.of(context).size.width *0.65;

    return Card(
          elevation: 5.5,
          margin: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),

      child: Column(

        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              //Title and SubjectName
              Padding(
                padding: const EdgeInsets.all(10),

                // Title and SubjectName
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    //Title
                    Container(
                      width: TEXTWIDTH,
                      child: Text(
                        this.title,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            wordSpacing: 2.5,
                            fontSize: 25
                        ),
                      ),
                    ),

                    //Subject
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue,),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      child: Text(
                        this.subjectName,
                        style: TextStyle(
                            letterSpacing: 2.5,
                            fontWeight: FontWeight.w400
                        ),),
                    )
                  ],
                ),
              ),


              // Download Button
              Padding(
                padding: const EdgeInsets.only(right:12),
                child: IconButton(icon: Icon(Icons.folder_open),
                    onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => AssignmentContent(
                              title: this.title,
                              marks: this.marks,
                              dueDate: this.dueDate,
                              instructions: this.instructions,
                              resources: this.resources,
                            )
                          ),
                        );
                    },
                ),
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left:10.0, right: 10.0),
            child: Text('This is an Assignment Description, A short Introduction'
                ' of the assignment or summary with Key points',
              style: TextStyle(
                  letterSpacing: 1.5
              ),),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(Icons.timelapse),
                    Text('$marks Marks')
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(Icons.timer),
                    Text('5 Days Left')
                  ],
                ),
              ),
            ],
          ),
        ],
      ) ,
    );

  }
}

