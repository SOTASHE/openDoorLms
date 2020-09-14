/*

 This the Home page Screen
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/screens/homeScreen/dashboard.dart';
import 'package:student/screens/messagesScreen/messagesScreen.dart';
import 'package:student/screens/profileScreen/profileScreen.dart';


class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex=0;
  final List<Widget> _screens = [ DashBoard(), MessagesScreen(), ProfileScreen() ];

  void changeScreen(int index){
    setState(() {
      _currentIndex =index;
    });
  }

  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor:  Colors.blueGrey[100],
      body: _screens[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        elevation: 10,
        unselectedItemColor: Colors.blueGrey,
        onTap: changeScreen,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.question_answer),
              title: Text("Inbox")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile")),
        ],
      ),

    );
  }
}