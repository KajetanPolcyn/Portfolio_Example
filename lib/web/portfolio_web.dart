import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/components.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioWeb extends StatefulWidget {
  const PortfolioWeb({super.key});

  @override
  State<PortfolioWeb> createState() => _PortfolioWebState();
}

class _PortfolioWebState extends State<PortfolioWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: DrawerWeb(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                  expandedHeight: 600.0,
                  iconTheme: IconThemeData(
                    size: 25.0,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.white,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      "assets/works.jpg",
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                  title: TabsWebList())
            ];
          },
          body: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  SansBold(text: "My Portfolio", size: 40.0),
                  SizedBox(
                    height: 60.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AnimatedCard(
                        imagePath: "assets/screen.png",
                        height: 270.0,
                        width: 400.0,
                      ),
                      SizedBox(
                        width: widthDevice / 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SansBold(text: "Portfolio", size: 30.0),
                            SizedBox(
                              height: 15.0,
                            ),
                            Sans(
                                text:
                                    "Deployed on Android, IOS and Web. I used Flutter to develop the beautiful and responsive UI and Firebase for the back-end",
                                size: 15.0)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
