import 'package:flutter/material.dart';
import '../screens/events_screen.dart';
import '../screens/project_screen.dart';
import '../screens/contact.dart';
import '../screens/homepage.dart';
import '../screens/knowUs.dart';
// import 'screens/knowUs.dart';

Widget drawerr(BuildContext context) {
  return Drawer(
    child: ListView(padding: EdgeInsets.all(20), children: <Widget>[
      ListTile(
        title: Text('Home'),
        onTap: () => Navigator.popAndPushNamed(context, HomeScreen.routeName),
      ),
      ListTile(
        title: Text('Events'),
        onTap: () => Navigator.popAndPushNamed(context, EventScreen.routeName),
      ),
      ListTile(
        title: Text('Projects'),
        onTap: () => Navigator.popAndPushNamed(context, ProjectScreen.routeName),
      ),
      ListTile(
        title: Text('Know Us'),
        onTap: () => Navigator.popAndPushNamed(context, KnowUsScreen.routeName),
      ),
      ListTile(
        title: Text('Close'),
        onTap: () => Navigator.pop(context),
        trailing: Icon(Icons.close),
      ),
      

    ]),
  );
}
