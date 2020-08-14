import 'package:flutter/material.dart';
import '../screens/events_screen.dart';
import '../screens/project_screen.dart';
import '../screens/contact.dart';
import '../screens/homepage.dart';
import '../screens/knowUs.dart';
// import 'screens/knowUs.dart';

Widget appBarrMobile(BuildContext context) {
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
    backgroundColor: Color(0xFF181818),
    elevation: 0,
  );
}
