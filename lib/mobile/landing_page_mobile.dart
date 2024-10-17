import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:portfolio_app/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  var logger = Logger();

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
        body: ListView(
          children: [
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
                      backgroundImage: AssetImage("assets/ja-circle2.png"),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.tealAccent,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            )),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: SansBold(text: "Hello I'm", size: 15.0),
                      ),
                      SansBold(text: "Kajetan Polcyn", size: 40.0),
                      Sans(text: "Flutter Developer", size: 20.0)
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 3.0,
                        children: [
                          Icon(Icons.email),
                          Icon(Icons.call),
                          Icon(Icons.location_pin)
                        ],
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 9.0,
                        children: [
                          Sans(text: "kajetan.polcyn@gmail.com", size: 15.0),
                          Sans(text: "+48 736 076 729", size: 15.0),
                          Sans(text: "Wrzosowa 8, Poznań, Poland", size: 15.0),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 90.0,
            ),
            //About section
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SansBold(text: "About me", size: 35.0),
                  Sans(text: "Hello! I'm Kajetan Polcyn", size: 15.0),
                  Sans(
                      text: " I like to do flutter in my free time",
                      size: 15.0),
                  Sans(text: "I think im great with it and ", size: 15.0),
                  Sans(text: "I will do my best to be even better", size: 15.0),
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
            // Third section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SansBold(text: "What I do?", size: 35.0),
                AnimatedCard(
                  imagePath: "assets/webL.png",
                  text: "Web Development",
                  width: 300.0,
                ),
                SizedBox(
                  height: 35.0,
                ),
                AnimatedCard(
                  imagePath: "assets/app.png",
                  text: "Mobile App Development",
                  width: 300.0,
                ),
                SizedBox(
                  height: 35.0,
                ),
                AnimatedCard(
                  imagePath: "assets/firebase.png",
                  text: "Back-End Development",
                  width: 300.0,
                ),
                SizedBox(
                  height: 60.0,
                ),
                //Contact Forth section
                ContactFormMobile(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
