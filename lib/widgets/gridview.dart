import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../responsive_widget.dart';

Widget gridViewEvent(List<Map<String, dynamic>> event, BuildContext context) {
  return GridView.count(
    shrinkWrap: false,
    crossAxisCount: ResponsiveWidget.isLargeScreen(context) ? 3 : 2,
    // physics:  NeverScrollableScrollPhysics(),
    mainAxisSpacing: MediaQuery.of(context).size.height * 0.0002,
    crossAxisSpacing: ResponsiveWidget.isLargeScreen(context)
        ? MediaQuery.of(context).size.width * 0.012
        : MediaQuery.of(context).size.width * 0.002,
    // childAspectRatio: 1,
    children: List.generate(
      event.length,
      (index) {
        return Container(
          height: ResponsiveWidget.isLargeScreen(context)
              ? MediaQuery.of(context).size.height * 0.68
              : MediaQuery.of(context).size.height * 0.28,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              !ResponsiveWidget.isLargeScreen(context)
                  ? Card(
                      child: Image.asset(
                        event[index]['image'],
                        fit: BoxFit.scaleDown,
                      ),
                    )
                  : Card(
                      child: Image.asset(
                        event[index]['image'],
                        fit: BoxFit.fill,
                        width: MediaQuery.of(context).size.width * 0.26,
                        height: MediaQuery.of(context).size.height * 0.26,
                      ),
                    ),
              Flexible(
                child: Text(
                  event[index]['title'],
                  softWrap: true,
                  style: GoogleFonts.robotoSlab(
                      fontWeight: FontWeight.w500,
                      fontSize: ResponsiveWidget.isLargeScreen(context)
                          ? MediaQuery.of(context).size.width * 0.019
                          : MediaQuery.of(context).size.width * 0.03,
                      color: Colors.white),
                ),
              ),
              // ),
              Flex(
                direction: Axis.horizontal,
                // children: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.calendar_today,
                    size: ResponsiveWidget.isLargeScreen(context)
                        ? MediaQuery.of(context).size.width * 0.018
                        : MediaQuery.of(context).size.width * 0.028,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.008),
                    child: Text(
                      event[index]['Date'],
                      softWrap: false,
                      style: GoogleFonts.arsenal(
                          fontStyle: FontStyle.italic,
                          fontSize: ResponsiveWidget.isLargeScreen(context)
                              ? MediaQuery.of(context).size.width * 0.018
                              : MediaQuery.of(context).size.width * 0.038,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              // ),
            ],
          ),
        );
      },
    ),
  );
}
