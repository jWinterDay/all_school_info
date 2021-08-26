import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData(
  primaryTextTheme: GoogleFonts.hanaleiFillTextTheme(
    GoogleFonts.aclonicaTextTheme(),
  ),
  // primaryColor: Colors.green,
  textTheme: GoogleFonts.aclonicaTextTheme(TextTheme(
    bodyText1: GoogleFonts.aclonica(),
    caption: GoogleFonts.aclonica(
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
    subtitle2: GoogleFonts.aclonica(
      // fontSize: 17,
      fontWeight: FontWeight.bold,
    ),
    bodyText2: GoogleFonts.griffy(
      //) aclonica(
      fontSize: 17,
      // fontWeight: FontWeight.bold,
    ),
  )),
  // appBarTheme: AppBarTheme(
  //   // backgroundColor: Colors.red,
  //   titleTextStyle: GoogleFonts.aclonica(
  //     backgroundColor: Colors.blue,
  //     color: Colors.red,
  //   ),
  //   textTheme: GoogleFonts.offsideTextTheme().apply(
  //     decorationColor: Colors.cyanAccent,
  //   ),
  //   //  GoogleFonts.aclonicaTextTheme(TextTheme(
  //   //   subtitle2: GoogleFonts.aclonica(fontSize: 19),
  //   //   caption: GoogleFonts.aclonica(fontSize: 19),
  //   //   bodyText1: GoogleFonts.aclonica(fontSize: 19),
  //   //   headline1: GoogleFonts.aclonica(fontSize: 19),
  //   //   subtitle1: GoogleFonts.aclonica(fontSize: 19),
  //   // )),
  // ),
);
