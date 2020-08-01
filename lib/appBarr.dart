import 'package:flutter/material.dart';
import 'screens/events_screen.dart';
import 'screens/project_screen.dart';
import 'screens/contact.dart';
import 'screens/homepage.dart';
import 'screens/knowUs.dart';
import 'screens/members.dart';

Widget appBarr(BuildContext context) {
  return AppBar(
    title: Container(
      padding: EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 50,
            child: Image.asset(
              'assets/images/CC-Logo.png',
              fit: BoxFit.cover,
            ),
            padding: EdgeInsets.only(
              right: 5,
              top: 2,
            ),
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
      FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, HomeScreen.routeName);
        },
        child: Text(
          'Home',
          style: TextStyle(
            color: Color(0xFFF638DC),
            fontSize: 24,
          ),
        ),
      ),
      FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, KnowUsScreen.routeName);
        },
        child: Text(
          'Know Us',
          style: TextStyle(
            color: Color(0xFFF638DC),
            fontSize: 24,
          ),
        ),
      ),
      FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, EventScreen.routeName);
        },
        child: Text(
          'Events',
          style: TextStyle(
            color: Color(0xFFF638DC),
            fontSize: 24,
          ),
        ),
      ),
      FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, ProjectScreen.routeName);
        },
        child: Text(
          'Projects',
          style: TextStyle(
            color: Color(0xFFF638DC),
            fontSize: 24,
          ),
        ),
        padding: EdgeInsets.only(right: 20),
      ),
      FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, ContactScreen.routeName);
        },
        child: Text(
          'Contact Us',
          style: TextStyle(
            color: Color(0xFFF638DC),
            fontSize: 24,
          ),
        ),
      ),
    ],
    backgroundColor: Colors.black,
    elevation: 0,
  );
}
