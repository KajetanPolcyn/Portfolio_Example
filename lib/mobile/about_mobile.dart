import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/components.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(
            size: 35.0,
            color: Colors.black,
          ),
        ),
        endDrawer: DrawerMobile(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(children: [
            //first section
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 117.0,
                    backgroundColor: Colors.tealAccent,
                    child: CircleAvatar(
                      radius: 110.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(
                        "assets/ja-circle.png",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            //About section
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SansBold(text: "About me", size: 35.0),
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
                    spacing: 7.0,
                    runSpacing: 7.0,
                    children: [
                      tealContainer("Flutter"),
                      tealContainer("Firebase"),
                      tealContainer("Android"),
                      tealContainer("IOS"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            //Web Development section

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedCard(
                  imagePath: 'assets/webL.png',
                  width: 200.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
                SansBold(text: "Web Development", size: 20.0),
                SizedBox(
                  height: 20.0,
                ),
                Sans(
                    text: "I'm here to build your perfect web app online.",
                    size: 15.0),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            //Back-end section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedCard(
                  imagePath: 'assets/app.png',
                  width: 200.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
                SansBold(text: "Mobile App Development", size: 20.0),
                SizedBox(
                  height: 20.0,
                ),
                Sans(
                    text:
                        "Do you want responsive and beautiful mobile app for both android and IOS? Let is talk how i can help u with that.",
                    size: 15.0),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            //Back-end section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedCard(
                  imagePath: 'assets/firebase.png',
                  width: 200.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
                SansBold(text: "Back-End Development", size: 20.0),
                SizedBox(
                  height: 20.0,
                ),
                Sans(
                    text:
                        "I would love to create a back-end section for your online application.",
                    size: 15.0),
                SizedBox(
                  height: 40.0,
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
