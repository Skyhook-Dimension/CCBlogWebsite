import 'package:flutter/material.dart';

import 'package:mywebapp/screens/home.dart';
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
      },
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
