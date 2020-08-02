import 'package:flutter/material.dart';
import 'package:mywebapp/screens/contact.dart';

import './screens/homepage.dart';
import './screens/knowUs.dart';
import './screens/events_screen.dart';
import './screens/project_screen.dart';
import './screens/pastevents.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        EventScreen.routeName: (context) => EventScreen(),
        ProjectScreen.routeName: (context) => ProjectScreen(),
        KnowUsScreen.routeName:(context) => KnowUsScreen(),
        ContactScreen.routeName:(context) => ContactScreen(),
        PastEventsScreen.routeName:(context )=>PastEventsScreen()
      },
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
