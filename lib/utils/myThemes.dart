import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myThemes {
  static ThemeData lighttheme (BuildContext context) => ThemeData(
      primarySwatch: Colors.blue,
      fontFamily: GoogleFonts.poppins().fontFamily,
      textTheme: Theme.of(context).textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          //fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black,
          fontFamily: GoogleFonts.lato().fontFamily,
        ),
        scrolledUnderElevation: 0.0,
        ),


        );

  static ThemeData darktheme (BuildContext context) => ThemeData(
   brightness: Brightness.dark
  );
  static Color creamColor = Color(0xfff5f5f5);
  static Color Darkbluish = Color(0xff403b58);
  }
