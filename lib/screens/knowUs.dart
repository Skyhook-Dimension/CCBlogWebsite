import 'package:flutter/material.dart';
import '../widgets/appBarr.dart';

class KnowUsScreen extends StatelessWidget {
  static const routeName = '/KnowUsScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarr(context),
      backgroundColor: Colors.black,
    );
  }
}
