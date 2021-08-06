import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class DesignWidgets {
  // Background purple
  static LinearGradient linearGradientMain(BuildContext context) {
    return LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Theme.of(context).primaryColorLight,
          Theme.of(context).primaryColor,
        ]);
  }

  static RichText titleCustom() {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: "Vera",
            style: GoogleFonts.portLligatSans(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.white60),
            children: [
              TextSpan(
                  text: "Design",
                  style: TextStyle(color: Colors.white, fontSize: 30))
            ]));
  }
}
