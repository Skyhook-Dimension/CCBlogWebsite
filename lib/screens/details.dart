import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signal_strength_indicator/signal_strength_indicator.dart';

class DetailPageScreen extends StatelessWidget {
  final Map<String, dynamic> event;
  DetailPageScreen(this.event);
  static const routeName = '/DetailsPageScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              'assets/images/iiitvcc.png',
            ),
          ),
          padding: EdgeInsets.only(
            right: 5,
            top: 5,
            // left:10,
          ),
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                height: 645,
                width: 700,
                child: Column(
                  // mainAxisAlignment: ,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 104),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            event['title'],
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 64,
                                fontWeight: FontWeight.w200),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            event['date'],
                            style: GoogleFonts.sourceSansPro(
                                color: Colors.white, fontSize: 45),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            event['info'],
                            style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 33,
                          ),
                          Text(
                            event['location'],
                            style: GoogleFonts.montserrat(
                              color: Color(0xff602080),
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            event['time'],
                            style: GoogleFonts.montserrat(
                              color: Color(0xff602080),
                              fontSize: 28,
                            ),
                          ),
                          Text(
                            event['duration'],
                            style: GoogleFonts.montserrat(
                              color: Color(0xff602080),
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 50),
                          // padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(0xff602080),
                                                    child: IconButton(
                              icon: Icon(Icons.arrow_back, color: Colors.black),
                              iconSize: 25,
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 270,
                height: 490,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 150,
                      height: 47,
                      child: FlatButton(
                        color: Color.fromRGBO(96, 32, 128, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Register',
                          style: GoogleFonts.almarai(
                              textStyle: TextStyle(color: Colors.white),
                              fontSize: 25),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 620,
                width: 2,
                color: Color(0xff602080),
              ),
              Container(
                height: 640,
                child: Column(
                  children: [
                    Container(
                      height: 560,
                      width: 500,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Flexible(
                                // padding: EdgeInsets.only(left:18,right:80),
                                child: Text(
                                  'Speakers',
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xff602080), fontSize: 32),
                                ),
                              ),
                              Flexible(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemBuilder: (ctx, index) {
                                    if (index == 0)
                                      return Text(event['Speakers'][index],
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 32));
                                    return Text(event['Speakers'][index],
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white, fontSize: 32));
                                  },
                                  itemCount: event['Speakers'].length,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          ListTile(
                            leading: Text(
                              'Skill Level',
                              style: GoogleFonts.montserrat(
                                  color: Color(0xff602080), fontSize: 32),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 32.0),
                              child: SignalStrengthIndicator.bars(
                                // radius: ,
                                activeColor: Color(0xffF2F2F2),
                                inactiveColor: Colors.grey[800],
                                value: event["SkillLevel"] / 3,
                                size: 60,
                                barCount: 3,
                                spacing: 0.1,
                              ),
                            ),
                            trailing: SizedBox(
                              width: 190,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Flexible(
                                child: Text(
                                  'Prerequisites',
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xff602080), fontSize: 32),
                                ),
                              ),
                              Flexible(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemBuilder: (ctx, index) {
                                    if (index == 0)
                                      return Container(
                                          // padding:
                                          // const EdgeInsets.only(top: 5.0),
                                          child: Text(
                                              event['prerequisite'][index],
                                              style: GoogleFonts.montserrat(
                                                  color: Colors.white,
                                                  fontSize: 32)));
                                    return Text(event['prerequisite'][index],
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white, fontSize: 32));
                                  },
                                  itemCount: event['prerequisite'].length,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Flexible(
                                child: Text(
                                  'Requirements',
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xff602080), fontSize: 32),
                                ),
                              ),
                              Flexible(
                                // height: 190,
                                // width:250,
                                child: ListView.builder(
                                  padding: EdgeInsets.all(0),
                                  shrinkWrap: true,
                                  physics: ClampingScrollPhysics(),
                                  itemBuilder: (ctx, index) {
                                    if (index == 0)
                                      return Text(event['requirements'][index],
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 32));
                                    return Text(event['requirements'][index],
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white, fontSize: 32));
                                  },
                                  itemCount: event['requirements'].length,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //  ),
                    //  ),

                    if (event['Poweredby'] != null)
                      //  Expanded(child:Align(alignment:Alignment.bottomRight ,child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text("Powered By: ",
                              style: GoogleFonts.montserrat(
                                  fontSize: 32, color: Color(0xff602080))),
                          Image.asset(event['Poweredby']),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 270,
            padding: EdgeInsets.only(left: 350),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '2',
                          style: GoogleFonts.orbitron(
                            fontSize: 144,
                            color: Color(0xff707070),
                          ),
                        ),
                        Text(
                          '2',
                          style: GoogleFonts.orbitron(
                            fontSize: 144,
                            color: Color(0xff707070),
                          ),
                        ),
                        Text(
                          ':',
                          style: GoogleFonts.orbitron(
                            fontSize: 144,
                            color: Color(0xff707070),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Days',
                      style: GoogleFonts.orbitron(
                        fontSize: 36,
                        color: Color(0xffA3A3A3),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '2',
                          style: GoogleFonts.orbitron(
                            fontSize: 144,
                            color: Color(0xff707070),
                          ),
                        ),
                        Text(
                          '2',
                          style: GoogleFonts.orbitron(
                            fontSize: 144,
                            color: Color(0xff707070),
                          ),
                        ),
                        Text(
                          ':',
                          style: GoogleFonts.orbitron(
                            fontSize: 144,
                            color: Color(0xff707070),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Hours',
                      style: GoogleFonts.orbitron(
                        fontSize: 36,
                        color: Color(0xffA3A3A3),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '2',
                          style: GoogleFonts.orbitron(
                            fontSize: 144,
                            color: Color(0xff707070),
                          ),
                        ),
                        Text(
                          '2',
                          style: GoogleFonts.orbitron(
                            fontSize: 144,
                            color: Color(0xff707070),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Minutes',
                      style: GoogleFonts.orbitron(
                        fontSize: 36,
                        color: Color(0xffA3A3A3),
                      ),
                    ),
                  ],
                ),
                SizedBox()
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 64.0),
            child: Center(
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11)),
                onPressed: () {},
                color: Color(0xff602080),
                child: Text(
                  'Add to Calender',
                  style: GoogleFonts.montserrat(
                    fontSize: 24,
                    color: Color(0xffF2F2F2),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
