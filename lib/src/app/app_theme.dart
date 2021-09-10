import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData(
  // primaryTextTheme: GoogleFonts.k2dTextTheme(),
  // primaryColor: Colors.green,
  // primaryColorLight: Colors.green,
  // appBarTheme: AppBarTheme(
  //   backgroundColor: Colors.green,
  //   color: Colors.red,
  //   foregroundColor: Colors.green,
  // ),
  textTheme: GoogleFonts.k2dTextTheme(
    TextTheme(
      bodyText1: GoogleFonts.k2d(),
      caption: GoogleFonts.k2d(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      subtitle2: GoogleFonts.k2d(
        // fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
      bodyText2: GoogleFonts.k2d(
        //) aclonica(
        fontSize: 17,
        // fontWeight: FontWeight.bold,
      ),
    ),
  ),
);
