import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWebOther extends StatefulWidget {
  final title;
  const TabsWebOther({super.key, this.title});

  @override
  State<TabsWebOther> createState() => _TabsWebOtherState();
}

class _TabsWebOtherState extends State<TabsWebOther> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
                fontSize: 25.0,
                fontWeight: FontWeight.w800,
                decoration: TextDecoration.underline,
                decorationThickness: 1,
                decorationColor: Colors.black)
            : GoogleFonts.comicNeue(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w800,
              ),
      ),
    );
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
