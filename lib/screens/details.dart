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
                height: 699,
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
                            height: 45,
                          ),
                          Text(
                            event['date'],
                            style: GoogleFonts.sourceSansPro(
                                color: Colors.white, fontSize: 45),
                          ),
                          SizedBox(
                            height: 54,
                          ),
                          Text(
                            event['info'],
                            style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 38,
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
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: IconButton(
                        padding: EdgeInsets.only(left:50),
                        icon: Icon(Icons.arrow_back,color:Colors.white),
                        iconSize: 35,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    )
                  ],
                ),
              ),
              Container(width: 150),
              Container(
                height: 680,
                width: 2,
                color: Color(0xff602080),
              ),
              Container(
                height: 699,
                child: Column(
                  children: [
                    Container(
                      height: 600,
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
                            trailing: SignalStrengthIndicator.bars(
                              activeColor: Colors.white,
                              value: 0.6,
                              size: 60,
                              barCount: 3,
                              spacing: 0.1,
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
                                  shrinkWrap: true,physics: ClampingScrollPhysics(),
                                  itemBuilder: (ctx, index) {
                                    if (index == 0)
                                      return Text(
                                          event['requirements'][index],
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
                    
                    if(event['Poweredby']!=null)
                  //  Expanded(child:Align(alignment:Alignment.bottomRight ,child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                   children: [
                     Text("Powered By: ",style: GoogleFonts.montserrat(fontSize: 32,color:Color(0xff602080))),
                     Image.asset(event['Poweredby']),
                   ],
                   ),
                   
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
