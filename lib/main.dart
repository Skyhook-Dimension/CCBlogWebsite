import 'package:flutter/material.dart';
import 'package:mywebapp/screens/contact.dart';
import 'package:responsive_framework/responsive_framework.dart';
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
      // builder:(context, widget) => ResponsiveWrapper.builder(
      //     BouncingScrollWrapper.builder(context, widget),
      //     maxWidth: 1200,
      //     minWidth: 450,
      //     defaultScale: true,
      //     breakpoints: [
      //       ResponsiveBreakpoint.resize(450, name: MOBILE),
      //       ResponsiveBreakpoint.autoScale(800, name: TABLET),
      //       ResponsiveBreakpoint.autoScale(1000, name: TABLET),
      //       ResponsiveBreakpoint.resize(1200, name: DESKTOP),
      //       ResponsiveBreakpoint.autoScale(2460, name: "4K"),
      //     ],),
      // builder: (context, widget) => ResponsiveWrapper.builder(
        
      //   maxWidth: 1200,
      //   minWidth: 480,
      //   defaultScale: true,
      //   breakpoints: [
      //     ResponsiveBreakpoint.resize(480, name: MOBILE),
      //     ResponsiveBreakpoint.autoScale(800, name: TABLET),
      //     ResponsiveBreakpoint.resize(1000, name: DESKTOP),
      //   ],
      //   background: Container(color: Color(0xFFF5F5F5)),
      // ),
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
