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
      body: Container(
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
                              textStyle: Theme.of(context).textTheme.headline4,
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
                              textStyle: Theme.of(context).textTheme.headline4,
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
    );
  }
}
