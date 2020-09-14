import 'package:flutter/material.dart';


class ContactCard extends StatelessWidget {
  final String userName;
  final String profile;
  final String role;

  ContactCard({this.userName, this.profile, this.role});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      elevation: 0,
      child: Container(
        height: MediaQuery.of(context).size.height /4,
        width: MediaQuery.of(context).size.width /3,
        padding: EdgeInsets.all(10),


        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          CircleAvatar(
            radius: 25,
          ),

          FittedBox(
            child: Text(
            "${this.userName}",
            style: TextStyle(
         fontWeight: FontWeight.bold,
         fontSize: 18,
              ),
            ),
          ),

          Text(
         "${this.role}",
        style: TextStyle(
          fontWeight: FontWeight.w300
         ),
      ),

         FlatButton(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side:BorderSide(color: Colors.blue) ),
            onPressed: (){},
              child: Text("Request Chat"))

         ],
      ),
    ),
        );
    }
  }
