import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

// import "../screens/details.dart";

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
      // height: MediaQuery.of(context).size.height*0.5 ,
      // width: MediaQuery.of(context).size.width,
      // color: Colors.white,
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 16 / 9,
          // viewportFraction:,
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
            return Container(
              // height: MediaQuery.of(context).size.height * 10,
              color: Colors.black,
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Align(
                  //   alignment: Alignment.topCenter,
                  //   child:
                  Container(
                    height: MediaQuery.of(context).size.height * 0.239,
                    width: MediaQuery.of(context).size.width * 0.5,
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.width * 0.02),
                    margin: EdgeInsets.only(
                      // bottom: MediaQuery.of(context).size.height * 0.005,
                      left: MediaQuery.of(context).size.height * 0.003,
                    ),
                    child: Image.asset(
                      event['imageUrl'],
                      // scale: 0.3,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  // ),
                  Center(
                    child: Container(
                      //   width: MediaQuery.of(context).size.width * 0.3,
                      // padding: EdgeInsets.only(
                      //   left: MediaQuery.of(context).size.width * 0.009259,
                      // ),

                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.width * 0.02),
                      child: Text(
                        event['title'],
                        softWrap: true,
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(color: Colors.white),
                            fontSize:
                                MediaQuery.of(context).size.width * 0.032, //64,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(
                  //     left: MediaQuery.of(context).size.width * 0.09259,
                  //   ),
                  //   child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: event['date'].substring(0, 2),
                              style: GoogleFonts.sourceSansPro(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.045,
                              ),
                            ),
                            TextSpan(
                              text: event['date']
                                  .substring(2, event['date'].length),
                              style: GoogleFonts.sourceSansPro(
                                color: Color(0xff602080),
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                        width: MediaQuery.of(context).size.width * 0.17,
                        child: RaisedButton(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.006),
                          color: Color.fromRGBO(96, 32, 128, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width * 0.01,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Register',
                              softWrap: false,
                              style: GoogleFonts.almarai(
                                textStyle: TextStyle(color: Colors.white),
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.024,
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      // SizedBox(
                      //   height:
                      //       MediaQuery.of(context).size.height * 0.01,
                      // ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                        width: MediaQuery.of(context).size.width * 0.17,
                        child: RaisedButton(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.006),
                          color: Color.fromRGBO(96, 32, 128, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width * 0.01,
                            ),
                          ),
                          child: Text(
                            'Details',
                            softWrap: false,
                            style: GoogleFonts.almarai(
                              textStyle: TextStyle(color: Colors.white),
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.024,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      // SizedBox(
                      //   height: MediaQuery.of(context).size.height * 0.049,
                      //   width: MediaQuery.of(context).size.width * 0.12,
                      //   child: Flex(
                      //     direction: Axis.vertical,
                      //     children: [
                      //       // Expanded(
                      //       //   child: RaisedButton(
                      //       //     padding: EdgeInsets.only(
                      //       //         left: MediaQuery.of(context).size.width *
                      //       //             0.006),
                      //       //     color: Color.fromRGBO(96, 32, 128, 1),
                      //       //     shape: RoundedRectangleBorder(
                      //       //       borderRadius: BorderRadius.circular(
                      //       //         MediaQuery.of(context).size.width * 0.01,
                      //       //       ),
                      //       //     ),
                      //       //     child: Center(
                      //       //       child: Text(
                      //       //         'Register',
                      //       //         softWrap: false,
                      //       //         style: GoogleFonts.almarai(
                      //       //           textStyle:
                      //       //               TextStyle(color: Colors.white),
                      //       //           fontSize:
                      //       //               MediaQuery.of(context).size.width *
                      //       //                   0.017,
                      //       //         ),
                      //       //       ),
                      //       //     ),
                      //       //     onPressed: () {},
                      //       //   ),
                      //       // ),
                      //       // SizedBox(
                      //       //   height:
                      //       //       MediaQuery.of(context).size.height * 0.01,
                      //       // ),
                      //       // Expanded(
                      //       //   child: RaisedButton(
                      //       //     padding: EdgeInsets.only(
                      //       //         left: MediaQuery.of(context).size.width *
                      //       //             0.006),
                      //       //     color: Color.fromRGBO(96, 32, 128, 1),
                      //       //     shape: RoundedRectangleBorder(
                      //       //       borderRadius: BorderRadius.circular(
                      //       //         MediaQuery.of(context).size.width * 0.01,
                      //       //       ),
                      //       //     ),
                      //       //     child: Text(
                      //       //       'Details',
                      //       //       softWrap: false,
                      //       //       style: GoogleFonts.almarai(
                      //       //         textStyle: TextStyle(color: Colors.white),
                      //       //         fontSize:
                      //       //             MediaQuery.of(context).size.width *
                      //       //                 0.017,
                      //       //       ),
                      //       //     ),
                      //       //     onPressed: () {},
                      //       //   ),
                      //       // ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // ),
                ],
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
