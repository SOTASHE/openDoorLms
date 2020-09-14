/*
This self explanatory like a naked old lady in a mid night hour
roaming the streets with a large rusty old chain, dragging this weird
looking huge creature.
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/components/boarderText.dart';

import 'messageContent.dart';

class AnnouncementCard extends StatelessWidget {
  final String type;
  final String title;
  final String content;
  final String timeReceived;
  final Color typeColor;

  AnnouncementCard({this.type, this.title,this.content, this.typeColor, this.timeReceived});

  @override
  Widget build(BuildContext context) {



    return InkWell(
      onTap: (){ Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MessageContent(title: this.title,
              receivedTime: this.timeReceived , content: this.content,))
      );},
      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(8),

        child: Container(
          height: MediaQuery.of(context).size.height /6.5,
          width: MediaQuery.of(context).size.width ,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

                BoarderText(text: this.type, color: this.typeColor,),

                //Title
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    this.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      wordSpacing: 2.5
                    ),
                  ),
                ),

                //Time received
              Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(top: 5,right: 5),

                  child: Text(
                      "${this.timeReceived}",
                  style: TextStyle(
                    fontWeight: FontWeight.w200
                  ),),

              ),
            ],
          ),
        ),
      ),
    );

  }
}
