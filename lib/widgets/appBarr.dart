import 'package:flutter/material.dart';
import '../screens/events_screen.dart';
import '../screens/project_screen.dart';
import '../screens/contact.dart';
import '../screens/homepage.dart';
import '../screens/knowUs.dart';
// import 'screens/knowUs.dart';

Widget appBarr(BuildContext context) {
  return AppBar(
    title: Container(
      //height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            child: Image.asset(
              'assets/images/CC-Logo.png',
              fit: BoxFit.scaleDown,
            ),
            radius: 28,
            backgroundColor: Colors.transparent,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Coding Club",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Text(
                "Blog",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ],
      ),
    ),
    actions: [
      Flexible(
        child: FlatButton(
          onPressed: () {
           Navigator.popAndPushNamed(context, HomeScreen.routeName);
          },
          child: Text(
            'Home',
            style: TextStyle(
              color: Color(0xFFF638DC),
              fontSize: 24,
            ),
          ),
        ),
      ),
      Flexible(
        child: FlatButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, EventScreen.routeName);
          },
          child: Text(
            'Events',
            style: TextStyle(
              color: Color(0xFFF638DC),
              fontSize: 24,
            ),
          ),
        ),
      ),
      Flexible(
        child: FlatButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, ProjectScreen.routeName);
          },
          child: Text(
            'Projects',
            softWrap: true,
            style: TextStyle(
              color: Color(0xFFF638DC),
              fontSize: 24,
            ),
          ),
        ),
      ),
      // SizedBox(width: 10,),
      Flexible(
        child: FlatButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, KnowUsScreen.routeName);
          },
          child: Text(
            'Members',
            style: TextStyle(
              color: Color(0xFFF638DC),
              fontSize: 24,
            ),
          ),
        ),
      ),
      
    ],
    backgroundColor: Color(0xFF181818),
    elevation: 0,
  );
}
