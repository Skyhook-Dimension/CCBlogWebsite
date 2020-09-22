import 'package:flutter/material.dart';
import './screens/contact.dart';
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
        HomeScreen.routeName: (context) => HomeScreen(),
        EventScreen.routeName: (context) => EventScreen(),
        ProjectScreen.routeName: (context) => ProjectScreen(),
        KnowUsScreen.routeName: (context) => KnowUsScreen(),
        ContactScreen.routeName: (context) => ContactScreen(),
        PastEventsScreen.routeName: (context) => PastEventsScreen()
      }, 
      // builder: (context, widget) => ResponsiveWrapper.builder(
      //    BouncingScrollWrapper.builder(context, widget),
      //     maxWidth: 1980,
      //     minWidth: 1080,
      //     defaultScale: true,
      //     breakpoints: [
      //       // ResponsiveBreakpoint.resize(480, name: MOBILE),
      //       ResponsiveBreakpoint.autoScale(600, name: DESKTOP),
      //       // ResponsiveBreakpoint.resize(1000, name: DESKTOP),
      //     ],),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: Color(0xFF181818),
      ),
      title: "CCBlogWebsite",
      home: HomeScreen(),
    );
  }
}
