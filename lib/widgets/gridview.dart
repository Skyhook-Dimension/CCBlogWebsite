import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget gridViewEvent(List<Map<String, String>> event) {
  return GridView.count(
    shrinkWrap: false,
    crossAxisCount: 3,
    // physics:  NeverScrollableScrollPhysics(),
    children: List.generate(
      event.length,
      (index) {
        return Container(
          padding: EdgeInsets.only(right: 40, left: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Image.asset(
                  event[index]['image'],
                  fit: BoxFit.fill,
                  width: 450,
                ),
              ),
              Container(
                child: ListTile(
                  title: Text(
                    event[index]['title'],
                    style: GoogleFonts.robotoSlab(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                  subtitle: ListTile(
                    leading: Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                    ),
                    title: Text(
                      event[index]['Date'],
                      style: GoogleFonts.arsenal(
                          fontStyle: FontStyle.italic,
                          fontSize: 28,
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
