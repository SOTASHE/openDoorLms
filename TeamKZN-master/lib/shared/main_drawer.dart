/*
Darwer for the main app
 */

import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../services/auth.dart';

class MainAppDrawer extends StatelessWidget {
  final AuthService auth = AuthService();
  final context;

  MainAppDrawer({this.context});

  Flushbar warning(context) {
    Flushbar(
      icon: Icon(Icons.warning_outlined, color: Colors.blue,),
      title: "yerr",
      message: "Not available in demo version",
      // icon: Icon(Icons.warning_amber_rounded, color: Colors.blue,),
      margin: EdgeInsets.all(8),
      borderRadius: 10,
      duration: Duration(seconds: 2),
    ).show(context);
  }

    @override
    Widget build(context) {
      return SafeArea(child: GFDrawer(

        child: ListView(

          children: [
            GFDrawerHeader(
              currentAccountPicture: GFAvatar(
                radius: 80.0,
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg"),
              ),),




            ListTile(
                leading: Icon(Icons.leaderboard),
                title: Text("LeaderBoard"),
                onTap: () => warning(context)

            ),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () => warning(context)

            ),

            ListTile(
                leading: Icon(Icons.logout),
                title: Text("Log out"),
                onTap: () async {
                  await auth.signOut();
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/', (route) => false);
                }
            )
          ],
        ),
      ));
    }
}