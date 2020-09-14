
// Classes, list of all classes.
///TODO Customize Text

import 'package:flutter/material.dart';
import 'package:student/components/iconcard.dart';

class ClassesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.red,
        toolbarHeight: MediaQuery.of(context).size.height/8,
        elevation: 0,
        ),


      // Body Contains a list of subject, Fetched From Database
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            FittedBox(
              fit: BoxFit.fitWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconCard(
                    title: 'Mathematics',
                    image: 'classIcons/calculator.png',
                    routeName: '/subject',
                    showDivider: true,
                    color: Colors.blue,
                  ),
                  IconCard(
                    title: 'Physical Science',
                    image: 'classIcons/flask.png',
                    routeName: '/physicsPapers',
                    showDivider: true,
                    color: Colors.lightBlueAccent,
                  )
                ],
              ),
            ),
            FittedBox(
              child: Row(
                children: [
                  IconCard(
                      title: 'Life Science',
                      image: 'classIcons/dna.png',
                      showDivider: true,
                    color: Colors.lightBlue[100],
                  ),
                  IconCard(
                    title: 'Geography',
                    image: 'classIcons/globe.png',
                    showDivider: true,
                    color: Colors.blue[900],
                  )
                ],
              ),
            ),
            FittedBox(
              child: Row(
                children: [
                  IconCard(
                    title: 'English',
                    image:'classIcons/abc.png',
                    showDivider: true,
                    color: Colors.lightBlue[200],
                  ),

                  IconCard(
                      title: 'Isizulu',
                      image: 'classIcons/african.png',
                    showDivider: true,
                    color: Colors.brown,
                  )
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}