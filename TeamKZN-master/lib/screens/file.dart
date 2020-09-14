import 'package:flushbar/flushbar.dart';
import "package:flutter/material.dart";

class File extends StatelessWidget {
  final String fileName;
  final String fileUrl;

  File({this.fileName, this.fileUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          Flushbar(
            title: "eish!",
            message: "File not found",
            // icon: Icon(Icons.warning_amber_rounded, color: Colors.blue,),
            margin: EdgeInsets.all(8),
            borderRadius: 10,
            duration: Duration(seconds: 2),
          ).show(context);
        },
        child: Row(
          children: [
            // Icon(Icons.insert_drive_file_rounded),
            Text("${this.fileName}")
          ],
        ),
      ),
    );
  }
}
