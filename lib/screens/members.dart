import 'package:flutter/material.dart';
import '../appBarr.dart';

class MemberScreen extends StatelessWidget {
  static const routeName = '/MemberScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarr(context),
      backgroundColor: Colors.black,
    );
  }
}
