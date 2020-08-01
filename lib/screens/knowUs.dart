import 'package:flutter/material.dart';
import '../widgets/appBarr.dart';
import 'package:google_fonts/google_fonts.dart';

class KnowUsScreen extends StatelessWidget {
  static const routeName = '/KnowUsScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarr(context),
      backgroundColor: Color(0xff1B1B1B),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: 2759,
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                height: 786,
                width: 1532,
                color: Color(0xff181818),
              ),
              Positioned(
                top: -25,
                left: -50,
                child: Container(
                  width: 3000,
                  height: 251,
                  color: Color(0xff181818),
                  child: Text('CODING CLUB 2020',
                      style: GoogleFonts.oswald(
                        fontSize: 198,
                        color: Color(0xff303030),
                        fontWeight: FontWeight.w700,
                      )),
                ),
              ),
              Positioned(
                top: 135,
                left: 157,
                width: 1290,
                height: 2421,
                child: Container(
                  width: 1290,
                  height: 2421,
                  color: Color(0xff353535),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 60, vertical: 12),
                          child: Text('LEADERS',
                              style: GoogleFonts.oswald(
                                fontWeight: FontWeight.w700,
                                fontSize: 42,
                                color: Color(0xffA3A3A3),
                              )),
                        ),
                      ), //leaders
                      Container(
                        color: Color(0xffA3A3A3),
                        height: 3,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 81),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FlatButton(
                                  onPressed: () {
                                    print('hellllllo');
                                  },
                                  child: Stack(
                                    overflow: Overflow.visible,
                                    children: [
                                      Container(
                                        width: 282,
                                        height: 285,
                                        color: Color(0xff340069),
                                      ),
                                      Container(
                                        width: 282,
                                        height: 285,
                                        child: Image.asset(
                                          'assets/images/pushkar.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                        top: 196,
                                        left: 0,
                                        child: Container(
                                          width: 282,
                                          height: 62,
                                          color: Color(0xff602080),
                                          child: Center(
                                            child: Text(
                                              'PUSHKAR PATEL',
                                              style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 20,
                                                color: Color(0xffF2F2F2),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          height: 20,
                                          width: 65,
                                          color: Color(0xffFFC700),
                                          child: Center(
                                            child: Text(
                                              'SEC',
                                              style: GoogleFonts.oswald(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 86),
                                Stack(
                                  children: [
                                    Container(
                                      width: 282,
                                      height: 285,
                                      color: Color(0xff340069),
                                    ),
                                    Container(
                                      width: 282,
                                      height: 285,
                                      child: Image.asset(
                                        'assets/images/pushkar.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      top: 196,
                                      left: 0,
                                      child: Container(
                                        width: 282,
                                        height: 62,
                                        color: Color(0xff602080),
                                        child: Center(
                                          child: Text(
                                            'PUSHKAR PATEL',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Color(0xffF2F2F2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        height: 20,
                                        width: 65,
                                        color: Color(0xffFFC700),
                                        child: Center(
                                          child: Text(
                                            'J-SEC',
                                            style: GoogleFonts.oswald(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ]),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 60, vertical: 12),
                          child: Text(
                            'MEMBERS',
                            style: GoogleFonts.oswald(
                              fontWeight: FontWeight.w700,
                              fontSize: 42,
                              color: Color(0xffA3A3A3),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Color(0xffA3A3A3),
                        height: 3,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 81),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: 282,
                                      height: 285,
                                      color: Color(0xff340069),
                                    ),
                                    Container(
                                      width: 282,
                                      height: 285,
                                      child: Image.asset(
                                        'assets/images/pushkar.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      top: 196,
                                      left: 0,
                                      child: Container(
                                        width: 282,
                                        height: 62,
                                        color: Color(0xff602080),
                                        child: Center(
                                          child: Text(
                                            'PUSHKAR PATEL',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Color(0xffF2F2F2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: 64),
                                Stack(
                                  children: [
                                    Container(
                                      width: 282,
                                      height: 285,
                                      color: Color(0xff340069),
                                    ),
                                    Container(
                                      width: 282,
                                      height: 285,
                                      child: Image.asset(
                                        'assets/images/pushkar.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      top: 196,
                                      left: 0,
                                      child: Container(
                                        width: 282,
                                        height: 62,
                                        color: Color(0xff602080),
                                        child: Center(
                                          child: Text(
                                            'PUSHKAR PATEL',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Color(0xffF2F2F2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: 64),
                                Stack(
                                  children: [
                                    Container(
                                      width: 282,
                                      height: 285,
                                      color: Color(0xff340069),
                                    ),
                                    Container(
                                      width: 282,
                                      height: 285,
                                      child: Image.asset(
                                        'assets/images/pushkar.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      top: 196,
                                      left: 0,
                                      child: Container(
                                        width: 282,
                                        height: 62,
                                        color: Color(0xff602080),
                                        child: Center(
                                          child: Text(
                                            'PUSHKAR PATEL',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Color(0xffF2F2F2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ]),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 81),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: 282,
                                      height: 285,
                                      color: Color(0xff340069),
                                    ),
                                    Container(
                                      width: 282,
                                      height: 285,
                                      child: Image.asset(
                                        'assets/images/pushkar.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      top: 196,
                                      left: 0,
                                      child: Container(
                                        width: 282,
                                        height: 62,
                                        color: Color(0xff602080),
                                        child: Center(
                                          child: Text(
                                            'PUSHKAR PATEL',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Color(0xffF2F2F2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 64),
                                Stack(
                                  children: [
                                    Container(
                                      width: 282,
                                      height: 285,
                                      color: Color(0xff340069),
                                    ),
                                    Container(
                                      width: 282,
                                      height: 285,
                                      child: Image.asset(
                                        'assets/images/pushkar.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      top: 196,
                                      left: 0,
                                      child: Container(
                                        width: 282,
                                        height: 62,
                                        color: Color(0xff602080),
                                        child: Center(
                                          child: Text(
                                            'PUSHKAR PATEL',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Color(0xffF2F2F2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: 64),
                                Stack(
                                  children: [
                                    Container(
                                      width: 282,
                                      height: 285,
                                      color: Color(0xff340069),
                                    ),
                                    Container(
                                      width: 282,
                                      height: 285,
                                      child: Image.asset(
                                        'assets/images/pushkar.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      top: 196,
                                      left: 0,
                                      child: Container(
                                        width: 282,
                                        height: 62,
                                        color: Color(0xff602080),
                                        child: Center(
                                          child: Text(
                                            'PUSHKAR PATEL',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Color(0xffF2F2F2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ]),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 81),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: 282,
                                      height: 285,
                                      color: Color(0xff340069),
                                    ),
                                    Container(
                                      width: 282,
                                      height: 285,
                                      child: Image.asset(
                                        'assets/images/pushkar.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      top: 196,
                                      left: 0,
                                      child: Container(
                                        width: 282,
                                        height: 62,
                                        color: Color(0xff602080),
                                        child: Center(
                                          child: Text(
                                            'PUSHKAR PATEL',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Color(0xffF2F2F2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: 64),
                                Stack(
                                  children: [
                                    Container(
                                      width: 282,
                                      height: 285,
                                      color: Color(0xff340069),
                                    ),
                                    Container(
                                      width: 282,
                                      height: 285,
                                      child: Image.asset(
                                        'assets/images/pushkar.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      top: 196,
                                      left: 0,
                                      child: Container(
                                        width: 282,
                                        height: 62,
                                        color: Color(0xff602080),
                                        child: Center(
                                          child: Text(
                                            'PUSHKAR PATEL',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Color(0xffF2F2F2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: 64),
                                Stack(
                                  children: [
                                    Container(
                                      width: 282,
                                      height: 285,
                                      color: Color(0xff340069),
                                    ),
                                    Container(
                                      width: 282,
                                      height: 285,
                                      child: Image.asset(
                                        'assets/images/pushkar.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      top: 196,
                                      left: 0,
                                      child: Container(
                                        width: 282,
                                        height: 62,
                                        color: Color(0xff602080),
                                        child: Center(
                                          child: Text(
                                            'PUSHKAR PATEL',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Color(0xffF2F2F2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ]),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 60, vertical: 12),
                          child: Text(
                            'FOOBARS',
                            style: GoogleFonts.oswald(
                              fontWeight: FontWeight.w700,
                              fontSize: 42,
                              color: Color(0xffA3A3A3),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Color(0xffA3A3A3),
                        height: 3,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 81),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: 282,
                                      height: 285,
                                      color: Color(0xff340069),
                                    ),
                                    Container(
                                      width: 282,
                                      height: 285,
                                      child: Image.asset(
                                        'assets/images/pushkar.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      top: 196,
                                      left: 0,
                                      child: Container(
                                        width: 282,
                                        height: 62,
                                        color: Color(0xff602080),
                                        child: Center(
                                          child: Text(
                                            'PUSHKAR PATEL',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Color(0xffF2F2F2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: 64),
                                Stack(
                                  children: [
                                    Container(
                                      width: 282,
                                      height: 285,
                                      color: Color(0xff340069),
                                    ),
                                    Container(
                                      width: 282,
                                      height: 285,
                                      child: Image.asset(
                                        'assets/images/pushkar.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      top: 196,
                                      left: 0,
                                      child: Container(
                                        width: 282,
                                        height: 62,
                                        color: Color(0xff602080),
                                        child: Center(
                                          child: Text(
                                            'PUSHKAR PATEL',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Color(0xffF2F2F2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: 64),
                                Stack(
                                  children: [
                                    Container(
                                      width: 282,
                                      height: 285,
                                      color: Color(0xff340069),
                                    ),
                                    Container(
                                      width: 282,
                                      height: 285,
                                      child: Image.asset(
                                        'assets/images/pushkar.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      top: 196,
                                      left: 0,
                                      child: Container(
                                        width: 282,
                                        height: 62,
                                        color: Color(0xff602080),
                                        child: Center(
                                          child: Text(
                                            'PUSHKAR PATEL',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Color(0xffF2F2F2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  color: Colors.black,
                  height: 98,
                  width: 1532,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  
                     Text(
                                                 'Designed by DOT',
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w400,
                                                   fontSize: 30,
                                              color: Color(0xffF2F2F2),
                                                ),
                                            ),
                      SizedBox(width: 20),
                      Container(
                        height: 64,
                        width: 64,
                        child: Image.asset(
                          'assets/images/dotlogo.png',
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
