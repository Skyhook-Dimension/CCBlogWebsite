import 'package:flutter/material.dart';
import '../appBarr.dart';
import 'package:google_fonts/google_fonts.dart';

class PastEventsScreen extends StatelessWidget {
  static const routeName = '/PastEventsScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarr(context),
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            Row(
              
              children: [
                Container(width:102),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                 
                  Container(
                    width: 610,
                    child: Text('Introduction to UI UX Workshop',style:GoogleFonts.montserrat(
                          fontSize: 64,
                          color: Color(0xffF6EEFF),
                          fontWeight: FontWeight.w300,
                        ),
                        ),
                  ),
                      //rich txt 
                  Text('8 April',
                  style:GoogleFonts.montserrat(
                        fontSize: 44,
                        color: Color(0xff602080),
                        fontWeight: FontWeight.w300,
                      ),
                  ),
                  Container(
                    width:610,
                    child: Text(
                        'A UI/UX introduction for beginners to  learn about the bascis of designing and benefits of figma.',
                        style:GoogleFonts.openSans(
                          fontSize: 28,
                          color: Color(0xffF2F2F2),
                          fontWeight: FontWeight.w300,
                        ),
                        ),
                  ),
                  Text('LH2, Sabar Campus',
                  style:GoogleFonts.montserrat(
                        fontSize: 32,
                        color: Color(0xff602080),
                        fontWeight: FontWeight.w400,
                      ),
                  ),
                  Text('4 PM Onwards',
                  style:GoogleFonts.montserrat(
                        fontSize: 28,
                        color: Color(0xff602080),
                        fontWeight: FontWeight.w400,
                      ),),
                  Text('LH2, Sabar Campus',
                  style:GoogleFonts.montserrat(
                        fontSize:24,
                        color:Color(0xff602080),
                        fontWeight:FontWeight.w400,
                      ),)
                ]),
                Container(child: SizedBox(width: 3),color: Colors.blue),
                Column(children: [
                  Text('introduction to ui ux'),
                  Text('8 april'),
                  Container(
                    width: 100,
                    child: Text(
                        'A UI/UX introduction for beginners to  learn about the bascis of designing and benefits of figma.'),
                  ),
                  Text('LH2, Sabar Campus'),
                  Text('4 PM Onwards'),
                  Text('LH2, Sabar Campus')
                ]),
                
              ],
            ),
            Text('gallary'),
                
            Container(
                  height: 3,
                  color: Colors.blue,
                ),
                Row(children: [
                  Container(height: 300, width: 300, color: Colors.red),
                  Container(height: 300, width: 300, color: Colors.red),
                  Container(height: 300, width: 300, color: Colors.red)
                ])
          ],
        ),
      ),
    );
  }
}
