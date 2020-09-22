import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '../responsive_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mywebapp/screens/eventDetails.dart';

class CarouselWidget extends StatefulWidget {
  final List<Map<String, dynamic>> events;
  CarouselWidget(this.events);
  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  double currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Container(
            child: Column(
              children: [
                Container(
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
                    items: widget.events.map((event) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height * 0.01,
                            horizontal: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.5,
                                  width:
                                      MediaQuery.of(context).size.width * 0.52,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.43,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              padding: EdgeInsets.only(
                                                left: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.09259,
                                              ),
                                              child: Text(
                                                event['title'],
                                                softWrap: true,
                                                style: GoogleFonts.montserrat(
                                                    textStyle: TextStyle(
                                                        color: Colors.white),
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.042, //64,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.09259,
                                                ),
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: event['date']
                                                            .substring(0, 2),
                                                        style: GoogleFonts
                                                            .sourceSansPro(
                                                          color: Colors.white,
                                                          fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.029,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: event['date']
                                                            .substring(
                                                                2,
                                                                event['date']
                                                                    .length),
                                                        style: GoogleFonts
                                                            .sourceSansPro(
                                                          color:
                                                              Color(0xff602080),
                                                          fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.029,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.11944,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.102,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.060,
                                              child: FlatButton(
                                                color: Color.fromRGBO(
                                                    96, 32, 128, 1),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.01,
                                                  ),
                                                ),
                                                child: Text(
                                                  'Register',
                                                  softWrap: false,
                                                  style: GoogleFonts.almarai(
                                                    textStyle: TextStyle(
                                                        color: Colors.white),
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.017,
                                                  ),
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.032,
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.102,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.060,
                                              child: FlatButton(
                                                color: Color.fromRGBO(
                                                    96, 32, 128, 1),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.01)),
                                                child: Text(
                                                  'Details',
                                                  softWrap: false,
                                                  style: GoogleFonts.montserrat(
                                                    textStyle: TextStyle(
                                                        color: Colors.white),
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.017,
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .push(MaterialPageRoute(
                                                    builder: (context) =>
                                                        DetailPageScreen(
                                                      widget.events[
                                                          currentIndex.toInt()],
                                                    ),
                                                  ));
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.53,
                                  width:
                                      MediaQuery.of(context).size.width * 0.46,
                                  margin: EdgeInsets.only(
                                    bottom: MediaQuery.of(context).size.height *
                                        0.005,
                                    left: MediaQuery.of(context).size.height *
                                        0.003,
                                  ),
                                  child: Image.asset(
                                    event['imageUrl'],
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
                if (ResponsiveWidget.isLargeScreen(context))
                  Container(
                    color: Colors.black,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.056,
                    child: ResponsiveWidget.isLargeScreen(context)
                        ? DotsIndicator(
                            mainAxisSize: MainAxisSize.max,
                            dotsCount: widget.events.length,
                            position: currentIndex,
                            decorator: DotsDecorator(
                                color: Color.fromRGBO(
                                    121, 121, 121, 1), // Inactive color
                                activeColor: Color.fromRGBO(96, 32, 128, 1),
                                activeSize: Size.square(
                                    MediaQuery.of(context).size.width * 0.02),
                                size: Size.square(
                                    MediaQuery.of(context).size.width * 0.015),
                                spacing: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.02)),
                          )
                        : null,
                  ),
              ],
            ),
          ),
        ],
      );
  }
}
