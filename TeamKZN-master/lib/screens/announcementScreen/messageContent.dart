import 'package:flutter/material.dart';

class MessageContent extends StatelessWidget {
  final String title;
  final String receivedTime;
  final String content;

  MessageContent({this.title, this.receivedTime, this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            return Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.delete,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          // IconButton(icon: Icon(Icons.mark_chat_read_outlined, color: Colors.black,), onPressed: (){},),
        ],
      ),

      //Message Body
      body: Column(
        children: [
          //Title
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              "${this.title}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),

          //SenderProfile
          Container(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Admin",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "${this.receivedTime}",
                        style: TextStyle(
                            fontWeight: FontWeight.w200, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //Content
          Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "${this.content}",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    wordSpacing: 2.5,
                    letterSpacing: 1.5),
              )),
        ],
      ),
    );
  }
}
