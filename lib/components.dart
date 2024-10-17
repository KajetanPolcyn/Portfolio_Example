import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

var logger = Logger();
final TextEditingController _firstNameController = TextEditingController();
final TextEditingController _lastNameController = TextEditingController();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _phoneController = TextEditingController();
final TextEditingController _messageController = TextEditingController();

class TabsWebOther extends StatefulWidget {
  final title;
  final route;
  const TabsWebOther({super.key, this.title, this.route});

  @override
  State<TabsWebOther> createState() => _TabsWebOtherState();
}

class _TabsWebOtherState extends State<TabsWebOther> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      child: MouseRegion(
        onEnter: (e) {
          setState(() {
            isSelected = true;
          });
        },
        onExit: (e) {
          setState(() {
            isSelected = false;
          });
        },
        child: AnimatedDefaultTextStyle(
          child: Text(widget.title),
          duration: Duration(milliseconds: 100),
          curve: Curves.linearToEaseOut,
          style: isSelected
              ? GoogleFonts.comicNeue(
                  shadows: [
                      Shadow(
                        color: Colors.blue,
                        offset: Offset(0, -7),
                      )
                    ],
                  color: Colors.transparent,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                  decoration: TextDecoration.underline,
                  decorationThickness: 1,
                  decorationColor: Colors.black)
              : GoogleFonts.comicNeue(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                ),
        ),
      ),
    );
  }
}

class TabsMobile extends StatefulWidget {
  final text;
  final route;
  const TabsMobile({super.key, required this.text, required this.route});

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        elevation: 20.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        height: 50.0,
        minWidth: 200.0,
        color: Colors.black,
        child: Text(
          widget.text,
          style: GoogleFonts.openSans(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(widget.route);
        });
  }
}

class SansBold extends StatelessWidget {
  final text;
  final size;
  const SansBold({
    super.key,
    required this.text,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class Sans extends StatelessWidget {
  final text;
  final size;

  const Sans({
    super.key,
    required this.text,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        fontSize: size,
      ),
    );
  }
}

class UserInput extends StatelessWidget {
  const UserInput(
      {super.key,
      required this.text,
      this.width,
      this.maxLines,
      this.controller,
      this.validator});

  final String text;
  final width;
  final maxLines;
  final controller;
  final validator;

  String capitalize(String s) {
    return s
        .split(" ")
        .map((word) => word[0].toUpperCase() + word.substring(1))
        .join(" ");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(
          text: capitalize(this.text),
          size: 16,
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          width: this.width == null ? 400 : this.width,
          child: TextFormField(
            validator: validator,
            controller: controller == null ? null : controller,
            decoration: InputDecoration(
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(15),
              ),
              hintStyle: GoogleFonts.poppins(fontSize: 14),
              hintText: "Please type your $text",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent, width: 2),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            maxLines: this.maxLines == null ? null : this.maxLines,
          ),
        ),
      ],
    );
  }
}

class AnimatedCard extends StatefulWidget {
  const AnimatedCard(
      {super.key,
      required this.imagePath,
      this.text,
      this.fit,
      this.reverse,
      this.height,
      this.width,
      this.padding});
  final imagePath;
  final text;
  final fit;
  final reverse;
  final height;
  final width;
  final padding;

  @override
  State<AnimatedCard> createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 4),
  )..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        color: Colors.white,
        elevation: 30,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(color: Colors.tealAccent)),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                widget.imagePath,
                height: widget.height != null ? widget.height : 200.0,
                width: widget.width != null ? widget.width : 200.0,
                fit: widget.fit == null ? null : widget.fit,
              ),
              SizedBox(
                height: 10.0,
              ),
              widget.text == null
                  ? SizedBox()
                  : SansBold(text: widget.text, size: 15.0),
            ],
          ),
        ),
      ),
    );
  }
}

class AbelCustom extends StatelessWidget {
  const AbelCustom(
      {super.key,
      required this.text,
      required this.size,
      this.color,
      this.fontWeight});
  final text;
  final size;
  final color;
  final fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.abel(
          fontSize: size,
          color: color == null ? Colors.black : color,
          fontWeight: fontWeight == null ? FontWeight.normal : fontWeight),
    );
  }
}

class AddDataFirestore {
  CollectionReference response =
      FirebaseFirestore.instance.collection('messages');
  Future addResponse(final firstName, final lastName, final email,
      final phoneNumber, final message) async {
    return response.add({
      'first name': firstName,
      'last name': lastName,
      'email': email,
      'phone number': phoneNumber,
      'message': message,
    }).then((value) {
      logger.d("Success");
      return true;
    }).catchError((e) {
      logger.d(e);
      return false;
    });
  }
}

Future DialogError(BuildContext context, String title) {
  return showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Sans(text: title, size: 20.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );
}

class TabsWebList extends StatefulWidget {
  const TabsWebList({super.key});

  @override
  State<TabsWebList> createState() => _TabsWebListState();
}

class _TabsWebListState extends State<TabsWebList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(
          flex: 1,
        ),
        TabsWebOther(
          title: "Home",
          route: "/",
        ),
        Spacer(
          flex: 1,
        ),
        TabsWebOther(
          title: "Portfolio",
          route: "/portfolio",
        ),
        Spacer(
          flex: 1,
        ),
        TabsWebOther(
          title: "About",
          route: "/about",
        ),
        Spacer(
          flex: 1,
        ),
        TabsWebOther(
          title: "Blog",
          route: "/blog",
        ),
        Spacer(
          flex: 1,
        ),
        TabsWebOther(
          title: "Contact",
          route: "/contact",
        ),
        Spacer(
          flex: 1,
        ),
      ],
    );
  }
}

class DrawerWeb extends StatefulWidget {
  const DrawerWeb({super.key});

  @override
  State<DrawerWeb> createState() => _DrawerWebState();
}

class _DrawerWebState extends State<DrawerWeb> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
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
                  "assets/ja-circle2.png",
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            SansBold(text: "Kajetan Polcyn", size: 30.0),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: IconButton(
                      onPressed: () async {
                        await launchUrl(Uri.parse(
                            "https://www.instagram.com/polcynkajtek/"));
                      },
                      icon: Icon(
                        FontAwesomeIcons.instagram,
                        size: 35,
                      )),
                ),
                SizedBox(
                  height: 40.0,
                ),
                IconButton(
                    onPressed: () async {
                      await launchUrl(Uri.parse(
                          "https://www.facebook.com/profile.php?id=100041788689561"));
                    },
                    icon: Icon(
                      FontAwesomeIcons.facebook,
                      size: 35,
                    )),
                SizedBox(
                  height: 40.0,
                ),
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
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      DrawerHeader(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2.0, color: Colors.black)),
          child: Image.asset("assets/ja-circle2.png"),
        ),
      ),
      SizedBox(
        height: 25.0,
      ),
      TabsMobile(text: "Home", route: "/"),
      SizedBox(
        height: 25.0,
      ),
      TabsMobile(text: "Portfolio", route: "/portfolio"),
      SizedBox(
        height: 25.0,
      ),
      TabsMobile(text: "About", route: "/about"),
      SizedBox(
        height: 25.0,
      ),
      TabsMobile(text: "Blog", route: "/blog"),
      SizedBox(
        height: 25.0,
      ),
      TabsMobile(text: "Contact", route: "/contact"),
      SizedBox(
        height: 20.0,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () async => await launchUrl(
                Uri.parse("https://www.instagram.com/polcynkajtek/")),
            icon: Icon(
              FontAwesomeIcons.instagram,
              size: 35.0,
            ),
          ),
          IconButton(
            onPressed: () async => await launchUrl(Uri.parse(
                "https://www.facebook.com/profile.php?id=100041788689561")),
            icon: Icon(
              FontAwesomeIcons.facebook,
              size: 35.0,
            ),
          ),
          IconButton(
            onPressed: () async => await launchUrl(
                Uri.parse("https://github.com/KajetanPolcyn?tab=repositories")),
            icon: Icon(
              FontAwesomeIcons.github,
              size: 35.0,
            ),
          ),
        ],
      )
    ]));
  }
}

class ContactFormWeb extends StatefulWidget {
  const ContactFormWeb({super.key});

  @override
  State<ContactFormWeb> createState() => _ContactFormWebState();
}

class _ContactFormWebState extends State<ContactFormWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    final formKey = GlobalKey<FormState>();
    return Column(
      children: [
        SizedBox(height: 30.0),
        SansBold(text: "Contact me", size: 40.0),
        SizedBox(height: 20.0),
        Form(
          key: formKey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      UserInput(
                        text: "first name",
                        width: 350.0,
                        controller: _firstNameController,
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return "First Name Is Required";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 15.0),
                      UserInput(
                        text: "email",
                        width: 350.0,
                        controller: _emailController,
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return "Email Is Required";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      UserInput(
                        text: "last name",
                        controller: _lastNameController,
                        width: 350.0,
                      ),
                      SizedBox(height: 15.0),
                      UserInput(
                        text: "phone number",
                        controller: _phoneController,
                        width: 350.0,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              UserInput(
                text: "message",
                width: widthDevice / 1.3,
                maxLines: 10,
                controller: _messageController,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return "Message Is Required";
                  }
                  return null;
                },
              ),
              SizedBox(height: 50.0),
              MaterialButton(
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                onPressed: () async {
                  logger.d(_firstNameController.text);
                  final addData =
                      AddDataFirestore(); // Assuming AddDataFirestore is defined
                  if (formKey.currentState!.validate()) {
                    if (await addData.addResponse(
                      _firstNameController.text,
                      _lastNameController.text,
                      _emailController.text,
                      _phoneController.text,
                      _messageController.text,
                    )) {
                      formKey.currentState!.reset();
                      DialogError(context, "Message Sent Successfully!");
                    } else {
                      DialogError(context, "Message Failed to Send");
                    }
                  }
                },
                height: 60.0,
                minWidth: 200.0,
                color: Colors.tealAccent,
                child: SansBold(text: "Submit", size: 20.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ContactFormMobile extends StatefulWidget {
  const ContactFormMobile({super.key});

  @override
  State<ContactFormMobile> createState() => _ContactFormMobileState();
}

class _ContactFormMobileState extends State<ContactFormMobile> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    var widthDevice = MediaQuery.of(context).size.width;
    return Form(
      key: formKey,
      child: Wrap(
        runSpacing: 20.0,
        spacing: 20.0,
        alignment: WrapAlignment.center,
        children: [
          SansBold(text: "Contact me", size: 40.0),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: [
              UserInput(
                text: "first name",
                width: widthDevice / 1.4,
                controller: _firstNameController,
                validator: (text) {
                  if (text.toString().isEmpty) {
                    return "First Name Is Required";
                  }
                },
              ),
              SizedBox(
                height: 15.0,
              ),
              UserInput(
                text: "email",
                width: widthDevice / 1.4,
                controller: _emailController,
                validator: (text) {
                  if (text.toString().isEmpty) {
                    return "Email Is Required";
                  }
                },
              ),
              SizedBox(
                height: 15.0,
              ),
              UserInput(
                text: "last name",
                width: widthDevice / 1.4,
                controller: _lastNameController,
              ),
              SizedBox(
                height: 15.0,
              ),
              UserInput(
                text: "phone number",
                width: widthDevice / 1.4,
                controller: _phoneController,
              )
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          UserInput(
            text: "message",
            width: widthDevice / 1.3,
            maxLines: 10,
            controller: _messageController,
            validator: (text) {
              if (text.toString().isEmpty) {
                return "Message Is Required";
              }
            },
          ),
          SizedBox(
            height: 50.0,
          ),
          MaterialButton(
            elevation: 20.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            onPressed: () async {
              logger.d(_firstNameController.text);
              final addData = new AddDataFirestore();
              if (formKey.currentState!.validate()) {
                //! to jest null check
                if (await addData.addResponse(
                    _firstNameController.text,
                    _lastNameController.text,
                    _emailController.text,
                    _phoneController.text,
                    _messageController.text)) {
                  formKey.currentState!.reset();
                  DialogError(context, "Message Send Successfully!");
                } else
                  DialogError(context, "Message Failed to sent");
              }
              ;
            },
            height: 60.0,
            minWidth: widthDevice / 2.2,
            color: Colors.tealAccent,
            child: SansBold(text: "Submit", size: 20.0),
          ),
        ],
      ),
    );
  }
}

tealContainer(String text) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
          color: Colors.tealAccent, style: BorderStyle.solid, width: 2.0),
      borderRadius: BorderRadius.circular(5.0),
    ),
    padding: EdgeInsets.all(7.0),
    child: Text(
      text,
      style: GoogleFonts.openSans(fontSize: 15.0),
    ),
  );
}
