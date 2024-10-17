// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:portfolio_app/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  var logger = Logger();

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: DrawerWeb(),
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            size: 25.0,
            color: Colors.black,
          ),
          title: TabsWebList()),
      body: ListView(
        children: [
          //first page
          Container(
            height: heightDevice - 56.0, //56 = wielkość app bara
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0))),
                      padding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                      child: SansBold(text: "Hello I'm", size: 15.0),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    SansBold(text: "Kajetan Polcyn", size: 55),
                    Sans(text: "Flutter developer", size: 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 20,
                        ),
                        Sans(text: "kajetanpolcyn@gmail.com", size: 15.0),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(
                          width: 20,
                        ),
                        Sans(text: "+48 736 076 729", size: 15.0),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_city),
                        SizedBox(
                          width: 20,
                        ),
                        Sans(text: "Wrzosowa 8, Poznań, Poland", size: 15.0),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 216.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 208.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                        radius: 200.0,
                        child: ClipOval(
                          child: Image.asset("assets/ja-circle.png"),
                        )),
                  ),
                ),
              ],
            ),
          ),
          // About me Page
          Container(
            alignment: Alignment.center,
            height: heightDevice / 1.5,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/web.jpg", height: widthDevice / 1.9),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SansBold(text: "About me", size: 40.0),
                      SizedBox(
                        height: 15.0,
                      ),
                      Sans(text: "Hello! I'm Kajetan Polcyn", size: 15.0),
                      Sans(
                          text: " I like to do flutter in my free time",
                          size: 15.0),
                      Sans(text: "I think im great with it and ", size: 15.0),
                      Sans(
                          text: "I will do my best to be even better",
                          size: 15.0),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          tealContainer("Flutter"),
                          SizedBox(
                            width: 7.0,
                          ),
                          tealContainer("Android"),
                          SizedBox(
                            width: 7.0,
                          ),
                          tealContainer("IOS"),
                          SizedBox(
                            width: 7.0,
                          ),
                          tealContainer("Firebase"),
                          SizedBox(
                            width: 7.0,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          //Third Section
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold(text: "What I do?", size: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCard(
                      imagePath: "assets/webL.png",
                      text: "Web Development",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCard(
                      imagePath: "assets/app.png",
                      text: "Mobile App Development",
                      fit: BoxFit.contain,
                      reverse: false,
                    ),
                    AnimatedCard(
                      imagePath: "assets/firebase.png",
                      text: "Back-End Development",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                  ],
                )
              ],
            ),
          ),
          // Contact
          SizedBox(
            height: 20.0,
          ),
          ContactFormWeb(),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }
}
