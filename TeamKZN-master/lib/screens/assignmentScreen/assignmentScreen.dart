
import 'package:flutter/material.dart';
import 'package:student/models/assignment.dart';
import 'package:student/screens/assignmentScreen/assignmentCard.dart';

class AssignmentScreen extends StatelessWidget{
  ///TODO Update the assignmentAvailble class model
  @override
  Widget build(BuildContext context) {
    List<Assignment> assignmentsAvailable = Assignment.fetchAll();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 0,
          title: Text("Assignments and Classworks"),

          bottom: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),),
                color: Colors.white
            ),

            tabs: [

              Tab(child: Text("Due"),),
              Tab(child: Text("All")),
            ],
          ),
        ),



        body: TabBarView(


          children: [
            Container(

              child: ListView.builder(
                  itemCount: assignmentsAvailable.length ,
                  itemBuilder: (BuildContext listContext, int index){
                    return AssignmentCard(
                      subjectName: assignmentsAvailable[index].getSubjectName(),
                      title: assignmentsAvailable[index].getTitle() ,
                      dueDate: assignmentsAvailable[index].getDueDate(),
                      instructions: assignmentsAvailable[index].getInstructions(),
                      shortIntro: assignmentsAvailable[index].getIntro(),
                      marks: assignmentsAvailable[index].getMarks(),
                      resources: assignmentsAvailable[index].getAssignmentFiles(),
                        );
                  }),
            ),
            Container(

              child: ListView.builder(
                  itemCount: assignmentsAvailable.length ,
                  itemBuilder: (BuildContext listContext, int index){
                    return AssignmentCard(
                      subjectName: assignmentsAvailable[index].getSubjectName(),
                      title: assignmentsAvailable[index].getTitle() ,
                      dueDate: assignmentsAvailable[index].getDueDate(),
                      instructions: assignmentsAvailable[index].getInstructions(),
                      shortIntro: assignmentsAvailable[index].getIntro(),
                      marks: assignmentsAvailable[index].getMarks(),
                      resources: assignmentsAvailable[index].getAssignmentFiles(),
                        );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}