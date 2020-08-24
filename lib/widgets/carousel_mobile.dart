import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

import "../screens/details.dart";

class CarouselForMobile extends StatefulWidget {
  final List<Map<String, dynamic>> events;
  CarouselForMobile(this.events);
  @override
  _CarouselForMobileState createState() => _CarouselForMobileState();
}

class _CarouselForMobileState extends State<CarouselForMobile> {
  double currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.63,
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: CarouselSlider(
        options: CarouselOptions(
          // aspectRatio: 16 / 9,
          viewportFraction: 1,
          onPageChanged: (index, reason) {
            setState(() {
              currentIndex = index.toDouble();
            });
          },
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 5),
          autoPlayAnimationDuration: Duration(milliseconds: 1000),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
        ),
        items: widget.events.map(
          (event) {
            return Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.01,
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width * 0.69,
                            // margin: EdgeInsets.only(
                            //   bottom: MediaQuery.of(context).size.height * 0.005,
                            //   left: MediaQuery.of(context).size.height * 0.003,
                            // ),
                            child: Image.asset(
                              event['imageUrl'],
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Row(children: [
                  //   Container(
                  //     width: MediaQuery.of(context).size.width * 0.5,
                  //     padding: EdgeInsets.only(
                  //       left: MediaQuery.of(context).size.width * 0.09259,
                  //     ),
                  //     child: Text(
                  //       event['title'],
                  //       softWrap: true,
                  //       style: GoogleFonts.montserrat(
                  //           textStyle: TextStyle(color: Colors.white),
                  //           fontSize:
                  //               MediaQuery.of(context).size.width * 0.042, //64,
                  //           fontWeight: FontWeight.w300),
                  //     ),
                  //   ),
                  //   Column(
                  //     children: [
                  //       Flexible(
                  //         child: Padding(
                  //           padding: EdgeInsets.only(
                  //             left: MediaQuery.of(context).size.width * 0.09259,
                  //           ),
                  //           child: RichText(
                  //             text: TextSpan(
                  //               children: <TextSpan>[
                  //                 TextSpan(
                  //                   text: event['date'].substring(0, 2),
                  //                   style: GoogleFonts.sourceSansPro(
                  //                     color: Colors.white,
                  //                     fontSize:
                  //                         MediaQuery.of(context).size.width *
                  //                             0.029,
                  //                   ),
                  //                 ),
                  //                 TextSpan(
                  //                   text: event['date']
                  //                       .substring(2, event['date'].length),
                  //                   style: GoogleFonts.sourceSansPro(
                  //                     color: Color(0xff602080),
                  //                     fontSize:
                  //                         MediaQuery.of(context).size.width *
                  //                             0.029,
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.start,
                  //         children: [
                  //           SizedBox(
                  //             width: MediaQuery.of(context).size.width * 0.102,
                  //             height:
                  //                 MediaQuery.of(context).size.height * 0.060,
                  //             child: FlatButton(
                  //               color: Color.fromRGBO(96, 32, 128, 1),
                  //               shape: RoundedRectangleBorder(
                  //                 borderRadius: BorderRadius.circular(
                  //                   MediaQuery.of(context).size.width * 0.01,
                  //                 ),
                  //               ),
                  //               child: Text(
                  //                 'Register',
                  //                 softWrap: false,
                  //                 style: GoogleFonts.almarai(
                  //                   textStyle: TextStyle(color: Colors.white),
                  //                   fontSize:
                  //                       MediaQuery.of(context).size.width *
                  //                           0.017,
                  //                 ),
                  //               ),
                  //               onPressed: () {},
                  //             ),
                  //           ),
                  //           SizedBox(
                  //             width: MediaQuery.of(context).size.width * 0.032,
                  //           ),
                  //           SizedBox(
                  //             width: MediaQuery.of(context).size.width * 0.102,
                  //             height:
                  //                 MediaQuery.of(context).size.height * 0.060,
                  //             child: FlatButton(
                  //               color: Color.fromRGBO(96, 32, 128, 1),
                  //               shape: RoundedRectangleBorder(
                  //                   borderRadius: BorderRadius.circular(
                  //                       MediaQuery.of(context).size.width *
                  //                           0.01)),
                  //               child: Text(
                  //                 'Details',
                  //                 softWrap: false,
                  //                 style: GoogleFonts.montserrat(
                  //                   textStyle: TextStyle(color: Colors.white),
                  //                   fontSize:
                  //                       MediaQuery.of(context).size.width *
                  //                           0.017,
                  //                 ),
                  //               ),
                  //               onPressed: () {
                  //                 // Navigator.of(context).pushNamed(
                  //                 //   DetailPageScreen.routeName,
                  //                 //   arguments: DetailsOfEvent(widget.events[currentIndex.toInt()]),
                  //                 // );
                  //                 Navigator.of(context).push(MaterialPageRoute(
                  //                   builder: (context) => DetailPageScreen(
                  //                     widget.events[currentIndex.toInt()],
                  //                   ),
                  //                 ));
                  //               },
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ],),
                ],
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
