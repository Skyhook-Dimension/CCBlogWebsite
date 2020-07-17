import 'package:flutter/material.dart';

import './events_screen.dart';
import './project_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.only(top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 62,
                child: Image.asset(
                  'assets/images/CC-Logo.png',
                  fit: BoxFit.cover,
                ),
                padding: EdgeInsets.only(
                  right: 5,
                  top: 5,
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
        ],
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Container(child: Text("A Technical blogging website", style: TextStyle(color: Colors.white),)),
    );
  }
}
