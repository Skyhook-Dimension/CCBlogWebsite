import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../appBarr.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/homeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double cWidth = MediaQuery.of(context).size.width * 0.36;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBarr(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              //padding: const EdgeInsets.only(left: 169, top: 77),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 169, top: 77),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: cWidth,
                          child: Text(
                            'Technical blogging website for posting technical blogs.',
                            style: GoogleFonts.montserrat(
                              textStyle: Theme.of(context).textTheme.headline4,
                              color: Color(0xFFF2F2F2),
                              fontSize: 64,
                              fontWeight: FontWeight.w200,
                              letterSpacing: -5,
                            ),
                          ),
                        ),
                        Container(
                          width: cWidth,
                          child: Text(
                            'A random good line for the good work of coding club and this website.',
                            style: GoogleFonts.openSans(
                              textStyle: Theme.of(context).textTheme.headline4,
                              color: Color(0xFFF2F2F2),
                              fontSize: 32,
                              fontWeight: FontWeight.w300,
                              //letterSpacing: -5,
                            ),
                          ),
                        ),
                        Container(
                          width: cWidth,
                          padding: EdgeInsets.only(top: 65, left: 34),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {},
                                //color: Color(0xFFF638DC),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                  side: BorderSide(
                                    color: Color(0xFFF638DC),
                                  ),
                                ),
                                child: Text(
                                  'Know Us',
                                  style: GoogleFonts.notoSans(
                                    textStyle:
                                        Theme.of(context).textTheme.headline4,
                                    color: Color(0xFFF638DC),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w300,
                                    //letterSpacing: -5,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 106,
                              ),
                              FlatButton(
                                onPressed: () {},
                                //color: Color(0xFFF638DC),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                  side: BorderSide(
                                    color: Color(0xFFF638DC),
                                  ),
                                ),
                                child: Text(
                                  'Contact Us',
                                  style: GoogleFonts.notoSans(
                                    textStyle:
                                        Theme.of(context).textTheme.headline4,
                                    color: Color(0xFFF638DC),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w300,
                                    //letterSpacing: -5,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 158,
                  ),
                  Image.asset(
                    'assets/images/illustration.png',
                    width: 490,
                    //height: 585,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 153,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 74),
                    child: Text(
                      'LATEST',
                      style: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.headline4,
                        color: Color(0xFFF2F2F2),
                        fontSize: 48,
                        fontWeight: FontWeight.w200,
                        //letterSpacing: -5,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 74),
                    child: Text(
                      'BLOG',
                      style: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.headline4,
                        color: Color(0xFFF2F2F2),
                        fontSize: 24,
                        fontWeight: FontWeight.w100,
                        //letterSpacing: -5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 121,
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 464,
                        color: Color(0xFF602080),
                      ),
                      Positioned(
                        bottom: 42,
                        left: 75,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/flutter_image.jpg',
                                width: 800,
                                //height: 585,
                                fit: BoxFit.contain,
                              ),
                              SizedBox(
                                width: 19,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.only(top: 25),
                                        child: Text(
                                          'Advantages Of Flutter',
                                          style: GoogleFonts.balooTamma(
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .headline4,
                                            color: Color(0xFFF2F2F2),
                                            fontSize: 58,
                                            fontWeight: FontWeight.w400,
                                            //letterSpacing: -5,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: cWidth,
                                        child: Text(
                                          'And unlike other cross-platform toolkits, Flutter does this without handcuffing developers to a narrow selection of visual elements. According to Google, Flutter gives developers control over every pixel of the screen, and comes with tools that let designers insert and animate graphics, videos, text, and app controls.',
                                          style: GoogleFonts.lato(
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .headline4,
                                            color: Color(0xFFF2F2F2),
                                            fontSize: 30,
                                            fontWeight: FontWeight.w300,
                                            //letterSpacing: -5,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    color: Color(0xFFF2F2F2),
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                    ),
                                    child: Text(
                                      'Read more',
                                      style: GoogleFonts.notoSans(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline4,
                                        color: Color(0xFF602080),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        //letterSpacing: -5,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                    overflow: Overflow.visible,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
