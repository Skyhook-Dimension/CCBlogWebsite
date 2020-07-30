import 'package:flutter/material.dart';
import '../widgets/appBarr.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectScreen extends StatelessWidget {
  static const routeName = '/ProjectScreen';
  final List<Map<String, dynamic>> project = [
    {'title': 'abc', 'subtitle': "Good Project", 'isFeatured': true},
    {'title': 'def', 'subtitle': "my Good Project", 'isFeatured': false},
    {'title': 'abcde', 'subtitle': "Excellent Project", 'isFeatured': true},
    {'title': 'abc', 'subtitle': "Good Project", 'isFeatured': false},
    {'title': 'abc', 'subtitle': "Good Project", 'isFeatured': false},
    {'title': 'abcde', 'subtitle': "Excellent Project", 'isFeatured': true},
    {'title': 'abc', 'subtitle': "Good Project", 'isFeatured': false},
    {'title': 'abc', 'subtitle': "Good Project", 'isFeatured': false},
  ];
  final dynamic imageDest = 'assets/images/project.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarr(context),
      backgroundColor: Color(0xff1B1B1B),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: 2300,
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
                  child: Text(
                    'CODING CLUB 2020',
                    style: GoogleFonts.oswald(
                      fontSize: 198,
                      color: Color(0xff303030),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 135,
                width: 1200,
                left: 157,
                child: Container(
                  height: 2000,
                  width: 1920,
                  color: Color(0xff353535),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color(0xffA3A3A3),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 70.0),
                            child: Container(
                              child: Text(
                                "FEATURED PROJECTS",
                                style: GoogleFonts.oswald(
                                  fontSize: 42,
                                  color: Color(0xffA3A3A3),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        // child:
                        // Expanded(
                        child: Container(
                          // height: 2000,
                          width: 1140,
                          color: Colors.transparent,
                          padding: EdgeInsets.all(35),
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 5.0,
                              mainAxisSpacing: 5.0,
                              childAspectRatio: 500 / 280,
                            ),
                            shrinkWrap: false,
                            itemCount: project.length,
                            itemBuilder: (ctx, index) {
                              // if (project[index]['isFeatured'])
                              return Container(
                                height: 331,
                                width: 510,
                                color: Colors.transparent,
                                // color: Color(0xff602080),
                                child: Card(
                                  color: Color(0xff602080),
                                  elevation: 30,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(26)),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        right: -40,
                                        top: -180,
                                        child: Image.asset(
                                            'assets/images/project.png',
                                            fit: BoxFit.fill,
                                            scale: 1.6),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 223.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xff602080),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(40),
                                              bottomRight: Radius.circular(26),
                                            ),
                                          ),
                                          // color: Color(0xff602080),
                                          height: 80,
                                          child: ListTile(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(40),
                                                bottomRight:
                                                    Radius.circular(26),
                                              ),
                                            ),
                                            title: Text(project[index]['title'],
                                                style: GoogleFonts.notoSans(
                                                  color: Colors.white,
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                            subtitle: Text(
                                              project[index]['subtitle'],
                                              style: GoogleFonts.sourceSansPro(
                                                color: Colors.white,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      // ),
                      SizedBox(
                        height: 60,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color(0xffA3A3A3),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 70.0),
                            child: Container(
                              child: Text(
                                "ALL PROJECTS",
                                style: GoogleFonts.oswald(
                                  fontSize: 42,
                                  color: Color(0xffA3A3A3),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 900,
                        padding: EdgeInsets.only(left: 60, right: 60, top: 35),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom:50.0),
                          child: GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 5.0,
                                mainAxisSpacing: 5.0,
                                childAspectRatio: 500 / 280,
                              ),
                              itemCount: project.length,
                              itemBuilder: (ctx, index) {
                                if (index >= project.length) return null;
                                return Card(
                                  color: Color(0xff602080),
                                  elevation: 30,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(26)),
                                  child: Container(
                                    height: 300,
                                    width: 410,
                                    color: Color(0xff602080),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          right: -40,
                                          top: -180,
                                          child: Image.asset(
                                              'assets/images/project.png',
                                              fit: BoxFit.fill,
                                              scale: 1.6),
                                        ),

                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 223.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xff602080),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(40),
                                                bottomRight: Radius.circular(26),
                                              ),
                                            ),
                                            // color: Color(0xff602080),
                                            height: 80,
                                            child: ListTile(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(40),
                                                  bottomRight:
                                                      Radius.circular(26),
                                                ),
                                              ),
                                              title: Text(project[index]['title'],
                                                  style: GoogleFonts.notoSans(
                                                    color: Colors.white,
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                              subtitle: Text(
                                                  project[index]['subtitle'],
                                                  style:
                                                      GoogleFonts.sourceSansPro(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                  )),
                                            ),
                                          ),
                                        ),
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 110,
                  width: 1532,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // color: Colors.black,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color(0xff181818),
                            Color(0xff383838),
                            Color(0xff181818)
                          ]),
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                'Designed by DOT',
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 24,
                                  color: Color(0xffF2F2F2),
                                ),
                              ),
                            ),
                            // SizedBox(width: 20),
                            Container(
                              height: 56,
                              width: 56,
                              child: Image.asset(
                                'assets/images/dotlogo.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 5),
                            Container(
                              width: 3,
                              height: 52,
                              color: Color(0xffF638DC),
                            ),
                            SizedBox(width: 10),
                            Container(
                              child: Text(
                                'Designed by Coding Club',
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 24,
                                  color: Color(0xffF2F2F2),
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Container(
                              height: 48,
                              width: 48,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(60),
                                child: Image.asset(
                                  'assets/images/iiitvcc.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
