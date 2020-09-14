/*
Message card, self explanatory
 */

import 'package:flutter/material.dart';

class MessageCard extends StatefulWidget {
  final String userName;
  final String message;
  final String profile;
  final String numMessages;
  final String timeReceived;

  MessageCard({this.userName, this.message, this.profile,
    this.numMessages, this.timeReceived});


  @override
  _MessageCardState createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

        },
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              height: MediaQuery.of(context).size.height/8.5,
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Row(

                children: [
                  //Profile
                  CircleAvatar(
                    radius: 23,
                    child: Image.asset(
                      "assets/users_images/${widget.profile}",
                      fit: BoxFit.cover,

                  ),),

                  //userName and messages
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //UserName
                      Padding(
                        padding: const EdgeInsets.only(left:8.0, bottom: 5,),
                        child: Text(
                          "${widget.userName}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),
                        ),
                      ),

                      //Message
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: SizedBox(

                          width: MediaQuery.of(context).size.width/1.5,
                          child: Text(
                            "${widget.message}",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                          ),
                        ),
                      ),

                      //Time
                      FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(left:8.0, top: 2),
                          child: Text(
                            "${widget.timeReceived}",
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      )
                    ],


                  )

                ],
              ),
            ),
          ),

          //Notifications
          Positioned(
              right: 10,


              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),

                constraints: BoxConstraints(
                  minHeight: 20,
                  minWidth: 20,
                ),

                child: Text(
                    "${widget.numMessages}",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                 ),
                  textAlign: TextAlign.center,
                ),
              ),
          )
        ],
      ),
    );
  }
}


