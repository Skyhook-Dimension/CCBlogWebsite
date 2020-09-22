import 'package:flutter/material.dart';

Widget appBarrMobile(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    toolbarHeight: MediaQuery.of(context).size.height * 0.045,
    title: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          CircleAvatar(
            child: Image.asset(
              'assets/images/CC-Logo.png',
              fit: BoxFit.scaleDown,
            ),
            radius: MediaQuery.of(context).size.height * 0.02,
            backgroundColor: Colors.transparent,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height * 0.007),
                child: Text(
                  "Coding Club",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.03,
                  ),
                ),
              ),
              Text(
                "Blog",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * 0.018,
                ),
              )
            ],
          ),
        ],
      ),
    ),
    backgroundColor: Color(0xFF181818),
    elevation: MediaQuery.of(context).size.height * 0.09,
  );
}
