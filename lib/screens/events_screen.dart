import 'package:flutter/material.dart';

import 'package:mywebapp/widgets/gridview.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/appBarr.dart';
import '../widgets/carousel.dart';

class EventScreen extends StatefulWidget {
  static const routeName = '/EventScreen';

  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  List<Widget> carouselList = [];
  List<Map<String, String>> _pastEvents = [
    {
      'title': "Introduction to UI/UX",
      'Date': '8 APR/2020',
      'image': 'assets/images/ui_ux.png'
    },
    {
      'title': "Cook-a-code Dicussion",
      'Date': '27 APR/2020',
      'image': 'assets/images/cook.png'
    },
    {
      'title': "Introduction to Flutter",
      'Date': '16 DEC/2020',
      'image': 'assets/images/intro.png'
    }
  ];
  List<Map<String, dynamic>> _events = [
    {
      'title': 'GITHUB INTRODUCTION WORKSHOP',
      'date': '20 June',
      'imageUrl': 'assets/images/github_introduction.png',
      'info':
          'A github introduction for beginners to learn about git version control system and its benefits',
      'location': 'LH1, Sabar Campus',
      'time': '4 pm',
      'duration': '2 hrs',
      'Speakers': ['Ashutosh Rathi', 'Monal Shadi','Monik'],
      'Skill Level': 1,
      'prerequisite': ['None'],
      'requirements': ['Laptop with git installed','abc','acc','aaccc'],
      'Poweredby':'assets/images/github_symbol.png'
    },
    {
      'title': 'BIT-SET-GO CODING CONTEST',
      'date': '30 July',
      'imageUrl': 'assets/images/bitset_go.png',
      'info':
          'A workshop with motive to help you solve Bit-set-go contest\'s question',
      'location': 'LH2, Sabar Campus',
      'time': '6 pm',
      'duration': '3 hrs',
      'Speakers': ['Pushkar Patel', 'Aman Raj'],
      'Skill Level': 1,
      'prerequisite': ['None'],
      'requirements': ['Laptop and WILL to learn']
    },
    {
      'title': 'OBJECTIVE C BACKEND WORKSHOP',
      'date': '20 August',
      'imageUrl': 'assets/images/objective-C.png',
      'info':
          'Help you learn Objective C',
      'location': 'LH1, Sabar Campus',
      'time': '10 am',
      'duration': '5 hrs',
      'Speakers': ['ABC'],
      'Skill Level': 2,
      'prerequisite': ['oops basics'],
      'requirements': ['Laptop']
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarr(context),
      backgroundColor: Color.fromRGBO(27, 27, 27, 1),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              overflow: Overflow.visible,
              children: [
                Positioned(
                  // bottom: 80,
                  bottom: -300,
                  left: -53,
                  width: double.maxFinite,
                  child: Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        child: Text(
                          'CODING',
                          softWrap: false,
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                          style: GoogleFonts.josefinSans(
                            fontSize: 400,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(22, 22, 22, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(child: CarouselWidget(_events)),
              ],
            ),
            Flex(direction: Axis.horizontal, children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color.fromRGBO(96, 32, 128, 1),
                      // Color(0xff966eaa),
                      radius: 40,
                      child: Icon(Icons.calendar_today,
                          color: Colors.white, size: 30),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(left: 23.0),
                      child: Text(
                        "Past Events",
                        style: GoogleFonts.openSans(
                          textStyle:
                              TextStyle(fontSize: 40, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              // width: double.infinity,
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                      ),
                      color: Colors.transparent,
                      highlightColor: Color.fromRGBO(96, 32, 128, 1),
                      onPressed: () {},
                      child: Text(
                        '2019',
                        style: GoogleFonts.montserrat(
                          textStyle:
                              TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                      ),
                      color: Colors.transparent,
                      highlightColor: Color.fromRGBO(96, 32, 128, 1),
                      onPressed: () {
                        Text('hello');
                      },
                      child: Text(
                        '2020',
                        style: GoogleFonts.montserrat(
                          textStyle:
                              TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 550,
                // width: MediaQuery.of(context).size.width,
                child: Container(
                    padding: EdgeInsets.only(left: 60),
                    child: gridViewEvent(_pastEvents))),
          ],
        ),
      ),
    );
  }
}
