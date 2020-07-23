import 'package:flutter/material.dart';

import '../widgets/appBarr.dart';

class HomeScreen extends StatelessWidget {
  
  static const routeName = '/homeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBarr(context),
    );
  }
}
