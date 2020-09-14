/*
This a text Messaging screen

 */

import 'package:flutter/material.dart';
import 'package:student/models/contact.dart';
import 'package:student/models/messages.dart';
import 'package:student/screens/contactCard.dart';

import 'messageCard.dart';

class MessagesScreen extends StatefulWidget {
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {

  List<Message> allChats = Message.fetchAll();
  List<Contact>  allContacts = Contact.fetchAll();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,

          leading: IconButton(icon: Icon(Icons.menu, color: Colors.blueGrey,), onPressed: (){},) ,
          title: Text(
              "Inbox",
            style: TextStyle(
              color: Colors.blue,

            ),
          ),
          actions: [
            IconButton(icon: Icon(Icons.search, color: Colors.blueGrey,), onPressed: (){})
          ],

          bottom: TabBar(

            labelColor: Colors.white,
            unselectedLabelColor: Colors.black38,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                ),

                color: Colors.blue),

            tabs: [

              Tab(child: Icon(Icons.email),),
              Tab(child: Icon(Icons.supervised_user_circle)),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            //All Chats
            Container(
              child: ListView.builder(
                  itemCount: allChats.length,
                  itemBuilder: (BuildContext listContext, index){
                    return MessageCard(
                      userName: allChats[index].getUserName(),
                      profile: allChats[index].getProfile(),
                      message: allChats[index].getMessage(),
                      numMessages: allChats[index].getNumMessages(),
                      timeReceived: allChats[index].getTime(),

                    );
                  },
              )
            ),


            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Select, contact
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Select Contact, Start Private Chat",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                    ),
                  ),
                ),


                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: List.generate(allContacts.length,(index){
                              return ContactCard(
                                profile: allContacts[index].getProfile(),
                                userName: allContacts[index].getUserName(),
                                role: allContacts[index].getRole(),

                              );
                          },
                      ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
