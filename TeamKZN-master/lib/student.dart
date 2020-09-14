import "package:flutter/material.dart";
import 'package:student/screens/announcementScreen/announcementScreen.dart';
import 'package:student/screens/assignmentScreen/assignmentScreen.dart';
import 'package:student/screens/classesScreen.dart';
import 'package:student/screens/gameScreen.dart';
import 'package:student/screens/homeScreen/homeScreen.dart';
import 'package:student/screens/pastExamPapers/examPapersScreen.dart';
import 'package:student/screens/studyMaterialScreen.dart';

import 'package:firebase_analytics/observer.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'services/services.dart';
import 'screens/screens.dart';
import 'package:provider/provider.dart';

void main() => runApp(StudentApp());

class StudentApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        StreamProvider<Report>.value(value: Global.reportRef.documentStream),
        StreamProvider<FirebaseUser>.value(value: AuthService().user),
      ],


      child: MaterialApp(

        //Firebase analytics
        navigatorObservers: [
          FirebaseAnalyticsObserver(analytics: FirebaseAnalytics()),
        ],


        routes: {
          "/": (context) => LoginScreen(),
          "/home": (context) => HomeScreen(),
          "/classes": (context) => ClassesScreen(),
          "/assignment": (context) => AssignmentScreen(),
          "/announcements": (context) => AnnouncementScreen(),
          "/studyMaterial": (context) => StudyMaterialScreen(),
          "/examPapers": (context) => ExamPapersScreen(),
          "/games": (context) => GamesScreen(),
          "/topics": (context) => ExamPapersScreen(),
          "/profile": (context) => ProfileScreen(),
          "/about": (context) => AboutScreen(),

        },



      ),
    );
  }
}