

import 'package:flutter/material.dart';
import 'package:student/shared/main_drawer.dart';
import 'package:student/components/iconcard.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: MainAppDrawer(context: context,),
        appBar: AppBar(
          //automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,

          leading: Builder(builder: (context) => IconButton(icon: Icon(Icons.menu,
            color: Colors.blueGrey,), onPressed: ()=> Scaffold.of(context).openDrawer(),)),
          title: Text(
              "OpenDoor",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            
          ),
        ),
        body: Container(
          child: SingleChildScrollView(

            // Contains Home Screen cards
            ///TODO implement top banner
            child: Container(
              alignment: Alignment.center,
              // Cards are arranged in 2x3
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  // First Row of cards
                  FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconCard(title: "Announcements", image: "images/announcements.png",
                          routeName: "/announcements", color: Colors.blue[800],showDivider: true,),
                        IconCard(title: "My Classes", image: "images/openbook.png",
                          routeName: "/classes", color: Colors.red,showDivider: true,),
                      ],
                    ),
                  ),

                  // Second Row Of Cards
                  FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconCard(title: "Assignments", image: "images/assignments.png",
                          routeName: "/assignment",color: Colors.green,showDivider: true,),

                        IconCard(title: "Study Materials", image: "images/test.png",
                          routeName: "/studyMaterial", color: Colors.blue,showDivider: true,),
                      ],
                    ),
                  ),

                  // Third Row Of Card
                  FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconCard(title: "Study Plannar", image: "images/calendar.png",
                          routeName: "NextPage", color: Colors.deepPurple[500],showDivider: true,),
                        IconCard(title: "Games", image: "images/game.png",
                          routeName: "/topics", color: Colors.black,showDivider: true,),
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
