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
                  ),
                  SizedBox(
                    height: 121,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 74),
                          child: Text(
                            'TOP',
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
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'BLOGS',
                            style: GoogleFonts.montserrat(
                              textStyle: Theme.of(context).textTheme.headline4,
                              color: Color(0xFFF2F2F2),
                              fontSize: 48,
                              fontWeight: FontWeight.w300,
                              //letterSpacing: -5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 101,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 151),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {},
                          child: Container(
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  width: 365,
                                  height: 337,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  )),
                                  child: Image.asset(
                                    'assets/images/linux.jpg',
                                    width: 365,
                                    //height: 585,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  child: Container(
                                    height: 75,
                                    width: 365,
                                    color: Color(0xFF602080),
                                  ),
                                ),
                                Positioned(
                                  bottom: 20,
                                  left: 64,
                                  child: Container(
                                    //padding: EdgeInsets.only(top: 25),
                                    child: Text(
                                      'Top 10 Linux Distros',
                                      style: GoogleFonts.robotoSlab(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline4,
                                        color: Color(0xFFF2F2F2),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                        //letterSpacing: -5,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Container(
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  width: 365,
                                  height: 337,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  )),
                                  child: Image.asset(
                                    'assets/images/linux.jpg',
                                    width: 365,
                                    //height: 585,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  child: Container(
                                    height: 75,
                                    width: 365,
                                    color: Color(0xFF602080),
                                  ),
                                ),
                                Positioned(
                                  bottom: 20,
                                  left: 64,
                                  child: Container(
                                    //padding: EdgeInsets.only(top: 25),
                                    child: Text(
                                      'Top 10 Linux Distros',
                                      style: GoogleFonts.robotoSlab(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline4,
                                        color: Color(0xFFF2F2F2),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                        //letterSpacing: -5,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Container(
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  width: 365,
                                  height: 337,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  )),
                                  child: Image.asset(
                                    'assets/images/linux.jpg',
                                    width: 365,
                                    //height: 585,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  child: Container(
                                    height: 75,
                                    width: 365,
                                    color: Color(0xFF602080),
                                  ),
                                ),
                                Positioned(
                                  bottom: 20,
                                  left: 64,
                                  child: Container(
                                    //padding: EdgeInsets.only(top: 25),
                                    child: Text(
                                      'Top 10 Linux Distros',
                                      style: GoogleFonts.robotoSlab(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline4,
                                        color: Color(0xFFF2F2F2),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                        //letterSpacing: -5,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 65,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 1255),
                    child: FlatButton(
                      onPressed: () {},
                      //color: Color(0xFFF638DC),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                        side: BorderSide(
                          color: Color(0xFFF638DC),
                        ),
                      ),
                      child: Text(
                        'View All Blogs',
                        style: GoogleFonts.notoSans(
                          textStyle: Theme.of(context).textTheme.headline4,
                          color: Color(0xFFF638DC),
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                          //letterSpacing: -5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 132,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 100,
                    ),
                    height: 2,
                    width: 1357,
                    color: Color(0xFFF2F2F2),
                  ),
                  SizedBox(
                    height: 56,
                  ),
                  Stack(alignment: Alignment.center, children: <Widget>[
                    Container(
                      height: 98,
                      width: 1532,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          stops: [0.0, 0.5, 1],
                          colors: [
                            Color(0xFF181818),
                            Color(0xFF383838),
                            Color(0xFF181818)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 467),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Designed by DOT',
                            style: GoogleFonts.montserrat(
                              textStyle: Theme.of(context).textTheme.headline4,
                              color: Color(0xFFF2F2F2),
                              fontSize: 24,
                              fontWeight: FontWeight.w300,
                              //letterSpacing: -5,
                            ),
                          ),
                          SizedBox(
                            width: 55,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 57,
                            ),
                            height: 40,
                            width: 2,
                            color: Color(0xFF602080),
                          ),
                          SizedBox(
                            width: 21,
                          ),
                          Text(
                            'Developed by Coding Club',
                            style: GoogleFonts.montserrat(
                              textStyle: Theme.of(context).textTheme.headline4,
                              color: Color(0xFFF2F2F2),
                              fontSize: 24,
                              fontWeight: FontWeight.w300,
                              //letterSpacing: -5,
                            ),
                          ),
                        ],
                      ),
                    )
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
