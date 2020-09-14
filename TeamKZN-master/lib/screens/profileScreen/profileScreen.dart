/*
Student Profile  Screen
 */

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:student/models/userProfile.dart';

class ProfileScreen extends StatelessWidget {

  User currentUser = User.fetchUser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: MediaQuery.of(context).size.height/9,
        leading: IconButton(icon: Icon(Icons.menu), color: Colors.black),
        centerTitle: true,

        title: Text(
            "My Profile",
        style: TextStyle(
          color: Colors.blue
            ),
          ),
        ),


      body: Container(
        child: Column(
          children: [

            //Profile
            GFListTile(
              avatar: GFAvatar(
                backgroundImage: AssetImage(currentUser.getUserImage()),
                maxRadius: 55,
              ),

              titleText: currentUser.getUserName(),
              subtitleText: "Grade ${currentUser.getUserGrade()}",
              description: Text(
                  currentUser.getUserSchool(),
              style: TextStyle(
                fontWeight: FontWeight.w300,
              ),) ,
              margin: EdgeInsets.all(10),
            ),


            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                child: DefaultTabController(
                length: 3,
                child: new Scaffold(
                  appBar: new PreferredSize(
                    preferredSize: Size.fromHeight(kToolbarHeight),

                    child: Container(
                      height: 50.0,


                      child: new TabBar(
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.blueGrey,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),),
                            color: Colors.blue
                        ),

                        tabs: [
                          Tab(child:Text("Personal Information")),
                          Tab(child: Text("Academic Data"),),
                          Tab(child: Text("Game Board")),
                        ],
                      ),
                    ),
                  ),
                  body: TabBarView(
                    children: [
                      Container(),
                      Icon(Icons.directions_transit),
                      Icon(Icons.directions_bike),
                    ],
                  ),
                ),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
