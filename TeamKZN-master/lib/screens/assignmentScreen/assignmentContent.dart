

import 'package:flutter/material.dart';
import 'package:student/components/boldTitle.dart';
import 'package:student/screens/file.dart';

class AssignmentContent extends StatefulWidget {
  final String title;
  final String marks;
  final String dueDate;
  final String instructions;
  final List<File> resources;

  AssignmentContent({this.title, this.marks, this.dueDate, this.instructions,
    this.resources});


  @override
  _AssignmentContentState createState() => _AssignmentContentState();
}

class _AssignmentContentState extends State<AssignmentContent> {
  @override
  Widget build(BuildContext context) {


    return Material(

      child: Container(

        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.clear, color: Colors.blueGrey),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ),

          body: Container(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              padding: EdgeInsets.all(10),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  //Title
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BoldTitle(text: "Title",),

                        Text(
                          this.widget.title,
                          style: TextStyle(
                              fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),

                  //Student
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BoldTitle(text:"Student"),
                        Text("Cebolenkosi Sithole")
                      ],
                    ),
                  ),

                  //Due Date
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BoldTitle(text:"Due Date"),
                        Text(
                          this.widget.dueDate,
                        )
                      ],
                    ),
                  ),

                  //Total Marks
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BoldTitle(text:"Grade"),
                        Text(
                          this.widget.marks
                        ),
                      ],
                    ),
                  ),

                  //Instructions
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        BoldTitle(text:"Instructions"),
                        Container(
                          width: MediaQuery.of(context).size.width /1.1,
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue)
                          ),

                          child: Text(
                            this.widget.instructions,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Resources for Assignment
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                            color: Colors.blueGrey,
                            style: BorderStyle.solid,
                          )
                      ),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        BoldTitle(text: "Resources for assignment",),

                        ListView(
                          shrinkWrap: true,
                          children: this.widget.resources
                        )

                      ],
                    ),
                  ),


                  //Submission
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        BoldTitle(text:"Submission"),

                        //Shows uploaded files, State-changes
                        Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue)
                          ),

                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              File(fileName: "MySolutions.pdf",fileUrl: "somelink",)
                            ],
                          ),

                        ),

                        //upload button
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),

                              child: FlatButton(child: Text("Upload file"),
                                color: Colors.blueGrey,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                                onPressed: (){

                                },
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FlatButton(onPressed: null, child: Text("Submit")),
                                FlatButton(onPressed: null, child: Text("Cancel"))
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


