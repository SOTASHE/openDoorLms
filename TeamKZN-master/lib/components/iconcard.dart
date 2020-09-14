
/// IconCard widget creates styled card


import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class IconCard extends StatelessWidget{
  //Instance variables
  final String title;
  final String image;
  final String routeName;
  final Color color;
  final bool showDivider;

  IconCard({ this.title, this.image, this.routeName,
    this.showDivider, this.color});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(8), //padding on all directions
      child: InkWell(
          onTap: (){ Navigator.pushNamed(context, this.routeName);},  //navigates to the page specified by routeName

          child: Card(
            elevation: 10,
            
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),

            child: Container(
              height: MediaQuery.of(context).size.height /5,
              width: MediaQuery.of(context).size.height /5 ,

              child: Column(
                children: [

                  // Icon
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Image.asset(
                      'assets/${this.image}',
                      fit: BoxFit.contain,
                      height: MediaQuery.of(context).size.height /7,
                      width: MediaQuery.of(context).size.width/4,
                    ),
                  ),

                 //Title
                 Expanded(
                   child: Padding(
                     padding: const EdgeInsets.only(left:8.0),
                     child: GFTypography(
                       text: this.title,
                       type: GFTypographyType.typo6,
                       dividerAlignment: Alignment.bottomLeft,
                       dividerColor: this.color,
                       showDivider: this.showDivider,
                     ),
                   ),
                 )
                ],
              ),
            )
          ),
      ),
    );
  }
}
