import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../responsive_widget.dart';

Widget gridViewEvent(List<Map<String, dynamic>> event, BuildContext context) {
  return GridView.count(
    shrinkWrap: false,
    crossAxisCount:ResponsiveWidget.isLargeScreen(context)? 3:2,
    // physics:  NeverScrollableScrollPhysics(),
    children: List.generate(
      event.length,
      (index) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.4,
          padding: EdgeInsets.only(right: 40, left: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  // height: MediaQuery.of(context).size.width * 0.002,
                  ),
              Image.asset(
                event[index]['image'],
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.35,
              ),
              Text(
                event[index]['title'],
                softWrap: true,
                style: GoogleFonts.robotoSlab(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.width * 0.019,
                    color: Colors.white),
              ),
              // ),
              Icon(
                Icons.calendar_today,
                size: MediaQuery.of(context).size.width * 0.018,
                color: Colors.white,
              ),
              Text(
                event[index]['Date'],
                softWrap: false,
                style: GoogleFonts.arsenal(
                    fontStyle: FontStyle.italic,
                    fontSize: MediaQuery.of(context).size.width * 0.018,
                    color: Colors.white),
              ),
            ],
          ),
        );
      },
    ),
  );
}
