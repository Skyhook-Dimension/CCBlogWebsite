import 'package:flutter/material.dart';
import '../widgets/appBarr.dart';


class ProjectScreen extends StatelessWidget {
 static const routeName='/ProjectScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: appBarr(context),
    );
  }
}