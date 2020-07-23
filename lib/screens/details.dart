import 'package:flutter/material.dart';

class DetailsOfEvent {
  Map<String, String> eventDetails;
  DetailsOfEvent(this.eventDetails);
}

class DetailPageScreen extends StatelessWidget {
  static const routeName = '/DetailsPageScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Image.asset('assets/images/iiitvcc.png',)
        // Container(
        //   height: 150,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       Expanded(
        //         child: Container(
        //           height: 180,
        //           child: Image.asset(
        //             'assets/images/CC-Logo.png',
        //             fit: BoxFit.cover,
        //           ),
                
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 104),
                height: 699,
                child: Column(
                  children: [],
                ),
              ),
              Container(
                width: 656,
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
