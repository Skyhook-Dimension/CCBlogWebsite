import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../appBarr.dart';
import 'package:google_fonts/google_fonts.dart';

class PastEventsScreen extends StatelessWidget {
  static const routeName = '/PastEventsScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarr(context),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 102,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 620),
                      child: Center(
                        child: ClipOval(
                          child: Container(
                            child: Center(
                                child: Icon(
                              Icons.arrow_back,
                              size: 30,
                            )),
                            height: 48,
                            width: 48,
                            color: Color(0xff602080),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 610,
                          child: Text(
                            'INTRODUCTION TO UI UX WORKSHOP',
                            style: GoogleFonts.montserrat(
                              fontSize: 64,
                              color: Color(0xffF6EEFF),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 52,
                          width: 600,
                        ),
                        //rich txt
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          
                          Text(
                            '8',
                           style: GoogleFonts.montserrat(
                                  fontSize: 48,
                                  color: Color(0xffF2F2F2),
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Text(
                            ' April',
                                style: GoogleFonts.montserrat(
                                  fontSize: 44,
                                  color: Color(0xff602080),
                                  fontWeight: FontWeight.w300,
                                ),
                          )
                        ]),
                        /*RichText(
                            text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: [
                                   TextSpan(
                                text: '8',
                                style: GoogleFonts.montserrat(
                                  fontSize: 48,
                                  color: Color(0xffF2F2F2),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: ' April',
                                style: GoogleFonts.montserrat(
                                  fontSize: 44,
                                  color: Color(0xff602080),
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ])),*/
                        SizedBox(height: 50, width: 600),
                        Container(
                          width: 610,
                          child: Text(
                            'A UI/UX introduction for beginners to  learn about the bascis of designing and benefits of figma.',
                            style: GoogleFonts.openSans(
                              fontSize: 28,
                              color: Color(0xffF2F2F2),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        SizedBox(height: 33, width: 600),
                        Text(
                          'LH2, Sabar Campus',
                          style: GoogleFonts.montserrat(
                            fontSize: 32,
                            color: Color(0xff602080),
                            fontWeight: FontWeight.w400,
                          ),
                        ),

                        Text(
                          '4 PM Onwards',
                          style: GoogleFonts.montserrat(
                            fontSize: 28,
                            color: Color(0xff602080),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 5, width: 600),
                        Text(
                          'LH2, Sabar Campus',
                          style: GoogleFonts.montserrat(
                            fontSize: 24,
                            color: Color(0xff602080),
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ]),
                  SizedBox(width: 172),
                  Center(
                    child: Container(
                      width: 3,
                      height: 670,
                      color: Color(0xff602080),
                    ),
                  ),
                  SizedBox(width: 44),

                  //part 1 second coloumn/half
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 48),
                        Row(children: [
                          Text(
                            'Speaker:              ',
                            style: GoogleFonts.montserrat(
                              fontSize: 32,
                              color: Color(0xff602080),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Pranay Agarawal',
                            style: GoogleFonts.montserrat(
                              fontSize: 32,
                              color: Color(0xffF2F2F2),
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ]),
                        SizedBox(height: 48),
                        Row(children: [
                          Text(
                            'Skill Level:           ',
                            style: GoogleFonts.montserrat(
                              fontSize: 32,
                              color: Color(0xff602080),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'High',

                            ///icon
                            style: GoogleFonts.montserrat(
                              fontSize: 32,
                              color: Color(0xffF2F2F2),
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ]),
                        SizedBox(height: 48),
                        Row(children: [
                          Text(
                            'Prerequsite:       ',
                            style: GoogleFonts.montserrat(
                              fontSize: 32,
                              color: Color(0xff602080),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'None',
                            style: GoogleFonts.montserrat(
                              fontSize: 32,
                              color: Color(0xffF2F2F2),
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ]),
                        SizedBox(height: 48),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Requirements:  ',
                                style: GoogleFonts.montserrat(
                                  fontSize: 32,
                                  color: Color(0xff602080),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Container(
                                width: 270,
                                child: Text(
                                  'Laptop with figma installed ',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 32,
                                    color: Color(0xffF2F2F2),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              )
                            ]),
                        SizedBox(height: 48),
                        Row(children: [
                          Text(
                            'Attended by:     ',
                            style: GoogleFonts.montserrat(
                              fontSize: 32,
                              color: Color(0xff602080),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '240 Students',
                            style: GoogleFonts.montserrat(
                              fontSize: 32,
                              color: Color(0xffF2F2F2),
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ]),
                        SizedBox(height: 130),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: 250),
                            Text(
                              'Powered by :',
                              style: GoogleFonts.montserrat(
                                fontSize: 32,
                                color: Color(0xffF2F2F2),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Container(
                              child: Icon(
                                Icons.laptop_mac,
                                color: Color(0xffFFC700),
                                size: 64,
                              ),
                            )
                          ],
                        )
                      ]),
                ],
              ),

              // second  part
              Padding(
                padding: const EdgeInsets.only(left: 140, top: 60),
                child: Container(
                  child: Text(
                    'Gallery',
                    style: GoogleFonts.montserrat(
                      fontSize: 64,
                      color: Color(0xffF2F2F2),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22),
                child: Center(
                  child: Container(
                    height: 3,
                    width: 1376,
                    color: Color(0xffF2F2F2),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    height: 342,
                    width: 442,
                    color: Colors.red,
                    child: Image.asset(
                      'assets/images/workshop.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 342,
                    width: 442,
                    color: Colors.red,
                    child: Image.asset(
                      'assets/images/workshop.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 342,
                    width: 442,
                    color: Colors.red,
                    child: Image.asset(
                      'assets/images/workshop.jpg',
                      fit: BoxFit.cover,
                    ),
                  )
                ]),
              ),

              Container(height: 110)
            ],
          ),
        ),
      ),
    );
  }
}
