import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logger/logger.dart';
import 'package:portfolio_app/components.dart'; // Assuming UserInput & SansBold are defined here
import 'package:url_launcher/url_launcher.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 105.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage("assets/ja-circle.png"),
              ),
            ),
            SizedBox(height: 15.0),
            SansBold(text: "Kajetan Polcyn", size: 30.0),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: IconButton(
                    onPressed: () async {
                      await launchUrl(
                          Uri.parse("https://www.instagram.com/polcynkajtek/"));
                    },
                    icon: Icon(
                      FontAwesomeIcons.instagram,
                      size: 35,
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                IconButton(
                  onPressed: () async {
                    await launchUrl(Uri.parse(
                        "https://www.facebook.com/profile.php?id=100041788689561"));
                  },
                  icon: Icon(
                    FontAwesomeIcons.facebook,
                    size: 35,
                  ),
                ),
                SizedBox(height: 40.0),
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: IconButton(
                    onPressed: () async {
                      await launchUrl(Uri.parse(
                          "https://github.com/KajetanPolcyn?tab=repositories"));
                    },
                    icon: Icon(
                      FontAwesomeIcons.github,
                      size: 35,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
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
                  "assets/contact_image.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title:
                  TabsWebList(), // Assuming TabsWebList is imported and defined
            ),
          ];
        },
        body: SingleChildScrollView(
          child: ContactFormWeb(),
        ),
      ),
    );
  }
}
