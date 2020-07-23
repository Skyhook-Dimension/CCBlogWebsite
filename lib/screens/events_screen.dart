import 'package:flutter/material.dart';
import '../appBarr.dart';

class EventScreen extends StatelessWidget {
  static const routeName = '/EventScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarr(context),
      backgroundColor: Colors.black,
    );
  }
}
