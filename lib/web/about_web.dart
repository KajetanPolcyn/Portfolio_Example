import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/components.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
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
        //About me first section
        children: [
          SizedBox(
            height: 700.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.tealAccent,
                      radius: 145,
                      child: CircleAvatar(
                          radius: 138,
                          backgroundImage: AssetImage("assets/ja-circle.png")),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    SansBold(text: "About me", size: 40.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                      text:
                          "Hello! I'm Kajetan Polcyn and i specialize in flutter development",
                      size: 15.0,
                    ),
                    Sans(
                        text:
                            "I strive to ensurre astounding performance with state of ",
                        size: 15.0),
                    Sans(
                        text:
                            "the art of securty for Android , IOS , Mac, Linus and windows",
                        size: 15.0),
                    SizedBox(
                      height: 10.0,
                    ),
                    Wrap(
                      runSpacing: 7.0,
                      spacing: 7.0,
                      children: [
                        tealContainer("Flutter"),
                        tealContainer("Firebase"),
                        tealContainer("Android"),
                        tealContainer("IOS"),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCard(
                imagePath: "assets/webL.png",
                width: 300.0,
                height: 300.0,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold(text: "Web Development", size: 30.0),
                    Sans(
                        text: "I'm here to build your perfect web app online.",
                        size: 15.0)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold(text: "Mobile App Development", size: 30.0),
                    Sans(
                        text:
                            "Do you want responsive and beautiful mobile app for both android and IOS? Let is talk how i can help u with that.",
                        size: 15.0)
                  ],
                ),
              ),
              AnimatedCard(
                imagePath: "assets/app.png",
                width: 300.0,
                height: 300.0,
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCard(
                imagePath: "assets/firebase.png",
                width: 300.0,
                height: 300.0,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold(text: "Back-End Development", size: 30.0),
                    Sans(
                        text:
                            "I would love to create a back-end section for your online application.",
                        size: 15.0)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 90,
          )
        ],
      ),
    );
  }
}
