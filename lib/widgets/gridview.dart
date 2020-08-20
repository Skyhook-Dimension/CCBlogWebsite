import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget gridViewEvent(List<Map<String, dynamic>> event,BuildContext context) {
  return GridView.count(
    shrinkWrap: false,
    crossAxisCount: 3,
    // physics:  NeverScrollableScrollPhysics(),
    children: List.generate(
      event.length,
      (index) {
        return Container(
          height: MediaQuery.of(context).size.height*0.49,
          padding: EdgeInsets.only(right: 40, left: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Image.asset(
                  event[index]['image'],
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width*0.6,
                  height: MediaQuery.of(context).size.height*0.35,
                ),
              ),
              Container(
                child: ListTile(
                  title: Text(
                    event[index]['title'],
                    softWrap:true,
                    style: GoogleFonts.robotoSlab(
                        fontWeight: FontWeight.w500,
                        fontSize: MediaQuery.of(context).size.width*0.019,
                        color: Colors.white),
                  ),
                  subtitle: ListTile(
                    leading: Icon(
                      Icons.calendar_today,
                      size: MediaQuery.of(context).size.width*0.016,
                      color: Colors.white,
                    ),
                    title: Text(
                      event[index]['Date'],
                      softWrap:false,
                      style: GoogleFonts.arsenal(
                          fontStyle: FontStyle.italic,
                          fontSize:  MediaQuery.of(context).size.width*0.016,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
