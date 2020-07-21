import 'package:flutter/material.dart';
import 'package:mywebapp/screens/contact.dart';

import './screens/homepage.dart';
import './screens/knowUs.dart';
import './screens/members.dart';
import './screens/events_screen.dart';
import './screens/project_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        EventScreen.routeName: (context) => EventScreen(),
        ProjectScreen.routeName: (context) => ProjectScreen(),
        KnowUsScreen.routeName:(context) => KnowUsScreen(),
        ContactScreen.routeName:(context) => ContactScreen(),
        MemberScreen.routeName:(context )=> MemberScreen()
      },
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
