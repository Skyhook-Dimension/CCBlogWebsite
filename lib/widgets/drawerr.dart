import 'package:flutter/material.dart';
import '../screens/events_screen.dart';
import '../screens/project_screen.dart';
import '../screens/homepage.dart';
import '../screens/knowUs.dart';

Widget drawerr(BuildContext context) {
  return Container(
        width: MediaQuery.of(context).size.width*0.5,
    child: Drawer(
      child: Container(
        color: Colors.black,
        child: ListView(
          padding: EdgeInsets.only(left:MediaQuery.of(context).size
        .height*0.03), 
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height*0.003,),
          ListTile(
            leading: Text('Home'),
            onTap: () => Navigator.pushNamed(context, HomeScreen.routeName),
          ),
          ListTile(
           leading: Text('Events'),
            onTap: () => Navigator.pushNamed(context, EventScreen.routeName),
          ),
          ListTile(
            leading: Text('Projects'),
            onTap: () => Navigator.pushNamed(context, ProjectScreen.routeName),
          ),
          ListTile(
            leading: Text('Know Us'),
            onTap: () => Navigator.pushNamed(context, KnowUsScreen.routeName),
          ),
          ListTile(
           leading: Row(
             mainAxisSize: MainAxisSize.min,
             children: [
               Text('Close'),
              SizedBox(width: MediaQuery.of(context).size.width*0.02,),
               Icon(Icons.close,size: MediaQuery.of(context).size.height*0.03,),
             ],
           ),
            onTap: () => Navigator.pop(context),
            // title: 
          ),
          

        ]),
      ),
    ),
  );
}
