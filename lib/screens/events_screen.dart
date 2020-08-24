import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mywebapp/widgets/carousel_mobile.dart';

import './pastevents.dart';
import '../responsive_widget.dart';
import '../widgets/gridview.dart';
import '../widgets/drawerr.dart';
import '../widgets/appBarr.dart';
import '../widgets/appbarrmobile.dart';
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
      'Date': '1 MAR/2020',
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
      'Speakers': ['Ashutosh Rathi', 'Monal Shadi'],
      'SkillLevel': 1,
      'prerequisite': ['None'],
      'requirements': ['Laptop with git installed'],
      'Poweredby': 'assets/images/github_symbol.png'
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
      'SkillLevel': 1,
      'prerequisite': ['None'],
      'requirements': ['Laptop and WILL to learn']
    },
    {
      'title': 'OBJECTIVE C BACKEND WORKSHOP',
      'date': '20 August',
      'imageUrl': 'assets/images/objective-C.png',
      'info': 'Help you learn Objective C',
      'location': 'LH1, Sabar Campus',
      'time': '10 am',
      'duration': '5 hrs',
      'Speakers': ['ABC'],
      'SkillLevel': 2,
      'prerequisite': ['oops basics'],
      'requirements': ['Laptop']
    }
  ];

  List<Map<String, dynamic>> get getEvents {
    return [..._events];
  }

  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !ResponsiveWidget.isLargeScreen(context)
          ? appBarrMobile(context)
          : appBarr(context),
      drawer:
          (ResponsiveWidget.isLargeScreen(context)) ? null : drawerr(context),
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
                  bottom: -MediaQuery.of(context).size.height * 0.277,
                  left: -MediaQuery.of(context).size.width * 0.0527,
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
                            fontSize: MediaQuery.of(context).size.width * 0.28,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(22, 22, 22, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.69,
                    width: MediaQuery.of(context).size.width,
                    child:  (ResponsiveWidget.isLargeScreen(context))? CarouselWidget(_events) :CarouselForMobile(_events),),
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
                      radius: MediaQuery.of(context).size.width * 0.016,
                      child: Icon(Icons.calendar_today,
                          color: Colors.white,
                          size: MediaQuery.of(context).size.width * 0.019),
                    ),
                    title: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Past Events",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.029,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
            Container(
              height: MediaQuery.of(context).size.height * 0.16,
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
                          Radius.circular(
                              MediaQuery.of(context).size.width * 0.030),
                        ),
                      ),
                      color: isPressed ? Colors.transparent : Color(0xff602080),
                      highlightColor: Color.fromRGBO(96, 32, 128, 1),
                      onPressed: () {
                        setState(() {
                          isPressed = false;
                        });
                      },
                      child: Text(
                        '2019',
                        style: GoogleFonts.sourceSansPro(
                          textStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.024,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                              MediaQuery.of(context).size.width * 0.030),
                        ),
                      ),
                      color: isPressed ? Color(0xff602080) : Colors.transparent,
                      highlightColor: Color.fromRGBO(96, 32, 128, 1),
                      onPressed: () {
                        setState(() {
                          isPressed = true;
                        });
                      },
                      child: Text(
                        '2020',
                        style: GoogleFonts.sourceSansPro(
                          textStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.024,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              // width: MediaQuery.of(context).size.width,
              child: Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.020),
                child: !isPressed
                    ? FlatButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(PastEventsScreen.routeName);
                        },
                        child: gridViewEvent(_pastEvents, context))
                    : Center(
                        child: Text(
                          'Corona corrupted the System.fun.year("2020") brother. Meet you soon in 2021.....',
                          style: GoogleFonts.trykker(
                              fontWeight: FontWeight.w100,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.020,
                              color: Color(0xff9E9E9E)),
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
