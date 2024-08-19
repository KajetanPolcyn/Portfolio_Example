// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 105.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage(
                    "assets/ja-circle.png",
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Kajetan Polcyn",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(FontAwesomeIcons.instagram)),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(FontAwesomeIcons.twitter)),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(FontAwesomeIcons.github)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 25.0,
          color: Colors.black,
        ),
        title: Row(children: [
          Spacer(
            flex: 1,
          ),
          TabsWebOther(title: "Home"),
          Spacer(
            flex: 1,
          ),
          TabsWebOther(title: "Portfolio"),
          Spacer(
            flex: 1,
          ),
          TabsWebOther(title: "About"),
          Spacer(
            flex: 1,
          ),
          TabsWebOther(title: "Blog"),
          Spacer(
            flex: 1,
          ),
          TabsWebOther(title: "Contact"),
          Spacer(
            flex: 1,
          ),
        ]),
      ),
      body: ListView(
        children: [
          //first page
          Container(
            height: heightDevice - 56, //56 = wielkość app bara
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
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: SansBold(text: "Hello I'm", size: 15),
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
                      height: 10,
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
                      height: 10,
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
                  radius: 216,
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
                  Image.asset("web.jpg"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SansBold(text: "About me", size: 40),
                      SizedBox(
                        height: 15,
                      ),
                      Sans(text: "Hello! I'm Kajetan Polcyn", size: 15),
                      Sans(
                          text: " I like to do flutter in my free time",
                          size: 15),
                      Sans(text: "I think im great with it and ", size: 15),
                      Sans(
                          text: "I will do my best to be even better",
                          size: 15),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            padding: EdgeInsets.all(7),
                            child: Sans(
                              text: "Flutter",
                              size: 15,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            padding: EdgeInsets.all(7),
                            child: Sans(
                              text: "React Native",
                              size: 15,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            padding: EdgeInsets.all(7),
                            child: Sans(
                              text: "HTML",
                              size: 15,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            padding: EdgeInsets.all(7),
                            child: Sans(
                              text: "Python",
                              size: 15,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            padding: EdgeInsets.all(7),
                            child: Sans(
                              text: "PHP",
                              size: 15,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            padding: EdgeInsets.all(7),
                            child: Sans(
                              text: "JavaScript",
                              size: 15,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            padding: EdgeInsets.all(7),
                            child: Sans(
                              text: "CSS",
                              size: 15,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            padding: EdgeInsets.all(7),
                            child: Sans(
                              text: "C++",
                              size: 15,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            //
          ),
        ],
      ),
    );
  }
}
