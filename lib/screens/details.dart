import 'package:flutter/material.dart';

class DetailPageScreen extends StatelessWidget {
 final Map<String, dynamic> event;
  DetailPageScreen(this.event);
  static const routeName = '/DetailsPageScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(80),
          child: Image.asset(
            'assets/images/iiitvcc.png',
          ),
        ),
       
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 104),
                height: 699,
                width: 890,
                child: Column(
                  children: [
                    Text(event['title'],style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
              Container(
                height: 300,
                width: 1,
                color: Colors.purple,
              ),
              Container(
                height: 699,
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
